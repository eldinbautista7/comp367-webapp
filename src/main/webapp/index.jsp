<%@ page import="java.util.Calendar" %>
<!-- Tiny commit to trigger Jenkins auto-build -->
<%
    Calendar cal = Calendar.getInstance();
    int hour = cal.get(Calendar.HOUR_OF_DAY);
    String greeting;
    if (hour < 12) {
        greeting = "Good morning, Eldin, Welcome to COMP367";
    } else {
        greeting = "Good afternoon, Eldin, Welcome to COMP367";
    }
%>
<h1><%= greeting %></h1>