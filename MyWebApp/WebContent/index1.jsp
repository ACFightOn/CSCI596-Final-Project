<%@ page language="java" import="dbtaobao.connDb,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<String[]> list = connDb.index_1();
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
                <li class="current"><a href="#">male vs femal</a></li>
                <li><a href="./index2.jsp">buyer from different ages</a></li>
                <li><a href="./index3.jsp">transaction volume from different merchandise</a></li>
                <li><a href="./index4.jsp">transaction volume from different province</a></li>
            </ul>
        </div>
        <div class="container">
            <div class="title">male vs femal</div>
            <div class="show">
                <div class='chart-type'>chart</div>
                <div id="main"></div>
            </div>
        </div>
    </div>
<script>
var myChart = echarts.init(document.getElementById('main'));
option = {
         backgroundColor: '#2c343c',

         title: {
             text: 'graph of buyers consumption behavior',
             left: 'center',
             top: 20,
             textStyle: {
                 color: '#ccc'
             }
         },

         tooltip : {
             trigger: 'item',
             formatter: "{a} <br/>{b} : {c} ({d}%)"
         },

         visualMap: {
             show: false,
             min: 80,
             max: 600,
             inRange: {
                 colorLightness: [0, 1]
             }
         },
         series : [
             {
                 name:'consumption behavior',
                 type:'pie',
                 radius : '55%',
                 center: ['50%', '50%'],
                 data:[
                	 {value:<%=list.get(0)[1]%>, name:'male'},
                     {value:<%=list.get(1)[1]%>, name:'female'},
                     {value:<%=list.get(2)[1]%>, name:'unknown'},
                 ].sort(function (a, b) { return a.value - b.value}),
                 roseType: 'angle',
                 label: {
                     normal: {
                         textStyle: {
                             color: 'rgba(255, 255, 255, 0.3)'
                         }
                     }
                 },
                 labelLine: {
                     normal: {
                         lineStyle: {
                             color: 'rgba(255, 255, 255, 0.3)'
                         },
                         smooth: 0.2,
                         length: 10,
                         length2: 20
                     }
                 },
                 itemStyle: {
                     normal: {
                         color: '#c23531',
                         shadowBlur: 200,
                         shadowColor: 'rgba(0, 0, 0, 0.5)'
                     }
                 },

                 animationType: 'scale',
                 animationEasing: 'elasticOut',
                 animationDelay: function (idx) {
                     return Math.random() * 200;
                 }
             }
         ]
     };

myChart.setOption(option);
</script>
</body>
</html>