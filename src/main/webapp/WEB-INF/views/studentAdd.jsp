<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.chang.Entity.Admins" %>
<%--
  Created by IntelliJ IDEA.
  User: cyy
  Date: 2018/9/12
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../img/favicon.html">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="../js/html5shiv.js"></script>
    <script src="../js/respond.min.js"></script>
    <![endif]-->
    <title>Student Insert</title>
</head>
<body>
<section id="container" class="">
    <!--header start-->
    <header class="header white-bg">
        <div class="sidebar-toggle-box">
            <div data-original-title="Toggle Navigation" data-placement="right" class="icon-reorder tooltips"></div>
        </div>
        <!--logo start-->
        <a href="#" class="logo">Flat<span>lab</span></a>
        <!--logo end-->

        <div class="top-nav ">
            <ul class="nav pull-right top-menu">
                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img alt="" src="../img/avatar1_small.jpg">
                        <span class="username"><%= ((Admins) request.getSession().getAttribute("admin")).getAdminName()%></span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
        </div>
    </header>
    <!--header end-->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">
                <li class="">
                    <a class="" href="index.html">
                        <i class="icon-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="sub-menu active">
                    <a href="javascript:;" class="">
                        <i class="icon-book"></i>
                        <span>Students</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="/admin/studentQuery.do">Query</a></li>
                        <li class="active"><a class="" href="/admin/studentAdd.do">Insert</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon-cogs"></i>
                        <span>Components</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="grids.html">Grids</a></li>
                        <li><a class="" href="calendar.html">Calendar</a></li>
                        <li><a class="" href="charts.html">Charts</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon-tasks"></i>
                        <span>Form Stuff</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="form_component.html">Form Components</a></li>
                        <li><a class="" href="form_wizard.html">Form Wizard</a></li>
                        <li><a class="" href="form_validation.html">Form Validation</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon-th"></i>
                        <span>Data Tables</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="basic_table.html">Basic Table</a></li>
                        <li class=""><a class="" href="dynamic_table.html">Dynamic Table</a></li>
                    </ul>
                </li>
                <li>
                    <a class="" href="inbox.html">
                        <i class="icon-envelope"></i>
                        <span>Mail </span>
                        <span class="label label-danger pull-right mail-info">2</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon-glass"></i>
                        <span>Extra</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="blank.html">Blank Page</a></li>
                        <li><a class="" href="profile.html">Profile</a></li>
                        <li><a class="" href="invoice.html">Invoice</a></li>
                        <li><a class="" href="404.html">404 Error</a></li>
                        <li><a class="" href="500.html">500 Error</a></li>
                    </ul>
                </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Advanced Form validations
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="cmxform form-horizontal tasi-form" id="signupForm" method="post"
                                      action="/student/addStudent.do">
                                    <div class="form-group ">
                                        <label for="studentName" class="control-label col-lg-2">Name</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" id="studentName" name="studentName"
                                                   type="text"/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="Gender" class="control-label col-lg-2">Gender</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" id="Gender" name="Gender" type="text"/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="birthday" class="control-label col-lg-2">Birthday</label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="birthday" name="birthday" type="date"/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="StudentIdNo" class="control-label col-lg-2">CardNo</label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="StudentIdNo" name="StudentIdNo"
                                                   type="text"/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="PhoneNumber" class="control-label col-lg-2">PhoneNumber</label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="PhoneNumber" name="PhoneNumber"
                                                   type="text"/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="StudentAddress" class="control-label col-lg-2">Address</label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="StudentAddress" name="StudentAddress"
                                                   type="text"/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="age" class="control-label col-lg-2">Age</label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="age" name="age" type="number"/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="ClassId" class="control-label col-lg-2">Class</label>
                                        <div class="col-lg-10">
                                            <select id="ClassId" name="ClassId" class="form-control">
                                                <c:forEach varStatus="s" items="${itemList}" var="item">
                                                    <option value="${item.classId}">
                                                            ${item.className}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <button class="btn btn-danger" type="submit">Save</button>
                                            <button class="btn btn-default" type="button">Cancel</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <!-- page end-->
        </section>
    </section>
    <!--main content end-->
</section>


<!-- js placed at the end of the document so the pages load faster -->
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery.scrollTo.min.js"></script>
<script src="../js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery.validate.min.js"></script>


<!--common script for all pages-->
<script src="../js/common-scripts.js"></script>

<!--script for this page-->
<script src="../js/form-validation-script.js"></script>

</body>
</html>
