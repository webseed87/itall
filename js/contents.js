
// 잇올 패스 온오프 효과 
$(function(){
   $('#contentsWarp .itallpass ul li').hover(function(){
        $(this).addClass('on').siblings('li').removeClass('on');
    })
})  


const on = document.querySelector('.itallpass.content ul li').addEventListener('mouseleave', function(){
    this.classList.remove('on');
})


// 이미지 롤링 마우스 오버 효과
const bookwrap = document.querySelector(".bookwrap");

bookwrap.addEventListener("mouseover", e => {
    bookwrap.style.animationPlayState = "paused";
});

bookwrap.addEventListener("mouseleave", e => {
    bookwrap.style.animationPlayState = "running";
});


