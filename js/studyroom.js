
// 레이어 팝업 부분 
var target = document.querySelectorAll('.btnopen');
var btnPopClose = document.querySelectorAll('.popWrap .btnClose');
var confrimClose = document.querySelectorAll('.popWrap .confrim');
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

  confrimClose[j].addEventListener('click', function(){
    this.parentNode.parentNode.style.display = 'none';
  });
}


for(var i = 0; i < 7; i++){
Fancybox.bind('[data-fancybox="gallery[i]"]', {
  Image: {
    zoom: false,
  },
  showClass: "fancybox-zoomIn",
  hideClass: "fancybox-zoomOut",
});
}

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




// 레이어 팝업 VR 부분 
var target = document.querySelectorAll('.openbtn');
var btnPopClose = document.querySelectorAll('.popWrap1 .btnClose');
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


