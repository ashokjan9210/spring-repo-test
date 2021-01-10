
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>

<script src="${pageContext.request.contextPath}/resources/js/formValidation.js"></script>
 

 <meta charset="ISO-8859-1">
<title>FORM</title>
 
</head>
<body>


  <div class="form">
    <div class="container">
      <h2>FORM</h2>
     <form:form action="${pageContext.request.contextPath}/public/fmr-frm" id="formBean" modelAttribute="formBean" method="post"  autocomplete="off"  enctype="multipart/form-data" >
  
    <div>
      	<c:if test="${not empty successMessage}">              
        <div class="alert alert-success alert-dismissable" id="successMessage">
			<i class="fa fa-check"></i>
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			<b> <c:out value="${successMessage}"></c:out></b>		
		</div>
	</c:if>
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-danger alert-dismissable">
			<i class="fa fa-ban"></i>
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			<c:out value="${errorMessage }"></c:out>
		</div>
	</c:if> 
      </div>
      
      <div>
      	<c:if test="${not empty fileno}"> 
      <div class="row ">
        <div class="col-md-6 divrow">
     		 <div class="form-group">
          		<div class="alert alert-info"><span>Registration Number=:</span><span style="color:RED;font-weight: bold;"><c:out value="${fileno}"/></span></div>
        	</div>
        </div>
      </div>
      </c:if>
      </div>
 
  
   <div class="row">
          <div class="col-md-4">
            <div class="form-group">
              <label>First Name </label>
              <form:input path="firstname" type="text"  id="firstname" class="form-control" placeholder="Enter your name" maxlength='50'  style="text-transform:uppercase;"/>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label>Sur Name</label>
              <form:input path="lastname" id="lastname" class="form-control" placeholder="Enter sur name" maxlength='50' style="text-transform:uppercase;"/> 
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label>Father's Name / Husband Name</label>
             <form:input path="fatherName" type="text"  class="form-control" placeholder="Enter your Father's name/Husband's Name" id="fatherName" maxlength='100' style="text-transform:uppercase;" /> 
            </div>
          </div>
        </div>
  
      <div class="row">
       
          <div class="col-md-6">
            <div class="form-group">
              <label>Gender</label>
              <div class="radio">
                <label class="radio-inline">
               <form:radiobutton path="gender"   class="gender" value="MALE" />
                Male </label>
                <label class="radio-inline">
                 <form:radiobutton path="gender"   class="gender" value="FEMALE" />
                Female </label>
                <label class="radio-inline">
                 <form:radiobutton path="gender"   class="gender" value="TRANSGENDER" />
                Transgender </label>
              </div>
            </div>
          </div>
          
          <div class="col-md-4">
            <div class="form-group">
              <label>Nationality</label>
            <%--  <form:select path="applicantNationality" id="applicantNationality" class="form-control" >
						<option value="">-- Select--</option>
			</form:select> --%>
 <form:input path="applicantNationality" type="text"  class="form-control" placeholder="Enter your Nationality" id="applicantNationality" maxlength='100' style="text-transform:uppercase;" /> 
			
			
           	 </div>
            </div> 
        </div>
        
          <div class="row">
          <div class="col-md-4">
            <div class="form-group">
              <label>Date of Birth</label>
             <form:input path="dob" type='text' class="form-control iconback" id="dob"  />
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label>Place of Birth (City)</label>
              <form:input path="birthCity" type="text" class="form-control" placeholder="Enter City"  id="birthCity" style="text-transform:uppercase;" maxlength='50' />
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label>Place of Birth (Country)</label>
                <%--  <form:select path="birthCountry" id="birthCountry" class="form-control" autocomplete="off">
						<option value="">-- Select--</option>			
					</form:select> --%>
<form:input path="birthCountry" type="text" class="form-control" placeholder="Enter country"  id="birthCountry" style="text-transform:uppercase;" maxlength='50' />

            </div>
          </div>
        </div>
        
     	 
        
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label style="font-size: 14px;font-weight: bold;">Permanent Address Details:-</label>
            </div>
          </div>
        </div>
        
        <div class="row">
        <div class="col-md-12">
            <div class="form-group">
              <label>Address type :-</label>
              <div class="radio">
                <label class="radio-inline">
               <form:radiobutton path="addTyp" class="addTyp" value="INDIAN" onclick="pagelayout($(this).val())" />
                Indian </label>
                <label class="radio-inline">
                 <form:radiobutton path="addTyp" class="addTyp" value="MYANMAR" onclick="pagelayout($(this).val())" />
                Myanmar </label>
              </div>
            </div> 
          </div>
         </div>
         
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label>Address Line-1</label>
              <form:input path="addressLine1"  type="text" class="form-control" name="addressLine1" id="addressLine1" placeholder="Enter Address"  maxlength='80' style="text-transform:uppercase;"/>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label>Address Line-2</label>
               <form:input path="addressLine2" type="text" class="form-control" name="addressLine2" id="addressLine2" placeholder="Enter Address" maxlength='80' style="text-transform:uppercase;"/>
            </div>
          </div>
        </div>
        
        <div class="row dualslct" style="display:none;">
          <div class="col-md-3">
            <div class="form-group">
              <label>Country</label>
                 <%-- <form:select path="addressCountry" id="addressCountry" class="form-control" autocomplete="off">
						<option value="">-- Select--</option>
					</form:select> --%>
<form:input path="addressCountry" type="text" class="form-control" id="addressCountry" placeholder="Enter Country" maxlength='80' style="text-transform:uppercase;"/>

            </div>
          </div>
          <div class="col-md-3 indslct" style="display:none;">
            <div class="form-group">
              <label>State</label>
             <%--   <form:select path="addressState" id="addressState" class="form-control" onchange="getDistrict('IND',$(this).val(),'addressState')" autocomplete="off">
						<option value="">-- Select--</option>
				</form:select> --%>
<form:input path="addressState" type="text" class="form-control" id="addressState" placeholder="Enter Stste" maxlength='80' style="text-transform:uppercase;"/>

            </div>
          </div>
          
          <div class="col-md-3 mynslct" style="display:none;">
            <div class="form-group">
              <label>State</label>
               <form:input path="addressState" type="text" class="form-control"  id="addressState" placeholder="Enter State" maxlength='50' style="text-transform:uppercase;"/>
            </div>
          </div>
          
          
          <div class="col-md-3 indslct" style="display:none;">
            <div class="form-group">
              <label>District</label>
           <%--    <form:select path="addressDistrict" id="addressDistrict" class="form-control" autocomplete="off" >
						 <option disabled selected>-Select District-</option>		
			</form:select> --%>
<form:input path="addressDistrict" type="text" class="form-control" id="addressDistrict" placeholder="Enter Stste" maxlength='80' style="text-transform:uppercase;"/>

            </div>
          </div>
          
          
          <div class="col-md-3 mynslct" style="display:none;">
            <div class="form-group">
              <label>District</label>
               <form:input path="addressDistrict" type="text" class="form-control" name="addressDistrict" id="maddressDistrict" placeholder="Enter District" maxlength='50' style="text-transform:uppercase;"/>
            </div>
          </div>
          
          
          <div class="col-md-3">
            <div class="form-group">
              <label>Pin Code</label>
              <form:input path="addressPin" type="text" class="form-control" placeholder="Enter Pin Code" name="addressPin" id="addressPin" maxlength='10' onkeypress="return event.charCode >= 48 && event.charCode <= 57"/>
            </div>
          </div>
        </div>
       
       
       
       
       <div class="row">
       <div class="col-md-12">
            <div class="form-group">
              <label style="font-size: 14px;font-weight: bold;">Personal Details :-</label>
            </div>
          </div>
          
          <div class="col-md-4">
            <div class="form-group">
              <label>Tribes </label>
			         <%--  <form:select path="tribes" id="tribes" class="form-control" autocomplete="off">
							<option value="">-- Select--</option>		
					  </form:select>  --%> 
					  
 <form:input path="tribes" type="text" class="form-control" placeholder="Enter Pin Code" id="tribes" maxlength='10' onkeypress="return event.charCode >= 48 && event.charCode <= 57"/>

					           
            </div>
          </div>
          
          <div class="col-md-4">
            <div class="form-group">
              <label>Occupation</label>              
             <%--  <form:select path="occupation" id="occupation" class="form-control" autocomplete="off">
						<option value="">-- Select Occupation --</option>
				</form:select> --%>
 <form:input path="occupation" type="text" class="form-control" placeholder="Enter Occupation" id="occupation" maxlength='20' onkeypress="return event.charCode >= 48 && event.charCode <= 57"/>
s            
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label>Mark of identification</label>
              <form:input path="markIdentity" type="text" class="form-control" placeholder="Mark of identification" id="markIdentity" maxlength='50' style="text-transform:uppercase;"/>
            </div>
          </div>
        </div>
       
  
   <div class="row">
          <div class="col-md-4">
            <div class="form-group">
              <label>Email ID </label>
              <form:input path="email"  type="text" class="form-control" placeholder="Enter email id" name="email" id="email" maxlength='50' style="text-transform:uppercase;"/>
            </div>
          </div>
          <%-- <div class="col-md-2">
            <div class="form-group">
              <label>ISD Code</label>
                 <form:select path="isd" id="isd" class="form-control" autocomplete="off">
						<option value="">-- Select--</option>
						<option value="+91"  <c:if test="${formBean.isd == '+'91}">selected="selected"</c:if>>INDIA</option>						
						<option value="+95"  <c:if test="${formBean.isd == '+'95}">selected="selected"</c:if>>MYANMAR</option>
				</form:select>
            </div>
          </div> --%>
          <div class="col-md-3">
            <div class="form-group">
              <label>Mobile Number</label>
              <form:input path="mobile"  type="text" class="form-control" placeholder="Enter mobile number" name="mobile" id="mobile" maxlength='10' onkeypress="return event.charCode >= 48 && event.charCode <= 57" />
            </div>
          </div>
          <div class="col-md-3">
            <div class="form-group">
              <label>Aadhar Number</label>
             <form:input path="aadhar" type="text" class="form-control" placeholder="Enter your Aadhar Number" name="aadhar" id="aadhar" maxlength='16' onkeypress="return event.charCode >= 48 && event.charCode <= 57"/>
            </div>
          </div>
        </div>
  
  
  
         
       
   <%-- 
           <input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> --%>
        <div align="center">
          <button type="button" class="mainbtn btn"   onclick="return onsubmitdata();" >Save & Continue<i class="fas fa-arrow-right"></i></button>
        </div> 
      </form:form>
    </div>
  </div>
    <div class="clearfix"></div>
    
    
    
  <form:form action="${pageContext.request.contextPath}/public/generatepdf" id="pdfgen"  method="get"  autocomplete="off" >
         <input type="hidden" name=filenummmm id="filenummmm" />
  </form:form>
    
    
    
    
  
<script type="text/javascript">




function onsubmitdata() 
{
	alert("hello");
	
	$('#formBean').submit();

}

 function generatePdf1()
{	
	$('#pdfgen').submit();	
}
 




/* 
function setfamilyvalue()
{
	
	var i=1;
	<c:forEach items="${familyMemberInfo}" var="result">
	var nameid='nameoffmly'+i;
	var passid='passnofamily'+i;
	$('#'+nameid+"").val('${result.nameoffmly}');
	$('#'+passid+"").val('${result.passnofamily}');
	i++;
	</c:forEach>
	
}
 */


 function visitlayout(value)
 {	
 	if (value =='INDIA')
 		{
 		$('.indstyl2').show();
 		$('.mnyrstyl2').hide();
 		}
 	else //if(value =='MYANMAR')
 		{
 		$('.mnyrstyl2').show();
 		$('.indstyl2').hide();
 		}
 	
 	}







function pagelayout(value)
{
	
	$('.dualslct').show();
	if (value =='INDIAN')
		{
		$('.indslct').show();
		$('.mynslct').hide();
		}
	else if(value =='MYANMAR')
		{
		$('.mynslct').show();
		$('.indslct').hide();
		}
	
}


function emrlayout(value)
{	$('.unistyl').show();
	if (value =='INDIAN')
		{
		$('.indstyl').show();
		$('.myrrstyl').hide();
		}
	else if(value =='MYANMAR')
		{
		$('.myrrstyl').show();
		$('.indstyl').hide();
		}	
}

function loclayout(value)
{	  
	$('.unistyl1').show();
	if (value =='INDIAN')
		{
		$('.indstyl1').show();
		$('.myrrstyl1').hide();
		}
	else if(value =='MYANMAR')
		{
		$('.myrrstyl1').show();
		$('.indstyl1').hide();
		}	
}

function crimelayout(value)
{
	if (value =='Y')
		{
		$('.crimess').show();		
		}
	else if(value =='N')
		{		
		$('.crimess').hide();
		}
}








</script>


</body>
</html>