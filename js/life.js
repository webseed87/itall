var menu = ['휴대폰 관리', '소음/친목관리', '졸음관리','네트워크 차단','출결관리']
var mySwiper = new Swiper ('.swiper-container', {
    loop: true,
  centeredSlides: true, 
  spaceBetween: 20,
  grabCursor: true,
  centeredSlides :true,
  slidesPerView: "auto",
    pagination: {
      el: '.swiper-pagination',
            clickable: true,
        renderBullet: function (index, className) {
          return '<span class="' + className + '">' + (menu[index]) + '</span>';
        },
    },

    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  })


  
// 탭 영역 처리 부분
const tabList = document.querySelectorAll('.fivesensesmenu .list li');
const contents = document.querySelectorAll('.fivesensesmenu .contarea .cont')
let activeCont = '';
for (var i = 0; i < tabList.length; i++) {
    tabList[i].querySelector('.btn').addEventListener('click', function (e) {
        e.preventDefault();
        for (var j = 0; j < tabList.length; j++) {
            tabList[j].classList.remove('is_on');
            contents[j].style.display = 'none';
        }
        this.parentNode.classList.add('is_on');
        activeCont = this.getAttribute('href');
        document.querySelector(activeCont).style.display = 'block';
    });
}
