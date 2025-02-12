﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminList.aspx.cs" Inherits="HotelManage.adminList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员列表</title>
    <link rel="shortcut icon" href="./static/base/images/logo.png">
    <link rel="stylesheet" href="./static/admin/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="./static/fonts/css/font-awesome.min.css">
    <link rel="stylesheet" href="./static/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="./static/admin/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="./static/admin/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" type="text/css" href="./static/admin/plugins/datepicker/datepicker3.css">

    <style>
        * {
            font-family: "Microsoft YaHei";
        }

        .table > tbody > tr > td, .table > tbody > tr > th, .table > tfoot > tr > td, .table > tfoot > tr > th, .table > thead > tr > td, .table > thead > tr > th {
            vertical-align: middle;
            text-align: center;
        }

    </style>
</head>
<body>
<form id="form1" runat="server">
    <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <header class="main-header">
            <a href="index.html" class="logo">
            <span class="logo-mini"><img src="./static/base/images/logo.png"
                                         style="height:40px;width:40px;">宾馆系统</span>
                <span class="logo-lg"><img src="./static/base/images/logo.png"
                                           style="height:40px;width:40px;">宾馆管理系统</span>
            </a>
            <nav class="navbar navbar-static-top">
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">下拉菜单</span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="./static/admin/dist/img/user2-160x160.jpg"
                                     class="user-image" alt="User Image">
                                <span class="hidden-xs">Root</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="user-header">
                                    <img src="./static/admin/dist/img/user2-160x160.jpg"
                                         class="img-circle" alt="User Image">
                                    <p>

                                        <small>2019</small>
                                    </p>
                                </li>
                                <li class="user-footer">
                                    
                                    <div class="pull-right">
                                        <a href="logout.aspx" class="btn btn-default btn-flat">退出系统</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <aside class="main-sidebar">
            <section class="sidebar">
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="./static/admin/dist/img/user2-160x160.jpg" class="img-circle"
                             alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>管理员</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                    </div>
                </div>

                <ul class="sidebar-menu">
                    <li class="header">管理菜单</li>
                    <li class="treeview">
                        <a href="index.aspx">
                            <i class="fa fa-home" aria-hidden="true"></i>
                            <span>首页</span>
                            <span class="label label-primary pull-right"></span>
                        </a>

                    </li>

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-users" aria-hidden="true"></i>
                            <span>客户管理</span>
                            <span class="label label-primary pull-right"></span>
                        </a>
                        <ul class="treeview-menu">
                            <li>
                                <a href="#">
                                    <i class="fa fa-circle-o"></i> 客户入住
                                </a>
                            </li>
                        </ul>
                    </li>


                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-file-video-o" aria-hidden="true"></i>
                            <span>客房管理</span>
                            <span class="label label-primary pull-right"></span>
                        </a>
                        <ul class="treeview-menu">
                           
                            <li>
                                <a href="addroom.aspx">
                                    <i class="fa fa-circle-o"></i> 添加客房
                                </a>
                            </li>
                        </ul>
                    </li>


                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-user-circle" aria-hidden="true"></i>
                            <span>管理员管理</span>
                            <span class="label label-primary pull-right"></span>
                        </a>
                        <ul class="treeview-menu">
                            <li>
                                <a href="addAdmin.aspx">
                                    <i class="fa fa-circle-o"></i> 添加管理员
                                </a>
                            </li>
                            <li>
                                <a href="adminList.aspx">
                                    <i class="fa fa-circle-o"></i> 管理员列表
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </section>
        </aside>

        <div class="content-wrapper">
            <!--内容-->
            <section class="content-header">
                <h1>宾馆管理系统</h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> 房间管理</a></li>
                    <li class="active">房间列表</li>
                </ol>
            </section>
            <section class="content" id="showcontent">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-primary">
                            <div class="box-header">
                                <h3 class="box-title">房间列表</h3>
                                <div class="box-tools">
                                    <div class="input-group input-group-sm" style="width: 150px;">
                                        <input type="text" name="table_search" class="form-control pull-right"
                                               placeholder="请输入关键字...">

                                        <div class="input-group-btn">
                                            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                    <tbody>
                                    <tr>
                                        <th>ID</th>
                                        <th>管理员用户名</th>
                                    
                                        
                                    </tr>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("id") %></td>
                                                <td><%#Eval("username") %></td>
                                                
                          
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                    </tbody>
                                </table>
                            </div>
                        

                        </div>
                    </div>
                </div>
            </section>
            <!--内容-->
        </div>

        <div class="control-sidebar-bg"></div>
    </div>
    <script src="./static/admin/plugins/jQuery/jQuery-2.2.0.min.js"></script>
    <script src="./static/admin/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="./static/admin/plugins/fastclick/fastclick.js"></script>
    <script src="./static/admin/dist/js/app.min.js"></script>
    <script src="./static/admin/dist/js/demo.js"></script>
    <script src="//cdn.bootcss.com/holder/2.9.4/holder.min.js"></script>
    <script src="./static/admin/plugins/datepicker/bootstrap-datepicker.js"></script>
    <script src="./static/admin/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js" charset="UTF-8"></script>

    </body>
</form>
</body>
</html>
