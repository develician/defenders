<%@ page import="uploads.imageDAO" %>
<%@ page import="java.util.ArrayList" %>
<%
    imageDAO DAO = new imageDAO();
    ArrayList<String> srcLists = DAO.getSrcIronFist();


%>
<!DOCTYPE html>
<!-- saved from url=(0034)http://www.kristianhammerstad.com/ -->
<html lang="en"
      class="js alt no-touchevents wf-antiqueolive-n4-active wf-ocrastd-n4-active wf-bookmanjfpro-n4-active wf-active"
      scrolltop="NaN" style="">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Marvel Defenders</title>

    <meta name="author" content="Kristian Hammerstad">
    <meta name="title" content="Kristian Hammerstad - Illustrator">
    <meta name="description"
          content="Kristian Hammerstad is a Norwegian illustrator whose works have appeared in publications across the world. He also draws comics.">
    <meta property="og:title" content="Kristian Hammerstad - Illustrator">
    <meta property="og:description"
          content="Kristian Hammerstad is a Norwegian illustrator whose works have appeared in publications across the world. He also draws comics.">
    <meta property="og:url" content="http://www.kristianhammerstad.com//">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./includeFiles/Kristian%20Hammerstad%20-%20Illustrator_files/ga.js"></script>
    <script src="./includeFiles/Kristian%20Hammerstad%20-%20Illustrator_files/styletheme-init-min.js"></script>
    <script src="./includeFiles/Kristian%20Hammerstad%20-%20Illustrator_files/oyo7zux.js"></script>
    <style type="text/css">.tk-antique-olive {
        font-family: "antique-olive", sans-serif;
    }

    .tk-ocr-a-std {
        font-family: "ocr-a-std", sans-serif;
    }

    .tk-bookman-jf-pro {
        font-family: "bookman-jf-pro", sans-serif;
    }</style>
    <style type="text/css">@font-face {
        font-family: antique-olive;
        src: url(https://use.typekit.net/af/e84875/000000000000000000017952/27/l?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3) format("woff2"), url(https://use.typekit.net/af/e84875/000000000000000000017952/27/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3) format("woff"), url(https://use.typekit.net/af/e84875/000000000000000000017952/27/a?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3) format("opentype");
        font-weight: 400;
        font-style: normal;
    }

    @font-face {
        font-family: ocr-a-std;
        src: url(https://use.typekit.net/af/8ed3c7/000000000000000000012e5c/27/l?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3) format("woff2"), url(https://use.typekit.net/af/8ed3c7/000000000000000000012e5c/27/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3) format("woff"), url(https://use.typekit.net/af/8ed3c7/000000000000000000012e5c/27/a?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3) format("opentype");
        font-weight: 400;
        font-style: normal;
    }

    @font-face {
        font-family: bookman-jf-pro;
        src: url(https://use.typekit.net/af/a45b28/00000000000000003b9ada85/27/l?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3) format("woff2"), url(https://use.typekit.net/af/a45b28/00000000000000003b9ada85/27/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3) format("woff"), url(https://use.typekit.net/af/a45b28/00000000000000003b9ada85/27/a?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3) format("opentype");
        font-weight: 400;
        font-style: normal;
    }</style>
    <script>try {
        Typekit.load({async: false});
    } catch (e) {
    }</script>
    <link rel="stylesheet" href="./includeFiles/Kristian%20Hammerstad%20-%20Illustrator_files/style.css">
    <script src="./includeFiles/Kristian%20Hammerstad%20-%20Illustrator_files/modernizr.custom-min.js"></script>
    <%--<link rel="apple-touch-icon" sizes="180x180" href="http://www.kristianhammerstad.com/favicons/apple-touch-icon.png">--%>
    <%--<link rel="icon" type="image/png" href="http://www.kristianhammerstad.com/favicons/favicon-32x32.png" sizes="32x32">--%>
    <%--<link rel="icon" type="image/png" href="http://www.kristianhammerstad.com/favicons/favicon-16x16.png" sizes="16x16">--%>
    <%--<link rel="manifest" href="http://www.kristianhammerstad.com/favicons/manifest.json">--%>
    <%--<link rel="mask-icon" href="http://www.kristianhammerstad.com/favicons/safari-pinned-tab.svg" color="#ee1847">--%>
    <%--<link rel="shortcut icon" href="http://www.kristianhammerstad.com/favicon.ico">--%>
    <meta name="apple-mobile-web-app-title" content="Kristian Hammerstad">
    <meta name="application-name" content="Kristian Hammerstad">
    <%--<meta name="msapplication-config" content="./favicons/browserconfig.xml">--%>
    <meta name="theme-color" content="#ee1847">
</head>
<body class="index" scrolltop="NaN" style="background: #222222; color:#ffffff">
<div class="wrapper" id="top">


    <header class="header cf invert-links">
        <div class="container cf large">
            <div class="logo flat col one-four active"><span class="filter"><a
                    href="http://www.kristianhammerstad.com/#" data-filter="*" style="color:#ffffff">Iron Fist</a></span></div>
            <div class="menu cf">
                <ul class="flat col one-four">
                    <li class="filter"><a href="http://www.kristianhammerstad.com/#illustration"
                                          data-filter=".illustration" style="color:#ffffff">Only Pics</a></li>

                </ul>
                <ul class="flat col one-four">

                    <li class="filter"><a href="http://www.kristianhammerstad.com/#information"
                                          data-filter=".information" style="color:#ffffff">Information</a></li>
                    <li><a href="ironFistUpload/uploadImages.jsp" style="color:#ffffff">Upload Images</a></li>
                </ul>
            </div>
        </div>

    </header>
    <div class="main p2e30f3">
        <h1 class="visually-hidden">Home</h1>
        <div class="container cf lightboxes">
            <div class="isotope" style="position: relative; height: 10522.3px;">


                <%
                    for (int i = 0; i < srcLists.size(); i++) {


                %>


                <div class="col one-four box illustration image-box" style="">
                    <figure class="thumb">
                        <a
                                href="#"
                                alt-src="../upload/ironFist/<%=srcLists.get(i)%>"
                                data-large="../upload/ironFist/<%=srcLists.get(i)%>"
                                data-large-size="1496x1800"
                                data-medium="../upload/ironFist/<%=srcLists.get(i)%>"
                                data-medium-size="897.6x1080"
                                data-small="../upload/ironFist/<%=srcLists.get(i)%>"
                                data-small-size="598.4x720"><img
                                src="../upload/ironFist/<%=srcLists.get(i)%>"
                                data-srcset="../upload/ironFist/<%=srcLists.get(i)%> 960w, ../upload/ironFist/<%=srcLists.get(i)%> 768w, ../upload/ironFist/<%=srcLists.get(i)%> 480w"
                                alt-src="../upload/ironFist/<%=srcLists.get(i)%>"
                                width="1496" height="1800" alt="#" class="lazy-loaded">
                            <noscript>&lt;img
                                src="./render/w512-h512-c0-q95/1.illustration/73.nyt-working-together/1.nyt-working-together.jpg"
                                width="1496" height="1800" alt="Nyt working together" /&gt;
                            </noscript>
                        </a>
                        <h2 class="small"></h2>
                        <figcaption class="micro">
                            <div class="large caption-title">The New York Times Magazine</div>
                            <span class="caption">Working alongside robots.&nbsp;</span></figcaption>
                    </figure>
                </div>
                <%

                    }
                %>


                <div class="col one-four box information text-box" style="position: absolute; left: 0%; top: 9746px;">
                    <h2 class="large">Biography</h2>
                    <div class="content">
                        <p>Kristian Hammerstad lives in Oslo, Norway where he works as an illustrator and makes comics
                            and other drawn&nbsp;projects.</p>

                        <p>Kristian's client list includes Penguin Books, The New Yorker, The New York Times, Le Monde,
                            Aftenposten and Morgenbladet amongst others. He has also published comics in Norway and&nbsp;France.</p>

                    </div>
                </div>
                <div class="col one-four box information text-box" style="position: absolute; left: 75%; top: 9860px;">
                    <h2 class="large">Contact</h2>
                    <div class="content">
                        <p>Kristian Hammerstad, Gamlebyen, Oslo, Norway, Europe, Earth, Sol System, Via Lactea Galaxy,
                            Known&nbsp;Universe.</p>

                        <p>Email:<br>
                            <a href="mailto:info@kristianhammerstad.com">info@kristianhammerstad.com</a></p>

                        <p>Telephone:<br>
                            +47 976 86 002</p>

                        <p>For jobber i Norge, kontakt min lokale agent <a href="http://www.byhands.no/"
                                                                           target="_blank">byHands</a>.</p>

                    </div>
                </div>
                <div class="col one-four box information text-box" style="position: absolute; left: 25%; top: 10044px;">
                    <h2 class="large">Copyright</h2>
                    <div class="content">
                        <p>Copyright 2017 © Kristian Hammerstad. All rights&nbsp;reserved.</p>

                        <p>Unless otherwise indicated, all materials on these pages are copyrighted. No part of these
                            pages, either text or images may be used for any purpose other than personal use, unless
                            explicit authorisation is&nbsp;given.</p>

                        <p>Therefore reproduction, modification, storage in a retrieval system or retransmission, in any
                            form or by any means – electronic, mechanical or otherwise, for reasons other than personal
                            use, is strictly prohibited without prior written&nbsp;permission.</p>

                    </div>
                </div>
                <div class="col one-four box information text-box" style="position: absolute; left: 0%; top: 10056px;">
                    <h2 class="large">Q:</h2>
                    <div class="content">
                        <p>Hi Kristian, do you sell prints, posters or comics?</p>

                    </div>
                </div>
                <div class="col one-four box information text-box" style="position: absolute; left: 50%; top: 10152px;">
                    <h2 class="large">A:</h2>
                    <div class="content">
                        <p>I have a selection of posters for sale, both limited screen prints and giclée prints, from <a
                                href="http://shop.byhands.no/" target="_blank">byHands</a>.</p>

                        <p>Limited screen prints are also available from <a
                                href="http://www.steinslandberliner.com/available" target="_blank">Galleri Steinsland&nbsp;Berliner</a>.
                        </p>

                        <p>My comics are available from my publisher <a href="http://www.jippicomics.com/butikk/"
                                                                        target="_blank">Jippi&nbsp;Comics</a>.</p>

                    </div>
                </div>
                <div class="col one-four box information text-box" style="position: absolute; left: 0%; top: 10177px;">
                    <h2 class="large">Follow&nbsp;me</h2>
                    <div class="content">
                        <p>Follow me on <a href="https://www.facebook.com/kristianhammerstadsillustrator/"
                                           target="_blank">Facebook</a> or <a
                                href="https://www.instagram.com/kristianhammerstad" target="_blank">Instagram</a> for
                            news, updates and other things that don't make it to my&nbsp;website.</p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="credits small"><a href="http://www.kristianhammerstad.com/">Kristian Hammerstad</a> © 2017. Website by
        <a tabindex="-1" href="http://olesletten.com/" target="_blank">Ole Sletten</a>.
    </div>
    <div class="top-link large align-right invert-links"><a href="cursor:pointer;"
                                                            onclick="window.scrollTo(0,0);">Up</a></div>
</footer>
<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="pswp__bg"></div>
    <div class="pswp__scroll-wrap">
        <div class="pswp__container" style="background: #222222; color:#ffffff">
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
        </div>
        <div class="pswp__ui pswp__ui--hidden container cf">
            <div class="pswp__top-bar">
                <div class="pswp__counter"></div>
                <button tabindex="-1" class="large pswp__button pswp__button--close" title="×"></button>
                <button class="pswp__button pswp__button--share" title="Share"></button>
                <button tabindex="-1" class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
                <button tabindex="-1" class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
                <div class="pswp__preloader">
                    <div class="pswp__preloader__icn">
                        <div class="large pswp__preloader__text"><span class="l">L</span><span class="o">o</span><span
                                class="a">a</span><span class="d">d</span><span class="i">i</span><span
                                class="n">n</span><span class="g">g</span></div>
                    </div>
                </div>
            </div>
            <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                <div class="pswp__share-tooltip"></div>
            </div>
            <button tabindex="-1" class="large pswp__button pswp__button--arrow--left" title="⟨"></button>
            <button tabindex="-1" class="large pswp__button pswp__button--arrow--right" title="⟩"></button>
            <div class="pswp__caption container cf">
                <div class="flat col three pswp__caption__center"></div>
            </div>
        </div>
    </div>
</div>
<script src="./includeFiles/Kristian%20Hammerstad%20-%20Illustrator_files/plugins-min.js"></script>
<script src="./includeFiles/Kristian%20Hammerstad%20-%20Illustrator_files/scripts-min.js"></script>
<script>
    $(document).ready(function () {
        initIsotope();
        initLightBox();
    });
</script>
<script>var _gaq = [['_setAccount', 'UA-18733176-1'], ['_trackPageview']];
(function (d, t) {
    var g = d.createElement(t), s = d.getElementsByTagName(t)[0];
    g.src = ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g, s)
}(document, 'script'));
</script>
<div class="print"></div>

</body>
</html>
