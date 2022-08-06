

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 引入 layui.css -->
<link href="//unpkg.com/layui@2.7.6/dist/css/layui.css" rel="stylesheet">

<!-- 引入 layui.js -->
<script src="//unpkg.com/layui@2.7.6/dist/layui.js"></script>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="echarts.js"></script>
<meta charset="utf-8">
<html>
<head>
<body>
<div class="layui-form layui-card-header layuiadmin-card-header-auto">
    <div class="layui-inline">
        <input type="text" name="yearMin" placeholder="年龄大于等于" autocomplete="off" class="layui-input">
    </div>
    &nbsp;-&nbsp;
    <div class="layui-inline">
        <input type="text" name="yearMax" placeholder="年龄小于等于" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-inline">
        <button class="layui-btn layuiadmin-btn-admin" lay-submit lay-filter="year-search">
            <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
        </button>
    </div>
</div>

<div class="layui-form layui-card-header layuiadmin-card-header-auto">
    <div class="layui-inline">
        <input type="text" name="mileMin" placeholder="里程大于等于" autocomplete="off" class="layui-input">
    </div>
    &nbsp;-&nbsp;
    <div class="layui-inline">
        <input type="text" name="mileMax" placeholder="里程小于等于" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-inline">
        <button class="layui-btn layuiadmin-btn-admin" lay-submit lay-filter="mile-search">
            <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
        </button>
    </div>
</div>
<div class="layui-form layui-card-header layuiadmin-card-header-auto">
    <div class="layui-inline">
        <input type="text" name="timeMin" placeholder="时间大于等于" autocomplete="off" class="layui-input">
    </div>
    &nbsp;-&nbsp;
    <div class="layui-inline">
        <input type="text" name="timeMax" placeholder="时间小于等于" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-inline">
        <button class="layui-btn layuiadmin-btn-admin" lay-submit lay-filter="time-search">
            <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
        </button>
    </div>
</div>
    <table class="layui-hide" id="test"></table>
    <div id="main" style="width: 600px;height:400px;"></div>

    <script>
        layui.use('table', function(){
            var table = layui.table;
            var form = layui.form;

            var tableIns = table.render({
                elem: '#test'
                ,page:true
                ,url:'http://localhost:8081/data/all'
                ,cellMinWidth: 80
                ,cols: [[
                    {field:'id', title: 'ID', sort: false, width:130}
                    ,{field:'sex', title: '性别', width: 130}
                    ,{field:'year', title: '出生年份', sort: false, width: 130}
                    ,{field:'totalMile', title: '旅行里程', width: 130}
                    ,{field:'totalTime', title: '旅行时间', width: 130}
                ]]
            });

            form.on('submit(year-search)',function(data){
                    let field = data.field;
                    //var reqData = form.val('queryYear');
                    //执行重载
                    table.reload('test', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,url:'http://localhost:8081/data/getYear'
                        ,where: {
                            yearMin:  field.yearMin	,//在表格中进行搜索
                            yearMax:  field.yearMax
                        }
                    });
            });

            form.on('submit(mile-search)',function(data){
                let field = data.field;
                //var reqData = form.val('queryYear');
                //执行重载
                table.reload('test', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,url:'http://localhost:8081/data/getMile'
                    ,where: {
                        mileMin:  field.mileMin	,//在表格中进行搜索
                        mileMax:  field.mileMax
                    }
                });
            });

            form.on('submit(time-search)',function(data){
                let field = data.field;
                //var reqData = form.val('queryYear');
                //执行重载
                table.reload('test', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,url:'http://localhost:8081/data/getTime'
                    ,where: {
                        timeMin:  field.timeMin	,//在表格中进行搜索
                        timeMax:  field.timeMax
                    }
                });
            });

        });

    </script>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: 'ECharts 入门示例'
        },
        tooltip: {},
        legend: {
            data: ['销量']
        },
        xAxis: {
            data: ['衬衫', '羊毛衫', '雪纺衫', '裤子', '高跟鞋', '袜子']
        },
        yAxis: {},
        series: [
            {
                name: '销量',
                type: 'bar',
                data: [5, 20, 36, 10, 10, 20]
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</head>

</html>