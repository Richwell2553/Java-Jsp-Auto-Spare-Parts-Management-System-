<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="shop.login.util.*" %>
        	
 

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
    <title>Admin- Edit Products</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/styles.css" rel="stylesheet" />
  </head>
  <body id="page-top">
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
      <a class="navbar-brand mr-1" href="admin_home.jsp">Spare Parts Parts Shop</a>
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
        
        <h4 class="text-white">Admin-Dashboard</h4>
      </form>
          <div class="input-group-append">
            <button class="btn btn-primary" type="button">
              <i class="fa fa-search"></i>
            </button>
          </div>
        </div>
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
              href="add-products.jsp"
             
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
            <i class="fa fa-tag"></i>
          </a>
          <div
            class="dropdown-menu dropdown-menu-right"
            aria-labelledby="messagesDropdown"
          >
            <a class="dropdown-item" href="products.jsp">
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
             <a class="dropdown-item" href="activity.jsp">
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
            <div class="dropdown-header">Admin</div>
           
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
          <a class="nav-link" href="admin_home.jsp">
            <i class="fa fa-fw fa-home"></i>
            <span>Home</span>
          </a>
        </li>
        
       
       
        <li class="nav-item">
          <a class="nav-link" href="sales.jsp">
            <i class="fa fa-fw fa-table"></i>
            <span>Check Sales</span></a
          >
        </li>
        
        
        
        <li class="nav-item ">
          <a class="nav-link" href="categories.jsp">
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
              href="add-products.jsp"
              
            >
              <i class="fa fa-plus"></i> Add Product</a
            >
            <a class="dropdown-item" href="products.jsp">
              <i class="fa fa-tags"></i> All Products</a
            >
            
            
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="short-items.jsp">
            <i class="fa fa-exclamation"></i>
            <span>Low & Out Of Stock</span></a
          >
        </li>
        <li class="nav-item">
          <a
            class="nav-link"
            href="add-new-staff.jsp"
            
          >
            <i class="fa fa-plus"></i>
            <span>Add New Staff</span></a
          >
        </li>
        <li class="nav-item">
          <a
            class="nav-link"
            href="manage-staff.jsp"
            
          >
            <i class="fa fa-users"></i>
            <span>Manage Staffs</span></a
          >
        </li>
        
      
      </ul>
      <div id="content-wrapper">
        <div class="container-fluid">
          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="admin_home.jsp">Home</a>
            </li>
            <li class="breadcrumb-item active">Edit Products</li>
          </ol>
          
        	
        	<%
        	Connection con = null;
        	
        	
        	String id = request.getParameter("id");
        	Integer prodId = Integer.parseInt(id);
        	
        	
			
    		try{
    			con = DBConnection.createConnection();
        	Statement st  = con.createStatement();
        	ResultSet rs = st.executeQuery("select * from products where prod_id='"+prodId+"'" );
        	
        	%>
            <div  class="container">
            <form action=EditServlet method="post">
            <%
            
            while(rs.next()){
            %>
            
            
	 <div class="form-group">
              <input
                  type="hidden"
                  class="form-control"
                  name="pI"
                  value="<% out.print(rs.getString("prod_id")); %>" />
                
              </div>
              <div class="form-group">
              <input
                  type="number"
                  class="form-control"
                  name="quantitySold"
                  value="<% out.print(rs.getString("quantity_sold")); %>" />
                 
              </div>
              
              
            
              <div class="form-group">
                <label>Product Name</label>
              <input
                  type="text"
                  class="form-control"
                  name="pN"
                   value="<% out.print(rs.getString("prod_name")); %>"
                 
                  
                />
              </div>
              <div class="form-group">
                <label>Product Category</label>
              <input
                  type="text"
                  class="form-control"
                  name="category"
                   value="<% out.print(rs.getString("prod_category")); %>"
                 
                  
                />
              </div>
              <div class="form-group">
                <label for="">Quantity Available</label>
                <input
                  type="number" step="any"
                  class="form-control"
                  name="qA"
                   value="<% out.print(rs.getString("quantity_available")); %>"
                  
                  
                  
                />
              </div>
              <div class="form-group">
                <label for="">Product Price</label>
                <input
                  type="number" step="any"
                  class="form-control"
                  name="pC"
                   value="<% out.print(rs.getString("prod_cost")); %>"
                    
                  
                  
                   
                />
              </div>
              
             <%
            }
            }catch(Exception e){
    			e.printStackTrace();
    		}finally{
    			
    			if(con!= null)
    			try{
    					con.close();
    			}catch(Exception e){
    				e.printStackTrace();
    				
    			}
    		}
             
             %>
             
                    
            
            <div class="card-footer text-center">
              <button
                class="btn btn-secondary"
                type="button"
                data-dismiss="modal"
              >
                Cancel
              </button>
              <input type="submit" name="submit" id="update" class="btn btn-primary" value="Update" />
            </div>
        
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
              <span aria-hidden="true">×</span>
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
    