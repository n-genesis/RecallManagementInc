<?php echo $header; ?>
<!-- Video Banner -->
<div id="video-bannder" class="hidden-xs hidden-sm">
  <div class="video-bannder">
    <video poster="media/cover.png" autoplay muted loop id="video-bg">
      <!--
      <source src="media/Working-Space.webm" type="video/webm"></source>
      -->
      <source src="media/typing.mp4" type="video/mp4"></source>
    </video>

    <div class="video-bannder-content">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <img src="image/catalog/logo_2.png" class="mx-auto d-block img-fluid" alt="">
            <div  class=" text-center">
            <!--
            <h1>Helping Restore Good Faith</h1>
            <h2>In Your Products</h2>
            -->
            <p>
              We handle every aspect of your recall or retrofit event using professinal methods and todays technologies.
            </p>
            </div>
          </div>
        </div>
      </div>
    
    </div>
  </div>
</div>
<?php echo $content_top; ?>
<div id="testimonials-slider" class="dark">
    <div class="container">
        <h2 class="text-center text-white">What out customer have to say?</h2>
        <div id="testimonials-carousel" class="owl-carousel carousel-full-nav owl-theme">
            <div class="block image-block text-center inner-space">
                <img src="image/user_avatar/testimonial1.jpg" class="block-image circle" alt="">
                <p class="box-description">
                    Vivamus ornare est at enim placerat, sed rutrum risus consequat. Nam nec feugiat est. Aliquam imperdiet nulla a libero facilisis, vel sollicitudin urna egestas.
                </p>
                <p class="cite text-sm text-secondary">
                    - John Doe
                </p>
            </div><!-- / image-block -->

            <div class="block image-block text-center inner-space">
                <img src="image/user_avatar/testimonial2.jpg" class="block-image circle" alt="">
                <p class="box-description">
                    Pellentesque ut hendrerit libero. Etiam interdum, velit eget euismod maximus, arcu magna vehicula ligula, at vulputate tortor ligula et nisi.
                </p>
                <p class="cite text-sm text-secondary">
                    - Jane Doe
                </p>
            </div><!-- / image-block -->

            <div class="block image-block text-center inner-space">
                <img src="image/user_avatar/testimonial3.jpg" class="block-image circle" alt="">
                <p class="box-description">
                    Vestibulum tincidunt orci arcu, non gravida arcu posuere non. Aliquam porta ut enim nec consequat. In tempor ultrices massa sit amet pretium.
                </p>
                <p class="cite text-sm text-secondary">
                    - James Doe
                </p>
            </div><!-- / image-block -->
        </div><!-- / testimonials-carousel -->
    </div><!-- / container -->
</div>
<!-- / testimonials-slider -->
<script>
$('#testimonials-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    dots:false,
    navText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
    items:1,
    animateIn: 'slideInRight',
    animateOut: 'slideOutLeft'
})
</script>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>