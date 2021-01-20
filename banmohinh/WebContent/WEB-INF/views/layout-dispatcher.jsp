<%
	String view = request.getParameter("view");
	 if(view.startsWith("admin/"))
	{
		pageContext.forward("admin-layout.jsp");
	}
	else if(view.startsWith("login/"))
	{
	pageContext.forward("admin-login-layout.jsp");
	}
	else if(view.startsWith("user/"))
	{
	pageContext.forward("user-layout.jsp");
	}
%>