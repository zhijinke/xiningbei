// 回到顶部
if ($(this).scrollTop() == 0) {
	$(".rocket").hide();
}
$(window).scroll(function(event) {
	/* Act on the event */
	if ($(this).scrollTop() == 0) {
		$(".rocket").hide();
	}
	if ($(this).scrollTop() != 0) {
		$(".rocket").show();
	}
});
$(".rocket").click(function(event) {
	/* Act on the event */
	$("html,body").animate({
			scrollTop: "0px" 
		},
	)
});