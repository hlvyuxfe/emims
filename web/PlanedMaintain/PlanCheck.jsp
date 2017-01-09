<%--
  Created by IntelliJ IDEA.
  User: xzsh1
  Date: 2017/1/6
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>维修计划查询与审核</title>
    <script type="text/javascript" src="../js/EASY-UI/jquery-1.7.2.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/EASY-UI/jquery.easyui.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../js/EASY-UI/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="../js/EASY-UI/themes/icon.css" type="text/css"></link>
    <script type="text/javascript" src="../js/EASY-UI/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/jquery.cookie.js"></script>
</head>
<script type="text/javascript">
    $(function(){
        $('#PlanCheck').datagrid(
                {
                    isField : "storageODR_No",
                    pagination : true,
                    pageSize : 5,
                    pageList : [ 5, 10, 15, 20 ],
                    fit : true,
                    fitColumns : false,
                    singleSelect : true,
                    rownumbers : true,
                    columns: [[
                        {
                            field : 'OrderName',
                            title : '订货号',
                            width : 120,
                            align:'center',
                        }, {
                            field : 'taskName',
                            title : '任务名称',
                            width : 120,
                            align:'center',
                        }, {
                            field : 'AssetNo',
                            title : '资产号',
                            width : 80,
                            align:'center',
                        }, {
                            field : 'Equipment',
                            title : '设备名称',
                            width :120,
                            align:'center',
                        }, {
                            field : 'Department',
                            title : '使用单位',
                            width : 90,
                            align:'center',
                        }, {
                            field : 'Time',
                            title : '要求完工时间',
                            width :80,
                            align:'center',
                        }, {
                            field : 'State',
                            title : '项目状态',
                            width : 90,
                            align:'center',
                        }, {
                            field : 'SubmitState',
                            title : '提交状态',
                            width : 60,
                            align:'center',
                        },{
                            field : 'check',
                            title : '查看操作',
                            width : 60,
                            align:'center',
                        },
                    ]],

                    onSelect : function(index, row) {
                    }
                });
        //searchInfo();
        $('#PlanCheck').datagrid('loadData',{"total":147,"rows":[
            {"OrderName":"大201612-001",
            "taskName":"立车大修",
            "AssetNo":"015-086",
            "Equipment":"双柱立式车床",
            "Department":"辅机事业部",
            "Time":"",
            "State":"已制定粗计划",
            "SubmitState":"已提交",
            "check":"参看操作"},
            {"OrderName":"大201612-002",
                "taskName":"卧式加工中心",
                "AssetNo":"004-025",
                "Equipment":"卧式加工中心",
                "Department":"叶片分厂",
                "Time":"",
                "State":"已制定粗计划",
                "SubmitState":"已提交",
                "check":"查看操作"},
            {"OrderName":"大201612-003",
                "taskName":"卧式加工中心大修",
                "AssetNo":"004-025",
                "Equipment":"卧式加工中心",
                "Department":"叶片分厂",
                "Time":"",
                "State":"已制定粗计划",
                "SubmitState":"已提交",
                "check":"查看操作"},
            {"OrderName":"大201612-004",
                "taskName":"数控火焰切割机大修",
                "AssetNo":"008-038",
                "Equipment":"数控火焰切割机",
                "Department":"辅机事业部",
                "Time":"",
                "State":"已制定粗计划",
                "SubmitState":"已提交",
                "check":"查看操作"},
            {"OrderName":"大201612-005",
                "taskName":"滚齿机大修",
                "AssetNo":"053-015",
                "Equipment":"滚齿机",
                "Department":"机修分厂",
                "Time":"",
                "State":"已制定粗计划",
                "SubmitState":"已提交",
                "check":"查看操作"}
        ]
        });

    });
    function searchInfo(){
        $('#PlanCheck').datagrid('load',{
            OrderName:'大20161227-001',
            taskName:'立车大修',
            AssetNo:'015-086',
            Equipment:'双柱立式车床',
            Department:'辅机事业部',
            Time:'000',
            State:'已制定粗计划',
            SubmitState:'已提交',
            check:'参看操作'
        });
    }
</script>
<body>
<div id="outLayout" class="easyui-layout" data-options="fit:true" style="width:100%;padding:0px;background:#ffff">
    <div data-options="region:'north',split:true" style="width:100%;overflow-y:hidden;">
        <form id="searchForm" method="post">
            <table style="font-size:12px;height:40px;table-layout: fixed">
                <tr>
                    <td align="right"><p style="font-size:12px">订货号</p></td>
                    <td><input></td>
                    <td align="right"><p style="font-size:12px">资产号</p></td>
                    <td><input id="executeTime" name="executeTime"></td>
                    <td align="right"><p style="font-size:12px">设备名称</p></td>
                    <td><input ></td>
                </tr>
                <tr>
                    <td align="right"><p style="font-size:12px">使用单位</p></td>
                    <td><select id="PlanType" class="easyui-combobox" name="GetStatus"
                                editable="false" panelHeight='auto' style="width:100%">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                    <td align="right"><p style="font-size:12px">项目状态</p></td>
                    <td><select id="PlanType" class="easyui-combobox" name="GetStatus"
                                editable="false" panelHeight='auto' style="width:100%">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                    <td   align="right"><input type="button" value="检索"></td>
                    <td align="right"><input type="button" value="重置">
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <div data-options="region:'center'" scrolling="auto">
        <table id="PlanCheck"></table>
    </div>
</div>

</body>
</html>
