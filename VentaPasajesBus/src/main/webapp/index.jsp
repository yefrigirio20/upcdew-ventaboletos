<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Buses del Perú</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="scripts/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.setup.js"></script>
</head>
<body id="top">
<%@include file="header.jsp" %>

<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_slide">
    <div id="featured_content">
      <ul>
        <li><a href="#"><img src="images/demo/ima0001.jpg" alt="" /></a></li>
        <li><a href="#"><img src="images/demo/ima0015.jpg" alt="" /></a></li>
        <li><a href="#"><img src="images/demo/ima0016.jpg" alt="" /></a></li>
        <li><a href="#"><img src="images/demo/ima0017.jpg" alt="" /></a></li>
        <li><a href="#"><img src="images/demo/ima0018.jpg" alt="" /></a></li>
        <li><a href="#"><img src="images/demo/ima0019.jpg" alt="" /></a></li>
        <li><a href="#"><img src="images/demo/ima0020.jpg" alt="" /></a></li>
        <li><a href="#"><img src="images/demo/ima0021.jpg" alt="" /></a></li>
        <li><a href="#"><img src="images/demo/ima0022.jpg" alt="" /></a></li>
        <li><a href="#"><img src="images/demo/ima0010.jpg" alt="" /></a></li>
      </ul>
    </div>
    <a href="javascript:void(0);" id="featured-item-prev"><img src="images/prev.png" alt="" /></a> <a href="javascript:void(0);" id="featured-item-next"><img src="images/next.png" alt="" /></a> </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">
    <div id="content">
        <h2>AFILIATE A LA RED DE BUSES A NIVEL NACIONAL</h2><c:if test="${usuario != null}">usuario logeado</c:if>
      <img class="imgl" src="images/demo/ima0011.jpg" alt="" width="125" height="125" />
      <p><strong>Indonectetus facilis leo nibh</strong></p>
      <p>This is a W3C standards compliant Open Source free CSS template from <a href="http://www.os-templates.com/">OS Templates</a>.</p>
      <p>This template is distributed under a <a href="http://creativecommons.org/licenses/by-sa/3.0/">Creative Commons Attribution-Share Alike 3.0 Unported License</a>, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer.</p>
      <p>For more free css templates visit <a href="http://www.os-templates.com/">Open Source Templates</a>.</p>
      <p>Lacusenim inte trices lorem anterdum nam sente vivamus quis fauctor mauris wisinon vivamus. Condimentumfelis et amet tellent quisquet a leo lacus nec augue accumsan. Sagittislaorem dolor ipsum at urna et pharetium malesuada nis consectus odio.</p>
    </div>
    <div id="column">
      <div class="holder">
        <h2>Cobertura a nivel Nacional</h2>
        <ul id="latestnews">
          <li><img class="imgl" src="images/demo/ima0014.jpg" alt="" />
            <p><strong>Indonectetus facilis leo nibh.</strong></p>
            <p>Nullamlacus dui ipsum cons eque loborttis non euis que morbi penas dapibulum orna.</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </li>
          <li class="last"><img class="imgl" src="images/demo/ima0013.jpg" alt="" />
            <p><strong>Indonectetus facilis leo nibh.</strong></p>
            <p>Nullamlacus dui ipsum cons eque loborttis non euis que morbi penas dapibulum orna.</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>            
          </li>
        </ul>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

<%@include  file="footer.jsp" %>
</body>
</html>
