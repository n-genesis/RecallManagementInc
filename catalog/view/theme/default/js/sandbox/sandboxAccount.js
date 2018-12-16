/**
 * @author andrewnite
 * Author: Andrew Nite <info@ngendesign.net>
 * "Building to simply build"
 */
$(function() {
	$('#preloader').delay(450).fadeOut(function() {
		//html5Audio.audioPlay('sunny');
	});
	//New Notifications
	$.ajax({
		url : 'index.php?route=account/notification/getnewnotifications',
		dataType : 'json',
		success : function(json) {
			//For simple nifty UI effect
			window.setTimeout(function() {
				if (json.new == 'yes' && json.viewed != 'yes') {
					if (!sessionStorage.getItem("rmip-session-new-notice")) {
						$.notify({
							title : 'Alert',
							message : json.message
						}, {
							type : 'info',
							delay : 0,
							offset : {
								x : 20,
								y : 85
							},
							onShow : function() {
								html5Audio.audioPlay('confident');
							},
							onClosed : function() {
								sessionStorage.setItem('rmip-session-new-notice', true);
							}
						});
					} else {
						//set session so it won't show again
						//sessionStorage.setItem('rmip-session-new-notice',true);
					}
				}
			}, 1500);
		}
	});

	/*Live Customer Support*/
	$.ajax({
		url : 'index.php?route=account/live_customer_support/adminLoggedIn',
		dataType : 'json',
		success : function(json) {
			window.setTimeout(function() {
				if (json.admin_loggedin == 'yes' && json.viewed != 'yes') {
					if (!sessionStorage.getItem("rmip-session-live-support-notice")) {
						$.notify({
							title : 'We\'re Here To Help',
							message : json.message
						}, {
							type : 'success',
							delay : 0,
							offset : {
								x : 20,
								y : 85
							},
							onShow : function() {
								html5Audio.audioPlay('confident');
							},
							onClosed : function() {
								sessionStorage.setItem('rmip-session-live-support-notice', true);
							}
						});
					} else {
					}
				}
			}, 1500);
		}
	});
	

});
/*--------------------------------------------------------------------------
Image modal effect
--------------------------------------------------------------------------*/
//$('[data-sandbox="demo"]').on('click',sandboxModal.demoModal);
