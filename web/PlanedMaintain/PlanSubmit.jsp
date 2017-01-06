<%--
  Created by IntelliJ IDEA.
  User: xzsh1
  Date: 2016/11/25
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>维修计划制定</title>
    <script type="text/javascript" src="../js/EASY-UI/jquery-1.7.2.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/EASY-UI/jquery.easyui.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../js/EASY-UI/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="../js/EASY-UI/themes/icon.css" type="text/css"></link>
    <script type="text/javascript" src="../js/EASY-UI/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/jquery.cookie.js"></script>
</head>
<body>
    <div id="outLayout" class="easyui-layout" data-options="fit:true" style="width:100%;padding:0px;background:#ffff;min-width:1000px;min-height:500px">
        <div data-options="region:'north',split:true" style="height:100%;width:100%;overflow-y:hidden;">
            <table style="font-size:12px">
                <tr>
                    <td><p style="font-size:12px">计划类型</p></td>
                    <td><select id="PlanType" class="easyui-combobox" name="GetStatus" style="width:120px;"
                                editable="false" panelHeight='auto' data-options="onSelect:StorageInSearch">
                        <option value="定期检修">定期检修</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                    <td><p style="font-size:12px">执行周期</p></td>
                    <td><input id="executeTime" name="executeTime"  style="width: 120px;"></td>
                    <td><p style="font-size:12px">计划状态</p></td>
                    <td><select id="PlanState" class="easyui-combobox" name="GetStatus" style="width:120px;"
                                editable="false" panelHeight='auto' data-options="onSelect:StorageInSearch">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                </tr>
                <tr>
                    <td><p style="font-size:12px">维修起始时间</p></td>
                    <td><input id="StartTime" name="StartTime"  style="width: 120px;"></td>
                    <td><p style="font-size:12px">计划维修时间</p></td>
                    <td><input id="planTime" name="PlanTime"  style="width: 120px;"></td>
                </tr>
                <tr>
                    <td><p style="font-size:12px">维修单位</p></td>
                    <td><input id="Company" name="Company"  style="width: 120px;"></td>
                </tr>
                <tr>
                    <td><p style="font-size:12px">待维修设备</p></td>
                    <td><input id="Company" name="Company"  style="width: 120px;"></td>
                </tr>
            </table>
        </div>
    </div>

</body>
</html>
