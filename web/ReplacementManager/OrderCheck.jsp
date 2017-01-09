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
    <title>采购明细查询</title>
    <script type="text/javascript" src="../js/EASY-UI/jquery-1.7.2.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/EASY-UI/jquery.easyui.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../js/EASY-UI/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="../js/EASY-UI/themes/icon.css" type="text/css"></link>
    <script type="text/javascript" src="../js/EASY-UI/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/jquery.cookie.js"></script>
</head>
<style>
    select{width:173px}
</style>
<script type="text/javascript">
    $(function(){
        $('#OrderCheck').datagrid(
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
                            title : '项目号',
                            width : 120,
                            align:'center',
                        }, {
                            field : 'taskName',
                            title : '申请单号',
                            width : 120,
                            align:'center',
                        }, {
                            field : 'AssetNo',
                            title : '设备名称',
                            width : 80,
                            align:'center',
                        }, {
                            field : 'Equipment',
                            title : '备件名称',
                            width :120,
                            align:'center',
                        }, {
                            field : 'Department',
                            title : '规格型号',
                            width : 90,
                            align:'center',
                        }, {
                            field : 'Time',
                            title : '申请人',
                            width :80,
                            align:'center',
                        }, {
                            field : 'State',
                            title : '申请时间',
                            width : 90,
                            align:'center',
                        }, {
                            field : 'SubmitState',
                            title : '实需数',
                            width : 60,
                            align:'center',
                        },{
                            field : 'check',
                            title : '查看明细',
                            width : 60,
                            align:'center',
                        },
                    ]],

                    onSelect : function(index, row) {
                    }
                });
        //searchInfo();
        $('#OrderCheck').datagrid('loadData',{"total":213,"rows":[
            {"OrderName":"J201612/116",
                "taskName":"20161201112-005W",
                "AssetNo":"数控机床",
                "Equipment":"连接器",
                "Department":"531-841",
                "Time":"曹溪",
                "State":"20161201",
                "SubmitState":"1",
                "check":"参看操作"},
            {"OrderName":"",
                "taskName":"2016120123410-01926",
                "AssetNo":"数控卧床",
                "Equipment":"圆螺母",
                "Department":"",
                "Time":"韩建雄",
                "State":"20161201",
                "SubmitState":"6",
                "check":"查看操作"},
            {"OrderName":"J201612/叶片",
                "taskName":"20161202037-AM",
                "AssetNo":"立式加工中心",
                "Equipment":"90度焊接弯头",
                "Department":"86",
                "Time":"张晓波",
                "State":"20161202",
                "SubmitState":"5",
                "check":"查看操作"},
            {"OrderName":"大201612-54",
                "taskName":"20161202102226-13873",
                "AssetNo":"车间维修",
                "Equipment":"接触器",
                "Department":"3TF30 01-0XM0",
                "Time":"张红亮",
                "State":"20161202",
                "SubmitState":"1",
                "check":"查看操作"},
            {"OrderName":"大201612-90",
                "taskName":"2016120233306-11077",
                "AssetNo":"数控镗床",
                "Equipment":"齿轮油泵",
                "Department":"CB-B100",
                "Time":"胡仕明",
                "State":"20161202",
                "SubmitState":"1",
                "check":"查看操作"}
        ]
        });

    });
</script>
<body>
<div id="outLayout" class="easyui-layout" data-options="fit:true" style="width:100%;padding:0px;background:#ffff">
    <div data-options="region:'north',split:true" style="width:100%;overflow-y:hidden;">
        <form id="searchForm" method="post">
            <table style="font-size:12px;height:40px;table-layout: fixed">
                <tr>
                    <td align="right"><p style="font-size:12px">项目号</p></td>
                    <td><input ></td>
                    <td align="right"><p style="font-size:12px">申请单号</p></td>
                    <td><input id="executeTime" name="executeTime"></td>
                </tr>
                <tr>
                    <td align="right"><p style="font-size:12px">审批结果</p></td>
                    <td><select  class="easyui-combobox" name="GetStatus"
                                editable="false" panelHeight='auto' style="width:173px;">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                    <td align="right"><p style="font-size:12px">立项结果</p></td>
                    <td><select  class="easyui-combobox" name="GetStatus"
                                 editable="false" panelHeight='auto' style="width:173px;">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                </tr>
                <tr>
                    <td align="right"><p style="font-size:12px">签合同结果</p></td>
                    <td><select  class="easyui-combobox" name="GetStatus"
                                 editable="false" panelHeight='auto' style="width:173px;">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                    <td align="right"><p style="font-size:12px">入库结果</p></td>
                    <td><select  class="easyui-combobox" name="GetStatus"
                                 editable="false" panelHeight='auto' style="width:173px;">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                    <td align="right"><p style="font-size:12px">采购单状态</p></td>
                    <td><select  class="easyui-combobox" name="GetStatus"
                                 editable="false" panelHeight='auto' style="width:173px;">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                </tr>
                <tr>
                    <td align="right"><p style="font-size:12px">设备/备件</p></td>
                    <td><select  class="easyui-combobox" name="GetStatus"
                                 editable="false" panelHeight='auto' style="width:173px;">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                    <td align="right"><p style="font-size:12px">人员</p></td>
                    <td><select  class="easyui-combobox" name="GetStatus"
                                 editable="false" panelHeight='auto' style="width:173px;">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                </tr>
                <tr>
                    <td>起始日期</td>
                    <td><input class="easyui-datebox"></td>
                    <td>结束日期</td>
                    <td><input class="easyui-datebox"></td>
                </tr>
                <tr>
                    <td align="right"><p style="font-size:12px">使用单位</p></td>
                    <td><select id="PlanType" class="easyui-combobox" name="GetStatus"
                                editable="false" panelHeight='auto' style="width:173px;">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                    <td align="right"><p style="font-size:12px">项目状态</p></td>
                    <td><select id="PlanType" class="easyui-combobox" name="GetStatus"
                                editable="false" panelHeight='auto' style="width:173px;">
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
        <table id="OrderCheck"></table>
    </div>
</div>

</body>
</html>
