<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Deposit</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
    
    .topnav{
          overflow: hidden;
          background-color: black;
      }
      .topnav a{
          float: left;
          color: blue;
          text-align: center;
          padding: 15px 15px;
          text-decoration: none;
          font-size:17px;
          
      }
      .topnav a:hover{
          background-color: beige;
          color: blueviolet;
      }
      .topnav a.active{
          background-color: pink;
          color: black;
      }
    
    body { background-size: cover;
     background-repeat: no-repeat;
	<!--background-image: url(images/maxresdefault.jpg);-->
	}
    .jumbotron{
          background-size: cover;
     background-repeat: no-repeat;
	
          padding-top: 30px;
          padding-bottom: 30px;
          margin-bottom: :30px;
          background-color: transparent;
          color: azure;
      }
    .button {
    background-color: antiquewhite;
    border: none;
    color: black;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 20px 10px;
    cursor: pointer;
}button:hover {
    opacity: 0.8;
} 
.button5 {font-size: 10px;}
.button4 {font-size: 20px;}
    
    div.ab {
    font color: white;
    }
namee{
position:fixed;
   right:10px;
   top:5px;
}    
    </style>
    </head>
<body>
     <img src="images/spinning-globe-gif-46.gif" alt="earth.gif" width="100px" >
    
    <div class="topnav"> 
    <div class="nameE">
    <div class="nav navbar-nav navbar-right";>
    <a href="getStarted.jsp"><b>SignOut</b></a>
    <div class="col-sm-4">
    <%     
  	String name=(String)session.getAttribute("fnm");
  			if(name.length()>1){
  %>
  <font color="yellow";size="6";><%="Welcome <b>"+name+"</b>" %></font>
  <%} %> 
  
    </div></div></div>
        <a href="signup.jsp"><b>Register</b></a>
        
        <a href="mortgage.jsp"><b>Mortgage Plans</b></a>
        <a href="SELL.jsp"><b>Sell Plans</b></a>
    
        <a class="active" href="LoanCalc.jsp"><b>Loan Calculator</b></a>
    </div>    

<div class="container">
     <div style="text-color:black;background-color:pink">
        <div class="jumbotron text-center"> 
            <font color="black"><h1> DEPOSIT TYPE MORTGAGE</h1><br><br><h2>Give Details</h2><br><br></font></div>
                <form action="deposit" method="post">
                    <div class="form-group">
                        <label for="name" ><h1>Type Of Deposit</h1></label> <br>
       
<select name="depositType">
          <option value="default">Select</option>
          <option value="MutualFund">Mutual Fund</option>
          <option value="bondpaper">BOND PAPERS</option>
          <option value="FD">Fix Deposit</option>
  
</select> 
<font color="red">  <%String num1=(String)request.getAttribute("error1");
       if(num1!=null)
       {%>
    	  <%=num1 %>
      <%  }%>  </font>
<br><br>
          
                        <label for="name">SQUARE Ft.AREA</label>
        
                        <input type="number" class="form-control" placeholder="in Acre" value="0" name="area">
                        <font color="red">  <%String num2=(String)request.getAttribute("error2");
       if(num2!=null)
       {%>
    	  <%=num2 %>
      <%  }%>  </font>
                        <br>
        
                        <label for="year">Start Date</label>
        
                        <input type="text" class="form-control"  placeholder="year" maxlength="4" name="date">
                        <font color="red"> 
                         <%String num3=(String)request.getAttribute("error3");
       if(num3!=null)
       {%>
    	  <%=num3 %>
      <%  }%>  </font>
                        <br>
         
                        <label for="name">Price at Which u have started</label><br>
       
                        <input type="number" class="form-control" placeholder="In Rupees" name="Rupees">
                        <font color="red">  <%String num4=(String)request.getAttribute("error4");
       if(num4!=null)
       {%>
    	  <%=num4 %>
      <%  }%>  </font>
                        <br>
          
                        <label for="name">Present Value</label><br>
       
                        <input type="number" class="form-control" placeholder="In Rupees" name="PresentRupees">
                        <font color="red">  <%String num5=(String)request.getAttribute("error5");
       if(num5!=null)
       {%>
    	  <%=num5 %>
      <%  }%>  </font>
                        <br>
     
                    </div>
    
 
                    <button class="button button4" type="submit" value="register">Calculate</button>
         
         </form>
    </div>  
    
 </div>
  <div class="panel panel-danger">
      <div class="panel-heading">
      <div style="text-align:center;text-decoration:underline">
      <b>Result</b></div></div>
      <div class="panel-body"> 
		<div style="background-color:pink">
     <font color="blue"><b> 
     <%String DT=(String)request.getAttribute("depositType");
       if(DT==""||DT==null)
       {
         out.println("DEPOSIT TYPE:_____");
       }else {
  		out.println("FOR DEPOSIT TYPE:"+DT);  
       }%><br></b>
       <font color="green"><b> 
       <%String numm=(String)request.getAttribute("ApplicableLoan");
       if(numm==""||numm==null)
       {
         out.println("Range of Loan You can Appy For should less than or equal to 0");
       }else {
  		out.println("Range of Loan You can Appy For should less than or equal to"+numm);  
       }%>
       
       <br></b>
       <font color="orange"><b> 
    <%	
       String SimpleInterest=(String)request.getAttribute("SI");
       if(SimpleInterest==""||SimpleInterest==null)
       {
         out.println("Every Month You Have To Pay 0");
       }else {
  		out.println("Every Month You Have To Pay "+SimpleInterest);
       } %> <br></b>
       <font color="red"><b> 
     <%  String TotalSimpleInterest=(String)request.getAttribute("TSI");
       if(TotalSimpleInterest==""||TotalSimpleInterest==null)
       {
         out.println("Total Repayment 0");
       }else {
  		out.println("Total Repayment "+TotalSimpleInterest);
       }
       %> </b></font>
    </div></div>
   
    </div>
    
</body>
</html>
