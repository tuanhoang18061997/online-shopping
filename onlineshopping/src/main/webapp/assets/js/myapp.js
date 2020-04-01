$(function() {
	switch (menu) {
	case "About US":
		$('#about').addClass('active');
		$("#about>.nav-link").css("color","white");
		break;
	case "Contact US":
		$('#contact').addClass('active');
		$("#contact>.nav-link").css("color","white");
		break;
	default:
		$('#home').addClass('active');
		$("#home>.nav-link").css("color","white");
		break;
	}
});