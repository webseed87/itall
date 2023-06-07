// 체크박스 부분
function toggle(source) {
    checkboxes =  document.querySelectorAll('input[name^="agree"]');
    for(var i=0, n=checkboxes.length;i<n;i++) {
      checkboxes[i].checked = source.checked;
    }
  }
  function agreeform_submit(f)
  {
      if (!f.agree1.checked) {
          alert("잇올 스파르타 이용 약관에 동의하셔야 회원가입 하실 수 있습니다.");
          f.agree1.focus();
          return false;
      }

      if (!f.agree2.checked) {
          alert("개인정보 수집 안내에 동의하셔야 회원가입 하실 수 있습니다.");
          f.agree2.focus();
          return false;
      }
      return true;
  }

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


  