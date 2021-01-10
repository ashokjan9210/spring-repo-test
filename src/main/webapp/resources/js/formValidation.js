function getPurposeVisit()
{
		
	 $.ajax({
			type : "get",
		 	dataType : "json",
			contentType: "application/json; charset=utf-8",
			url : "pupose-of-visit",
			data : {},
			success : function(data) 
			{										
				var forpurposeofVisit="<option value=''>--Purpose Visit--</option>"; 

				var purposeofVisit="${formBean.purposeofVisit}";
				
				$.each(data, function(k) {
				    Object.keys(data[k]).forEach(function (key) 
				    {				    	
				
				        if (purposeofVisit != "" && purposeofVisit != undefined && purposeofVisit == data[k][key].purposeCode)  {
				        	forpurposeofVisit = forpurposeofVisit + '<option value=' + data[k][key].purposeCode + ' selected>' + data[k][key].purposeName + '</option>';
						}else {							
							forpurposeofVisit = forpurposeofVisit + '<option value=' + data[k][key].purposeCode + ' >' + data[k][key].purposeName + '</option>';
						}					        
				       
				    });	});
					$('#purposeofVisit').html(forpurposeofVisit);
			},
			error : function(e) {
				console.log("ERROR: ", e);	
				alert("visit error");
			},
			done : function(e) {
				console.log("DONE");
				
			}
		}); 
}





function getModeTransportation()
{	
	 $.ajax({
			type : "get",
		 	dataType : "json",
			contentType: "application/json; charset=utf-8",
			url : "mode/of/transport",
			data : {},
			success : function(data) 
			{										
				var formodeOfTransport="<option value=''>-- Transportation Mode --</option>"; 

				var modeOfTransport="${formBean.modeOfTransport}";
				
				$.each(data, function(k) {
				    Object.keys(data[k]).forEach(function (key) 
				    {				    	
				
				        if (modeOfTransport != "" && modeOfTransport != undefined && modeOfTransport == data[k][key].transcode)  {
				        	formodeOfTransport = formodeOfTransport + '<option value=' + data[k][key].transcode + ' selected>' + data[k][key].transname + '</option>';
						}else {							
							formodeOfTransport = formodeOfTransport + '<option value=' + data[k][key].transcode + ' >' + data[k][key].transname + '</option>';
						}					        
				       
				    });	});
					$('#modeOfTransport').html(formodeOfTransport);
			},
			error : function(e) {
				console.log("ERROR: ", e);	
				alert("mode error");
			},
			done : function(e) {
				console.log("DONE");
				
			}
		}); 
}





function getExitPoint()
{

	 $.ajax({
			type : "get",
		 	dataType : "json",
			contentType: "application/json; charset=utf-8",
			url : "exitPoint",
			data : {},
			success : function(data) 
			{										
				var forexitPoint="<option value=''>--Select Exit Point--</option>"; 

				var exitPoint="${formBean.exitPoint}";
				
				$.each(data, function(k) {
				    Object.keys(data[k]).forEach(function (key) 
				    {				
				        if (exitPoint != "" && exitPoint != undefined && exitPoint == data[k][key].exitPointCode)  {
				        	forexitPoint = forexitPoint + '<option value=' + data[k][key].exitPointCode + ' selected>' + data[k][key].exitPointname + '</option>';
						}else {							
							forexitPoint = forexitPoint + '<option value=' + data[k][key].exitPointCode + ' >' + data[k][key].exitPointname + '</option>';
						}					        
				       
				    });	});
					$('#exitPoint').html(forexitPoint);
			},
			error : function(e) {
				console.log("ERROR: ", e);	
				alert("exit error");
			},
			done : function(e) {
				console.log("DONE");
				
			}
		}); 
}




function getEntryPoint()
{

	 $.ajax({
			type : "get",
		 	dataType : "json",
			contentType: "application/json; charset=utf-8",
			url : "entryPoint",
			data : {},
			success : function(data) 
			{										
				var forentryPoint="<option value=''>--Select Entry Point--</option>"; 

				var entryPoint="${formBean.entryPoint}";
				
				$.each(data, function(k) {
				    Object.keys(data[k]).forEach(function (key) 
				    {				
				        if (entryPoint != "" && entryPoint != undefined && entryPoint == data[k][key].entryPointCode)  {
				        	forentryPoint = forentryPoint + '<option value=' + data[k][key].entryPointCode + ' selected>' + data[k][key].entryPointname + '</option>';
						}else {							
							forentryPoint = forentryPoint + '<option value=' + data[k][key].entryPointCode + ' >' + data[k][key].entryPointname + '</option>';
						}					        
				       
				    });	});
					$('#entryPoint').html(forentryPoint);
			},
			error : function(e) {
				console.log("ERROR: ", e);	
				alert("exit error");
			},
			done : function(e) {
				console.log("DONE");
				
			}
		}); 
}








$(function() {
	
	 $('#dob').datepicker({
		 format: 'dd/mm/yyyy',
		// modal: true,
		//calendarWeeks: true, 
		//changeMonth : true,
		//changeYear : true,
		//minDate: 10
		minDate:function() {
           var date = new Date();
           date.setDate(date.getDate()-1);
           date.setFullYear(date.getFullYear()-90)
           return new Date(date.getFullYear(), date.getMonth(), date.getDate());
       },
       maxDate: function() {
           var date = new Date();
           
           date.setDate(date.getDate()-1);     
           
           //date.setMonth(date.getMonth()1)
           
           return new Date(date.getFullYear(), date.getMonth(), date.getDate());
       }
		
        /* 
        footer: true,
        close: function (e) {
            alert('Close is fired.');
        } */
     
    });
	 
	 $('#forInwrdJrnyDate').datepicker({
		 format: 'dd/mm/yyyy',
		 minDate:function() {
	            var date = new Date();
	            date.setDate(date.getDate()-1);
	            return new Date(date.getFullYear(), date.getMonth(), date.getDate());
	        },
	        maxDate: function() {
	            var date = new Date();
	            
	            date.setDate(date.getDate()+1);
	            
	            date.setFullYear(date.getFullYear()+1)
	            
	            date.setMonth(date.getMonth()+1)
	            
	            return new Date(date.getFullYear(), date.getMonth(), date.getDate());
	        }
    });
	 
	 $('#forDnwrdJrnyDate').datepicker({
		 format: 'dd/mm/yyyy',
		 minDate:function() {
	            var date = new Date();
	            date.setDate(date.getDate()-1);
	            return new Date(date.getFullYear(), date.getMonth(), date.getDate());
	        },
	        maxDate: function() {
	            var date = new Date();
	            
	            date.setDate(date.getDate()+1);
	            
	            date.setFullYear(date.getFullYear()+1)
	            
	            date.setMonth(date.getMonth()+1)
	            
	            return new Date(date.getFullYear(), date.getMonth(), date.getDate());
	        }
    });

});