<%
	String view = request.getParameter("view");
	 if(view.startsWith("admin/"))
	{
		pageContext.forward("admin-layout.jsp");
	}

	//else if(view.startsWith("admin/"))
	//{
		//pageContext.forward("admin-login.jsp");
	//}
	else 
	{
	pageContext.forward("user-layout.jsp");
	}
%>