<%@ page language="java" import="dbtaobao.connDb,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<String[]> list = connDb.index_3();
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
                <li class="current"><a href="#">transaction volume from different merchandise</a></li>
                <li><a href="./index4.jsp">transaction volume from different province</a></li>
            </ul>
        </div>
        <div class="container">
            <div class="title">商品类别交易额对比</div>
            <div class="show">
                <div class='chart-type'>饼图</div>
                <div id="main"></div>
            </div>
        </div>
    </div>
<script>

var myChart = echarts.init(document.getElementById('main'));
var x = []
var y = []
<%
	for(String[] a:list){
		%>
		x.push(<%=a[0]%>);
		y.push(<%=a[1]%>);
		<%
	}
%>
option = {
    color: ['#3398DB'],
    tooltip : {
        trigger: 'axis',
        axisPointer : {            
            type : 'shadow'       
        }
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis : [
        {
            type : 'category',
            data : x,
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'Value',
            type:'bar',
            barWidth: '60%',
            data:y
        }
    ]
};
myChart.setOption(option);
</script>
</body>
</html>