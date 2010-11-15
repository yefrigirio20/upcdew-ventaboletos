<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
    <head profile="http://gmpg.org/xfn/11">
        <title>Modular Business | Style Demo</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <meta http-equiv="imagetoolbar" content="no" />
        <link rel="stylesheet" href="styles/layout.css" type="text/css" />
    </head>
    <body id="top">
        <%@include file="header.jsp" %>
        <!-- ####################################################################################################### -->
        <div class="wrapper col5">
            <div id="container">
                <div id="content">

                    <h2>LOGIN</h2>
                    <div id="respond">
                        <form action="Login" method="post">
                            <table class="tlogin">
                                <tr>
                                    <td class="tlogin"></td>
                                    <td class="tlogin"></td>
                                    <td class="tlogin"></td>
                                    <td class="tlogin">Usuario:</td>
                                    <td class="tlogin"><input type="text" name="username" /><br/></td>

                                </tr>
                                <tr>
                                    <td class="tlogin"></td>
                                    <td class="tlogin"></td>
                                    <td class="tlogin"></td>
                                    <td class="tlogin">Password:</td>
                                    <td class="tlogin"><input type="password" name="password" /><br/></td>

                                </tr>
                                <tr>
                                    <td class="tlogin"></td>
                                    <td class="tlogin"></td>
                                    <td class="tlogin"></td>
                                    <td class="tlogin"></td>
                                    <td class="tlogin"><input type="submit" name="login" /><br/></td>

                                </tr>





                            </table>
                        </form>
                    </div>
                </div>

            </div>
            <div class="clear"></div>
        </div>
        <!-- ####################################################################################################### -->
        <%@include  file="footer.jsp" %>
    </body>
</html>
