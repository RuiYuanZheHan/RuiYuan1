<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>首页</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="">
	<%@ include file="../js/jstop.jsp"%>
</head>
<body>
<div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
    <div class="conjtainer">
      <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">         
        <ul class="nav navbar-nav">  
          <li class="dropdown dropdown-big">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-success"><i class="icon-cloud-upload"></i></span> 上传到云服务器</a>
            <ul class="dropdown-menu">
              <li>
                <p>图片上传进度</p>
                <div class="progress progress-striped active">
					<div class="progress-bar progress-bar-info"  role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
						<span class="sr-only">完成40%</span>
					</div>
			    </div>
                <hr />
                <p>视频上传进度</p>
                <div class="progress progress-striped active">
					<div class="progress-bar progress-bar-success"  role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
						<span class="sr-only">完成80%</span>
					</div>
			    </div> 
                <hr />             
                <div class="drop-foot">
                  <a href="#">查看所有</a>
                </div>
              </li>
            </ul>
          </li>
          <li class="dropdown dropdown-big">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-danger"><i class="icon-refresh"></i></span> 同步到服务器</a>
            <ul class="dropdown-menu">
           
            </ul>
          </li>

        </ul>

        <!-- Search form -->
        <form class="navbar-form navbar-left" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
        <!-- Links -->
        <ul class="nav navbar-nav pull-right">
          <li class="dropdown pull-right">            
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
              <i class="icon-user"></i> 管理员 <b class="caret"></b>              
            </a>
            <ul class="dropdown-menu">
              <li><a href="logout.action"><i class="icon-off"></i> 退出</a></li>
            </ul>
          </li>
          
        </ul>
      </nav>

    </div>
  </div>
  <header>
    <%@include  file="../js/title.jsp"%>
  </header>
<div class="content">
  <%@include file ="../js/left.jsp" %>
  	<div class="mainbar">
      
	    <!-- Page heading -->
	    <div class="page-head">
	      <h2 class="pull-left"><i class="icon-home"></i> 首页</h2>
	        <div class="bread-crumb pull-right">
          <span class="divider">/</span> 
        </div>

        <div class="clearfix"></div>
	    </div>
	    <!-- Page heading ends -->



	    <!-- Matter -->

	    <div class="matter">
        <div class="container">

          <!-- Today status. jQuery Sparkline plugin used. -->

          <div class="row">
            <div class="col-md-12"> 
              <!-- List starts -->
              <ul class="today-datas">
                <!-- List #1 -->
                <li>
                  <!-- Graph -->
                  <div><span id="todayspark1" class="spark"></span></div>
                  <!-- Text -->
                  <div class="datas-text">12,000 visitors/day</div>
                </li>
                <li>
                  <div><span id="todayspark2" class="spark"></span></div>
                  <div class="datas-text">30,000 Pageviews</div>
                </li>
                <li>
                  <div><span id="todayspark3" class="spark"></span></div>
                  <div class="datas-text">15.66% Bounce Rate</div>
                </li>
                <li>
                  <div><span id="todayspark4" class="spark"></span></div>
                  <div class="datas-text">$12,000 Revenue/Day</div>
                </li> 
                <li>
                  <div><span id="todayspark5" class="spark"></span></div>
                  <div class="datas-text">15,000000 visitors till date</div>
                </li>                                                                                                              
              </ul> 
            </div>
          </div>

          <!-- Today status ends -->

          <!-- Dashboard Graph starts -->

          <div class="row">
            <div class="col-md-8">

              <!-- Widget -->
              <div class="widget">
                <!-- Widget head -->
                <div class="widget-head">
                  <div class="pull-left">帆船酒店</div>
                  <div class="widget-icons pull-right">
                 <img  src="../image/帆船酒店.jpg"  width="650"  height="650"/> 
                  </div>  
         
                </div>              
                <div class="widget-content">
                  <div class="padd">
                    <div id="curve-chart"></div>

                    <hr />
                    <!-- Hover location -->
                    <div id="hoverdata">Mouse hovers at
                    (<span id="x">0</span>, <span id="y">0</span>). <span id="clickdata"></span></div>          
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-4">

              <div class="widget">

                <div class="widget-head">
                  <div class="pull-left">今天统计</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>             

                <div class="widget-content">
                  <div class="padd">

                    <!-- Visitors, pageview, bounce rate, etc., Sparklines plugin used -->
                    <ul class="current-status">
                      <li>
                        <span id="status1"></span> <span class="bold">Visits : 2000</span>
                      </li>
                      <li>
                        <span id="status2"></span> <span class="bold">Unique Visitors : 1,345</span>
                      </li>
                      <li>
                        <span id="status3"></span> <span class="bold">Pageviews : 2000</span>
                      </li>
                      <li>
                        <span id="status4"></span> <span class="bold">Pages / Visit : 2000</span>
                      </li>
                      <li>
                        <span id="status5"></span> <span class="bold">Avg. Visit Duration : 2000</span>
                      </li>
                      <li>
                        <span id="status6"></span> <span class="bold">Bounce Rate : 2000</span>
                      </li>   
                      <li>
                        <span id="status7"></span> <span class="bold">% New Visits : 2000</span>
                      </li>                                                                                                            
                    </ul>

                  </div>
                </div>

              </div>

            </div>
          </div>
          <!-- Dashboard graph ends -->

          <!-- Chats, File upload and Recent Comments -->
          <div class="row">

            <div class="col-md-4">
              <!-- Widget -->
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">图表</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  <div class="padd">
                    
                    <ul class="chats">

                      <!-- Chat by us. Use the class "by-me". -->
                      <li class="by-me">
                        <!-- Use the class "pull-left" in avatar -->
                        <div class="avatar pull-left">
                          <img src="../../img/user.jpg" alt=""/>
                        </div>

                        <div class="chat-content">
                          <!-- In meta area, first include "name" and then "time" -->
                          <div class="chat-meta">Ashok <span class="pull-right">3 hours ago</span></div>
                          Vivamus diam elit diam, consectetur dapibus adipiscing elit.
                          <div class="clearfix"></div>
                        </div>
                      </li> 

                      <!-- Chat by other. Use the class "by-other". -->
                      <li class="by-other">
                        <!-- Use the class "pull-right" in avatar -->
                        <div class="avatar pull-right">
                          <img src="../../img/user.jpg" alt=""/>
                        </div>

                        <div class="chat-content">
                          <!-- In the chat meta, first include "time" then "name" -->
                          <div class="chat-meta">3 hours ago <span class="pull-right">Ravi</span></div>
                          Vivamus diam elit diam, consectetur fconsectetur dapibus adipiscing elit.
                          <div class="clearfix"></div>
                        </div>
                      </li>   

                      <li class="by-me">
                        <div class="avatar pull-left">
                          <img src="../../img/user.jpg" alt=""/>
                        </div>

                        <div class="chat-content">
                          <div class="chat-meta">Ashok <span class="pull-right">4 hours ago</span></div>
                          Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
                          <div class="clearfix"></div>
                        </div>
                      </li>  

                      <li class="by-other">
                        <!-- Use the class "pull-right" in avatar -->
                        <div class="avatar pull-right">
                          <img src="../../img/user.jpg" alt=""/>
                        </div>

                        <div class="chat-content">
                          <!-- In the chat meta, first include "time" then "name" -->
                          <div class="chat-meta">3 hours ago <span class="pull-right">Ravi</span></div>
                          Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
                          <div class="clearfix"></div>
                        </div>
                      </li>                                                                                  

                    </ul>

                  </div>
                  <!-- Widget footer -->
                  <div class="widget-foot">
                      
                      <form class="form-inline">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Type your message here...">
						</div>
                        <button type="submit" class="btn btn-primary">Send</button>
                      </form>


                  </div>
                </div>


              </div> 
            </div>


            <!-- File Upload widget -->
            <div class="col-md-4">
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">文件上传</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  <ul class="file-upload">

                    <li>
                      <strong><i class="icon-upload-alt"></i> File_Name_Here.Mp3</strong>
                      <div class="file-meta">3.3 of 5MB - 5 mins - 1MB/Sec</div>

                      <div class="progress progress-animated progress-striped">
						  <div class="progress-bar progress-bar-success" data-percentage="100">
							<span class="sr-only">100 % completed</span>
						  </div>
					  </div>
                    </li>

                    <li>
                      <strong><i class="icon-ok"></i> Third_File_Here.Mp3</strong>
                      <div class="file-meta">5MB - 5 mins - Stopped</div>
                    </li>                        

                    <li>
                      <strong><i class="icon-ok"></i> Third_File_Here.Mp3</strong>
                      <div class="file-meta">5MB - 5 mins - Stopped</div>
                    </li>                                                                                                                      
                  </ul>

                  <div class="widget-foot">
                  </div>

                </div>
              </div>

              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">浏览器统计</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content referrer">
                  <!-- Widget content -->
                  
                  <table class="table table-striped table-bordered table-hover">
                    <tr>
                      <th><center>#</center></th>
                      <th>Browsers</th>
                      <th>Visits</th>
                    </tr>
                    <tr>
                      <td><img src="../../img/icons/chrome.png" alt="" />
                      <td>Google Chrome</td>
                      <td>3,005</td>
                    </tr> 
                    <tr>
                      <td><img src="../../img/icons/firefox.png" alt="" />
                      <td>Mozilla Firefox</td>
                      <td>2,505</td>
                    </tr> 
                    <tr>
                      <td><img src="../../img/icons/ie.png" alt="" />
                      <td>Internet Explorer</td>
                      <td>1,405</td>
                    </tr> 
                    <tr>
                      <td><img src="../../img/icons/opera.png" alt="" />
                      <td>Opera</td>
                      <td>4,005</td>
                    </tr> 
                    <tr>
                      <td><img src="../../img/icons/safari.png" alt="" />
                      <td>Safari</td>
                      <td>505</td>
                    </tr>                                                                    
                  </table>

                  <div class="widget-foot">
                  </div>
                </div>
              </div>

            </div>


            <div class="col-md-4">
              <!-- Widget -->
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">最近评论</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content">
                  <!-- Widget content -->
                  <div class="padd">

                    <ul class="recent">


                      <li>

                        <div class="recent-content">
                          <div class="recent-meta">Posted on 25/1/2120 by Ashok</div>
                          <div>Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
                          </div>

                          <div class="btn-group">
                            <button class="btn btn-xs btn-default"><i class="icon-ok"></i> </button>
                            <button class="btn btn-xs btn-default"><i class="icon-pencil"></i> </button>
                            <button class="btn btn-xs btn-default"><i class="icon-remove"></i> </button>
                          </div>

                          <button class="btn btn-xs btn-danger pull-right">Spam</button>

                          <div class="clearfix"></div>
                        </div>
                      </li>



                      <li>

                        <div class="recent-content">
                          <div class="recent-meta">Posted on 25/1/2120 by Ashok</div>
                          <div>Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
                          </div>

                          <div class="btn-group">
                            <button class="btn btn-xs btn-default"><i class="icon-ok"></i> </button>
                            <button class="btn btn-xs btn-default"><i class="icon-pencil"></i> </button>
                            <button class="btn btn-xs btn-default"><i class="icon-remove"></i> </button>
                          </div>

                          <button class="btn btn-xs btn-danger pull-right">Spam</button>

                          <div class="clearfix"></div>
                        </div>
                      </li>



                      <li>

                        <div class="recent-content">
                          <div class="recent-meta">Posted on 25/1/2120 by Ashok</div>
                          <div>Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
                          </div>

                          <div class="btn-group">
                            <button class="btn btn-xs btn-default"><i class="icon-ok"></i> </button>
                            <button class="btn btn-xs btn-default"><i class="icon-pencil"></i> </button>
                            <button class="btn btn-xs btn-default"><i class="icon-remove"></i> </button>
                          </div>

                          <button class="btn btn-xs btn-danger pull-right">Spam</button>

                          <div class="clearfix"></div>
                        </div>
                      </li>                                        


                    </ul>

                  </div>
                  <!-- Widget footer -->
                  <div class="widget-foot">
                    
                    
                      <ul class="pagination pull-right">
                        <li><a href="#">Prev</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">Next</a></li>
                      </ul>
                   
                    <div class="clearfix"></div>

                  </div>
                </div>  
              </div> 
            </div>
          </div>
        </div>
		  </div>
		  </div>
   <!-- Mainbar ends -->
   <div class="clearfix"></div>
</div>
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
            <!-- Copyright info -->
            <p class="copy">Copyright &copy; 2012 | <a href="#">Your Site</a> </p>
      </div>
    </div>
  </div>
</footer> 	
<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 

<!-- JS -->
	<%@ include file="../js/jsfoot.jsp"%>


<!-- Script for this page -->
<script type="text/javascript">
$(function () {

    /* Bar Chart starts */

    var d1 = [];
    for (var i = 0; i <= 20; i += 1)
        d1.push([i, parseInt(Math.random() * 30)]);

    var d2 = [];
    for (var i = 0; i <= 20; i += 1)
        d2.push([i, parseInt(Math.random() * 30)]);


    var stack = 0, bars = true, lines = false, steps = false;
    
    function plotWithOptions() {
        $.plot($("#bar-chart"), [ d1, d2 ], {
            series: {
                stack: stack,
                lines: { show: lines, fill: true, steps: steps },
                bars: { show: bars, barWidth: 0.8 }
            },
            grid: {
                borderWidth: 0, hoverable: true, color: "#777"
            },
            colors: ["#ff6c24", "#ff2424"],
            bars: {
                  show: true,
                  lineWidth: 0,
                  fill: true,
                  fillColor: { colors: [ { opacity: 0.9 }, { opacity: 0.8 } ] }
            }
        });
    }

    plotWithOptions();
    
    $(".stackControls input").click(function (e) {
        e.preventDefault();
        stack = $(this).val() == "With stacking" ? true : null;
        plotWithOptions();
    });
    $(".graphControls input").click(function (e) {
        e.preventDefault();
        bars = $(this).val().indexOf("Bars") != -1;
        lines = $(this).val().indexOf("Lines") != -1;
        steps = $(this).val().indexOf("steps") != -1;
        plotWithOptions();
    });

    /* Bar chart ends */

});


/* Curve chart starts */

$(function () {
    var sin = [], cos = [];
    for (var i = 0; i < 14; i += 0.5) {
        sin.push([i, Math.sin(i)]);
        cos.push([i, Math.cos(i)]);
    }

    var plot = $.plot($("#curve-chart"),
           [ { data: sin, label: "sin(x)"}, { data: cos, label: "cos(x)" } ], {
               series: {
                   lines: { show: true, fill: true},
                   points: { show: true }
               },
               grid: { hoverable: true, clickable: true, borderWidth:0 },
               yaxis: { min: -1.2, max: 1.2 },
               colors: ["#1eafed", "#1eafed"]
             });

    function showTooltip(x, y, contents) {
        $('<div id="tooltip">' + contents + '</div>').css( {
            position: 'absolute',
            display: 'none',
            top: y + 5,
            left: x + 5,
            border: '1px solid #000',
            padding: '2px 8px',
            color: '#ccc',
            'background-color': '#000',
            opacity: 0.9
        }).appendTo("body").fadeIn(200);
    }

    var previousPoint = null;
    $("#curve-chart").bind("plothover", function (event, pos, item) {
        $("#x").text(pos.x.toFixed(2));
        $("#y").text(pos.y.toFixed(2));

        if ($("#enableTooltip:checked").length > 0) {
            if (item) {
                if (previousPoint != item.dataIndex) {
                    previousPoint = item.dataIndex;
                    
                    $("#tooltip").remove();
                    var x = item.datapoint[0].toFixed(2),
                        y = item.datapoint[1].toFixed(2);
                    
                    showTooltip(item.pageX, item.pageY, 
                                item.series.label + " of " + x + " = " + y);
                }
            }
            else {
                $("#tooltip").remove();
                previousPoint = null;            
            }
        }
    }); 

    $("#curve-chart").bind("plotclick", function (event, pos, item) {
        if (item) {
            $("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
            plot.highlight(item.series, item.datapoint);
        }
    });

});

/* Curve chart ends */
</script>

</body>
</html>