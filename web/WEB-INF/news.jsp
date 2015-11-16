<%--
  Created by IntelliJ IDEA.
  User: alexl
  Date: 08/11/2015
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <link rel="stylesheet" href="http://daneden.me/animate/animate.css" />
  <meta name="description" content="isotope test" />
  <link rel="stylesheet" href="http://svn.dodici.com.ar/bundles/dodicifansworldweb/css/base.cssx"
          />
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
  <script src="http://isotope.metafizzy.co/jquery.isotope.min.js"></script>
  <meta charset=utf-8 />
  <title>News</title>
</head>
<body>
  <style>
    body {
      margin: 0;
      padding: 0;
    }

    .entry {
      height: 140px;
    }

    .entry .mybox {
      margin-left: 110px;
      height: 100%;
      background-color: #f4f4f0;
      position: relative;
      border-radius: 0px;
      border-color: #c0c0c0;
      border-top-color: #fff;
      border-style: solid;
      border-width: 1px;
      padding: 10px;
    }

    .mybox:before {
      content: "";
      border-color: transparent #c0c0c0 transparent transparent;
      border-style: solid;
      border-width: 15px;
      width: 0;
      height: 0;
      position: absolute;
      bottom: 50%;
      margin-bottom: -10px;
      left: -30px
    }

    .mybox:after {
      content: "";
      border-color: transparent #f4f4f0 transparent transparent;
      border-style: solid;
      border-width: 15px;
      width: 0;
      height: 0;
      position: absolute;
      bottom: 50%;
      margin-bottom: -10px;
      left: -29px
    }

    .mybox .textarea-wrapper {
      height: 100%;
      background-color: #dce1e4;
      resize: none;
      border-color: #808080;
      border-style: solid;
      border-width: 1px;
      border-radius: 1px;
      box-shadow: inset 0px 2px 5px #c0c0c0;
    }

    .mybox textarea {
      height: 100px;
      width: 100%;
      background-color: rgba(0, 0, 0, 0);
      color: #000;
      font-family: "Open Sans";
      text-shadow: 1px 1px #fafafa;
      font-size: 12px;
      resize: none;
      border: none;
      outline: none;
      bottom: -40px
    }

    .mybox .actions {
      position: relative;
      width: 100%;
      height: 40px;
      bottom: 0px;
      background-color: rgba(0, 0, 0, 0.1);
      border-top: 1px dotted #808080;
    }

    .mybox .actions .send {
      height: 38px;
    }

    .post {
      height: 110px;
      min-height: 110px;
      margin-bottom: 2px;
    }

    .mybox-middle {
      margin-left: 110px;
      min-height: 80px;
      min-width: 120px;
      height: 100%;
      background-color: #f4f4f0;
      position: relative;
      border-radius: 0px;
      border-color: #c0c0c0;
      border-top-color: #fff;
      border-style: solid;
      border-width: 1px;
      font-family: "Open Sans";
      font-size: 12px;
    }

    div.post:nth-child(1) div.mybox-middle {
      border-color: #c0c0c0;
    }

    div.post:nth-last-child(4) div.mybox-middle {
      background-color: #dce1e4;
      border-color: #a0a0a0;
      border-top-color: #eee;
    }

    div.post:nth-last-child(4) div.mybox-middle:before {
      content: "";
      border-color: transparent #a0a0a0 transparent transparent;
      border-style: solid;
      border-width: 15px;
      width: 0;
      height: 0;
      position: absolute;
      bottom: 50%;
      margin-bottom: -10px;
      left: -30px
    }

    div.post:nth-last-child(4) div.mybox-middle:after {
      content: "";
      border-color: transparent #dce1e4 transparent transparent;
      border-style: solid;
      border-width: 15px;
      width: 0;
      height: 0;
      position: absolute;
      bottom: 50%;
      margin-bottom: -10px;
      left: -29px
    }

    .mybox-middle:before {
      content: "";
      border-color: transparent #c0c0c0 transparent transparent;
      border-style: solid;
      border-width: 15px;
      width: 0;
      height: 0;
      position: absolute;
      bottom: 50%;
      margin-bottom: -10px;
      left: -30px
    }

    .mybox-middle:after {
      content: "";
      border-color: transparent #f4f4f0 transparent transparent;
      border-style: solid;
      border-width: 15px;
      width: 0;
      height: 0;
      position: absolute;
      bottom: 50%;
      margin-bottom: -10px;
      left: -29px;
    }

    .mybox-middle div.widget {
      position: absolute;
      bottom: 50%;
      margin-bottom: -30px;
      margin-left: 10px;
      color: #949c9f;
      text-shadow: 1px 1px #fff;
    }

    .mybox-middle span.username {
      font-weight: bold;
      opacity: 1;
    }

    .mybox-middle span.timestamp {
      font-size: 80%;
    }

    div.post:nth-last-child(4) div {
      text-shadow: 1px 1px #fafafa;
      color: #404040;
    }

    .mybox-middle div.message {
      text-align: justify;
      margin-left: 120px;
      margin-right: 15px;
      word-wrap: break-word;
      color: #9c9ca5;
      text-shadow: 1px 1px #fff;
      height: 100%;
      overflow: hidden;
      padding: 0px;
    }

    .mybox-middle div.message:nth-last-child(1) {
      padding-top: 10px;
    }

    .sidebar {
      position: relative;
      height: 100%;
      width: 108px;
      float: left;
    }

    .avatar {
      width: 76px;
      height: 76px;
      float: left;
      background-color: #f4f4f4;
      margin-left: 13px;
      border-color: #c0c0c0;
      border-style: solid;
      border-radius: 3px;
      box-shadow: 0 0 4px #d0d0d0;
      border-width: 1px;
      position: absolute;
      top: 50%;
      margin-top: -36px;
    }

    .avatar img.author {
      max-width: 80%;
      max-height: 80%;
      padding: 10%;
    }
    /* ****** SOCIALIZER ****** */

    #socialize {
      position: absolute;
      width: 76px;
      height: 25px;
      border-radius: 3px;
      opacity: 0;
      font-size: 13px;
      border: 1px solid #c0c0c0;
      margin-left: 13px;
      bottom: 0%;
      margin-top: 45px;
      z-index: 2;
    }

    #socialize #left {
      float: left;
      width: 24px;
      height: 100%;
      border-bottom-left-radius: 2px;
      border-top-left-radius: 2px;
      border-right-width: 1px;
      border-right-style: solid;
      border-right-color: #c0c0c0;
    }

    #socialize #centre {
      display: block;
      width: 24px;
      height: 100%;
      overflow: auto;
      border-left-width: 1px;
      border-left-style: solid;
      border-left-color: #fff;
      border-right-width: 1px;
      border-right-style: solid;
      border-right-color: #c0c0c0;
    }

    #socialize #right {
      float: right;
      width: 24px;
      height: 100%;
      border-left-width: 1px;
      border-left-style: solid;
      border-left-color: #fff;
      border-bottom-right-radius: 2px;
      border-top-right-radius: 2px;
    }

    #socialize .social {
      background: linear-gradient(to bottom, #f4f4f4 0%, #f4f4f4 100%);
      background: -webkit-linear-gradient(top, #f4f4f4 0%, #f4f4f4 100%);
    }

    #socialize .social:hover {
      background: linear-gradient(to bottom, #e5e5e5 0%, #dce1e4 100%);
      background: -webkit-linear-gradient(top, #e5e5e5 0%, #dce1e4 100%);
    }

    #socialize .social:hover i {
      color: #808080;
    }

    #socialize .social:active {
      background: linear-gradient(to bottom, #dce1e4 0%, #f4f4f4 100%);
      background: -webkit-linear-gradient(top, #dce1e4 0%, #f4f4f4 100%);
    }

    #socialize .social:active i {
      color: #404040;
    }

    #socialize .social i {
      position: absolute;
      margin: 6px;
      color: #949C9F;
      text-shadow: 1px 1px #fff;
      text-decoration: none;
    }
  </style>
  <!-- POST TOP -->
  <div class="post">
    <div class="sidebar">
      <div class="avatar">
        <img class="author" src="http://tinyurl.com/ajapym4">
      </div>
      <div id="socialize">
        <a id="left" class="social" href="#"><i class="icon-eye-open"></i></a>
        <a id="right" class="social" href="#"><i class="icon-heart"></i></a>
        <a id="centre" class="social" href="#"><i class="icon-time"></i></a>
      </div>
    </div>
    <div class="mybox-middle" >
      <div class="widget">
        <span class="username">Unity:</span>
        <br/>
        <span class="timestamp" style="clear:both;"><i class="icon-time"></i>&nbsp;3 days ago</span>
        <br />
        <span class="timestamp" style="clear:both;"><i class="icon-heart"></i>&nbsp;11 followers</span>
        <br />
        <span class="timestamp" style="clear:both;"><i class="icon-eye-open"></i>&nbsp;220 subscribers</span>
      </div>
      <div class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dolor tortor, sollicitudin non ultricies vitae, pulvinar nec ipsum. Pellentesque tincidunt mollis sollicitudin.</div>
    </div>
  </div>
  <!-- /POST -->
  <!-- POST -->
  <div class="post">
    <div class="sidebar">
      <div class="avatar">
        <img class="author" src="http://tinyurl.com/aevdnze">
      </div>

    </div>
    <div class="mybox-middle" >
      <div class="widget">
        <span class="username">Benjamin:</span>
        <br/>
        <span class="timestamp" style="clear:both;"><i class="icon-time"></i>&nbsp;2 day ago</span>
        <br />
        <span class="timestamp" style="clear:both;"><i class="icon-heart"></i>&nbsp;4 followers</span>
        <br />
        <span class="timestamp" style="clear:both;"><i class="icon-eye-open"></i>&nbsp;22 subscribers</span>
      </div>
      <body>
      <div class="message">Proin ornare imperdiet est non mattis. In hac habitasse platea dictumst. Maecenas faucibus, mi non tempor sollicitudin, magna enim rutrum nulla, tincidunt ornare urna urna ut erat.</div>
    </div>
  </div>
  <!-- /POST -->
  <!-- POST -->
  <div class="post" style="height:180px;">
    <div class="sidebar">
      <div class="avatar">
        <img class="author" src="http://tinyurl.com/aakz3cz">
      </div>
      <div id="socialize">
        <a id="left" class="social" href="#"><i class="icon-eye-open"></i></a>
        <a id="right" class="social" href="#"><i class="icon-heart"></i></a>
        <a id="centre" class="social" href="#"><i class="icon-time"></i></a>
      </div>
    </div>
    <div class="mybox-middle" >
      <div class="widget">
        <span class="username">MrPark:</span>
        <br/>
        <span class="timestamp" style="clear:both;"><i class="icon-time"></i>&nbsp;1 day ago</span>
        <br />
        <span class="timestamp" style="clear:both;"><i class="icon-heart"></i>&nbsp;31 followers</span>
        <br />
        <span class="timestamp" style="clear:both;"><i class="icon-eye-open"></i>&nbsp;340 subscribers</span>
      </div>
      <div class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dolor tortor, sollicitudin non ultricies vitae, pulvinar nec ipsum. Pellentesque tincidunt mollis sollicitudin. Integer bibendum orci non nisl bibendum sit amet porta odio facilisis. Nulla facilisi. In magna nunc, pharetra mattis malesuada vel, suscipit sed neque. Curabitur at dolor velit. Morbi consectetur sagittis mi. Mauris ac fermentum velit. Donec at orci purus, sed tristique lacus. Suspendisse potenti.<a href="#" class="more">more</a></div>
    </div>
  </div>
  <!-- /POST -->
  <!-- POST -->
  <div class="post animated">
    <div class="sidebar">
      <div class="avatar">
        <img class="author" src="http://tinyurl.com/aevdnze">
      </div>
      <div id="socialize">
        <a id="left" class="social" href="#"><i class="icon-eye-open"></i></a>
        <a id="right" class="social" href="#"><i class="icon-heart"></i></a>
        <a id="centre" class="social" href="#"><i class="icon-time"></i></a>
      </div>
    </div>
    <div class="mybox-middle" >
      <div class="widget">
        <span class="username">Benjamin:</span>
        <br/>
        <span class="timestamp" style="clear:both;"><i class="icon-time"></i>&nbsp;2 Hours ago</span>
        <br />
        <span class="timestamp" style="clear:both;"><i class="icon-heart"></i>&nbsp;4 followers</span>
        <br />
        <span class="timestamp" style="clear:both;"><i class="icon-eye-open"></i>&nbsp;22 subscribers</span>
      </div>
      <div class="message">Proin ornare imperdiet est non mattis. In hac habitasse platea dictumst. Maecenas faucibus, mi non tempor sollicitudin, magna enim rutrum nulla, tincidunt ornare urna urna ut erat.</div>
    </div>
  </div>
  <!-- /POST -->
  <!-- ENTRY -->
  <div class="entry">
    <div class="sidebar">
      <div class="avatar">
        <img class="author" src="http://tinyurl.com/axm4om9">
      </div>
    </div>
    <div class="mybox">
      <div class="textarea-wrapper">
        <textarea></textarea>
        <div class="actions"><div style="float:right"><button class="send">Send</button></div></div>
      </div>
    </div>
  </div>
  <!-- /ENTRY -->
  <script>
    $('.more').on('click', function() {
      var $avatar = $(this).parent().parent().parent().find('.avatar');
      $(this).parent().parent().parent().animate({height: 250}, 450);

      if($avatar.hasClass('animated')) {
        $avatar.removeClass('animated bounce');
      } else {
        $avatar.addClass('animated bounce');
      }
    })

    $('.send').on('click', function() {
      //$('.post').last();
      var $entry = $('body').find('.entry');
      var $first = $('body').find('.post').first();
      var $last = $('body').find('.post').last();

      //$entry.before($v).hide().fadeIn('slow');
      //$v.before($entry).hide().fadeIn('slow');
      //$v.appendTo(last).hide().fadeIn('slow');
      //$entry.before($v)
      //$first.addClass('animated fadeOutUp');
      //$first.remove();

      var $cosa = $last.clone();
      $cosa.find('.avatar').hide();
      //$cosa.addClass('fadeInDown')
      $cosa.css('min-height', '0px').css('height', '0px')
      $cosa.insertAfter($last).animate({height: (110 + Math.random() * 40)}, 450);

      $cosa.insertAfter($last);
      $cosa.find('.avatar').show()
      $cosa.find('.avatar').addClass('animated bounceInLeft');
      /*$entry.fadeOut('slow', function() {
       $entry.before($v);
       $entry.fadeIn('slow');
       });
       */
      $('.sidebar').on({
        mouseenter: function() {
          var top = parseInt($(this).find('.avatar').css('top'));
          $(this).find('.avatar').animate({top: 36}, 450);
          $(this).find('#socialize').removeClass();
          $(this).find('#socialize').addClass('animated fadeInDown');
        },
        mouseleave: function() {
          var top = parseInt($(this).css('top'));
          $(this).find('.avatar').animate({top: '50%'}, 450);
          $(this).find('#socialize').addClass('animated fadeOutUp');
        }
      })
    });

    $('.sidebar').on({
      mouseenter: function() {
        var top = parseInt($(this).find('.avatar').css('top'));
        $(this).find('.avatar').animate({top: 36}, 250);
        $(this).find('#socialize').removeClass();
        $(this).find('#socialize').addClass('animated fadeInDown');
      },
      mouseleave: function() {
        var top = parseInt($(this).css('top'));
        $(this).find('.avatar').animate({top: '50%'}, 250);
        $(this).find('#socialize').addClass('animated fadeOutUp');
      }
    })

    /*.mouseleave(function() {
     $(this).parent().find('#socialize').addClass('animated fadeOutUp');
     });*/
  </script>
</body>
</html>
