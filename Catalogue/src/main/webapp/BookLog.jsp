<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalogue</title>
    <style >
    table {
    width: 100%;
    border-collapse: collapse;
	}

td {
    border: 1px solid black;
    padding: 8px;
    text-align: left;
}
#img{
width:60px;
}
    </style>
</head>
<body>
    <h2>Catalogue:</h2>
    <form action="" method="get">
    <table>
        	<tr>
        		<td>Serial No</td>
                <td>Book Name</td>
                <td>Image</td>
                <td>Author</td>
                <td>Specification</td>
                <td>Price(Rs.)</td>
            </tr>
            <%
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/catalogue","root","root");
            Statement stat=con.createStatement();
            ResultSet re=stat.executeQuery("select*from books");
            while(re.next()==true){
            	%>
                <tr>
                    <td><a href=Second.jsp?id=<%=re.getString(1) %>><%=re.getString(1) %></a></td>
                    <td><%=re.getString(2) %></td>
                    <td><img id="img" src="<%=re.getString(3) %>"></td>
                    <td><%=re.getString(4) %></td>
                    <td><%=re.getString(5) %></td>
                    <td><%=re.getString(6) %></td>
                </tr>
                <%  }%>	
            
            
    </table>
    </form>
    
</body>
</html>
    