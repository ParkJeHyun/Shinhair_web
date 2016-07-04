(function($) {
    "use strict";

    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 60
    });

    $('#topNav').affix({
        offset: {
            top: 200
        }
    });
    
    new WOW().init();
    
    $('a.page-scroll').bind('click', function(event) {
        var $ele = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($ele.attr('href')).offset().top - 60)
        }, 1450, 'easeInOutExpo');
        event.preventDefault();
    });
    
    $('.navbar-collapse ul li a').click(function() {
        /* always close responsive nav after click */
        $('.navbar-toggle:visible').click();
    });

    $('#galleryModal').on('show.bs.modal', function (e) {
       $('#galleryImage').attr("src",$(e.relatedTarget).data("src"));
    });
    
    $.renderTable = function(templateSelector, arrayData) {
        var template = $(templateSelector);
        var container = template.parent();

        container.children().not(template).remove();

        var html = container.html();

        //template.remove();

        for (var i = 0; i < arrayData.length; i++)
            $(Mustache.render(html, arrayData[i])).removeClass('x-template').appendTo(container);
    };
    
})(jQuery);