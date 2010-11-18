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
                            <td class="tlogin"><input type="submit" name="login" value="Ingresar" /><br/></td>

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
