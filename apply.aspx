<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/App_Backend/apply.aspx.cs" Inherits="apply" %>
<%@ Import Namespace=" Registration_process" %>
<%@ Import Namespace="Newtonsoft.Json" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Apply </title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<a href="Dashboard" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Students Dashboard
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						

						<li class="purple dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-bell icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-exclamation-triangle"></i>
									8 Notifications
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar navbar-pink">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
													<span class="pull-right badge badge-info">+12</span>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<i class="btn btn-xs btn-primary fa fa-user"></i>
												Bob just signed up as an editor ...
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders
													</span>
													<span class="pull-right badge badge-success">+8</span>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
														Followers
													</span>
													<span class="pull-right badge badge-info">+11</span>
												</div>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See all notifications
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="green dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									5 Messages
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#" class="clearfix">
												<img src="assets/images/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="inbox.html">
										See all messages
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src=""   runat="server"   id="profilepht"     alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome,</small>
									Student
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="profile.html">
										<i class="ace-icon fa fa-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!-- /.sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li class="active">
						<a href="Dashboard">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"> Dashboard </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								Applicant's &amp; Desk
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							

							<!--<li class="">
								<a href="ProfileStatus">
									<i class="menu-icon fa fa-caret-right"></i>

                                    <i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
									Registration Status
							</span>

							

								</a>

								<b class="arrow"></b>
							</li>-->

						<!--	<li class="">
								<a href="elements.html">
									<i class="menu-icon fa fa-caret-right"></i>
									
                                      <i class="ace-icon fa fa-lock"></i>
							<span class="menu-text">
									Change Password
							</span>

                                    
                                   
								</a>

								<b class="arrow"></b>
							</li> -->

						<!--	<li class="">
								<a href="buttons.html">
									<i class="menu-icon fa fa-caret-right"></i>
								
                                      <i class="ace-icon fa fa-user"></i>
							<span class="menu-text">
									Edit Application Form
							</span>

								</a>

								<b class="arrow"></b>
							</li> -->


                            	<li class="">
								<a href="Personal">
									<i class="menu-icon fa fa-caret-right"></i>
								
                                      <i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
									Application Summary
							</span>

								</a>

								<b class="arrow"></b>
							</li>



							

						
													
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text">Payments </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							

							<li class="">
								<a href="#">
									<i class="menu-icon fa fa-caret-right"></i>
								
                                      <i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
									Payment Details
							</span>

								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> Informations </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="#">
									<i class="menu-icon fa fa-caret-right"></i>
								
                                      <i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
									How it Works
							</span>

								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="#">
									<i class="menu-icon fa fa-caret-right"></i>
								
                                      <i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
									FAQs
							</span>

								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="#">
									<i class="menu-icon fa fa-caret-right"></i>
									
                                      <i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
									Halltickets
							</span>

								</a>

								<b class="arrow"></b>
							</li>

							
						</ul>
					</li>

					
				</ul><!-- /.nav-list -->

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Dashboard</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>

					<div class="page-content">
						<div class="ace-settings-container" id="ace-settings-container">
							<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</div>

							<div class="ace-settings-box clearfix" id="ace-settings-box">
								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<div class="pull-left">
											<select id="skin-colorpicker" class="hide">
												<option data-skin="no-skin" value="#438EB9">#438EB9</option>
												<option data-skin="skin-1" value="#222A2D">#222A2D</option>
												<option data-skin="skin-2" value="#C6487E">#C6487E</option>
												<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
											</select>
										</div>
										<span>&nbsp; Choose Skin</span>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
										<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
										<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
										<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
										<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
										<label class="lbl" for="ace-settings-add-container">
											Inside
											<b>.container</b>
										</label>
									</div>
								</div><!-- /.pull-left -->

								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
										<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
										<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
										<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
									</div>
								</div><!-- /.pull-left -->
							</div><!-- /.ace-settings-box -->
						</div><!-- /.ace-settings-container -->

						<div class="page-header">
							<h1>
								Dashboard
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Apply&nbsp; 
								</small>
							</h1>
						</div><!-- /.page-header -->



                        
						<div class="page-header">
							<h1>
								Apply 
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
								<div class="hr dotted"></div>

								<div>
									<div id="user-profile-1" class="user-profile row">
										<div class="col-xs-12 col-sm-3 center">
											<div>
												<span class="profile-picture">
                                                    <img id="avatarn" class="editable img-responsive" alt="Alex's Avatar" src='<% 
                                                        String regidt = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();
                                                        Class1 frt = new Class1();
                                                        String fgt = frt.Selectn("jkj", regidt.Trim());

                                                        var resultt = JsonConvert.DeserializeObject<List<Receivert>>(fgt);

                                                        String ghhh = "",nm="";
                                                        foreach (var studentrecord in resultt)




                                                        {
                                                            ghhh=studentrecord.photo;
                                                            nm = ""+studentrecord.firstname+" "+studentrecord.middlename+" "+studentrecord.lastname+"";
                                                        }
                                                        Response.Write( ghhh);%>'  />
												</span>

												<div class="space-4"></div>

												<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
													<div class="inline position-relative">
														<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
															<i class="ace-icon fa fa-circle light-green"></i>
															&nbsp;
															<span class="white"  id="appname"><% Response.Write(nm);%></span>
														</a>

													
													</div>
												</div>
											</div>

											<div class="space-6"></div>

											

											<div class="hr hr12 dotted"></div>

										

											<div class="hr hr16 dotted"></div>
										</div>

										<div class="col-xs-12 col-sm-9">
											

											<div class="space-12"></div>

											<div class="profile-user-info profile-user-info-striped">






                                                

                                                <div class="profile-info-row">
													<div class="profile-info-name">College</div>

													<div class="profile-info-value">
 <select name="lastqulaficationn" id="clggg"  style='width:40%;'>  
                                             <option value="df" selected="selected"> ----------Select College------- </option>
                                             <option value="1">S.M COLLEGE </option>
                                            <option value="2">JP COLLEGE</option> 
                                            <option value="3">GAYA CLG PATNA </option>

                                        </select>													</div>
												</div>








												<div class="profile-info-row">
													<div class="profile-info-name">Hons. Paper</div>

													<div class="profile-info-value">





    <%

        //HttpContext.Current.Session["st"] = "2";
        String regid = HttpContext.Current.Session["TYPEX_UOKKXX"].ToString();


        Class1 fr = new Class1();
        String fg = fr.Selectcreteria("jkj", regid.Trim());

        System.Diagnostics.Debug.Write("reeeevvvvvvvv  " + fg.ToString() + "");



        var result = JsonConvert.DeserializeObject<List<Creteria>>(fg);

        foreach (var studentrecord in result)
        {
            String firstname = studentrecord.lastqulaficationn;

            switch(firstname.ToUpper().Trim())

            {
                case "IA":


                    Response.Write("<select name='lastqulaficationn' id='lastqulafication' onchange='getval(this);'  style='width:40%;'>");

                    Response.Write("<option value='df'>----------Select Hons.---------</option>");

                    Response.Write("<option value='Economics'>Economics</option>");
                    Response.Write("<option value='English'>English</option>");
                    Response.Write("<option value='Hindi'>Hindi</option>");
                    Response.Write("<option value='History'>History</option>");
                    Response.Write("<option value='Polscience'>Polscience</option>");
                    Response.Write("<option value='Psychology'>Psychology</option>");
                    Response.Write("</select>");
                    break;





                case "ICOM":
                      Response.Write("<select name='lastqulaficationn' id='lastqulafication' onchange='getvall(this);'  style='width:40%;'>");
                    Response.Write("<option value='df'>----------Select Hons.---------</option>");

                    Response.Write("<option value='Accounts'>Accounts</option>");
                    Response.Write("<option value='Economics'>Economics</option>");
                    Response.Write("<option value='English'>English</option>");
                    Response.Write("<option value='Hindi'>Hindi</option>");
                    Response.Write("<option value='History'>History</option>");
                    Response.Write("<option value='Polscience'>Polscience</option>");
                    Response.Write("<option value='Psychology'>Psychology</option>");

                      Response.Write("</select>");




                    break;









                case "ISC":
                      Response.Write("<select name='lastqulaficationn' id='lastqulafication' onchange='getvalb(this);'  style='width:40%;'>");
                    Response.Write("<option value='df'>----------Select Hons.---------</option>");

                    Response.Write("<option value='Economics'>Economics</option>");
                    Response.Write("<option value='English'>English</option>");
                    Response.Write("<option value='Hindi'>Hindi</option>");
                    Response.Write("<option value='History'>History</option>");
                    Response.Write("<option value='Polscience'>Polscience</option>");
                    Response.Write("<option value='Psychology'>Psychology</option>");


                    Response.Write("<option value='Zoology'>Zoology</option>");
                    Response.Write("<option value='Math'>Math</option>");
                    Response.Write("<option value='Physics'>Physics</option>");
                    Response.Write("<option value='Botnay'>Botnay</option>");
                    Response.Write("<option value='Chemistry'>Chemistry</option>");
                      Response.Write("</select>");

                    break;






            }















        }





        %>


                                             

                                       												</div>
												</div>






                                                <div class="profile-info-row" id="honss" style="display:none">
													<div class="profile-info-name">Hons.Subject Obtain Marks</div>
                                                  
													<div class="profile-info-value">
														<input type="text" class="editable" id="hmarks" /><span id="spnn"  style="display:none"></span>
													</div>
												</div>



                                                  <div class="profile-info-row" id="honsstotalmarks" style="display:none">
													<div class="profile-info-name">Hons.Subject Total Marks</div>
                                                  

													<div class="profile-info-value">
 <select name="totalmarkss" id="honstotalmarks"   style='width:40%;'>  
                                             <option value="df" selected="selected">---Select Total Marks ---</option>
                                             <option value="100">100</option>
                                            <option value="150">150</option> 
                                            <option value="200">200</option>
                                                 <option value="250">250</option>

                                        </select>												
                                                        
                                                    
                                                    </div>

</div>




												



                                                
                                                  <div class="profile-info-row" id="" >
													<div class="profile-info-name">COMPULSORY SUBJECTS</div>
                                                  

													<div class="profile-info-value">
 <select name="totalmarkss" id="compsularysubject"  style='width:40%;'>  
                                             <option value="df" selected="selected">---Select compulsory subjects ---</option>
                                             <option value="HI100">HINDI -100 MARKS</option>
                                            

                                        </select>												
                                                        
                                                    
                                                    </div>

</div>



                                                
                                                  <div class="profile-info-row" id="" >
													<div class="profile-info-name">Select NRB </div>
                                                  

													<div class="profile-info-value">
 <select name="totalmarkss" id="selectnrb"  style='width:40%;'>  
                                             <option value="df" selected="selected">---Select NRB ---</option>
                                             <option value="H50E50">HINDI-50 Marks + ENGLISH-50</option>
                                             <option value="H50U50">HINDI-50 Marks + URDU-50</option>

                                             <option value="H50M50">HINDI-50 Marks + MAITHILI-50</option>

                                             <option value="H50B50">HINDI-50 Marks + BANGLA-50</option>

                                        </select>												
                                                        
                                                    
												</div>

</div>












                                                
                                                  <div class="profile-info-row" id="" >
													<div class="profile-info-name">Select Subsidiary Subjects(1).</div>
                                                  

													<div class="profile-info-value">
  <%

       

        foreach (var studentrecord in result)
        {
            String firstname = studentrecord.lastqulaficationn;

            switch(firstname.ToUpper().Trim())

            {
                case "IA":


                    Response.Write("<select name='lastqulaficationnt' id='lastqulaficationt'  style='width:40%;'>");

                  
                    Response.Write("</select>");
                    break;





                case "ICOM":
                      Response.Write("<select name='lastqulaficationnt' id='lastqulaficationt'  style='width:40%;'>");
                   

                      Response.Write("</select>");




                    break;









                case "ISC":
                      Response.Write("<select name='lastqulaficationnt' id='lastqulaficationt'  style='width:40%;'>");

                 
                      Response.Write("</select>");

                    break;






            }















        }





        %>                                                        
                                                    
                                                    </div>
												</div>







                                                  <div class="profile-info-row" id="" >
													<div class="profile-info-name">Select Subsidiary Subjects(2).</div>
                                                  

													<div class="profile-info-value">
  <%

       

        foreach (var studentrecord in result)
        {
            String firstname = studentrecord.lastqulaficationn;

            switch(firstname.ToUpper().Trim())

            {
                case "IA":


                    Response.Write("<select name='lastqulaficationntt' id='lastqulaficationtt' style='width:40%;' >");

                   
                    Response.Write("</select>");
                    break;





                case "ICOM":
                      Response.Write("<select name='lastqulaficationntt' id='lastqulaficationtt'  style='width:40%;'>");
                
                      Response.Write("</select>");




                    break;









                case "ISC":
                      Response.Write("<select name='lastqulaficationntt' id='lastqulaficationtt'  style='width:40%;'>");

                  
                      Response.Write("</select>");

                    break;






            }















        }





        %>                                                        
                                                        
                                                    
                                                    </div>
												</div>                                                                                               
												
												
											</div>

											<div class="space-20"></div>

										

											<div class="hr hr2 hr-double"></div>

											<div class="space-6"></div>
<div class="center">
												<button type="button" class="btn btn-sm btn-primary btn-white btn-round"  id="paymentc" runat="server">
													<i class="ace-icon fa   fa-money bigger-150 middle orange2"></i>
													<span class="bigger-110">Submit</span>

													<i class="icon-on-right ace-icon fa fa-arrow-right"></i>
												</button>
											</div>
										
										</div>
									</div>
								</div>

							

								

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->


<script>

function getval(sel)
{
    switch (sel.value) {

        case "Economics":

            $("#honss,#honsstotalmarks").show();
            $("#spnn").text('yes');



            
                  var newOptions = {
    'dfr': '------Select SUBSIDIARY Paper 2',
         'Economics':'Economics',
                  'English':'English',
                  'Hindi':'Hindi',
                  'History':'History',
                  'Polscience':'Polscience',
                  'Psychology':'Psychology'
};
var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



if(select.prop) {
  var options = select.prop('options');
}
else {
  var options = select.attr('options');
}
$('option', select).remove();

$.each(newOptions, function(val, text) {
    options[options.length] = new Option(text, val);
});
                select.val(selectedOption);






                var newOptionss = {
    'dfrt': '------Select SUBSIDIARY Paper 1',
      'Economics':'Economics',
                  'English':'English',
                  'Hindi':'Hindi',
                  'History':'History',
                  'Polscience':'Polscience',
                  'Psychology':'Psychology'
};
var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



if(selects.prop) {
  var optionss = selects.prop('options');
}
else {
  var optionss = selects.attr('options');
}
$('option', selects).remove();

$.each(newOptionss, function(val, text) {
    optionss[optionss.length] = new Option(text, val);
});
                selects.val(selectedOptions);




            break;


        case "English":

            $("#honss,#honsstotalmarks").show();
            $("#spnn").text('yes');



            
                  var newOptions = {
    'dfr': '------Select SUBSIDIARY Paper 2',
         'Economics':'Economics',
                  'English':'English',
                  'Hindi':'Hindi',
                  'History':'History',
                  'Polscience':'Polscience',
                  'Psychology':'Psychology'
};
var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



if(select.prop) {
  var options = select.prop('options');
}
else {
  var options = select.attr('options');
}
$('option', select).remove();

$.each(newOptions, function(val, text) {
    options[options.length] = new Option(text, val);
});
                select.val(selectedOption);






                var newOptionss = {
    'dfrt': '------Select SUBSIDIARY Paper 1',
      'Economics':'Economics',
                  'English':'English',
                  'Hindi':'Hindi',
                  'History':'History',
                  'Polscience':'Polscience',
                  'Psychology':'Psychology'
};
var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



if(selects.prop) {
  var optionss = selects.prop('options');
}
else {
  var optionss = selects.attr('options');
}
$('option', selects).remove();

$.each(newOptionss, function(val, text) {
    optionss[optionss.length] = new Option(text, val);
});
                selects.val(selectedOptions);




            break;


        case "Hindi":

            $("#honss,#honsstotalmarks").show();
            $("#spnn").text('yes');


            
                  var newOptions = {
    'dfr': '------Select SUBSIDIARY Paper 2',
         'Economics':'Economics',
                  'English':'English',
                  'Hindi':'Hindi',
                  'History':'History',
                  'Polscience':'Polscience',
                  'Psychology':'Psychology'
};
var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



if(select.prop) {
  var options = select.prop('options');
}
else {
  var options = select.attr('options');
}
$('option', select).remove();

$.each(newOptions, function(val, text) {
    options[options.length] = new Option(text, val);
});
                select.val(selectedOption);






                var newOptionss = {
    'dfrt': '------Select SUBSIDIARY Paper 1',
      'Economics':'Economics',
                  'English':'English',
                  'Hindi':'Hindi',
                  'History':'History',
                  'Polscience':'Polscience',
                  'Psychology':'Psychology'
};
var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



if(selects.prop) {
  var optionss = selects.prop('options');
}
else {
  var optionss = selects.attr('options');
}
$('option', selects).remove();

$.each(newOptionss, function(val, text) {
    optionss[optionss.length] = new Option(text, val);
});
                selects.val(selectedOptions);




            break;


        case "History":

            $("#honss,#honsstotalmarks").show();
            $("#spnn").text('yes');


            
                  var newOptions = {
    'dfr': '------Select SUBSIDIARY Paper 2',
         'Economics':'Economics',
                  'English':'English',
                  'Hindi':'Hindi',
                  'History':'History',
                  'Polscience':'Polscience',
                  'Psychology':'Psychology'
};
var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



if(select.prop) {
  var options = select.prop('options');
}
else {
  var options = select.attr('options');
}
$('option', select).remove();

$.each(newOptions, function(val, text) {
    options[options.length] = new Option(text, val);
});
                select.val(selectedOption);






                var newOptionss = {
    'dfrt': '------Select SUBSIDIARY Paper 1',
      'Economics':'Economics',
                  'English':'English',
                  'Hindi':'Hindi',
                  'History':'History',
                  'Polscience':'Polscience',
                  'Psychology':'Psychology'
};
var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



if(selects.prop) {
  var optionss = selects.prop('options');
}
else {
  var optionss = selects.attr('options');
}
$('option', selects).remove();

$.each(newOptionss, function(val, text) {
    optionss[optionss.length] = new Option(text, val);
});
                selects.val(selectedOptions);




            break;



        default:
            $("#honss,#honsstotalmarks").hide();
            $("#spnn").text('na');



            var newOptions = {
                'dfr': '------Select SUBSIDIARY Paper 2',
                'Economics': 'Economics',
                'English': 'English',
                'Hindi': 'Hindi',
                'History': 'History',
                'Polscience': 'Polscience',
                'Psychology': 'Psychology'
            };
            var selectedOption = 'dfr';

            var select = $('#lastqulaficationtt');



            if (select.prop) {
                var options = select.prop('options');
            }
            else {
                var options = select.attr('options');
            }
            $('option', select).remove();

            $.each(newOptions, function (val, text) {
                options[options.length] = new Option(text, val);
            });
            select.val(selectedOption);






            var newOptionss = {
                'dfrt': '------Select SUBSIDIARY Paper 1',
                'Economics': 'Economics',
                'English': 'English',
                'Hindi': 'Hindi',
                'History': 'History',
                'Polscience': 'Polscience',
                'Psychology': 'Psychology'
            };
            var selectedOptions = 'dfrt';

            var selects = $('#lastqulaficationt');



            if (selects.prop) {
                var optionss = selects.prop('options');
            }
            else {
                var optionss = selects.attr('options');
            }
            $('option', selects).remove();

            $.each(newOptionss, function (val, text) {
                optionss[optionss.length] = new Option(text, val);
            });
            selects.val(selectedOptions);





            break;
    }
    }



    function getvall(sel)
{
        switch (sel.value) {

            case "Accounts":

                $("#honss,#honsstotalmarks").show();
                $("#spnn").text('yes');





                 var newOptions = {
                'dfr': '------Select SUBSIDIARY Paper 2',
                'MANDB': 'MONEY & BANKING',
                'PED': 'P.E.D'
                
            };
            var selectedOption = 'dfr';

            var select = $('#lastqulaficationtt');



            if (select.prop) {
                var options = select.prop('options');
            }
            else {
                var options = select.attr('options');
            }
            $('option', select).remove();

            $.each(newOptions, function (val, text) {
                options[options.length] = new Option(text, val);
            });
            select.val(selectedOption);






            var newOptionss = {
                'dfrt': '------Select SUBSIDIARY Paper 1',
              'MANDB': 'MONEY & BANKING',
                'PED': 'P.E.D'
            };
            var selectedOptions = 'dfrt';

            var selects = $('#lastqulaficationt');



            if (selects.prop) {
                var optionss = selects.prop('options');
            }
            else {
                var optionss = selects.attr('options');
            }
            $('option', selects).remove();

            $.each(newOptionss, function (val, text) {
                optionss[optionss.length] = new Option(text, val);
            });
            selects.val(selectedOptions);




                break;


          



            default:
                $("#honss,#honsstotalmarks").hide();
                $("#spnn").text('na');

                var newOptions = {
                    'dfr': '------Select SUBSIDIARY Paper 2',
                    'Economics': 'Economics',
                    'English': 'English',
                    'Hindi': 'Hindi',
                    'History': 'History',
                    'Polscience': 'Polscience',
                    'Psychology': 'Psychology'
                };
                var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



                if (select.prop) {
                    var options = select.prop('options');
                }
                else {
                    var options = select.attr('options');
                }
                $('option', select).remove();

                $.each(newOptions, function (val, text) {
                    options[options.length] = new Option(text, val);
                });
                select.val(selectedOption);






                var newOptionss = {
                    'dfrt': '------Select SUBSIDIARY Paper 1',
                    'Economics': 'Economics',
                    'English': 'English',
                    'Hindi': 'Hindi',
                    'History': 'History',
                    'Polscience': 'Polscience',
                    'Psychology': 'Psychology'
                };
                var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



                if (selects.prop) {
                    var optionss = selects.prop('options');
                }
                else {
                    var optionss = selects.attr('options');
                }
                $('option', selects).remove();

                $.each(newOptionss, function (val, text) {
                    optionss[optionss.length] = new Option(text, val);
                });
                selects.val(selectedOptions);
                break;
        }
    }



    function getvalb(sel)
    {

 //alert(sel.value);
        switch (sel.value) {

            case "Math":
               
                $("#honss,#honsstotalmarks").show();
                $("#spnn").text('yes');
               // alert("jjk");



var newOptions = {
    'dfr': '------Select SUBSIDIARY Paper 2',
        'CHEMISTRY' : 'CHEMISTRY',

    'PHYSICS' : 'PHYSICS',
    'STATISTICS' : 'STATISTICS'
};
var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



if(select.prop) {
  var options = select.prop('options');
}
else {
  var options = select.attr('options');
}
$('option', select).remove();

$.each(newOptions, function(val, text) {
    options[options.length] = new Option(text, val);
});
                select.val(selectedOption);






                var newOptionss = {
    'dfrt': '------Select SUBSIDIARY Paper 1',
        'CHEMISTRY' : 'CHEMISTRY',

    'PHYSICS' : 'PHYSICS',
    'STATISTICS' : 'STATISTICS'
};
var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



if(selects.prop) {
  var optionss = selects.prop('options');
}
else {
  var optionss = selects.attr('options');
}
$('option', selects).remove();

$.each(newOptionss, function(val, text) {
    optionss[optionss.length] = new Option(text, val);
});
                selects.val(selectedOptions);





                break;


              


                case "Physics":
               
                $("#honss,#honsstotalmarks").show();
                $("#spnn").text('yes');



                

var newOptions = {
    'dfr': '------Select SUBSIDIARY Paper 2',
        'CHEMISTRY' : 'CHEMISTRY',

    'MATH' : 'MATH',
    'STATISTICS' : 'STATISTICS'
};
var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



if(select.prop) {
  var options = select.prop('options');
}
else {
  var options = select.attr('options');
}
$('option', select).remove();

$.each(newOptions, function(val, text) {
    options[options.length] = new Option(text, val);
});
                select.val(selectedOption);






                var newOptionss = {
    'dfrt': '------Select SUBSIDIARY Paper 1',
        'CHEMISTRY' : 'CHEMISTRY',

    'MATH' : 'MATH',
    'STATISTICS' : 'STATISTICS'
};
var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



if(selects.prop) {
  var optionss = selects.prop('options');
}
else {
  var optionss = selects.attr('options');
}
$('option', selects).remove();

$.each(newOptionss, function(val, text) {
    optionss[optionss.length] = new Option(text, val);
});
                selects.val(selectedOptions);
















                break;


                case "Botnay":
               
                $("#honss,#honsstotalmarks").show();
                  $("#spnn").text('yes');
                break;

                var newOptions = {
    'dfr': '------Select SUBSIDIARY Paper 2',
        'CHEMISTRY' : 'CHEMISTRY',

    'ZOOLOGY' : 'ZOOLOGY'
   
};
var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



if(select.prop) {
  var options = select.prop('options');
}
else {
  var options = select.attr('options');
}
$('option', select).remove();

$.each(newOptions, function(val, text) {
    options[options.length] = new Option(text, val);
});
                select.val(selectedOption);






                var newOptionss = {
    'dfrt': '------Select SUBSIDIARY Paper 1',
        'CHEMISTRY' : 'CHEMISTRY',

    'ZOOLOGY' : 'ZOOLOGY'
};
var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



if(selects.prop) {
  var optionss = selects.prop('options');
}
else {
  var optionss = selects.attr('options');
}
$('option', selects).remove();

$.each(newOptionss, function(val, text) {
    optionss[optionss.length] = new Option(text, val);
});
                selects.val(selectedOptions);









                case "Chemistry":
               
                $("#honss,#honsstotalmarks").show();
                $("#spnn").text('yes');

     var newOptions = {
    'dfr': '------Select SUBSIDIARY Paper 2',
        'PHYSICS':'PHYSICS',
'MATH':'MATH',
'STATISTICS':'STATISTICS',
'BOTANY':'BOTANY',

'ZOOLOGY':'ZOOLOGY'
};
var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



if(select.prop) {
  var options = select.prop('options');
}
else {
  var options = select.attr('options');
}
$('option', select).remove();

$.each(newOptions, function(val, text) {
    options[options.length] = new Option(text, val);
});
                select.val(selectedOption);






                var newOptionss = {
    'dfrt': '------Select SUBSIDIARY Paper 1',
        'PHYSICS':'PHYSICS',
'MATH':'MATH',
'STATISTICS':'STATISTICS',
'BOTANY':'BOTANY',

'ZOOLOGY':'ZOOLOGY'
};
var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



if(selects.prop) {
  var optionss = selects.prop('options');
}
else {
  var optionss = selects.attr('options');
}
$('option', selects).remove();

$.each(newOptionss, function(val, text) {
    optionss[optionss.length] = new Option(text, val);
});
                selects.val(selectedOptions);





                break;


           







                 case "Zoology":
               
                $("#honss,#honsstotalmarks").show();
                $("#spnn").text('yes');
                var newOptions = {
    'dfr': '------Select SUBSIDIARY Paper 2',
        'CHEMISTRY' : 'CHEMISTRY',

    'BOTANY' : 'BOTANY'
};
var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



if(select.prop) {
  var options = select.prop('options');
}
else {
  var options = select.attr('options');
}
$('option', select).remove();

$.each(newOptions, function(val, text) {
    options[options.length] = new Option(text, val);
});
                select.val(selectedOption);






                var newOptionss = {
    'dfrt': '------Select SUBSIDIARY Paper 1',
       'CHEMISTRY' : 'CHEMISTRY',

    'BOTANY' : 'BOTANY'
};
var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



if(selects.prop) {
  var optionss = selects.prop('options');
}
else {
  var optionss = selects.attr('options');
}
$('option', selects).remove();

$.each(newOptionss, function(val, text) {
    optionss[optionss.length] = new Option(text, val);
});
                selects.val(selectedOptions);









                break;

            default:


                $("#honss,#honsstotalmarks").hide();
                $("#spnn").text('na');



                var newOptions = {
                    'dfr': '------Select SUBSIDIARY Paper 2',
                    'Economics': 'Economics',
                    'English': 'English',
                    'Hindi': 'Hindi',
                    'History': 'History',
                    'Polscience': 'Polscience',
                    'Psychology': 'Psychology'
                };
                var selectedOption = 'dfr';

                var select = $('#lastqulaficationtt');



                if (select.prop) {
                    var options = select.prop('options');
                }
                else {
                    var options = select.attr('options');
                }
                $('option', select).remove();

                $.each(newOptions, function (val, text) {
                    options[options.length] = new Option(text, val);
                });
                select.val(selectedOption);






                var newOptionss = {
                    'dfrt': '------Select SUBSIDIARY Paper 1',
                    'Economics': 'Economics',
                    'English': 'English',
                    'Hindi': 'Hindi',
                    'History': 'History',
                    'Polscience': 'Polscience',
                    'Psychology': 'Psychology'
                };
                var selectedOptions = 'dfrt';

                var selects = $('#lastqulaficationt');



                if (selects.prop) {
                    var optionss = selects.prop('options');
                }
                else {
                    var optionss = selects.attr('options');
                }
                $('option', selects).remove();

                $.each(newOptionss, function (val, text) {
                    optionss[optionss.length] = new Option(text, val);
                });
                selects.val(selectedOptions);



                break;



        }






}


</script>







					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder"></span>
							Admin &copy; 2018
						</span>

						&nbsp; &nbsp;
						<span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
					</div>
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/jquery.easypiechart.min.js"></script>
		<script src="assets/js/jquery.sparkline.index.min.js"></script>
		<script src="assets/js/jquery.flot.min.js"></script>
		<script src="assets/js/jquery.flot.pie.min.js"></script>
		<script src="assets/js/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>

		<script src="assets/js/ace.min.js"></script>

        <script src="js/apply.js"></script>



		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: ace.vars['old_ie'] ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html',
									 {
										tagValuesAttribute:'data-values',
										type: 'bar',
										barColor: barColor ,
										chartRangeMin:$(this).data('min') || 0
									 });
				});
			
			
			  //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			  //but sometimes it brings up errors with normal resize event handlers
			  $.resize.throttleWindow = false;
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "social networks",  data: 38.7, color: "#68BC31"},
				{ label: "search engines",  data: 24.5, color: "#2091CF"},
				{ label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
				{ label: "direct traffic",  data: 18.6, color: "#DA5430"},
				{ label: "other",  data: 10, color: "#FEE074"}
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			  //pie chart tooltip example
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
				/////////////////////////////////////
				$(document).one('ajaxloadstart.page', function(e) {
					$tooltip.remove();
				});
			
			
			
			
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
				$.plot("#sales-charts", [
					{ label: "Domains", data: d1 },
					{ label: "Hosting", data: d2 },
					{ label: "Services", data: d3 }
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: -2,
						max: 2,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').ace_scroll({
					size: 300
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if(ace.vars['touch'] && ace.vars['android']) {
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				  });
				}
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {
						//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
			
			
				//show the dropdowns on top or bottom depending on window height and menu position
				$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
					var offset = $(this).offset();
			
					var $w = $(window)
					if (offset.top > $w.scrollTop() + $w.innerHeight() - 100) 
						$(this).addClass('dropup');
					else $(this).removeClass('dropup');
				});
			
			})
		</script>










        
<script>
   $('select').on('change', function(event ) {
       //restore previously selected value
       var prevValue = $(this).data('previous');
       $('select').not(this).find('option[value="'+prevValue+'"]').show();
       //hide option selected                
       var value = $(this).val();
       //update previously selected data
       $(this).data('previous',value);
       $('select').not(this).find('option[value="'+value+'"]').hide();
   });


                                </script>

	</body>
</html>

