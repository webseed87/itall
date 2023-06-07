

var menu = [`<p class="small">Point 1.</p>매년 증가하는 <br> 장학 총액`, `<p class="small">Point 2.</p>매년 증가하는 <br> 장학 수혜자`, `<p class="small">Point 3.</p>최대 월 3억원 <br> 장학금 지급!`, `<p class="small">Point 4.</p>승강심사 기준 <br>대폭 완화!`, `<p class="small">Point 5.</p>입학 시 전액 <br> 장학 부활!`, `<p class="small">Point 6.</p>고등학생 대상 <br> 장학제도 확대!`]
var mySwiper = new Swiper('.swiper-container', {
    loop: true,
    centeredSlides: true,
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
        renderBullet: function (index, className) {
            return '<span class="' + className + '">' + (menu[index]) + '</span>';
        },
    },
    speed:1000,
    clickable:true,
    autoplay: {
        delay: 10000,
        disableOnInteraction: true
    },

  

    
    preventClicks: false,
    preventClicksPropagation: false
  
});

$('.swiper-container').hover(
    function(){
        mySwiper.autoplay.stop();
    },
    function(){
        mySwiper.autoplay.start();
    }
);


// 탭 영역 처리 부분
const tabList = document.querySelectorAll('.tabmenu .list li');
const contents = document.querySelectorAll('.tabmenu .contarea .cont')
let activeCont = '';
for (var i = 0; i < tabList.length; i++) {
    tabList[i].querySelector('.btn').addEventListener('click', function (e) {
        e.preventDefault();
        for (var j = 0; j < tabList.length; j++) {
            tabList[j].classList.remove('ison');
            contents[j].style.display = 'none';
        }
        this.parentNode.classList.add('ison');
        activeCont = this.getAttribute('href');
        document.querySelector(activeCont).style.display = 'block';
    });
}



// 빌보드 차트 롤링 이미지

	var tSwiper = new Swiper('.roll-swiper',{
        loop:true,
		autoplay: {
			delay: 0,
			disableOnInteraction: false,
			pauseOnMouseEnter: true,
		},
		centeredSlides: true,
        centeredSlidesBounds: true,
		speed: 2500,
		grabCursor: true,
        breakpoints: {
        1200: {
            slidesPerView: 5,
        },
        1600: {
            slidesPerView: 7,
        },
    },
           
     
		spaceBetween: 30,
		freeMode: {
			enabled: true,
			momentumBounce:false
		},
	});

    $('.roll-swiper').hover(
		function(){
			tSwiper.autoplay.stop();
    	},
		function(){
			tSwiper.autoplay.start();
		}
	);

// 팝업 부분 
var target = document.querySelectorAll('.btn_open');
var btnPopClose = document.querySelectorAll('.popWrap .btnClose');
var targetID;
for(var i = 0; i < target.length; i++){
  target[i].addEventListener('click', function(){
    targetID = this.getAttribute('href');
    document.querySelector(targetID).style.display = 'block';
  });
}
for(var j = 0; j < target.length; j++){
  btnPopClose[j].addEventListener('click', function(){
    this.parentNode.parentNode.style.display = 'none';
  });
}