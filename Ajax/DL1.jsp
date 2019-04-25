<html>
    <head>
        <SCRIPT SRC="jquery.js" TYPE="text/javascript"></SCRIPT>
        <script type="text/javascript">
        
        function state_change()
        {
        	//alert('Hello');
            var state = $("#pstate").val();
         	
            $.ajax({
                type: "POST",
                url: "city.jsp",
                data: "stateid="+state,
                cache: false,
                success: function(response)
                {
                    $("#pcity").html(response);
                }
            });
        }
        </script>
    </head>
    <body>
        <p>
            <label for="pstate">State</label>
            <select name="pstate" id="pstate" size="0" onchange="state_change()">
                <option value="101">Maharashtra</option>
                <option value="102">Karnataka</option>
                <option value="103">Gujrat</option>
            </select>
        </p>
        <p>
            <label for="pcity">Cities</label>
            <select name="pcity" id="pcity">
            	<option selected="selected">--Select City--</option>
            </select>
        </p>    
            
    </body>
    <script type="text/javascript">
    $(document).ready(function(){
    	
    	/* $('#pstate').change(function(){
    		
    		//alert('Hello');
    		$('#pcity').add('Belgaum');
    		
    		
    	});
    	*/
    	
    	
    });
    
    </script>
    
</html>