<%@page import="java.sql.*" %>

<%
//if(request.getParameter("state_id")!=null) 
//{
    int id=Integer.parseInt(request.getParameter("stateid")); //get state_id from index.jsp page with function state_change() through ajax and store in id variable.
    //System.out.println("City .jsp ....");    
    
    try
    {
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	Connection con=java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","cognizant");
    	    	
    	java.sql.Statement st = con.createStatement();
    	        
        String sql = "select * from cities where stateid="+id; 
        ResultSet rs=st.executeQuery(sql); 
        %>        
            <option selected="selected">--Select City--</option>
        <%    
        while(rs.next())
        {
        	
        %> 
            <option value="<%=rs.getInt("cityid")%>">
                <%=rs.getString("cityname")%>
            </option>
        <%
        }
  
  con.close(); //close connection 
    }
    catch(Exception e)
    {
        out.println(e);
    }
//}
%>
