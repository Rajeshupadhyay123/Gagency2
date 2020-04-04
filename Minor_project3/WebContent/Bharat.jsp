<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.Myconn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bharat booking</title>
</head>
<body>

<%@include file="header.jsp"%>
<%
	
	String email=(String)session.getAttribute("emailPre");
	String counum="";
	String firstname="";
	String lastname="";
	String name="";
	String mobile="";
	
	try{
	Connection con=new Myconn().getMyConn();
	PreparedStatement ps=con.prepareStatement("select counum,firstname,lastname,mobile from registration where email=?");
	ps.setString(1, email);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		firstname=rs.getString(2);
		lastname=rs.getString(3);
		name=firstname+" "+lastname;
		counum=rs.getString(1);
		mobile=rs.getString(4);
	}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	System.out.println(name);



%>
<br><br>
<div class="">
  <span class="border ">
  <div class="row">
    <div class="col-md-6 col-xs-6 col-lg-6">
    <br>
    <br>
      <center>  <img src="image/bharat19kg.png" class="img-responsive" width="250" height="350"></center>
    </div>
    
      <div class="col-md-6 col-xs-6 col-lg-6">
        <div class="row" class=" border border-success">
            <h1 class="border">Bharat for Domestic purpose 19 Kg LPG Gas Cylinder
              <span style='font-size:50px;'>&#8377;850</span></h1>
        </div>
      <table class="table table-striped">
        <tbody>
      <tr>
        <td>Application</td>
        <td>Heating, furnace, cooking, casting, extrusion</td>
      </tr>
      <tr>
        <td>Gross Weight	</td>
        <td>30.0Kg</td>
      </tr>
      <tr>
        <td> Net Weight </td>
        <td>14.2Kg</td>
      </tr>
      <tr>
        <td>Material</td>
        <td>MS</td>
      </tr>
      <tr>
        <td>Cylinder Capacity	</td>
        <td>14.2Kg</td>
      </tr>
      <tr>
        <td>Brand Brand	</td>
        <td>Bharat</td>
      </tr>
      
      
    </tbody>
  </table>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Book now
  </button>
                    
      </div>      
                  <!--
                     <div id="firstL" class="fs13 clink pdinb mt10 vcd pcp" onclick="recordOutboundLink2('pg-1','Product Detail Main','View Complete Detail','',0,0);">View Complete Details</div>
                    <div id="quant_sec-1" class="pdpslunit">
                    <div class="" id="pdp_ordr_qnt-1"><div class="fs14 mb8 txtC color">Fill the quantity to get latest price!</div><form name="pdp_glp" onsubmit="return false" id="pdp_glp-1" method="post"><div class="Pro-Cont pdQt"><p class="fs14 bo" id="pdp_qnty_text-1"> Quantity</p> <div class="bepr beclr Pro-isq-st19"><input type="text" class="pdp-input" id="pdp_order_qnty-1" name="pdp_order_qnty" maxlength="1000" autocomplete="off" value="" role="textbox"></div> <div class="bedblk bepr Pro-selct"> <select class="pdp-input " name="pdp_qnty_type" onchange="pdpOth(id,1)" id="pdp_qnty_type-1" style="color: rgb(158, 158, 158);"> <option value="" optionid="">Select a Unit</option><option value="piece" optionid="12598526">piece</option><option value="kg" optionid="12662893">kg</option><option value="Other" optionid="12598527">Other</option></select> <input type="text" id="pdp_qnty_txt-1" class="be-slbox beisq-tbx be-othr othrwd inpt_errorbx doff"> </div></div></form></div>
                    <div id="mn_cta" class="cta">                        <div class="pdp_enq pdwbt rds pdinb actbtn mr11 fs16 bo mb10 doff" id="cs_pg-1" data-ftype="PDP-MainProd-ContactSupp" data-stype="mn" data-intent="contactsupplier" data-dispid="13675493930" data-page="pg-1" data-tempid="09" data-instid="01" data-formtype="Enq" data-ctaname="Contact Seller" data-ctatype="Message" data-section="MainProd" data-position="pg-1" data-pg="1">Contact Seller<span class="fs11 on pfn lh11">Ask for best deal</span></div>
                        <div class="pdp_enq pdgbt rds pdinb actbtn fs16 bo" id="glp_pg-1" data-ftype="PDP-MainProd-LatestPrice" data-stype="mn" data-intent="price" data-dispid="13675493930" data-page="pg-1" data-tempid="09" data-instid="01" data-formtype="Enq" data-ctaname="Get Latest Price" data-ctatype="Product Enquiry" data-section="MainProd" data-position="pg-1" data-pg="1">Get Latest Price<span id="rqst_quote" class="fs11 on pfn lh11">Request a quote</span></div>
                                            <div class="cb"></div>
                  
                   </div>
                </div>
                
                
                 <div class="clr"></div>
                </div>
                </div>
    </div>
    
   </span>
     -->
  </div>
  </span>
   <span class="border border-success">
   <div class="row">
        <div class="col-md-6 col-xs-6">
        <br>
        <br>
         <center> <img src="image/bharat19kgblue.jpg" class="img-rounded" class="img-responsive"  width="200" height="400"></center>
        </div>
       <div class="col-md-6 col-xs-6">
        <div class="row" class=" border border-success">
            <h1 class="border">Bharat for Commercial purpose 19 Kg LPG Gas Cylinder
              <span style='font-size:50px;'>&#8377;1150</span></h1>
        </div>
      <table class="table table-striped">
        <tbody>
      <tr>
        <td>Application</td>
        <td>Heating, furnace, cooking, casting, extrusion</td>
      </tr>
      <tr>
        <td>Gross Weight	</td>
        <td>38.0Kg</td>
      </tr>
      <tr>
        <td>Net Weight</td>
        <td>19.0Kg</td>
      </tr>
      <tr>
        <td>Material</td>
        <td>MS</td>
      </tr>
      <tr>
        <td>Cylinder Capacity	</td>
        <td>19.0Kg</td>
      </tr>
      <tr>
        <td>Brand Brand	</td>
        <td>Bharat</td>
      </tr>
      
      
    </tbody>
  </table>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Book now
  </button>
         
        </div>
     </div>
   </span>
     
  <span class="border border-info">
    <div class="row">
      <div class="col-md-6 col-xs-6">
      <br>
      <center><img src="image/bharat5kg.jpg" class="img-responsive" backgroundcolour="yellow" width="300" height="350"></center>
      </div>
      <div class="col-md-6 col-xs-6">       
       <div class="row" class=" border border-success">
            <h1 class="border">Bharat for Domestic purpose 5 Kg LPG Gas Cylinder
              <span style='font-size:50px;'>&#8377;450</span></h1>
        </div>
      <table class="table table-striped">
        <tbody>
      <tr>
        <td>Application</td>
        <td>Heating, furnace, cooking, casting, extrusion</td>
      </tr>
      <tr>
        <td>Gross Weight	</td>
        <td>9.0Kg</td>
      </tr>
      <tr>
        <td>Net Weight</td>
        <td>5.0Kg</td>
      </tr>
      <tr>
        <td>Material</td>
        <td>MS</td>
      </tr>
      <tr>
        <td>Cylinder Capacity	</td>
        <td>5.0Kg</td>
      </tr>
      <tr>
        <td>Brand Brand	</td>
        <td>Bharat</td>
      </tr>
      
      
    </tbody>
  </table>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Book now
  </button>
         
        </div>
    </div>
   </span>
 </div>
 
   <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          
        	<form action="bookVali_bharat.jsp">
           <div class="form-group">
            <label for="recipient-name" class="col-form-label">User Name:</label>
            <input type="text" name="name" class="form-control" id="recipient-name" value=<%=firstname+"-"+lastname %> readonly="readonly">
          </div>
         <div class="form-group">
			<label>Coupon Number:</label>
		<input type="text" name="couname" readonly="readonly" class="form-control" value="<%=counum%>">
			 </div>
			 
			  <div class="form-group">
			<label>Mobile Number:</label>
		<input type="text" name="mobile" class="form-control" value="<%=mobile%>">
			 </div>
			 
          <div class="form-group">
				<label for="exampleFormControlSelect1">Cylinder Type:</label>
					<select name="cylweg" class="form-control" id="exampleFormControlSelect1">
						<option>--select weight--</option>
						<option>Weight: 14.2Kg</option>
				        <option>Weight: 19.0Kg</option>
				        <option>Weight: 5.0Kg</option>
				</select>
			</div>
          
          
          <div class="form-group">
            <label for="message-text" class="col-form-label">Enter Address</label>
            <textarea class="form-control" name="address" id="message-text"></textarea>
          </div>    
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          
          <input type="submit" class="btn btn-primary" value="Confirm booking">
        </div>
        </form>
        
      </div>
    </div>
  </div>
<%@include file="footer.jsp"%><h1 class="bo">HP for Commercial 19 Kg LPG Gas Cylinder, For Commercial, 19kg</h1>

</body>
</html>