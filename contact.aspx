<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<script type="text/javascript">
    function validate() {
        if (document.getElementById("<%=txtname.ClientID%>").value == "") {
            alert("Name Feild can not be blank");
            document.getElementById("<%=txtname.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=txtemail.ClientID%>").value == "") {
            alert("Email Feild can not be blank");
            document.getElementById("<%=txtemail.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=txtsubject.ClientID%>").value == "") {
            alert("Subject no Feild can not be blank");
            document.getElementById("<%=txtsubject.ClientID%>").focus();
            return false;
        }
        return true;
    }
    </script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body><form id="Form1" runat="server">
   
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                      <ul>
                            
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                               
                                
                            </li>

                            <li class="dropdown dropdown-small">
                                
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                   
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                         <li><a href="index.aspx">Home</a></li>
                             
                        <li><a href="cart.aspx">Cart</a></li>
                        <li><a href="checkout.aspx">Checkout</a></li>
                            
                        <li class="active"><a href="contact.aspx">Contact</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shopping Cart</h2>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Page title area -->
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">
                            </div>
                        <asp:Panel ID="Panel1" runat="server">
                        <div class="banner-box">
		<div class="wrap">
			<div class="main-top">
				<div class="main">
			    <div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	  <h2>
                          Contact Us</h2>
					    <div>
                            <span>
                            <p>
                                <asp:TextBox ID="txtname" runat="server" placeholder="Name*"></asp:TextBox>
                            </p>
                            </span>
                      </div>
                      <div>
                          <span>
                          <p>
                              <asp:TextBox ID="txtemail" runat="server" placeholder="E-mail*"></asp:TextBox>
                              </asp:declarativecatalogpart>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                  ControlToValidate="txtemail" ErrorMessage="Invailid Email-Id" 
                                  ForeColor="#FF3300"></asp:RegularExpressionValidator>
                          </p>
                          </span>
                      </div>
                      <div>
                          <span>
                          <p>
                              <asp:TextBox ID="txtsubject" runat="server" placeholder="Subject*" 
                                  TextMode="MultiLine" Width="192px"></asp:TextBox>
                          </p>
                          </span>
                      </div>
                      <div>
                          <span>
                          <asp:Button ID="txtsubmit" runat="server" CssClass="btn" 
                              onclick="txtsubmit_Click" OnClientClick="return validate();" Text="submit" />
                          </span>
                          <asp:Label ID="lblmsg" runat="server"></asp:Label>
                      </div>
				  </div>
  				</div>
				<div class="col span_1_of_3">
					
      			<div class="company_address">
				     	<h2>
                            Address</h2>
						    	<p>Government Polytechnic Kanpur,</p>
						   		<p>GuruDev chauraha, Near by Textile Building</p>
						   		<p>Kanpur Nagar(Utter Pradesh)</p>
				   		<p>Mobile:7275650841</p>
				   		<p>Fax: (000) 000 00 00 0</p>
				 	 	<p>Email: <span>info[at]himanshumogupta@gmail.com</span></p>
				   		<p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
				   </div>
				 </div>
				 <div class="clear"></div> 
			  </div>
			  
				</div>
			</div>
		</div>
		<div class="main-bottom">
			<div class="wrap">
			<div class="content-bottom">
				
				<div class="clear"></div> 
			</div>
			</div>
		</div>
	    <div class="wrap">
		   <div class="copy-right">
				
			</div>
		</div>
	</div>
                        </asp:Panel>
                            </form>

                            <div class="cart-collaterals">
                           </div>
                        </div>                        
                    </div>                    
                </div>
            </div>
        </div>
    </div>


    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>u<span>Stora</span></h2>
                        <p>A comparison shopping website, sometimes called a price comparison website, Price Analysis tool, comparison shopping agent, shopbot or comparison shopping engine, is a vertical search engine that shoppers use to filter and compare products based on price, features, reviews and other criteria. Most comparison shopping sites aggregate product listings from many different retailers but do not directly sell products themselves instead mostly they make use of affiliate marketing to earn. There is a huge contribution of comparison shopping websites in the expansion of current E-commerce industry.</p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li>My account</li>
                            <li>Order history</li>
                            <li>Wishlist</li>
                            <li>Contact</li>
                            <li>Front page</li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li>Pillows</li>
                            <li>Mattresses</li>
                            <li>Cushions</li>
                            <li>Designer Cushions</li>
                            <li>Sofa Cush</li>
                        </ul>                        
                    </div>
                </div>
                
                
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.iqrasoftwares.com" target="_blank">Himanshu,Prince</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
 </form> </body>
</html>
