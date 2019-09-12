<%--
  Created by IntelliJ IDEA.
  User: 燃
  Date: 2019/9/4
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@include file="header.jsp" %>
<script>
    $('#mytab').bootstrapTable({
        url: '${pageContext.request.contextPath}/user/all?id=${user.id}',
        queryParams: "queryParams",
        toolbar: "#toolbar",
        sidePagination: "true",
        striped: true, // 是否显示行间隔色
        //search : "true",
        uniqueId: "ID",
        pageSize: "5",
        pagination: true, // 是否分页
        sortable: true, // 是否启用排序
        columns: [{
            field: 'id',
            title: 'ID'
        },
            {
                field: 'Names',
                title: '昵称'
            },
            {
                field: '真实姓名',
                title: 'name'
            },
            {
                field: '手机号',
                title: 'phone'
            },
            {
                field: '性别',
                title: 'sex',
                formatter:function(value,row,index){
                    if(row.sex==0){
                        return "女";
                    }else if(value==1){
                        return "男";
                    }else{
                        return "未知";
                    }
                }
            },
            {
                field: '年龄',
                title: 'age'
            },
            {
                field: 'price',
                title: '操作',
                width: 120,
                align: 'center',
                valign: 'middle',
                formatter: actionFormatter,
            },

        ]
    });
    //操作栏的格式化
    function actionFormatter(value, row, index) {
        var id = value;
        var result = "";
        result += "<a href='javascript:;' class='btn btn-xs green' onclick=\"EditViewById('" + id + "', view='view')\" title='查看'><span class='glyphicon glyphicon-search'></span></a>";
        result += "<a href='javascript:;' class='btn btn-xs blue' onclick=\"EditViewById('" + id + "')\" title='编辑'><span class='glyphicon glyphicon-pencil'></span></a>";
        result += "<a href='javascript:;' class='btn btn-xs red' onclick=\"DeleteByIds('" + id + "')\" title='删除'><span class='glyphicon glyphicon-remove'></span></a>";
        return result;
    }
</script>
<div class="container">
    <div class="row">
        <div class="span12">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#">首页</a>
                </li>
                <li>
                    <a href="#">资料</a>
                </li>
                <li class="disabled">
                    <a href="#">信息</a>
                </li>
                <li class="dropdown pull-right">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">操作</a>
                        </li>
                        <li>
                            <a href="#">设置栏目</a>
                        </li>
                        <li>
                            <a href="#">更多设置</a>
                        </li>
                        <li class="divider">
                        </li>
                        <li>
                            <a href="#">分割线</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="row">
                <div class="span3">
                    <div class="btn-group">
                        <button class="btn" type="button"><em class="icon-align-left"></em></button> <button class="btn" type="button"><em class="icon-align-center"></em></button> <button class="btn" type="button"><em class="icon-align-right"></em></button> <button class="btn" type="button"><em class="icon-align-justify"></em></button>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                面板标题
                            </h3>
                        </div>
                        <div class="panel-body">
                            Panel content
                        </div>
                        <div class="panel-footer">
                            Panel footer
                        </div>
                    </div>
                </div>
                <div class="span9">
                    <div class="tabbable" id="tabs-728024">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#panel-36916" data-toggle="tab">第一部分</a>
                            </li>
                            <li>
                                <a href="#panel-790592" data-toggle="tab">第二部分</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="panel-36916">
                                <p>
                                    第一部分内容.
                                </p>
                            </div>
                            <div class="tab-pane" id="panel-790592">
                                <p>
                                    第二部分内容.
                                </p>
                            </div>
                        </div>
                    </div>
                    <table class="table">
                        <table id="mytab" class="table table-hover"></table>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
