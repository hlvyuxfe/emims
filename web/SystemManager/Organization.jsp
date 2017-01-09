<%--
  Created by IntelliJ IDEA.
  User: xzsh1
  Date: 2017/1/9
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>组织机构管理</title>
    <script type="text/javascript" src="../js/EASY-UI/jquery-1.7.2.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/EASY-UI/jquery.easyui.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../js/EASY-UI/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="../js/EASY-UI/themes/icon.css" type="text/css"></link>
    <script type="text/javascript" src="../js/EASY-UI/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/jquery.cookie.js"></script>
</head>
<script type="text/javascript">
    $(function(){
        $('#Organization').datagrid(
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
                            title : '部门编号',
                            width : 120,
                            align:'center',
                        }, {
                            field : 'taskName',
                            title : '部门名称',
                            width : 120,
                            align:'center',
                        }, {
                            field : 'AssetNo',
                            title : '部门简介',
                            width : 80,
                            align:'center',
                        }, {
                            field : 'Equipment',
                            title : '下属部门',
                            width :120,
                            align:'center',
                        }, {
                            field : 'Department',
                            title : '部门信息编辑',
                            width : 90,
                            align:'center',
                        }, {
                            field : 'Time',
                            title : '部门信息删除',
                            width :80,
                            align:'center',
                        },
                    ]],

                    onSelect : function(index, row) {
                    }
                });
        //searchInfo();
        $('#Organization').datagrid('loadData',{"total":9,"rows":[
            {"OrderName":"001",
                "taskName":"行政部",
                "AssetNo":"<a>查看</a> <a>编辑</a>",
                "Equipment":"<a>查看</a> <a>编辑</a>",
                "Department":"<a>编辑</a>",
                "Time":"<a>删除</a>"},
            {"OrderName":"002",
                "taskName":"人事部",
                "AssetNo":"<a>查看</a> <a>编辑</a>",
                "Equipment":"<a>查看</a> <a>编辑</a>",
                "Department":"<a>编辑</a>",
                "Time":"<a>删除</a>"},
            {"OrderName":"003",
                "taskName":"采购部",
                "AssetNo":"<a>查看</a> <a>编辑</a>",
                "Equipment":"<a>查看</a> <a>编辑</a>",
                "Department":"<a>编辑</a>",
                "Time":"<a>删除</a>"},
            {"OrderName":"004",
                "taskName":"辅机事业部",
                "AssetNo":"<a>查看</a> <a>编辑</a>",
                "Equipment":"<a>查看</a> <a>编辑</a>",
                "Department":"<a>编辑</a>",
                "Time":"<a>删除</a>"},
            {"OrderName":"005",
                "taskName":"叶片分厂",
                "AssetNo":"<a>查看</a> <a>编辑</a>",
                "Equipment":"<a>查看</a> <a>编辑</a>",
                "Department":"<a>编辑</a>",
                "Time":"<a>删除</a>"}
        ]
        });

    });
</script>
<body>
    <div id="outLayout" class="easyui-layout" data-options="fit:true" style="width:100%;padding:0px;background:#ffff">
        <div data-options="region:'center'" scrolling="auto">
            <table id="Organization"></table>
        </div>

        <div data-options="region:'south',split:true" style="width:100%;overflow-y:hidden;margin:0 auto;">
            <form id="searchForm" method="post">
                <table style="font-size:12px;height:40px;table-layout: fixed; text-align:center">
                    <tr>
                        <td align="right"><p style="font-size:12px">部门名称</p></td>
                        <td align="left"><input ></td>
                    </tr>
                    <tr>
                        <td align="right"><p style="font-size:12px">部门简介</p></td>
                        <td colspan="2"><textarea style="width:500px;height:50px"></textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="center"><input type="button" value="提交">
                            <input type="button" value="撤销"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
