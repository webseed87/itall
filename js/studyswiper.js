
  // 시설 vr 슬라이더
  const swiper= new Swiper('.itallvr', {
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
    spaceBetween: 20,
  slidesPerView: "auto",
  grabCursor: true,
  centeredSlides :true,
  speed:2000,
  autoplay: {
          delay:4000,		
          disableOnInteraction : true
        }	
  });
  