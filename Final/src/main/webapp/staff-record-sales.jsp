<%@page import="shop.login.util.DBConnection" %>
 <%@page import ="java.sql.*" %>
  <%@page import ="java.io.IOException" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Staff- Record Sales</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/styles.css" rel="stylesheet" />
  </head>
  <body id="page-top">
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
      <a class="navbar-brand mr-1" href="staff_home.jsp">Spare Parts Shop</a>
      <button
        class="btn btn-link btn-sm text-white order-1 order-sm-0"
        id="sidebarToggle"
        href="#"
      >
        <i class="fa fa-bars"></i>
      </button>
      <!-- Navbar Search -->
     <form
        class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0"
      >
        
        <h4 class="text-white">Staff-Dashboard</h4>
      </form>
      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown no-arrow mx-1">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="messagesDropdown"
            role="button"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
            <i class="fa fa-plus fa-fw"></i>
          </a>
          <div
            class="dropdown-menu dropdown-menu-right"
            aria-labelledby="messagesDropdown"
          >
            
            <a
              class="dropdown-item"
              href="staff-add-products.jsp"
             
            >
              <i class="fa fa-tag"></i> New Product</a
            >
          </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="messagesDropdown"
            role="button"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
            <i class="fa fa-tag fa-fw"></i>
          </a>
          <div
            class="dropdown-menu dropdown-menu-right"
            aria-labelledby="messagesDropdown"
          >
            <a class="dropdown-item" href="staff-products.jsp">
              <i class="fa fa-tag"></i> All Products</a
            >
           
          </div>
        </li>
        <li class="nav-item dropdown no-arrow ml-3">
         <a
            class="nav-link dropdown-toggle"
            href="#"
            id="alertsDropdown"
            role="button"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
             <i class="fa fa-bars"></i>
          </a>
          <div
            class="dropdown-menu dropdown-menu-right"
            aria-labelledby="alertsDropdown"
          >
             <a class="dropdown-item" href="staff-activity.jsp">
              Activity Log</a
            >
          
          </div>
        </li>
        <li class="nav-item dropdown no-arrow ml-3">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="userDropdown"
            role="button"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
            <i class="fa fa-user-circle fa-fw"></i>
          </a>
          <div
            class="dropdown-menu dropdown-menu-right"
            aria-labelledby="userDropdown"
          >
            <div class="dropdown-header">Staff</div>
           
            <a
              class="dropdown-item"
              href="#"
              data-toggle="modal"
              data-target="#logoutModal"
            >
              <i class="fa fa-power-off"></i> Logout</a
            >
          </div>
        </li>
      </ul>
    </nav>
    <div id="wrapper">
      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="staff_home.jsp">
            <i class="fa fa-fw fa-home"></i>
            <span>Home</span>
          </a>
        </li>
        
       
       
        <li class="nav-item">
          <a class="nav-link" href="staff-inventory-reports.jsp">
            <i class="fa fa-fw fa-table"></i>
            <span>Inventory</span></a
          >
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="staff-record-sales.jsp">
            <i class="fa fa-plus"></i>
            <span>Record New Sales</span></a
          >
        </li>
        <li class="nav-item ">
          <a
            class="nav-link"
            href="staff-categories.jsp"
           
          >
            <i class="fa fa-list-alt"></i>
            <span>Product Categories</span></a
          >
        </li>
       
        
       
        <li class="nav-item dropdown">
          <a
            class="nav-link"
            href="#"
            id="pagesDropdown"
            role="button"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
            <i class="fa fa-fw fa-folder"></i>
            <span>
              Manage Products
              <i class="float-right fa fa-angle-down"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Inventory</h6>
            <a
              class="dropdown-item"
              href="staff-add-products.jsp"
             
            >
              <i class="fa fa-plus"></i> Add Product</a
            >
            <a class="dropdown-item" href="staff-products.jsp">
              <i class="fa fa-tags"></i> All Products</a
            >
            
            
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="staff-short-items.jsp">
            <i class="fa fa-exclamation fa-fw"></i>
            <span>Low Or Out Of Stock</span></a
          >
        </li>
       
      
      </ul>
      <div id="content-wrapper">
        <div class="container-fluid">
          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="staff_home.jsp">Home</a>
            </li>
            <li class="breadcrumb-item active">Record Sales</li>
          </ol>
          <!-- Page Content -->
          <div class="container">
           <form action=SaveSales method="post">
            
              
                <div class="form-group">
                <label>Product Name</label>
                <select class="form-control" name="pN" required>
                  <option disabled selected>
                    <sub>Please select a product </sub>
                  </option>
                   <%
                	Connection connection = null;
            		Statement  statement = null;
            		ResultSet resultSet = null;
            		String jdbcUrl = "jdbc:postgresql://localhost:5432/shop";
            		String username = "postgres";
            		String pass = "root";
            		
            		
            		try{
            			
            			connection = DriverManager.getConnection(jdbcUrl,username,pass);
            			statement = connection.createStatement();
            			resultSet = statement.executeQuery("SELECT prod_name FROM products");
            			
            			while(resultSet.next()){
            				String product_name = resultSet.getString("prod_name");
            			
            			%>	
                  <option value="<%=product_name %>"><%=product_name %></option>
                  	<% }
            			
            		}catch(Exception e){
            			e.printStackTrace();
            		}finally{
            			if(statement!= null)
                			try{
                				
                					statement.close();
                			}catch(Exception e){
                				e.printStackTrace();
                				
                			}
            			if(resultSet!= null)
                			try{
                				
                					resultSet.close();
                			}catch(Exception e){
                				e.printStackTrace();
                				
                			}
            			if(connection!= null)
            			try{
            				
            					connection.close();
            			}catch(Exception e){
            				e.printStackTrace();
            				
            			}
            		}
            			
            			
            			
            			%>
                  
                </select>
                <small class="float-right"
                  >Product type not listed here?
                  <a
                    href="staff-add-products.jsp"
                   
                    >Add new</a
                  >
                </small>
              </div>
               <div class="form-group">
                <label for="">Category</label>
                <input
                  type="text"
                  class="form-control"
                  name="pC"
                 
                  
                  required
                />
              </div>
              <div class="form-group">
                <label for="">Product Price</label>
                <input
                  type="text"
                  class="form-control"
                  name="pP"
                 
                 
                  required
                />
              </div>
               <div class="form-group">
                <label for="">Quantity Sold</label>
                <input
                  type="number"
                  class="form-control"
                  name="qS"
                 
                 
                  required
                />
              </div>
              
             
             
            </div>
            <div class="modal-footer">
              <button
                class="btn btn-secondary"
                type="button"
                data-dismiss="modal"
              >
                Cancel
              </button>
              <input type="submit" class="btn btn-primary" value="Record" />
            
          </form>
            
            
        </div>
        <br /><br /><br />
        
      </div>
    </div>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    
    
    
    <!-- Modals -->
    <!-- Logout Modal-->
    <div
      class="modal fade"
      id="logoutModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header bg-danger text-white">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button
              class="close text-white"
              type="button"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">�</span>
            </button>
          </div>
          <div class="modal-body">
            Select "Logout" below if you are ready to end your current session.
          </div>
          <div class="modal-footer">
            <button
              class="btn btn-secondary"
              type="button"
              data-dismiss="modal"
            >
              Cancel
            </button>
             <a href="<%=request.getContextPath() %>/LogoutServlet"  class=" btn-danger btn-sm ">Logout</a>
          </div>
        </div>
      </div>
    </div>
   

   
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/chart.min.js"></script>
    <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap4.js"></script>
    <script src="js/rc-pos.min.js"></script>
    <script src="js/datatables-demo.js"></script>
    <script src="js/chart-area-demo-6months.js"></script>
  </body>
</html>
    