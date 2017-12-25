<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="sidebar">
        <div class="sidebar-dropdown"><a href="#">导航</a></div>
        <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
        <ul id="nav">
          <!-- Main menu with font awesome icon -->
          <li><a href="../index/index.jsp" class="open"><i class="icon-home"></i> 首页</a>

          </li>
          <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> 酒店人员管理  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
              <li><a href="../User/tomain.action">酒店员工管理</a></li>
            </ul>
          </li>  
          <li class="has_sub"><a href="#"><i class="icon-file-alt"></i>会员管理 <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
              <li><a href="../VIP/tomain.action">会员管理</a></li>
            </ul>
          </li> 
          <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> 菜品订单管理 <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
              <li><a href="../Vege_Form/addconsumer.action">菜品管理</a></li>
              <li><a href="../Vege_Form/search.action">菜品分页查询</a></li>
            </ul>
          </li>                             
          <li><a href="../vegetable/tomain.action"><i class="icon-bar-chart"></i>菜品管理 </a></li> 
          <li><a href="../Hobby/tomain.action"><i class="icon-table"></i>爱好管理</a></li>
        </ul>
    </div>
