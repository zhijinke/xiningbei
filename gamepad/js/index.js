// 轮播图
var swiper = new Swiper(".mySwiper", {
			loop: true,
			spaceBetween: 2,
			slidesPerView: 5,
			freeMode: true,
			watchSlidesProgress: true,
			autoplay : {
				delay : 5000, //自动切换的时间间隔，单位ms
				disableOnInteraction : false //用户操作swiper之后，是否禁止autoplay
			},
		});
		var swiper2 = new Swiper(".mySwiper2", {
			loop: true,
			spaceBetween: 2,
			autoplay : {
				delay : 5000, //自动切换的时间间隔，单位ms
				disableOnInteraction : false //用户操作swiper之后，是否禁止autoplay
			},
			thumbs: {
				swiper: swiper,
			},
		});


