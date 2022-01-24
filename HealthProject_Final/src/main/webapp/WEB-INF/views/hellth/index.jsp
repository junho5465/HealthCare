<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
		<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="../resources/css/pe-icon-7-stroke.css">
        <link rel="stylesheet" href="../resources/css/helper.css">
        <link rel="stylesheet" href="../resources/css/owl.carousel.css">
        <link rel="stylesheet" href="../resources/css/owl.theme.css">
        <link rel="stylesheet" href="../resources/css/animate.css">
        <link rel="stylesheet" href="../resources/css/index.css">

        <!-- google fonts -->
        <link href='http://fonts.googleapis.com/css?family=Dosis:200,300,400,500|Lato:300,400,700,900,300italic,400italic,700italic,900italic|Raleway:400,200,300,500,100|Titillium+Web:400,200,300italic,300,200italic' rel='stylesheet' type='text/css'>

        <script src="../resources/js/modernizr.js"></script>
<meta charset="UTF-8">
<html>
<head>
<title>HELLTH INDEX</title>
</head>
<body id="body">
        <!-- Header area -->
        <header id="header">
            <div class="center text-center">
                <h1 class="bigheadline">HELLTH</h1>
                <h4 class="subheadline">당신은 어느쪽입니까?</h4>
                <br/>
                <button class="index_login_button" onClick="location.href='/hellth/survey'">참가하기</button>
                <button class="index_login_button" onClick="location.href='/hellth/Login'">로그인</button> 
            </div>
            <div class="bottom">
                <a data-scroll href="#navigation" class="scrollDown animated pulse" id="scrollToContent"><i class="pe-7s-angle-down-circle pe-va"></i></a>
            </div>
        </header>

        <!-- Navigation area -->
        <section id="navigation">
            <div class="container">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="logo"><a data-scroll href="#body" class="logo-text">HELLTH</a></div>
                    </div>
                    
                    <!-- ≡ 드랍다운 메뉴 -->
                    <!-- <div class="col-xs-6">
                        <div class="nav">
                            <a href="#" data-placement="bottom" title="Menu" class="menu" data-toggle="dropdown"><i class="pe-7s-menu"></i></a>
                             <div class="dropdown-menu">
                                 <div class="arrow-up"></div>
                                 <ul>
                                     <li><a data-scroll href="#body">Home <i class="pe-7s-home"></i></a><span class="menu-effect"></span></li>
                                     <li><a data-scroll href="#services">Service <i class="pe-7s-config"></i></a><span class="menu-effect"></span></li>
                                     <li><a data-scroll href="#portfolio">Portfolio <i class="pe-7s-glasses"></i></a><span class="menu-effect"></span></li>
                                     <li><a data-scroll href="#testimonial">Testimonial <i class="pe-7s-comment"></i><span class="menu-effect"></span></a></li>
                                     <li><a data-scroll href="#contact">Contact <i class="pe-7s-help1"></i></a><span class="menu-effect"></span></li>
                                 </ul>
                             </div>
                        </div>
                    </div> -->

                </div>
            </div>            
        </section>
        
        <!-- Content Area -->

        <!-- services section -->

        <section id="services" class="service-area">
            <div class="container">
                <h2 class="block_title">Services</h2>
                <div class="row"> 
                    <div class="col-md-3 col-sm-6">
                        <div class="services">
                            <div class="service-wrap">
                                <i class="pe-7s-monitor pe-dj pe-va"></i>
                                <h3>운동 정보</h3>
                                <p>당신이 찾는 모든 운동 정보가 한곳에! 상세한 설명 및 영상자료 까지 모두 있다고?</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="services">
                            <div class="service-wrap">
                                <i class="pe-7s-like pe-dj pe-va"></i>
                                <h3>운동 관리</h3>
                                <p>소중한 운동 내역을 기록하고, 차트로 확인하세요!</p>
                            </div>
                        </div>
                    </div>
                      <div class="col-md-3 col-sm-6">
                        <div class="services">
                            <div class="service-wrap">                
                                <i class="pe-7s-coffee pe-dj pe-va"></i>
                                <h3>식단 정보</h3>
                                <p>당신이 찾는 모든 음식 정보가 한곳에!</p>
                            </div>
                        </div>                        
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="services">
                            <div class="service-wrap">
                                <i class="pe-7s-note2 pe-dj pe-va"></i>
                                <h3>식단 관리</h3>
                                <p>오늘 먹은 식단의 영양소와 맞춤형 식단까지 알려드립니다!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- services -->

        <!-- Portfolio Area -->

        <section id="portfolio" class="portfolio-area">
            <div class="container">
                <h2 class="block_title">Motivation</h2>
                <div class="row port cs-style-3">
                    <div class="col-md-4 col-sm-6 col-xs-12 item-space">
                        <figure>
                            <img src="../resources/images/portfolio1.jpg" alt="img04">
                            <figcaption>
                                <h3>상상하라</h3>
                                <span>그대로 이루어진다</span>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 item-space">
                        <figure>
                            <img src="../resources/images/portfolio2.jpg" alt="img01">
                            <figcaption>
                                <h3>운동은</h3>
                                <span>하루를 짧게하지만 인생을 길게 해준다</span>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 item-space">
                        <figure>
                            <img src="../resources/images/portfolio3.jpg" alt="img02">
                            <figcaption>
                                <h3>습관이</h3>
                                <span>당신을 계속 움직이게한다.</span>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 item-space">
                        <figure>
                            <img src="../resources/images/portfolio4.jpg" alt="img04">
                            <figcaption>
                                <h3>최고의</h3>
                                <span>경쟁자는 늘 내 자신이다</span>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 item-space">
                        <figure>
                            <img src="../resources/images/portfolio5.jpg" alt="img01">
                            <figcaption>
                                <h3>당신의 생각과</h3>
                                <span>감정이 당신의 인생을 창조한다</span>
                            </figcaption> 
                        </figure>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 item-space">
                        <figure>
                            <img src="../resources/images/portfolio6.jpg" alt="img02">
                            <figcaption>
                                <h3>승자는</h3>
                                <span>한번 더 시도해본 패자다</span>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="col-xs-12">
                        <div class="btn-center"><a href="#" class="big button">Go Top</a></div>
                    </div>
                </div>
            </div><!-- container -->
        </section><!-- portfolio -->

        <!-- Testimonial Area -->

        <!-- <section id="testimonial" class="testimonial-area">
            <div class="container">
                <h2 class="block_title">Testimonials</h2>
                <div class="row">
                    <div class="col-xs-12">
                    </div>
                    <div id="testimonial-container" class="col-xs-12">
                        <div class="testimonila-block">
                            <img src="assets/images/testimonial.jpg" alt="clients" class="selfshot">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem sed mollitia illum! Molestiae dignissimos, hic dolorem et eius ut nobis. Corrupti totam amet aperiam aut voluptate nobis dolor at soluta.</p>
                            <strong>Monir Hossain</strong>
                            <br>
                            <small>C.E.O</small>
                        </div>
                        <div class="testimonila-block">
                            <img src="assets/images/testimonial2.jpg" alt="clients" class="selfshot">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem sed mollitia illum! Molestiae dignissimos, hic dolorem et eius ut nobis. Corrupti totam amet aperiam aut voluptate nobis dolor at soluta.</p>
                            <strong>Nur Ul Hossain</strong>
                            <br>
                            <small>Project Manager</small>
                        </div>
                        <div class="testimonila-block">
                            <img src="assets/images/testimonial3.jpg" alt="clients" class="selfshot">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem sed mollitia illum! Molestiae dignissimos, hic dolorem et eius ut nobis. Corrupti totam amet aperiam aut voluptate nobis dolor at soluta.</p>
                            <strong>Hossain Abrar</strong>
                            <br>
                            <small>Developer</small>
                        </div>
                    </div>
                </div>
            </div>container 
        </section>testimonial -->

        <!-- Contact Area -->

        <!-- <section id="contact" class="mapWrap">
            <div id="googleMap" style="width:100%;"></div>
            <div id="contact-area">
                <div class="container">
                    <h2 class="block_title">Hey !!!</h2>
                    <div class="row">
                        <div class="col-xs-12">
                        </div>
                        <div class="col-sm-6">
                            <div class="moreDetails">
                                <h2 class="con-title">More About me</h2>
                                <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum animi repudiandae nihil aspernatur repellat temporibus doloremque sint ea laboriosam, excepturi iure inventore rerum voluptatibus, suscipit totam, sit necessitatibus. Rerum, blanditiis. </p>
                                <ul class="address">
                                    <li><i class="pe-7s-map-marker"></i><span>1600 Pennsylvania Ave NW,<br>Washington, DC 20500,<br>United States</span></li>
                                    <li><i class="pe-7s-mail"></i><span>example@gmail.com</span></li>
                                    <li><i class="pe-7s-phone"></i><span>+1-202-555-0144</span></li>
                                    <li><i class="pe-7s-global"></i><span><a href="#">www.themewagon.com</a></span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <h2 class="con-title">Drop us a line</h2>
                            <form role="form">
                              <div class="form-group">
                                <input type="text" class="form-control" id="user_name" placeholder="Enter your name">
                              </div>
                              <div class="form-group">
                                <input type="email" class="form-control" id="your_email" placeholder="Enter your email">
                              </div>
                              <div class="form-group">
                                <textarea name="InputMessage" id="user_message" class="form-control" rows="5" required></textarea>
                              </div>

                              <button type="submit" class="btn medium">Let us know</button>
                            </form>   
                        </div>
                    </div>
                </div>container
            </div>contact-area -->
            <div id="social">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <ul class="scoialinks">
                                <li class="normal-txt">Made By Team HELLTH</li>
                                <li class="social-icons"><a class="facebook" href="#"></a></li>
                                <li class="social-icons"><a class="twitter" href="#"></a></li>
                                <li class="social-icons"><a class="linkedin" href="#"></a></li>
                                <li class="social-icons"><a class="google-plus" href="#"></a></li>
                                <li class="social-icons"><a class="git" href="#"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><!-- social -->
        </section><!-- contact -->

        <!-- Footer Area -->

        <!-- <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <p class="copyright">© Copyright 2014 <a href="#" target="_blank">Your Website Link</a></p>
                    </div>
                    <div class="col-sm-6">
                        <p class="designed">Theme by <a href="http://themewagon.com" target="_blank">Themewagon</a></p>
                    </div>
                </div>
            </div>
        </footer> -->

        <!-- Necessery scripts -->
        <script src="../resources/js/jquery-2.1.3.min.js"></script>
        <script src="../resources/js/bootstrap.min.js"></script>
        <script src="../resources/js/jquery.actual.min.js"></script>
        <script src="../resources/js/smooth-scroll.js"></script>
        <script src="../resources/js/owl.carousel.js"></script>
        <script src="../resources/js/script.js"></script>
</html>