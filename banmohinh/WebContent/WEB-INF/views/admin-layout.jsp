<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  	 <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Admin Management Page</title>
     <base href="${pageContext.servletContext.contextPath}/">
	<!-- BOOTSTRAP STYLES-->
    <link href="css/admin/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="css/admin/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="css/admin/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
     <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	   <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <span class="logout-spn" >
                  <a href="#" style="color:#fff;">LOGOUT</a>  

                </span>
                <br><br>
                <p style="color:#fff;font-size: 35px">MLEM SHOP</p>

  
              
                
            </div>
        </div>
        <!-- /. NAV TOP  -->
        	<jsp:include page="${param.view}"/>
         </div>
         <!-- /. PAGE WRAPPER  -->
    <div class="footer">

    </div>
</body>
</html>