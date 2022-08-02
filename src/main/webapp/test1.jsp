<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>打卡</title>
    <script src="js/echarts.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
<div id="main" style="width: 600px; height: 400px;"></div>
</body>

<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));

    $.ajax({
        contentType: "application/json",
        type: "GET",
        url: "s",
        dataType: "json",
        success: function (data) {

            let x = [];
            let y = [];

            for (let i = 0; i < data.length; i++) {
                //x[i]获取json的姓名，y[i]获取json的值
                x[i] = data[i].name;
                y[i] = data[i].num;


            }

            myChart.setOption({

                tooltip: {},
                label: {
                    show: true,
                    position:'top',
                },
                legend: {},
                xAxis: {
                    data: x
                },
                yAxis: {},
                series: [
                    {
                        colorBy:'data',
                        name: '打卡次数',
                        type: 'bar',
                        data: y

                    }
                ]
            });

        },
        error: function () {

        }
    })

</script>

</html>
