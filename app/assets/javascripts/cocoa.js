$(document).ready(function() {
	resize();
});

$(window).resize(function() {
	resize();
});

function resize() {
	var contentW = 1920;
	var contentH = 979;
	var w = $(window).width();
	//var h = $(window).height();
	
	var scale = 1;
	
	//if(h/contentH < w/contentW) {
	//	scale = h/contentH;
	//} else {
		scale = w/contentW;
	//}
	
	// document.body.setAttribute("style", "zoom: "+scale+"; background-size: "+(w/scale)+"px "+(h/scale)+"px; background-repeat: no-repeat;");
	//document.body.setAttribute("style", "background-size: "+(w/scale)+"px "+contentH+"px; background-repeat: no-repeat;");
	console.log($("#jquery-overlay"));
	$("#jquery-overlay").css("width", w/scale);
	//$("#jquery-overlay").css("height", h/scale);
}