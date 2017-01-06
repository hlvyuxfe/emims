<%--
  Created by IntelliJ IDEA.
  User: xzsh1
  Date: 2016/11/25
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设备信息化管理平台</title>
    <script type="text/javascript" src="js/EASY-UI/jquery-1.7.2.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/EASY-UI/jquery.easyui.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="js/EASY-UI/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="js/EASY-UI/themes/icon.css" type="text/css"></link>
    <script type="text/javascript" src="js/EASY-UI/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>

    <script type="text/javascript" src="js/jquery.cookie.js"></script>
</head>
<script type="text/javascript">
$(function()
{
    var SystemManagerTreeData=
            [
                {
                    text : "组织机构管理", attributes : {url : "SystemManager/Organization.jsp"}
                }
            ];
    $('#SystemManager').tree({
        data:SystemManagerTreeData,
        lines:true,
        onClick:function (node) {
            $(this).tree('toggle',node.target);
            Open(node.text,node.attributes.url);
        }
    });

    var PlanedMaintain=
            [
                {text : "维修计划制定", attributes : {url : "Planedmaintain/PlanSubmit.jsp"}},
                {text : "维修计划查询与审核", attributes : {url : "Planedmaintain/PlanCheck.jsp"}},
                {text : "部门计划管理",
                    state : "closed",
                    children : [{text : "电气部门计划管理", attributes : {url : "PlanedMaintain/PlanSubmit.jsp"}},
                                {text : "机械部门计划管理", attributes : {url : "PlanedMaintain/PlanSubmit.jsp"}},
                                {text : "采购部门计划管理", attributes : {url : "PlanedMaintain/PlanSubmit.jsp"}}
                    ]
                },
                {text : "任务会签", attributes : {url : "PlanedMaintain/PlanSubmit.jsp"}},
                {text : "执行计划查询", attributes : {url : "PlanedMaintain/PlanSubmit.jsp"}},
                {text : "质检单查询", attributes : {url : "PlanedMaintain/PlanSubmit.jsp"}}
            ];

    $('#PlanedMaintain').tree({
        data:PlanedMaintain,
        lines:true,
        onClick:function (node) {
            $(this).tree('toggle',node.target);
            Open(node.text,node.attributes.url);
        }
    });

    function Open(text, url)
    {
        if ($("#tabs").tabs('exists', text))
        {
            $('#tabs').tabs('select', text);
        } else
        {
            var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
            $('#tabs').tabs('add',
                    {
                        title : text,
                        closable : true,
                        content : content
                    });
        }
    }

    bindTabEvent();   //zjt
    bindTabMenuEvent();   //zjt
});

function bindTabEvent(){   //zjt
    $(".tabs-inner").live('dblclick',function(){
        var subtitle = $(this).children("span").text();
        if($(this).next().is('.tabs-close')){
            $('#tabs').tabs('close',subtitle);
        }
    });
    $(".tabs-inner").live('contextmenu',function(e){
        $('#mm').menu('show', {
            left: e.pageX,
            top: e.pageY
        });
        var subtitle =$(this).children("span").text();
        $('#mm').data("currtab",subtitle);
        return false;
    });
}
function bindTabMenuEvent() {  //zjt
    //关闭当前
    $('#mm-tabclose').click(function() {
        var currtab_title = $('#mm').data("currtab");

        $('#tabs').tabs('close',currtab_title);

    });
    //全部关闭
    $('#mm-tabcloseall').click(function() {
        $('.tabs-inner span').each(function(i, n) {
            if ($(this).parent().next().is('.tabs-close')) {
                var t = $(n).text();
                $('#tabs').tabs('close', t);
            }
        });
    });
    //关闭除当前之外的TAB
    $('#mm-tabcloseother').click(function() {
        var currtab_title = $('#mm').data("currtab");
        $('.tabs-inner span').each(function(i, n) {
            if ($(this).parent().next().is('.tabs-close')) {
                var t = $(n).text();
                if (t != currtab_title)
                    $('#tabs').tabs('close', t);
            }
        });
    });
    //关闭当前右侧的TAB
    $('#mm-tabcloseright').click(function() {
        var nextall = $('.tabs-selected').nextAll();
        if (nextall.length == 0) {
            alert('已经是最后一个了');
            return false;
        }
        nextall.each(function(i, n) {
            if ($('a.tabs-close', $(n)).length > 0) {
                var t = $('a:eq(0) span', $(n)).text();
                $('#tabs').tabs('close', t);
            }
        });
        return false;
    });
    //关闭当前左侧的TAB
    $('#mm-tabcloseleft').click(function() {
        var prevall = $('.tabs-selected').prevAll();
        if (prevall.length == 1) {
            alert('已经是第一个了');
            return false;
        }
        prevall.each(function(i, n) {
            if ($('a.tabs-close', $(n)).length > 0) {
                var t = $('a:eq(0) span', $(n)).text();
                $('#tabs').tabs('close', t);
            }
        });
        return false;
    });
}

</script>

<style>
    .datagrid-btn-separator1 {
        float: left;
        height: 24px;
        border-left: 1px solid #ccc;
        border-right: 1px solid #fff;
        margin: 2px 1px;
    }
</style>
<body class="easyui-layout" id="mainbody">

    <div id="northPanel" class="easyui-panel"
         data-options="region:'north'"
         style="height: 50px;padding:5px">
        <div style="position:absolute; right:5px; bottom:5px;top:5px">
            <table style="font-family:Microsoft YaHei;font-size: 10px;border-bottom:0px solid black;margin:0 auto">
                <tr>
                    <td>&nbsp;</td>
                    <td style="color:#6C6C6C;background-size:14px;font-size: 25px;margin:0 auto">设备信息化维修管理系统</td>
                    <td>&nbsp;</td>
                    <td><div class="datagrid-btn-separator1" id="sep5"></div></td>
                    <td>&nbsp;</td>
                    <td style="color:#6C6C6C; background:url('img/center.png') no-repeat left;background-size:14px;padding-left:20px">欢迎您：管理员</td>
                    <td>&nbsp;</td>
                    <td><div class="datagrid-btn-separator1" id="sep5"></div></td>
                    <td style="">
                        <a style="color:#6C6C6C" id="btn" href="javascript:void(0)" onclick="ts()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">切换主题</a>
                    </td>
                    <td><div class="datagrid-btn-separator1" id="sep5"></div></td>
                    <td>
                        <a style="color:#6C6C6C" id="btn" href="javascript:void(0)" onclick="logout()" class="easyui-linkbutton" data-options="iconCls:'icon-back',plain:true">退出系统</a>
                    </td>
                    <td><div class="datagrid-btn-separator1" id="sep5"></div></td>
            </table>
        </div>
    </div>

    <div class="easyui-panel" data-options="region:'west',split:true" style="width:180px;">

        <div class="easyui-accordion" fit="true" border="false">
            <div title="系统菜单">
                <ul id="SystemManager"></ul>
            </div>
            <div title="故障性维修维修">
                <ul id="faultyMaintain"></ul>
            </div>
            <div title="计划性维修">
                <ul id="PlanedMaintain"></ul>
            </div>
            <div title="设备维修资料管理">
                <ul id="MaintainDataManager"></ul>
            </div>
            <div title="备件管理">
                <ul id="ReplacementManager"></ul>
            </div>
        </div>

    </div>

    <div data-options="region:'center',split:true"
         style="padding:0px;background:#eee;overflow: hidden;"
    >

        <div class="easyui-tabs" fit="true" border="false" id="tabs">
            <div title="首页"  style="background-repeat:no-repeat;background-size:100% 100%"></div>
        </div>


    </div>

    <div id="mm" class="easyui-menu" style="width:150px;">
        <div id="mm-tabclose">关闭</div>
        <div id="mm-tabcloseall">关闭全部</div>
        <div id="mm-tabcloseother">关闭其他</div>
        <div class="menu-sep"></div>
        <div id="mm-tabcloseright">关闭右侧标签</div>
        <div id="mm-tabcloseleft">关闭左侧标签</div>
    </div>
</body>
</html>
