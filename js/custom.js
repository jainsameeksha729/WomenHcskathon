jQuery.easing['jswing'] = jQuery.easing['swing'];

jQuery.extend( jQuery.easing,
{
    easeInSine: function (x, t, b, c, d) {
        return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
    },
    easeInOutExpo: function (x, t, b, c, d) {
        if (t==0) return b;
        if (t==d) return b+c;
        if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
        return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
    },
    easeInExpo: function (x, t, b, c, d) {
        return (t==0) ? b : c * Math.pow(2, 10 * (t/d - 1)) + b;
    },
    easeOutExpo: function (x, t, b, c, d) {
        return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
    },

});
(function($) {
    $.fn.extend({
        animateCss: function(animationName) {
            var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
            this.addClass('animated ' + animationName).one(animationEnd, function() {
                $(this).removeClass('animated ' + animationName);
            });
        }
    });

    $(function() {
        $('a.page-scroll').bind('click', function(event) {
            var $anchor = $(this);
            var duration = $(document.width)>767 ? 250 : 500;
            var ease = $(document.width)>767 ? 'easeInOutExpo' : 'easeInSine';
            $('html, body').stop().animate({
                scrollTop: $($anchor.attr('href')).offset().top
            }, duration, ease);
            event.preventDefault();
        });
    });

    $('#heroCarousel').on('slide.bs.carousel', function(event) { //slide starts
        var slide_new = $(event.relatedTarget).find('.carousel-caption'); //incoming slide
        if (Modernizr.cssanimations) { //has css3
            // var slide_old = slide_new.parent().parent().find('.item.active.'+event.direction);  //get dom of old slide
            // slide_old.find('.caption').animateCss('fadeOutDown');
            // slide_old.find('.btn').animateCss('fadeOutDown');
            slide_new.find('.caption').animateCss('fadeInDown');
            slide_new.find('.btn').animateCss('fadeInUp');
        } else { //no css3
            slide_new.hide();
            setInterval(function() { slide_new.slideDown("slow"); }, 250)
        }
    });
    $('#about-us .row1').matchHeight();
    $('#about-us .row2').matchHeight();

    if ($(window).width() > 20) {
        var headerHeight = $('.cd-header').height();
        $(window).on('scroll', {
                previousTop: 0
            },
            function() {
                var currentTop = $(window).scrollTop();
                //check if user is scrolling up
                if (currentTop < this.previousTop) {
                    //if scrolling up...
                    if (currentTop > 0 && $('.cd-header').hasClass('is-fixed')) {
                        $('.cd-header').addClass('is-visible');
                    } else {
                        $('.cd-header').removeClass('is-visible is-fixed');
                    }
                } else {
                    //if scrolling down...
                    $('.cd-header').removeClass('is-visible');
                    if (currentTop > headerHeight && !$('.cd-header').hasClass('is-fixed')) $('.cd-header').addClass('is-fixed');
                }
                this.previousTop = currentTop;
            });
    }

    $('.cd-primary-nav-trigger').on('click', function() {
        $('.cd-menu-icon').toggleClass('is-clicked');
        $('.cd-header').toggleClass('menu-is-open');

        //in firefox transitions break when parent overflow is changed, so we need to wait for the end of the trasition to give the body an overflow hidden
        if ($('.cd-primary-nav').hasClass('is-visible')) {
            $('.cd-primary-nav').removeClass('is-visible').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function() {
                $('body').removeClass('overflow-hidden');
            });
        } else {
            $('.cd-primary-nav').addClass('is-visible').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function() {
                $('body').addClass('overflow-hidden');
            });
        }
    });

    //jQuery to collapse the navbar on scroll
    // $(window).scroll(function() {
    //     if ($(".navbar").offset().top > 50) {
    //         $(".navbar-fixed-top").addClass("top-nav-collapse");
    //     } else {
    //         $(".navbar-fixed-top").removeClass("top-nav-collapse");
    //     }
    // });


})(jQuery);