<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<script type="text/javascript">
    function validate() {
        if (document.getElementById("<%=txtusername.ClientID%>").value == "") {
            alert("Username Feild can not be blank");
            document.getElementById("<%=txtusername.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=txtpassword.ClientID%>").value == "") {
            alert("Password Feild can not be blank");
            document.getElementById("<%=txtpassword.ClientID%>").focus();
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
    <style type="text/css">
        .style1
        {
            width: 20px;
        }
        .style2
        {            margin-left: 40px;
        }
        .style3
        {
            width: 41px;
        }
        .style4
        {
            width: 49px;
        }
        .style5
        {
            height: 60px;
        }
        .style10
        {
            width: 49px;
            height: 60px;
        }
        .style33
        {
            height: 51px;
            margin-left: 40px;
        }
        .style37
        {
            width: 41px;
            height: 60px;
        }
        .style38
        {
            height: 59px;
        }
        .style39
        {
            width: 41px;
            height: 59px;
        }
        .style43
        {
            height: 60px;
            margin-left: 40px;
        }
        .style44
        {
            height: 20px;
        }
        .style45
        {
            width: 49px;
            height: 20px;
        }
    </style>
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
                         <li ><a href="index.aspx">Home</a></li>
                             
                        <li><a href="cart.aspx">Cart</a></li>
                        <li class="active"><a href="checkout.aspx">Checkout</a></li>
                           
                        <li><a href="contact.aspx">Contact</a></li>
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
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        
                    </div>
                    
                    
                </div>
                
               
    <div class="col-1">
        <table class="style1">
            <tr>
                <td colspan="2">
                    <h1>
                        <strong>Log-in</strong></h1>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
           <p><tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtusername" placeholder="Enter Email* " runat="server" 
                        CssClass="fortextbox"></asp:TextBox>
                </td>
                <td class="style10">
                    </td>
            </tr></p>
            <p>
            <tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtpassword" placeholder="Password*" runat="server" 
                        CssClass="fortextbox" MaxLength="8" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style10">
                    </td>
            </tr></p>
            <tr>
                <td class="style5">
                    </td>
                <td class="style5">
                    <asp:Button ID="btnlogin" runat="server" Text="login" OnClientClick="return validate();" CssClass="btn" 
                        onclick="btnlogin_Click" />                
                    <%--<asp:CheckBox ID="CheckBox1" runat="server" Text="Remember" />--%>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style44">
                    </td>
                <td class="style44">
                    <asp:Label ID="Label1" runat="server" CssClass="fortextbox"></asp:Label>
                    <%--<asp:LinkButton ID="lnkforgetpassword" runat="server">Forget password</asp:LinkButton>--%>
                </td>
                <td class="style45">
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                
            </tr>
        </table>
    
    </div>
                           
                            

                            <div class="col-2">
    
        <table class="style1">
            <tr>
                <td class="style33" colspan="2">
                    <h1>
                        <strong>Signup</strong></h1>
                </td>
                <td class="style33">
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtfullname" placeholder="Full Name*" runat="server" 
                        CssClass="fortextbox"></asp:TextBox>
                </td>
                <td class="style5">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtaddress" placeholder="Address*" runat="server" 
                        CssClass="fortextbox" TextMode="MultiLine" Width="192px"></asp:TextBox>
                </td>
                <td class="style5">
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtpincode" placeholder="Pin Code*" runat="server" 
                        CssClass="fortextbox" MaxLength="6"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtpincode" ErrorMessage="Invaid pincode" ForeColor="Red" 
                        ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style38">
                   
                </td>
                <td class="style39">
                    <asp:TextBox ID="txtmobileno" placeholder="Mobile Number*" runat="server" 
                        CssClass="fortextbox" MaxLength="10"></asp:TextBox>
                </td>
                <td class="style38">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtmobileno" ErrorMessage="Invalid mobile no" 
                        ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style38">
                    
                </td>
                <td class="style39">
                    <asp:TextBox ID="txtemailid" placeholder="Email-Id*" runat="server" CssClass="fortextbox"></asp:TextBox>
                </td>
                <td class="style38">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtemailid" ErrorMessage="Invalid emailid" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style43">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtpwd" placeholder="Password*" runat="server" TextMode="Password" 
                        CssClass="fortextbox" MaxLength="8"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtpwd" ErrorMessage="1 spcl char,1 char,1 num" ForeColor="Red" 
                        ValidationExpression="((?=.*\d)(?=.*[!@#$%]).{8,})"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtconfirmpwd" placeholder="Confirm Password*" runat="server" TextMode="Password" 
                        CssClass="fortextbox" MaxLength="8"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpwd" ControlToValidate="txtconfirmpwd" 
                        ErrorMessage="password dosen't match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style43">
                </td>
                <td class="style37">
                <asp:Button ID="btnsubmit2" runat="server" Text="signup"
                        onclick="btnsubmit2_Click1" CssClass="btn" />
                </td>
                
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
                
            </tr>
        </table>
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
