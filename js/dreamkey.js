import list from './list.js'


// 장학생 명단

const listEl = document.querySelector('.dreamkeywarp .jslist')

list.forEach(function (list)
{

    const rowEl = document.createElement('tr')
    rowEl.innerHTML = /* html */ `
      <td>${list.level}</td>
      <td>${list.center}</td>
      <td>${list.name}</td>
      <td>${list.university}</td>
    `
    listEl.appendChild(rowEl)

})


// 플러스 버튼 토글
const exampleboxEls = document.querySelectorAll('.examplebox');
const plusbuttonEls = document.querySelectorAll('.toptitle .plusbutton');

plusbuttonEls.forEach(function(button, index) {
  button.addEventListener('click', function() {
    const exampleboxEl = exampleboxEls[index];
    if(exampleboxEl.classList.contains('toggleing')){
      exampleboxEl.classList.remove('toggleing');
    } else{
      exampleboxEl.classList.add('toggleing');
    }
  });
});


// 팝업 부분 
var confrimClose = document.querySelectorAll('.popWrap .confrim');
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
  confrimClose[j].addEventListener('click', function(){
    this.parentNode.parentNode.style.display = 'none';
  });
}