<%@ page language="java" import="dbtaobao.connDb,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<String[]> list = connDb.index_4();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ECharts Visuliaztion</title>
<link href="./css/style.css" type='text/css' rel="stylesheet"/>
<script src="./js/echarts.min.js"></script>
</head>
<body>
	<div class='header'>
        <p>ECharts Visuliaztion</p>
    </div>
    <div class="content">
        <div class="nav">
            <ul>
                <li><a href="./index.jsp">buyer behavior</a></li>
                <li><a href="./index1.jsp">male vs femal</a></li>
                <li><a href="./index2.jsp">buyer from different ages</a></li>
                <li><a href="./index3.jsp">transaction volume from different merchandise</a></li>
                <li class="current"><a href="#">transaction volume from different province</a></li>
            </ul>
        </div>
        <div class="container">
            <div class="title">transaction volume from different province</div>
            <div class="show">
                <div class='chart-type'>map</div>
                <div id="main"></div>
            </div>
        </div>
    </div>
<script>
</script>
</body>
</html>