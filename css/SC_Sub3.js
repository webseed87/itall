// 탭 영역 처리 부분
const tabList = document.querySelectorAll('.tabmenu .list li');
const contents = document.querySelectorAll('.tabmenu .contarea .cont')
let activeCont = ''; 
for(var i = 0; i < tabList.length; i++){
  tabList[i].querySelector('.btntab').addEventListener('click', function(e){
    e.preventDefault();
    for(var j = 0; j < tabList.length; j++){
      tabList[j].classList.remove('ison');
      contents[j].style.display = 'none';
    }
    this.parentNode.classList.add('ison');
    activeCont = this.getAttribute('href');
    document.querySelector(activeCont).style.display = 'block';
  });
}


$('.slickslide').slick({
    dots: true,
  slidesToShow: 3,
  slidesToScroll: 3,
  autoplay: true,
  autoplaySpeed: 3000,
}); 

$('.mentonowslide').slick({
    dots: true,
  slidesToShow: 3,
  slidesToScroll: 3,
  autoplay: true,
  autoplaySpeed: 3000,
}); 