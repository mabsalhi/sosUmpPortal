/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

AUI().ready(
	'liferay-sign-in-modal',
	function(A) {
		var signIn = A.one('.sign-in > a');

		if (signIn && signIn.getData('redirect') !== 'true') {
			signIn.plug(Liferay.SignInModal);
		}
	}
);

$( '.navbar' ).append( '<span class="nav-bg"></span>' );


$('.dropdown-toggle').click(function () { 
  
  if (!$(this).parent().hasClass('open')) {
  
        $('html').addClass('menu-open');  
    
  } else {
    
     $('html').removeClass('menu-open');  

}
    
});


$(document).on('click touchstart', function (a) {
        if ($(a.target).parents().index($('.navbar-nav')) == -1) {
                $('html').removeClass('menu-open');  
        }
});