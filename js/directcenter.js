// 탭 영역 처리 부분
const tabList = document.querySelectorAll('.tabmenu .list li');
const contents = document.querySelectorAll('.tabmenu .contarea .cont')
let activeCont = ''; 
for(var i = 0; i < tabList.length; i++){
  tabList[i].querySelector('.btn').addEventListener('click', function(e){
    e.preventDefault();
    for(var j = 0; j < tabList.length; j++){
      tabList[j].classList.remove('is_on');
      contents[j].style.display = 'none';
    }
    this.parentNode.classList.add('is_on');
    activeCont = this.getAttribute('href');
    document.querySelector(activeCont).style.display = 'block';
  });
}

const tab = document.querySelectorAll('.tabmenus1 .list li');
const cont = document.querySelectorAll('.tabmenus1 .contarea1 .cont')
let activeCon = ''; 
for(var i = 0; i < tab.length; i++){
    tab[i].querySelector('.btn').addEventListener('click', function(e){
    e.preventDefault();
    for(var j = 0; j < tab.length; j++){
        tab[j].classList.remove('ison');
        cont[j].style.display = 'none';
    }
    this.parentNode.classList.add('ison');
    activeCon = this.getAttribute('href');
    document.querySelector(activeCon).style.display = 'block';
  });
}


 // 센터 더보기 영역
const moreview = document.querySelectorAll('.moreview');
const tabinfo = document.querySelectorAll('.tabinfo');
moreview.forEach( (moreview) => {
  moreview.addEventListener('click',  function(){
    moreview.classList.toggle("open");
    tabinfo.forEach( (tabinfo) => {
    tabinfo.classList.toggle("open"); });
  });});

 // 광역시 셀렉트 토글 버튼 
function selectlist() {
  let selectbtn = document.querySelector(".selectbtn");
  let selectlist = document.querySelector(".selectlist");
  selectbtn.classList.toggle("open");
  selectlist.classList.toggle("open");
}

 // 유형 셀렉트 토글 버튼 
 function typelist() {
  let typebtn = document.querySelector(".typebtn");
  let typelist = document.querySelector(".typelist");
  typebtn.classList.toggle("open");
  typelist.classList.toggle("open");
}
