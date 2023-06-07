//고정 아이콘 스크롤 효과
window.onscroll = function() {myFunction()};
function myFunction() {
  if (document.documentElement.scrollTop > 250) {
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

$('.togglebtn').click(function(event){
  event.stopPropagation();
  $('.togglemenu').toggle();
  $('.togglebtn' ).addClass('open' );
});


$('.togglebtn.open').click(function(event){
 removeClass( 'open' );
});


$(document).click(function(){
  $('.togglemenu').hide();
  $('.togglebtn' ).removeClass( 'open' );
});


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
  header.style.height = '60px';
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

// 메인 배너 2개 슬라이더 
function scrollEv(leftArrow, rightArrow, carousel) {
  if (carousel.scrollLeft <= 0) {
    leftArrow.classList.add("arrow-inactive");
  } else {
    leftArrow.classList.remove("arrow-inactive");
  }
  if (carousel.scrollLeft >= carousel.scrollWidth - carousel.offsetWidth - 1) {
    rightArrow.classList.add("arrow-inactive");
  } else {
    rightArrow.classList.remove("arrow-inactive");
  }
}

function clicleftArrow(carousel, rectList) {
  let shiftScroll;
  for (let i = 0; i < rectList.length; i++) {
    if (carousel.scrollLeft > rectList[rectList.length - 1]) {
      shiftScroll = rectList[rectList.length - 1];
    } else if (
      carousel.scrollLeft > rectList[i] &&
      carousel.scrollLeft <= rectList[i + 1]
    ) {
      shiftScroll = rectList[i];
    }
  }
  carousel.scrollTo({
    left: shiftScroll,
    behavior: "smooth"
  });
}

function clickRight(carousel, rectList) {
  let shiftScroll;
  for (let i = 0; i < rectList.length; i++) {
    if (
      carousel.scrollLeft >= rectList[i] - 1 &&
      carousel.scrollLeft < rectList[i + 1]
    ) {
      shiftScroll = rectList[i + 1];
    }
  }
  carousel.scrollTo({
    left: shiftScroll,
    behavior: "smooth"
  });
}

function listRectCarousel(carouselNumber, carousels) {
  let divs = carousels[carouselNumber].getElementsByClassName("carousel-item");
  let rectList = [];
  let rectGauche = carousels[carouselNumber].getBoundingClientRect().left;

  for (let i = 0; i < divs.length; i++) {
    let rect = divs[i].getBoundingClientRect();
    rectList.push(rect.left - rectGauche);
  }

  for (let i = rectList.length - 1; i >= 0; i--) {
    rectList[i] = rectList[i] - rectList[0];
  }
  return rectList;
}

function autoSlidePosLeft(carouselNumber, carousels, leftArrows) {
  let rectList = listRectCarousel(carouselNumber, carousels);
  leftArrows[carouselNumber].addEventListener("click", () => {
    clicleftArrow(carousels[carouselNumber], rectList);
  });
}

function autoSlidePosRight(carouselNumber, carousels, rightArrows) {
  let rectList = listRectCarousel(carouselNumber, carousels);
  rightArrows[carouselNumber].addEventListener("click", () => {
    clickRight(carousels[carouselNumber], rectList);
  });
}

window.onload = () => {
  let leftArrows = document.getElementsByClassName("left-arrow");
  let rightArrows = document.getElementsByClassName("right-arrow");
  let carousels = document.getElementsByClassName("carousel");

  for (let i = 0; i < leftArrows.length; i++) {
    autoSlidePosLeft(i, carousels, leftArrows);
    window.onresize = () => {
      autoSlidePosLeft(i, carousels, leftArrows);
    };
  }

  for (let i = 0; i < rightArrows.length; i++) {
    autoSlidePosRight(i, carousels, rightArrows);
    window.onresize = () => {
      autoSlidePosRight(i, carousels, rightArrows);
    };
  }

  for (let i = 0; i < carousels.length; i++) {
    carousels[i].addEventListener("scroll", () => {
      scrollEv(leftArrows[i], rightArrows[i], carousels[i]);
    });
  }

  for (let i = 0; i < carousels.length; i++) {
    scrollEv(leftArrows[i], rightArrows[i], carousels[i]);
    window.onresize = () => {
      scrollEv(leftArrows[i], rightArrows[i], carousels[i]);
    };
  }


};

// 학사일정 롤링 마우스 오버시 스탑 효과 
const textrolling = document.querySelector(".textrolling");

textrolling.addEventListener("mouseover", e => {
  textrolling.style.animationPlayState = "paused";
});

textrolling.addEventListener("mouseleave", e => {
  textrolling.style.animationPlayState = "running";
});

// 수능 D-day 계산식 
const sunnengdday = document.querySelector("#sunnengdday");
function diffDay() {
  const masTime = new Date("2023-11-16");
  const todayTime = new Date();
  const diff = masTime - todayTime;
  const diffDay = Math.floor(diff / (1000 * 60 * 60 * 24));

  sunnengdday.innerText = `D - ${diffDay + 1}`;
}
diffDay();
setInterval(diffDay);

// 팝업 부분 
// var target = document.querySelectorAll('.btn_open');
// var btnPopClose = document.querySelectorAll('.popWrap .btnClose');
// var targetID;
// for(var i = 0; i < target.length; i++){
//   target[i].addEventListener('click', function(){
//     targetID = this.getAttribute('href');
 //    document.querySelector(targetID).style.display = 'block';
 //  });
// }
// for(var j = 0; j < target.length; j++){
 //  btnPopClose[j].addEventListener('click', function(){
 //    this.parentNode.parentNode.style.display = 'none';
 //  });
// }


// 유튜브 추가 재생부분
$(function(){

  var embed = $('#player'); //동영상 코드

  $('.btn_open1').on('click', function(){ //레이어 열때
    var path = $(this).attr('href');
    $('.iframe_box').append(embed);
    $(path).fadeIn();
  })

  $('.btnClose1').on('click', function(){ //레이어 닫을때
    $(this).parents('#popinfo1').fadeOut();
    $('.iframe_box').empty();
  })


});


/* 메인 팝업 부분 */

$(document).ready(function(){
  const pop = document.querySelector('#pop');
  const close = document.querySelector('#close');
  const shortcode_date = '2020-03-15T24:00:00'  // 끝나는 날짜를 설정

  // 쿠키 가져오기
  const getCookie = function (cname) {
      const name = cname + "=";
      const ca = document.cookie.split(';');
      for(let i = 0; i <ca.length; i++) {
          const c = ca[i];
          while (c.charAt(0)==' ') c = c.substring(1);
          if (c.indexOf(name) != -1) return c.substring(name.length,c.length);
      }
      return "";
  };

  // 24시간 기준 쿠키 설정하기  
  const setCookie = function (cname, cvalue, exdays) {
      const todayDate = new Date();
      todayDate.setTime(todayDate.getTime() + (exdays*24*60*60*1000));    
      const expires = "expires=" + todayDate.toUTCString(); // UTC기준의 시간에 exdays인자로 받은 값에 의해서 cookie가 설정 됩니다.
      document.cookie = cname + "=" + cvalue + "; " + expires;
  };

  const couponClose = function(){
      if(document.querySelector('input[name="chkbox"]').checked === true){
          setCookie("close","Y",1);   //기간( ex. 1은 하루, 7은 일주일)
      }
      pop.style.display = 'none';
  };

  const cookiedata = document.cookie;
  if(cookiedata.indexOf("close=Y")<0){
      pop.style.display = 'block';
  }else{
      pop.style.display = 'none';
  }

  close.addEventListener('click', function(){
      couponClose();
  });
})
