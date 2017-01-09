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

<body>
    <div id="outLayout" class="easyui-layout" data-options="fit:true" style="height:100%;width:100%;padding:0px;background:#ffff;min-width:1000px;min-height:500px">
        <div data-options="region:'north',split:true" style="height:100%;width:100%;overflow-y:hidden;">
            <table style="font-size:12px;height:40px">
                <tr>
                    <td align="right"><p style="font-size:12px">设备编号</p></td>
                    <td><input ></td>
                    <td align="right"><p style="font-size:12px">设备名称</p></td>
                    <td><input id="executeTime" name="executeTime"  style="width: 100%;"></td>
                </tr>
                <tr>
                    <td align="right"><p style="font-size:12px">设备规格</p></td>
                    <td ><input id="StartTime" name="StartTime"  style="width: 100%;"></td>
                    <td align="right"><p style="font-size:12px">设备型号</p></td>
                    <td><input id="executeTime" name="executeTime"  style="width: 100%;"></td>
                </tr>
                <tr>
                    <td align="right"><p style="font-size:12px">制造单位</p></td>
                    <td ><input id="planTime" name="PlanTime"  style="width: 100%;"></td>
                    <td align="right"><p style="font-size:12px">使用部门</p></td>
                    <td ><select id="PlanType" class="easyui-combobox" name="GetStatus"
                                 editable="false" panelHeight='auto' style="width:173px">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                </tr>
                <tr>
                    <td align="right"><p style="font-size:12px">负责人</p></td>
                    <td ><input id="StartTime" name="StartTime"  style="width: 100%;"></td>
                    <td align="right">设备状态</td>
                    <td ><select id="PlanType" class="easyui-combobox" name="GetStatus"
                                 editable="false" panelHeight='auto' style="width:173px">
                        <option value="请选择">请选择</option>
                        <option value="已完成">已完成</option>
                        <option value="已驳回">已驳回</option> </select></td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align: center"><input type="button" value="提交">
                        <input type="button" value="取消"></td>
                </tr>
            </table>
        </div>
    </div>

</body>
</html>
