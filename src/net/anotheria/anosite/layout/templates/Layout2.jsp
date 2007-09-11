<%@ page
	contentType="text/html;charset=iso-8859-15" session="true"
%><%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean"
%><%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html"
%><%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<!--  Version: Multiflex-3 Update-7 / Layout-2             -->
<!--  Date:    January 15, 2007                            -->
<!--  Author:  Wolfgang                                    -->
<!--  License: Fully open source without restrictions.     -->
<!--           Please keep footer credits with a link to   -->
<!--           Wolfgang (www.1-2-3-4.info). Thank you!     -->

<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="cache-control" content="no-cache" />
  <meta http-equiv="expires" content="0" />

  <meta name="revisit-after" content="2 days" />
  <meta name="robots" content="index,follow" />
  <meta name="publisher" content="Your publisher infos here ..." />
  <meta name="copyright" content="Your copyright infos here ..." />
  <meta name="author" content="Design: Wolfgang (www.1-2-3-4.info) / Modified: Your Name" />
  <meta name="distribution" content="global" />
  <meta name="description" content="Your page description here ..." />
  <meta name="keywords" content="Your keywords, keywords, keywords, here ..." />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="<bean:write name="stylesheet" property="link"/>" />
  <link rel="icon" type="image/x-icon" href="simg/favicon.ico" />
  <title><bean:write name="page" scope="request" property="title"/></title>
</head>

<!-- Global IE fix to avoid layout crash when single word size wider than column width -->
<!--[if IE]><style type="text/css"> body {word-wrap: break-word;}</style><![endif]-->

<body>
  <!-- Main Page Container -->
  <div class="page-container">


 <!-- START COPY here -->

    <!-- A. HEADER -->      
    <div class="header">
      
      <!-- A.1 HEADER MIDDLE -->
      <div class="header-middle">    
   
        <!-- Sitelogo and sitename -->

        <a class="sitelogo" href="#" title="Go to Start page"></a>
        <div class="sitename">

          <h1><a href="index.html" title="Go to Start page"><bean:write name="site" property="title"/></a></h1>
          <h2><bean:write name="site" property="subtitle"/></h2>
        </div>

        <!-- Navigation Level 0 -->

        <div class="nav0">
          <ul>

            <li><a href="#" title="Pagina home in Italiano"><img src="simg/flag_italy.gif" alt="Image description" /></a></li>
            <li><a href="#" title="Homepage auf Deutsch"><img src="simg/flag_germany.gif" alt="Image description" /></a></li>
            <li><a href="#" title="Hemsidan p&aring; svenska"><img src="simg/flag_sweden.gif" alt="Image description" /></a></li>
          </ul>
        </div>			

        <!-- Navigation Level 1 -->
        <div class="nav1">

          <ul>
            <li><a href="#" title="Go to Start page">Home</a></li>
            <li><a href="#" title="Get to know who we are">About</a></li>
            <li><a href="#" title="Get in touch with us">Contact</a></li>																		
            <li><a href="#" title="Get an overview of website">Sitemap</a></li>
          </ul>
        </div>              
      </div>

      
      <!-- A.2 HEADER BOTTOM -->
      <div class="header-bottom">

      
        <!-- Navigation Level 2 (Drop-down menus) -->
        <div class="nav2">
	
	      <logic:iterate name="mainNavi" id="item" type="net.anotheria.anosite.content.bean.NaviItemBean">
          	  <!-- Navigation item -->
          	  <% System.out.println("Item: "+item); %>
        	  <ul>
          	  <logic:equal name="item" property="hasChilds" value="false">
    	        <li><a <logic:equal name="item" property="popup" value="true">target="_blank" </logic:equal>href="<bean:write name="item" property="link"/>"><bean:write name="item" property="name"/></a></li>
	          </logic:equal>
          	  <logic:equal name="item" property="hasChilds" value="true">
	            <li><a <logic:equal name="item" property="popup" value="true">target="_blank" </logic:equal>href="<bean:write name="item" property="link"/>"><bean:write name="item" property="name"/><!--[if IE 7]><!--></a><!--<![endif]-->
	              <!--[if lte IE 6]><table><tr><td><![endif]-->
	                <ul>
				      <logic:iterate name="item" property="subNavi" id="subitem" type="net.anotheria.anosite.content.bean.NaviItemBean">
	                  <li><a <logic:equal name="subitem" property="popup" value="true">target="_blank" </logic:equal>href="<bean:write name="subitem" property="link"/>"><bean:write name="subitem" property="name"/></a></li>
	                  </logic:iterate>
	                </ul>
	              <!--[if lte IE 6]></td></tr></table></a><![endif]-->
	            </li>
	          </logic:equal>
	          </ul>
	      </logic:iterate>

        </div>
	  </div>

      <!-- A.3 HEADER BREADCRUMBS -->

      <!-- Breadcrumbs -->
      <div class="header-breadcrumbs">
        <ul>
          <li><a href="#">Home</a></li>

          <li><a href="#">Webdesign</a></li>
          <li><a href="#">Templates</a></li>
          <li>Multiflex-3</li>
        </ul>

        <!-- Search form -->                  
        <div class="searchform">
          <form action="index.html" method="get">

            <fieldset>
              <input name="field" class="field"  value=" Search..." />
              <input type="submit" name="button" class="button" value="GO!" />
            </fieldset>
          </form>
        </div>
      </div>
    </div>

  <!-- END COPY here -->


    <!-- B. MAIN -->
    <div class="main">
 
      <!-- B.1 MAIN NAVIGATION -->
      <div class="main-navigation">

		<!-- Rendering column 1 -->
		<bean:define id="__boxlist" toScope="request" name="page" property="column1"/>
		<jsp:include page="ListIterator.jsp" flush="false"/>

      </div>
 
      <!-- B.1 MAIN CONTENT -->
      <div class="main-content">
        
        <!-- Pagetitle -->
        <h1 class="pagetitle"><bean:write name="page" scope="request" property="title"/></h1>

        <!-- Content unit - One column -->

		<!-- Rendering column 2 -->
		<bean:define id="__boxlist" toScope="request" name="page" property="column2"/>
		<jsp:include page="ListIterator.jsp" flush="false"/>

        <h1 class="block">1 - Column types</h1>
        <div class="column1-unit">
          <h1>Here comes the title</h1>                             
          <h3>Monday, 20 November 2006 at 20:30 GMT, by <a href="#">SiteAdmin </a></h3>
          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam nonummy nibh euismod tincidunt ut laoreet dolore <a href="#">magna aliquam</a> erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis. <a href="#">Read more &raquo;</a></p>

          <p class="details">| Posted by <a href="#">SiteAdmin </a> | Categories: <a href="#">General</a> | Comments: <a href="#">73</a> |</p>
          <h1><a href="">Heading h1 with link</a></h1>                            
          <h3>Heading h3</h3>

          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam nonummy nibh euismod tincidunt ut laoreet dolore <a href="#">magna aliquam</a> erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis. <a href="#">Read more &raquo;</a></p>
          <p class="details">Posting details ...  </p>
        </div>          
        <hr class="clear-contentunit" />
          
        <!-- Content unit - Two columns -->

        <div class="column2-unit-left">
          <h1>Heading h1</h1>                            
          <h3>Heading h3</h3>
          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam nonummy nibh euismod tincidunt ut laoreet dolore <a href="#">magna aliquam</a> erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip.</p>
          <h1>Heading h1</h1>                            
          <h3>Heading h3</h3>

          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam nonummy nibh euismod tincidunt ut laoreet dolore <a href="#">magna aliquam</a> erat volutpat. Ut wisi enim ad minim veniam.</p>
        </div>
        <div class="column2-unit-right">
          <h1>Heading h1</h1>                            
          <h3>Heading h3</h3>

          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam nonummy nibh euismod.</p>
          <h1>Heading h1</h1>                            
          <h3>Heading h3</h3>
          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam nonummy nibh euismod.</p>
          <h1>Heading h1</h1>                            
          <h3>Heading h3</h3>

          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam nonummy nibh euismod.</p>
        </div>
        <hr class="clear-contentunit" />

        <!-- Content unit - Three columns -->
        <div class="column3-unit-left">
          <h2>Heading h2</h2>   
          <h3>Heading h3</h3>

          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam nonummy nibh euismod. Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam.</p>
          <h2>Heading h2</h2>                            
          <h3>Heading h3</h3>
          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">adipiscing elit</a>, sed diam nonummy nibh euismod. Lorem ipsum dolor sit amet.</p>

        </div>
        <div class="column3-unit-middle">
          <h2>Heading h2</h2>                            
          <h3>Heading h3</h3>
          <ul>
            <li><a href="#">Resource</a></li>
            <li><a href="#">Resource</a></li>

            <li><a href="#">Resource</a></li>
          </ul>
          <h2>Heading h2</h2>                            
          <h3>Heading h3</h3>
          <ul>
            <li>Fact 1</li>
            <li>Fact 2</li>

          </ul>
          <h2>Heading h2</h2>                            
          <h3>Heading h3</h3>
          <ul>
            <li>Fact 1</li>
            <li>Fact 2</li>
          </ul>

        </div>
        <div class="column3-unit-right">
          <h2>Heading h2</h2>                            
          <h3>Heading h3</h3>
          <ul>
            <li><a href="#">Resource</a></li>
            <li><a href="#">Resource</a></li>

            <li><a href="#">Resource</a></li>
            <li><a href="#">Resource</a></li>
            <li><a href="#">Resource</a></li>
            <li><a href="#">Resource</a></li>                  
            <li><a href="#">Resource</a></li>
            <li><a href="#">Resource</a></li>                  
          </ul>

          <h2>Heading h2</h2>                            
          <h3>Heading h3</h3>
          <ul>
            <li>Fact 1</li>
            <li>Fact 2</li>
            <li>Fact 3</li>
            <li>Fact 4</li>

          </ul>
        </div>                        
        <hr class="clear-contentunit" />

        <!-- Content unit - One column -->
        <h1 class="block">2 - Text and images</h1>
        <div class="column1-unit">
          <h1>Main heading above image</h1>
          <h1>Heading h1</h1>

          <h3>Heading h3</h3>                    
          <p><img src="simg/image.jpg" alt="Image description" title="Image title" />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostruderci tation ullamcorper suscipit lobortis nisl ut aliquip. orem ipsum dolor sit amet.</p>              
          <p><img class="center" src="simg/image.jpg" alt="Image description" title="Image title" /></p>
          <h1>Heading h1</h1>
          <h3>Heading h3</h3>          
          <p><img class="right" src="simg/image.jpg" alt="Image description" title="Image title" />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostruderci tation ullamcorper suscipit lobortis nisl ut aliquip. orem ipsum dolor sit amet.</p>              

          <h1>Main heading beside image</h1>
          <h1 class="side"><img src="simg/image.jpg" alt="Image description" title="Image title" />Heading h1</h1>

          <h3 class="side">Heading h3</h3>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostruderci tation ullamcorper suscipit lobortis nisl ut aliquip. orem ipsum dolor sit amet.</p>              
          <p><img class="center" src="simg/image.jpg" alt="Image description" title="Image title" /></p>
          <h1 class="side"><img class="right" src="simg/image.jpg" alt="Image description" title="Image title" />Heading h1</h1>
          <h3 class="side">Heading h3</h3>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostruderci tation ullamcorper suscipit lobortis nisl ut aliquip. orem ipsum dolor sit amet.</p>              
        </div>          
        <hr class="clear-contentunit" />

          
        <!-- Content unit - One column -->
        <h1 class="block">3 - Tables</h1>
        <div class="column1-unit">
          <table>
            <tr><th class="top" scope="col">Heading 1</th><th class="top" scope="col">Heading 2</th><th class="top" scope="col">Heading 3</th><th class="top" scope="col">Heading 4</th></tr>
            <tr><th scope="row">Category 1</th><td>Data</td><td>Data</td><td>Data</td></tr>

            <tr><th scope="row">Category 2</th><td>Data</td><td>Data</td><td>Data</td></tr>
            <tr><th scope="row">Category 3</th><td>Data</td><td>Data</td><td>Data</td></tr>
          </table>
          <p class="caption"><strong>Table x.x.</strong> Caption</p>

        </div>          
        <hr class="clear-contentunit" />        
                                             
        <!-- Content unit - One column -->
        <h1 class="block">4 - Paragraph text</h1>
        <div class="column1-unit">
          <h1>Heading h1</h1>
          <h3>Heading h3</h3>
          <h2>Heading h2</h2>

          <h3>Heading h3</h3>
          <h4>Heading h4</h4>
          <h5>Heading h5</h5>                                
          <h6>Heading h6</h6>
                
          <h5>Paragraph text</h5>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam at libero. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam at libero. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam at libero. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>

          <h5>Detail text line</h5>
          <p class="details">Read more  ... </p>
							
          <h5>Quote</h5>
          <blockquote>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam at libero. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam at libero. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam at libero. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
          </blockquote>

          <h5>Bullet list</h5>
          <ul>
            <li>Bullet 1</li>
            <li>Bullet 2</li>
          </ul>

          <h5>Ordered list</h5>

          <ol>
            <li>Fact 1</li>
            <li>Fact 2</li>
          </ol>

          <h5>Text orientation</h5>
          <p>Text left.</p>

          <p class="center">Text center.</p>
          <p class="right">Text right.</p>
        </div>
        <hr class="clear-contentunit" />        
                              
        <!-- Content unit - One column -->
        <h1 class="block">5 - Links</h1>
        <div class="column1-unit">
          <h5>Text link</h5>

          <p>Lorem ipsum dolor sit amet, consectetuer <a href="#">Aliquam at Libero</a>.</p>

          <h5>Image link</h5>
          <p><a href="#"><img src="simg/image.jpg" alt="Image description" title="Image title" /></a></p>
          <p><a href="#"><img class="center" src="simg/image.jpg" alt="Image description" title="Image title" /></a></p>
          <p><a href="#"><img class="right" src="simg/image.jpg" alt="Image description" title="Image title" /></a></p>
        </div>

        <hr class="clear-contentunit" />                
                    
        <!-- Content unit - One column -->
        <h1 class="block">6 - Contact form</h1>
        <div class="column1-unit">
          <div class="contactform">
            <form method="post" action="index.html">
              <fieldset><legend>&nbsp;CONTACT DETAILS&nbsp;</legend>
                <p><label for="contact_title" class="left">Title:</label>

                   <select name="contact_title" id="contact_title" class="combo">
                     <option value="choose"> Select... </option>
                     <option value="mrs"> Mrs. </option>
                     <option value="mr"> Mr. </option>
                     <option value="dr"> Dr. </option></select></p>

                <p><label for="contact_firstname" class="left">First name:</label>
                   <input type="text" name="contact_firstname" id="contact_firstname" class="field" value="" tabindex="1" /></p>
                <p><label for="contact_familyname" class="left">Family name:</label>
                   <input type="text" name="contact_familyname" id="contact_familyname" class="field" value="" tabindex="1" /></p>
                <p><label for="contact_street" class="left">Street:</label>
                   <input type="text" name="contact_street" id="contact_street" class="field" value="" tabindex="1" /></p>
                <p><label for="contact_postalcode" class="left">Postal code:</label>

                   <input type="text" name="contact_postalcode" id="contact_postalcode" class="field" value="" tabindex="1" /></p>
                <p><label for="contact_city" class="left">City:</label>
                   <input type="text" name="contact_city" id="contact_city" class="field" value="" tabindex="1" /></p>
                <p><label for="contact_country" class="left">Country:</label>
                   <select name="contact_country" id="contact_country" class="combo">
                     <option value="choose"> Select... </option>
                     <option value="Sweden"> Sweden </option>

                     <option value="United States"> United States </option>
                     <option value="China"> China </option></select></p>
                <p><label for="contact_phone" class="left">Phone:</label>
                   <input type="text" name="contact_phone" id="contact_phone" class="field" value="" tabindex="2" /></p>
                <p><label for="contact_email" class="left">Email:</label>
                   <input type="text" name="contact_email" id="contact_email" class="field" value="" tabindex="2" /></p>

                <p><label for="contact_url" class="left">Website:</label>
                   <input type="text" name="contact_url" id="contact_url" class="field" value="" tabindex="3" /></p>
              </fieldset>
              <fieldset><legend>&nbsp;MESSAGE DETAILS&nbsp;</legend>
                <p><label for="contact_subject" class="left">Subject:</label>
                   <input type="text" name="contact_subject" id="contact_subject" class="field" value="" tabindex="4" /></p>
                <p><label for="contact_urgency" class="left">Please reply:</label>

                   <select name="contact_urgency" id="contact_urgency" class="combo">
                     <option value="choose"> Select... </option>
                     <option value="today"> Latest today </option>
                     <option value="tomorrow"> Latest tomorrow </option>
                     <option value="threedays"> Latest in 3 days </option>

                     <option value="week"> Latest in a week </option>
                     <option value="month"> Latest in a month </option></select></p>
                <p><label for="contact_message" class="left">Message:</label>
                   <textarea name="contact_message" id="contact_message" cols="45" rows="10"tabindex="5"></textarea></p>
                <p><input type="submit" name="submit" id="submit" class="button" value="Send message" tabindex="6" /></p>
              </fieldset>

            </form>
          </div>              
        </div>
      </div>
    </div>
      
    <!-- C. FOOTER AREA -->      

    <div class="footer">
      <p>Copyright &copy; 2007 MoSKITo Project Team | All Rights Reserved</p>

      <p class="credits">Design by <a href="http://www.1-2-3-4.info/" title="Designer Homepage">Wolfgang</a>  | Powered by <a href="www.anotheria.net" title="CMS Homepage">ASG</a> | <a href="http://validator.w3.org/check?uri=referer" title="Validate XHTML code">XHTML 1.0</a> | <a href="http://jigsaw.w3.org/css-validator/" title="Validate CSS code">CSS 2.0</a></p>
    </div>      
  </div> 
  
</body>

</html>



