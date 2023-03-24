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
    <title>Staff- Add Products</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/styles.css" rel="stylesheet" />
  </head>
  <body id="page-top">
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
      <a class="navbar-brand mr-1" href="satff_home.jsp">Spare Parts Shop</a>
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
             <a class="dropdown-item" href="activity">
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
        <li class="nav-item">
          <a class="nav-link" href="satff-record-sales.jsp">
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
       
        <li class="nav-item dropdown active">
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
            <li class="breadcrumb-item active">Add Products</li>
          </ol>
          <!-- Page Content -->
          <div class="container">
           <form action=StaffSaveServlet method="post">
            
             
                <div class="form-group">
                <label for="">Product Name</label>
                <input
                  type="text"
                  class="form-control"
                  name="pN"
                  
                  required
                />
              </div>
                 <div class="form-group">
                <label>Product Type</label>
                <select class="form-control text-primary"  name= "category" required>
                  <option disabled selected>
                    <sub>Select Category</sub>
                  </option>
                  
                </select>
                <small class="float-right"
                  >Product type not listed here?
                  <a
                    href="#"
                    
                    >Add new category</a
                  >
                </small>
              </div> 
             
                 
                 
                 
             
              <div class="form-group">
                <label for="">Product Price</label>
                <input
                  type="text"
                  class="form-control"
                  name="pC"
                  
                  required
                />
              </div>
              <div class="form-group">
                <label for="">Quantity Available</label>
                <input
                  type="number"
                  class="form-control"
                  name="qA"
                  
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
              <input type="submit" class="btn btn-primary" value="Add Product" />
            
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
    