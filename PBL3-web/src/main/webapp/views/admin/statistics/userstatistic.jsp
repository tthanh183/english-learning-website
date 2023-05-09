<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
    <div class="container">
        <canvas id="myChart"style="max-width: 600px; max-height: 400px;"></canvas>
    </div>
    <script>
        let myChart = document.getElementById('myChart').getContext('2d');
        // Global Options

        // Chart.defaults.global.defaultFontFamily = 'Lato';
        // Chart.defaults.global.defaultFontSize = 18;
        // Chart.defaults.global.defaultFontColor = '#777';

        let massPopChart = new Chart(myChart, {
            type:'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
            data:{
                labels:['Giới tính nam', 'Giới tính nữ'],
                datasets:[{
                    label:'Giới tính',
                    data:[
                        ${maleCount},
                        ${femaleCount}
                    ],
                    //backgroundColor:'green',
                    backgroundColor:[
                        'rgba(255, 99, 132, 0.6)',
                        'rgba(54, 162, 235, 0.6)',
                    ],
                    borderWidth:1,
                    borderColor:'#777',
                    hoverBorderWidth:3,
                    hoverBorderColor:'#000'
                }]
            },
            options:{
                plugin:{
                    title:{
                        display:true,
                        position:'right',
                        text:'Biểu đồ cột người dùng theo độ tuổi',
                        fontSize:30
                    }
                },
                legend:{
                    display:true,
                    position:'right',
                    labels:{
                        fontColor:'#000'
                    }
                },
                layout:{
                    padding:{
                        left:100,
                        right:0,
                        bottom:0,
                        top:100
                    }
                },
                tooltips:{
                    enabled:true
                }
            }
        });
    </script>

</body>
</html>