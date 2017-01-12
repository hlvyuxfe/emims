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
                            title : '设备名称',
                            width : 120,
                            align:'center',
                        }, {
                            field : 'taskName',
                            title : '维修类型',
                            width : 120,
                            align:'center',
                        }, {
                            field : 'AssetNo',
                            title : '维修人员',
                            width : 80,
                            align:'center',
                        }, {
                            field : 'Equipment',
                            title : '起始时间',
                            width :120,
                            align:'center',
                        }, {
                            field : 'Department',
                            title : '结束时间',
                            width : 90,
                            align:'center',
                        }, {
                            field : 'Time',
                            title : '操作',
                            width :120,
                            align:'center',
                        },
                    ]],

                    onSelect : function(index, row) {
                    }
                });
        //searchInfo();
        $('#OrderCheck').datagrid('loadData',{"total":22,"rows":[
            {"OrderName":"数控机床",
                "taskName":"内修",
                "AssetNo":"曹溪",
                "Equipment":"20161122",
                "Department":"20161122",
                "Time":"查看 编辑 删除 审核",
                "State":"20161201",
                "SubmitState":"查看 编辑 删除 审核",
                "check":"参看操作"},
            {"OrderName":"数控卧床",
                "taskName":"委托",
                "AssetNo":"曹溪",
                "Equipment":"20161122",
                "Department":"20161127",
                "Time":"查看 编辑 删除 审核",
                "State":"20161201",
                "SubmitState":"查看 编辑 删除 审核",
                "check":"查看操作"},
            {"OrderName":"立式加工中心",
                "taskName":"内修",
                "AssetNo":"韩建雄",
                "Equipment":"20161124",
                "Department":"20161125",
                "Time":"查看 编辑 删除 审核",
                "State":"20161202",
                "SubmitState":"查看 编辑 删除 审核",
                "check":"查看操作"},
            {"OrderName":"接触器",
                "taskName":"内修",
                "AssetNo":"胡仕明",
                "Equipment":"20161124",
                "Department":"20161125",
                "Time":"查看 编辑 删除 审核",
                "State":"20161202",
                "SubmitState":"查看 编辑 删除 审核",
                "check":"查看操作"},
            {"OrderName":"数控镗床",
                "taskName":"内修",
                "AssetNo":"张红亮",
                "Equipment":"20161201",
                "Department":"20161202",
                "Time":"查看 编辑 删除 审核",
                "State":"20161202",
                "SubmitState":"查看 编辑 删除 审核",
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
                    <td align="right"><p style="font-size:12px">设备名称</p></td>
                    <td><input ></td>
                    <td align="right"><p style="font-size:12px">申请单号</p></td>
                    <td><input id="executeTime" name="executeTime"></td>
                    <td align="right"><p style="font-size:12px">维修类型</p></td>
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
                    <td align="right"><p style="font-size:12px">维修人员</p></td>
                    <td><input ></td>
                </tr>
                <tr>

                    <td colspan="5" align="center"><input type="button" value="检索">
                    <input type="button" value="重置">
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
