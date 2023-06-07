//고정 아이콘 스크롤 효과
window.onscroll = function() {myFunction()};
function myFunction() {
  if (document.documentElement.scrollTop > 150) {
    document.getElementById("righticon").className = "displayblock";
  } else {
    document.getElementById("righticon").className = "";
  }
}
//상단 토글 메뉴
function subMenu() {
  let togglebtn = document.querySelector(".togglebtn");
  let togglemenu = document.querySelector(".togglemenu");
  togglebtn.classList.toggle("open");
  togglemenu.classList.toggle("open");
}

//하단  패밀리 토글 메뉴
function familyMenu() {
  let familysitemenubtn = document.querySelector(".familysitemenubtn");
  let familysitemenu = document.querySelector(".familysitemenu");
  familysitemenubtn.classList.toggle("open");
  familysitemenu.classList.toggle("open");
}

//메뉴 오버시 전체메뉴 full down menu
var header = document.querySelector('header');
var menu_title = document.querySelector('.menu_title');
var smenu = document.querySelector('.smenu_wrap');
var sub_menu = document.querySelector('.sub_menu');
var menu_border = document.querySelector('.menu_border');


menu_title.addEventListener('mouseover', function () {
  header.style.height = '420px';
  header.style.background = '#fff';
  smenu.style.display = 'block';
  menu_border.style.display = 'block';
});

menu_title.addEventListener('mouseout', function () {
  header.style.height = '0px';
  header.style.background = 'none';
  smenu.style.display = 'none';


});

smenu.addEventListener('mouseover', function () {
  header.style.height = '420px';
  header.style.background = '#fff';
  smenu.style.display = 'block';
  menu_border.style.display = 'block';
});

smenu.addEventListener('mouseout', function () {
  header.style.height = '0px';
  header.style.background = 'none';
  smenu.style.display = 'none';


})
