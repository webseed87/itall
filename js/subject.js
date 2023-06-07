(function (root, factory) {
    root.asyncLoader = factory();
  })(this, function () {
  
    var contentsData = {
      scrollTrigger: {
        res: [
          { id: "_al_scrollTrigger_js", tag: "script", path: "js/lib/scrolltrigger.min.js" },
          { id: "_al_scrollTrigger_gsap_js", tag: "script", path: "js/lib/gsap.min.js" },
        ],
        isLoaded: function () {
          return jQuery().scrollTrigger ? true : false;
        }
      },
    };
  
    function AsyncLoader() { 
      this.workerList = {};
    }
  
    AsyncLoader.prototype.load = function (src, opts, cb) {
      if (typeof opts === 'function') {
        cb = opts;
        opts = {};
      }
  
      opts = opts || {};
      cb = cb || function () { }
  
      if (contentsData[src]) {
        // 諛곗뿴�� ID 媛�
        if (contentsData[src].isLoaded()) {
          cb();
        } else {
          // �대떦 由ъ냼�ㅼ쓽 worker�대� �앹꽦�섏뿀�ㅻ㈃
          // callback 留� 異붽��댁���.
          if (!contentsData[src].worker) {
            contentsData[src].worker = new Worker(contentsData[src], cb);
          } else {
            contentsData[src].worker.addCallback(cb);
          }
        }
      } else {
        // �쇰컲 src 
        var worker = new Worker({
          res: [{ id: opts.id, tag: opts.tag || "script", position: opts.position, path: src }]
        }, cb);
      }
    }
  
    function Worker(data, callback) {
      // var self = this;
  
      this.data = data;
      this.callbackList = [];
      this.totalResCount = 0;
      this.loadedCount = 0;
  
      this.callbackList.push(callback);
      
      if (this.data.res) {
        this.totalResCount = this.data.res.length;
        for (var i=0; i<this.totalResCount; i++) {
          var obj = this.data.res[i];
  
          if (!document.getElementById(obj.id)) {
            this.appendElement(obj, i);
  
            if (this.data.sync) {
              break;
            }
  
          } else {
            this.loadedCount++;
          }
        }
      }
      
  
      if (this.loadedCount === this.totalResCount) {
        // �대� load ��.
        this.callUserCallback();
      }
    }
  
    // callback�⑥닔 異붽�
    Worker.prototype.addCallback = function (callback) {
      this.callbackList.push(callback);
    }
  
    // load �꾨즺�� �ъ슜�� callback �몄텧
    Worker.prototype.callUserCallback = function () {
      if (this.callbackList.length > 0) {
        this.callbackList.forEach(function (callback) {
          callback();
        });
      }
    }
  
    Worker.prototype.stdOnEnd = function(element, cb, index) {
      var index = index;
      element.onload = function () {
        this.onerror = this.onload = null;
        cb(null, index);
      }
      element.onerror = function () {
        // this.onload = null here is necessary
        // because even IE9 works not like others
        this.onerror = this.onload = null
        cb(new Error('Failed to load ' + this.src), index)
      }
    }
  
    // DOM resource �ㅽ겕由쏀듃 異붽�
    Worker.prototype.appendElement = function (opts, index) {
      var elPosition = null, position = opts.position || { selector: "head", type: "appendChild" };
      var type = opts.tag;
      var elem = document.createElement(type);
      var listener =  this.listener.bind(this);
  
      if (opts.id) {
        elem.id = opts.id;
      }
  
      if (type === "link") {
        elem.rel = 'stylesheet';
        elem.href = opts.path;
      } else if (type === "script") {
        elem.type = 'text/javascript';
        elem.charset = 'utf8';
        elem.async = true;
        elem.src = opts.path;
      }
  
      if ('onload' in elem) {
        this.stdOnEnd(elem, listener, index);
      } else {
        this.ieOnEnd(elem, listener, index);
      }
  
      // some good legacy browsers (firefox) fail the 'in' detection above
      // so as a fallback we always set onload
      // old IE will ignore this and new IE will set onload
      if (!elem.onload) {
        this.stdOnEnd(elem, listener, index);
      }
  
      elPosition = document.querySelector(position.selector);
      if (elPosition) {
        if (position.type == "insertBefore") {
          elPosition.parentElement.insertBefore(elem, elPosition);
        } else {
          if (elPosition && elPosition[position.type]) {
            elPosition[position.type](elem);
          }
        }
      } else {
        console.err("no elPosition!!");
      }
  
      return elem;
    }
  
  
    Worker.prototype.listener = function (err, index ) {
      this.loadedCount++;
  
      if (this.loadedCount === this.totalResCount) {
        // load �꾨즺
        this.callUserCallback();
        return;
      }
  
      if (this.data.sync) {
        index = index + 1;
        var obj = this.data.res[index];
        this.appendElement(obj, index);
      }
    };
  
    return new AsyncLoader();
  });

  UTILS.mousewheelevt = /Firefox/i.test(navigator.userAgent) ? "DOMMouseScroll" : "wheel mousewheel";
  
  var BTNTOP = (function () {
    var $footerBtns = $("footer .footer-btns"),
        $btnGoTop = $("footer .btn-top"),
        prevTop = null,
        showPosition = 600,
        options = {
          scrollFade: false 
        };
  

    function init() {
      if ($footerBtns.length) {
        btnShowHide();
        btnFixedBottom();
        $btnGoTop.on("click", onAniTop);
      }
    }
  
    return {
      init: init,
    }
  
  })();
  BTNTOP.init();
  
  
  /*=================================================
   default tab
   =================================================*/
  $.fn.sectionTab = function (parent) {
    parent = this;
    var sectionTabs = {
      init: function (parent) {
        this.$tabItem = $(parent).find('.tab-wrap .tab-list')
        this.$tabContents = $(parent).find('.tab-cont')
        this.$selectBoxParent = $(parent).find('.tab-wrap')
      },
      event: function () {
        this.$tabItem.on("click", this.changeListener.bind(this));
        this.$selectBoxParent.on("change", this.changeListener.bind(this));
      },
      refreshView: function (index) {
        // �� 蹂�寃�
        this.$tabItem.removeClass('active');
        this.$tabItem.eq(index).addClass('active');
        // 而⑦뀗痢�
        this.$tabContents.removeClass('active');
        this.$tabContents.eq(index).addClass('active');
        //���됲듃諛뺤뒪
        this.$selectBoxParent.val(index);
      },
      changeListener: function (event) {
        // event -> �대떦 EventListener 媛앹껜 // event.type -> �대┃�� �붿냼
        var target = event.currentTarget; //�대깽�멸� 諛붿씤�⑸맂 �붿냼, �대떦�섎뒗 �붿냼瑜� 諛섑솚�⑸땲��.
        var index = 0;
        switch (event.type) { //  �대깽�몄쓽 �좏삎�� 臾몄옄�댁쓣 諛섑솚
          case "click": index = $(target).index();
            break;
          case "change": index = $(target).val();
            break;
        }
        this.refreshView(index);
      }
    }
    sectionTabs.init(parent);
    sectionTabs.event();
  }

  
  $(document).ready(function(){
    if (document.querySelector("[data-ani]")) {
      asyncLoader.load("scrollTrigger", function () {
        gsap.registerPlugin(ScrollTrigger);
        
        // slideUp (�꾨옒�먯꽌 �꾨줈 �щ씪�ㅻ뒗 �④낵)
        if (document.querySelector("[data-ani='slideUp']")) {
          var items = gsap.utils.toArray("[data-ani='slideUp']");
          
          items.forEach(function (item) {
            var ani_delay = item.getAttribute("data-ani-delay") ? item.getAttribute("data-ani-delay") : '0';
  
            var slideUp = gsap.timeline({
              scrollTrigger: {
                trigger: item,
                start: "top 90%",
                end: "bottom 0%",
                // markers: true,
                // scrub: true,
                toggleActions: "play none none reverse",
              }
            });
            slideUp.to(item, { opacity: "1", y: "0", delay: ani_delay, ease: "power1.inOut" } );
          })
        }
  
        // slideDown (�꾩뿉�� �꾨옒濡� �대젮�ㅻ뒗 �④낵)
        if (document.querySelector("[data-ani='slideDown']")) {
          var items = gsap.utils.toArray("[data-ani='slideDown']");
  
          items.forEach(function (item) {
            var ani_delay = item.getAttribute("data-ani-delay") ? item.getAttribute("data-ani-delay") : '0';
  
            var slideDown = gsap.timeline({
              scrollTrigger: {
                trigger: item,
                start: "top 90%",
                end: "bottom 0%",
                // scrub: true,
                toggleActions: "play none none reverse",
              }
            });
            slideDown.to(item, { opacity: "1", y: "0", delay: ani_delay, ease: "power1.inOut" });
          })
        }
  
        // scaleUp (�곸뿭�� �뺣��섎뒗 �④낵)
        if (document.querySelector("[data-ani='scaleUp']")) {
          var items = gsap.utils.toArray("[data-ani='scaleUp']");
  
          items.forEach(function (item) {
            var ani_delay = item.getAttribute("data-ani-delay") ? item.getAttribute("data-ani-delay") : '0';
  
            var scaleUp = gsap.timeline({
              scrollTrigger: {
                trigger: item,
                start: "top 90%",
                end: "bottom 0%",
                // scrub: true,
                toggleActions: "play none none reverse",
              }
            });
            scaleUp.to(item, { opacity: "1", scale: "1.1", delay: ani_delay, ease: "power1.inOut" });
          })
        }
  
        // scaleDown (�곸뿭�� 異뺤냼�섎뒗 �④낵)
        if (document.querySelector("[data-ani='scaleDown']")) {
          var items = gsap.utils.toArray("[data-ani='scaleDown']");
  
          items.forEach(function (item) {
            var ani_delay = item.getAttribute("data-ani-delay") ? item.getAttribute("data-ani-delay") : '0';
  
            var scaleDown = gsap.timeline({
              scrollTrigger: {
                trigger: item,
                start: "top 90%",
                end: "bottom 0%",
                // scrub: true,
                toggleActions: "play none none reverse",
              }
            });
            scaleDown.to(item, { scale: "1", delay: ani_delay, ease: "power1.inOut" });
          })
        }
  
        // fadeIn ( �섏씠�쒖씤 �④낵 : �щ챸�� 0 �� 1 )
        if (document.querySelector("[data-ani='fadeIn']")) {
          var items = gsap.utils.toArray("[data-ani='fadeIn']");
  
          items.forEach(function (item) {
            var ani_delay = item.getAttribute("data-ani-delay") ? item.getAttribute("data-ani-delay") : '0';
  
            var fadeIn = gsap.timeline({
              scrollTrigger: {
                trigger: item,
                start: "top 90%",
                end: "bottom 0%",
                // scrub: true,
                toggleActions: "play none none reverse",
              }
            });
            fadeIn.to(item, { opacity: "1", delay: ani_delay, ease: "power1.inOut" });
          })
        }
  
        // fadeOut ( �섏씠�쒖븘�� �④낵 : �щ챸�� 1 �� 0 )
        if (document.querySelector("[data-ani='fadeOut']")) {
          var items = gsap.utils.toArray("[data-ani='fadeOut']");
  
          items.forEach(function (item) {
            var ani_delay = item.getAttribute("data-ani-delay") ? item.getAttribute("data-ani-delay") : '0';
  
            var fadeOut = gsap.timeline({
              scrollTrigger: {
                trigger: item,
                start: "top 90%",
                end: "bottom 0%",
                // scrub: true,
                toggleActions: "play none none reverse",
              }
            });
            fadeOut.to(item, { opacity: "0", delay: ani_delay, ease: "power1.inOut" });
          })
        }
  
        // leftToRight ( �쇱そ �� �ㅻⅨ履쎌쑝濡� �대룞 )
        if (document.querySelector("[data-ani='leftToRight']")) {
          var items = gsap.utils.toArray("[data-ani='leftToRight']");
          
          items.forEach(function (item) {
            var ani_delay = item.getAttribute("data-ani-delay") ? item.getAttribute("data-ani-delay") : '0';
  
            var leftToRight = gsap.timeline({
              scrollTrigger: {
                trigger: item,
                start: "top 90%",
                end: "bottom 0%",
                // scrub: true,
                toggleActions: "play none none reverse",
              }
            });
            leftToRight.to(item, { opacity: "1", x: "0", delay: ani_delay, ease: "power1.inOut" } );
          })
        }
  
        // rightToLeft ( �ㅻⅨ履� �� �쇱そ�쇰줈 �대룞 )
        if (document.querySelector("[data-ani='rightToLeft']")) {
          var items = gsap.utils.toArray("[data-ani='rightToLeft']");
          
          items.forEach(function (item) {
            var ani_delay = item.getAttribute("data-ani-delay") ? item.getAttribute("data-ani-delay") : '0';
  
            var rightToLeft = gsap.timeline({
              scrollTrigger: {
                trigger: item,
                start: "top 90%",
                end: "bottom 0%",
                // scrub: true,
                toggleActions: "play none none reverse",
              }
            });
            rightToLeft.to(item, { opacity: "1", x: "0", delay: ani_delay, ease: "power1.inOut" } );
          })
        }
  
        // toggleClass ( �대옒�� �좉�濡� �곸슜�� �꾩슂�� 寃쎌슦)
        if (document.querySelector("[data-ani='toggleClass']")) {
          var items = gsap.utils.toArray("[data-ani='toggleClass']");
          
          items.forEach(function (item) {
            ScrollTrigger.create({
              trigger: item,
              start: "top 90%",
              end: "bottom 0%",
              toggleActions: "play none none reverse",
              toggleClass: {targets: item, className: "aniOn"},
            });
          })
        }
  
        // countUp ( �レ옄移댁슫�� )
        if (document.querySelector("[data-ani='countUp']")) {
          asyncLoader.load("/views/res/lib/custom/countup/countUp.js", function() {
            var items = gsap.utils.toArray("[data-ani='countUp']");
  
            var options = {
              useEasing: false,
              useGrouping: false,
            };
            
            items.forEach(function (item) {
              var num = item.getAttribute("data-count-num");
              var count = new CountUp(item, 0, num, 0, options);
  
              ScrollTrigger.create({
                trigger: item,
                start: "top 90%",
                end: "bottom 0%",
                toggleActions: "play none none reverse",
                toggleClass: {targets: item, className: "aniOn"},
                onEnter : function(){
                  count.start();
                }
              });
            })
          });
        }
      });
    }
  })
  
  $(document).ready(function(){
    // �명꽣 怨좎쑁�쇳꽣 �앹뾽
    $(".footer-btns .btn-ask").on("click", function(e){
      e.preventDefault();
      $(".fix-educenter-wrap").addClass("active");
    })
  
    $(".fix-educenter-wrap .btn-close").on("click", function(){
      $(".fix-educenter-wrap").removeClass("active");
    })
  })


  $(document).ready(function(){
    asyncLoader.load("scrollTrigger", function () {
      gsap.registerPlugin(ScrollTrigger);
  
      var items = gsap.utils.toArray("[data-ani='step']");
      var items2 = gsap.utils.toArray(".anicolor");
      
      items.forEach(function (item) {
        var ani_delay = item.getAttribute("data-ani-delay") ? item.getAttribute("data-ani-delay") : '0';
  
        var step = gsap.timeline({
          scrollTrigger: {
            trigger: item,
            start: "top 60%",
            end: "bottom 0%",
            // markers: true,
            // scrub: true,
            toggleActions: "play none none reverse",
            toggleClass: { targets: item , className: "aniOn"},
          }
        });
      })
  
      items2.forEach(function (item2) {
        var ani_delay = item2.getAttribute("data-ani-delay") ? item2.getAttribute("data-ani-delay") : '0';
  
        var line = gsap.timeline({
          scrollTrigger: {
            trigger: item2,
            start: "top 60%",
            end: "bottom 0%",
            // markers: true,
            scrub: true,
            toggleActions: "play none none reverse",
            toggleClass: { targets: item2 , className: "aniOn"},
          }
        });
        line.to(item2, { height: '100%', delay: ani_delay, ease: "power1.inOut" } );
  
      })
    });
  })