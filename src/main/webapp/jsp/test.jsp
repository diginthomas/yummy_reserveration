
<%@ page import="com.groupd.booking.model.User" %>

<%
    User user = (User) session.getAttribute("user");
%>

<p>
   hello  <%= user.getName()%>
</p>
