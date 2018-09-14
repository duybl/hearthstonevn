<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/atom:feed">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
		<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Atom Feed (Styled)</title>

    <link rel="stylesheet" type="text/css" href="https://duybl.github.io/hearthstonevn/assets/css/styles_feeling_responsive.css">
		<link rel="stylesheet" href="https://duybl.github.io/hearthstonevn/assets/css/super-search.css">
  

	<script src="https://duybl.github.io/hearthstonevn/assets/js/modernizr.min.js"></script>
	<script type="text/javascript" src="https://duybl.github.io/hearthstonevn/assets/js/super-search.js"></script>
	<script type="text/javascript" src="https://duybl.github.io/hearthstonevn/assets/js/decode.js"></script>
	<script type="text/javascript" src="https://duybl.github.io/hearthstonevn/assets/js/copydeck.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
	<script>
		WebFont.load({
			google: {
				families: [ 'Lato:400,700,400italic:latin', 'Volkhov::latin' ]
			}
		});
	</script>

	<noscript>
		<link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic%7CVolkhov' rel='stylesheet' type='text/css'>
	</noscript>


	<!-- Search Engine Optimization -->
	<meta name="description" content="Không việc có gì khó, chỉ sợ bụng không no">
	<meta name="google-site-verification" content="Vk0IOJ2jwG_qEoG7fuEXYqv0m2rLa8P778Fi_GrsgEQ">
	<meta name="msvalidate.01" content="0FB4C028ABCF07C908C54386ABD2D97F" >
	
	<link rel="author" href="https://plus.google.com/u/0/118311555303973066167">
	
	
	<link rel="canonical" href="https://duybl.github.io/hearthstonevn/assets/xslt/atom.xslt">


	<!-- Facebook Open Graph -->
	<meta property="og:title" content="Atom Feed (Styled)">
	<meta property="og:description" content="Không việc có gì khó, chỉ sợ bụng không no">
	<meta property="og:url" content="https://duybl.github.io/hearthstonevn/assets/xslt/atom.xslt">
	<meta property="og:locale" content="vi-VN">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="Hearthstone Việt Nam">
	
	


	

	<link type="text/plain" rel="author" href="https://duybl.github.io/hearthstonevn/humans.txt">

	

	

	<link rel="icon" sizes="32x32" href="https://duybl.github.io/hearthstonevn/assets/img/favicon-32x32.png">

	<link rel="icon" sizes="192x192" href="https://duybl.github.io/hearthstonevn/assets/img/touch-icon-192x192.png">

	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="https://duybl.github.io/hearthstonevn/assets/img/apple-touch-icon-180x180-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="https://duybl.github.io/hearthstonevn/assets/img/apple-touch-icon-152x152-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://duybl.github.io/hearthstonevn/assets/img/apple-touch-icon-144x144-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="https://duybl.github.io/hearthstonevn/assets/img/apple-touch-icon-120x120-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://duybl.github.io/hearthstonevn/assets/img/apple-touch-icon-114x114-precomposed.png">

	
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="https://duybl.github.io/hearthstonevn/assets/img/apple-touch-icon-76x76-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://duybl.github.io/hearthstonevn/assets/img/apple-touch-icon-72x72-precomposed.png">

	<link rel="apple-touch-icon-precomposed" href="https://duybl.github.io/hearthstonevn/assets/img/apple-touch-icon-precomposed.png">	

	<meta name="msapplication-TileImage" content="https://duybl.github.io/hearthstonevn/assets/img/msapplication_tileimage.png">

	<meta name="msapplication-TileColor" content="#fabb00">


	

	<div class="super-search" id="js-super-search">
		<a href="javascript:void(0)" onclick="superSearch.toggle()" class="super-search__close-btn">X</a>
		<input type="text" placeholder="Nhập từ khóa tìm kiếm" class="super-search__input" id="js-super-search__input">
		<ul class="super-search__results" id="js-super-search__results"></ul>
	</div>
	
	<script>superSearch({
	 	searchFile: 'https://duybl.github.io/hearthstonevn/feed.xml'
	 });</script>

		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		
<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="https://duybl.github.io/hearthstonevn" class="icon-tree"> Hearthstone Việt Nam</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Nav</span></a></li>
    </ul>
    <section class="top-bar-section">

      <ul class="right">
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="https://duybl.github.io/hearthstonevn/search/">Tìm kiếm</a></li>

            
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="https://duybl.github.io/hearthstonevn/contact/">Liên hệ</a></li>

            
            
          
        
        
      </ul>

      <ul class="left">
        

              

          
          

            
            
              <li><a  href="https://duybl.github.io/hearthstonevn/">Trang chủ</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a  href="https://duybl.github.io/hearthstonevn">Decks</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/Deck/Druid/">Druid</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/Deck/Hunter/">Hunter</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/Deck/Mage/">Mage</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/Deck/Paladin">Paladin</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/Deck/Priest/">Priest</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/Deck/Rogue">Rogue</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/Deck/Shaman">Shaman</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/Deck/Warlock">Warlock</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/Deck/Warrior">Warrior</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a  href="https://duybl.github.io/hearthstonevn">Card Set</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/classic/">Standard - Classic</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/basic/">Standard - Basic</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/boomsday/">Standard - The Boomsday Project</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/witchwood/">Standard - The Witchwood</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/halloffame/">Hall of Fame</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/blackrock/">Blackrock Mountain</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/frozenthrone/">Knights of the Frozen Throne</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/gvg/">Goblins vs Gnomes</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/grandtournament/">The Grand Tournament</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/journeyungoro/">Journey to Un&#39;Goro</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/kandc/">Kobolds and Catacombs</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/leagueexplorers/">League of Explorers</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/meanstreet/">Mean Streets of Gadgetzan</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/nightkarazhan/">One night in Karazhan</a></li>
                    

                      

                      <li><a  href="https://duybl.github.io/hearthstonevn/set/whispergod/">Whispers of the Old Gods</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            
              <li><a  href="https://duybl.github.io/hearthstonevn/deckstring/">Mã Deck</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="https://duybl.github.io/hearthstonevn/topdecks/">Top Decks</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="https://duybl.github.io/hearthstonevn/tut/">Hướng dẫn chơi</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          
        

              

          
          
        
        
      </ul>
    </section>
  </nav>
</div><!-- /#navigation -->

		

<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<p id="logo" href="https://duybl.github.io/hearthstonevn/" title="Hearthstone Việt Nam – Hearthstone cho người Việt">
				<img src="https://duybl.github.io/hearthstonevn/assets/img/logo.png" alt="Hearthstone Việt Nam – Hearthstone cho người Việt">
			</p>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->









		



<div class="alert-box warning text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">Atom feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="atom:subtitle" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="atom:id" />
			</xsl:attribute>
			<xsl:value-of select="atom:title" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="atom:entry">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="atom:id" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="atom:title"/>
				<br/>
				<small><xsl:value-of select="atom:updated"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="atom:id"/></xsl:attribute>
						<xsl:value-of select="atom:title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="atom:content" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		    <div id="up-to-top" class="row">
      <div class="small-12 columns" style="text-align: right;">
        <a class="iconfont" href="#top-of-page">&#xf108;</a>
      </div><!-- /.small-12.columns -->
    </div><!-- /.row -->


    <footer id="footer-content" class="bg-grau">
      <div id="footer">
        <div class="row">
          <div class="medium-6 large-5 columns">
            <h5 class="shadow-black">Về trang web</h5>

            <p class="shadow-black">
              Không việc có gì khó, chỉ sợ bụng không no
              <a href="https://duybl.github.io/hearthstonevn/info/">Tiếp ›</a>
            </p>
          </div><!-- /.large-6.columns -->


          <div class="small-6 medium-3 large-3 large-offset-1 columns">
            
              
                <h5 class="shadow-black">Dịch vụ</h5>
              
            
              
            
              
            

              <ul class="no-bullet shadow-black">
              
                
                  <li >
                    <a href="https://duybl.github.io/hearthstonevn"  title=""></a>
                  </li>
              
                
                  <li >
                    <a href="https://duybl.github.io/hearthstonevn/contact/"  title="Liên hệ">Liên hệ</a>
                  </li>
              
                
                  <li >
                    <a href="https://duybl.github.io/hearthstonevn/"  title="Bạn cần người hướng dẫn?">Hướng dẫn chơi</a>
                  </li>
              
              </ul>
          </div><!-- /.large-4.columns -->


          <div class="small-6 medium-3 large-3 columns">
            
              
                <h5 class="shadow-black">Website tham khảo</h5>
              
            
              
            
              
            
              
            
              
            

            <ul class="no-bullet shadow-black">
            
              
                <li >
                  <a href="https://duybl.github.io/hearthstonevn"  title=""></a>
                </li>
            
              
                <li >
                  <a href="http://www.hearthstonetopdecks.com" target="_blank"  title="">Hearthstone Top Decks</a>
                </li>
            
              
                <li >
                  <a href="https://hsreplay.net" target="_blank"  title="">HS Replay</a>
                </li>
            
              
                <li >
                  <a href="https://www.hearthpwn.com" target="_blank"  title="">HeartPwn</a>
                </li>
            
              
                <li >
                  <a href="https://hearthsim.info" target="_blank"  title="">HearthSim</a>
                </li>
            
            </ul>
          </div><!-- /.large-3.columns -->
        </div><!-- /.row -->

      </div><!-- /#footer -->


      <div id="subfooter">
        <nav class="row">
          <section id="subfooter-left" class="small-12 medium-6 columns credits">
            Website tĩnh, dựa trên nền tảng Jekyll
          </section>

          <section id="subfooter-right" class="small-12 medium-6 columns">
            <ul class="inline-list social-icons">
            
            </ul>
          </section>
        </nav>
      </div><!-- /#subfooter -->
    </footer>

		


<script src="https://duybl.github.io/hearthstonevn/assets/js/javascript.min.js"></script>













		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>
