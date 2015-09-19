/**
 * Created by nmtsylla on 7/25/15.
 */
$(function(){

    var now = moment();


    $('.newsticker').newsTicker({
        row_height: 65,
        max_rows: 5,
        speed: 600,
        direction: 'up',
        duration: 4000,
        autostart: 1,
        pauseOnHover: 0
    });

    $('.sagesse-news').newsTicker({
        row_height: 65,
        max_rows: 5,
        speed: 600,
        direction: 'up',
        duration: 4000,
        autostart: 1,
        pauseOnHover: 0
    });

    $('.contrib-news').newsTicker({
        row_height: 390,
        max_rows: 1,
        speed: 600,
        direction: 'down',
        duration: 15000,
        autostart: 1,
        pauseOnHover: 1
    });

    $('.fil').newsTicker({
        row_height: 65,
        max_rows: 5,
        speed: 800,
        direction: 'up',
        duration: 5000,
        autostart: 1,
        pauseOnHover: 1
    });

    $('#news-demo').slippry({
        // general elements & wrapper
        slippryWrapper: '<div class="sy-box news-slider" />', // wrapper to wrap everything, including pager
        elements: 'article', // elments cointaining slide content

        // options
        adaptiveHeight: false, // height of the sliders adapts to current
        captions: false,

        // pager
        pagerClass: 'news-pager',

        // transitions
        transition: 'horizontal', // fade, horizontal, kenburns, false
        speed: 1200,
        pause: 8000,

        // slideshow
        autoDirection: 'next'
    });

    $(".news-pager").append('<a class="button-link read-more btn btn-primary" href="/articles">Afficher tous les articles</a>');



});


$(".timeline").timelinr({
    autoPlay: 'false',
    autoPlayDirection: 'forward'
});