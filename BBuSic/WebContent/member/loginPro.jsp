<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "ch11.logon.LogonDBBean" %>

<% request.setCharacterEncoding("euc-kr");%>

<%
    String id = request.getParameter("id");
	String passwd  = request.getParameter("passwd");	
	String checkbox = request.getParameter("checkbox");
	LogonDBBean manager = LogonDBBean.getInstance();
	int check= manager.userCheck(id,passwd);
    if(checkbox!=null){
   	Cookie cooId = new Cookie("cookieId",id);
	Cookie cooPw = new Cookie("cookiePw",passwd);
	cooId.setMaxAge(60);
	cooPw.setMaxAge(60);
	response.addCookie(cooId);
	response.addCookie(cooPw);
    }
 
		    

	
	if(check==1){
		session.setAttribute("memId",id);
		response.sendRedirect("main.jsp");
	}else if(check==0){%>
	<script> 
	  alert("비밀번호가 맞지 않습니다.");
      history.go(-1);
	</script>
<%	}else{ %>
	<script>
	  alert("아이디가 맞지 않습니다..");
	  history.go(-1);
	</script>
<%}	%>	