$(function($){

    var alert = $('#alert');
    if(alert.length > 0){
        alert.hide().slideDown(1000);
        alert.find('.close').click(function(e){
            e.preventDefault();
            alert.slideUp();
        })
    }

});
