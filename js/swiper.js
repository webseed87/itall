  // 메인 배너 
const swiper = new Swiper('.mainWrap', {
  // Optional parameters
  direction: 'horizontal',
  loop: true,
  centeredSlides: true, 
  // If we need pagination
  pagination: {
    el: '.swiper-pagination',
	type:'fraction'
  },

  // Navigation arrows
  navigation : {				
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',			
			},
  spaceBetween: 0,
slidesPerView: "auto",
grabCursor: true,
centeredSlides :true,
speed:1000,
autoplay: {
				delay:4000,		
				disableOnInteraction : true
			}	
});
