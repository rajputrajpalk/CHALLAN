<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>challans</title>
    <style>
        body {
            background-color: blanchedalmond;
            text-align: center;
            font-family: Arial, sans-serif;
        }
        h2 {
            color: brown;
            background-color: aliceblue;
            padding: 10px;
        }
        table {
            margin: auto;
            border-collapse: collapse;
            width: 60%;
            background-color: antiquewhite;
        }
        th, td {
            border: 1px solid brown;
            padding: 8px 12px;
            text-align: center;
        }
        th {
            background-color: #f2e3d5;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: brown;
            font-weight: bold;
        }
    </style>
</head>
<body>

<%
    
    String vehicle_no = request.getParameter("vehicle_no");
    String offence = request.getParameter("offence");
    String challan_date = request.getParameter("challan_date");
    String finepara= request.getParameter("fine");
    int fine=0;
    if(finepara != null && !finepara.trim().isEmpty()){
        fine= Integer.parseInt(finepara.trim());
    }

    Connection con = null;
    PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;

        
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challan", "root", "Rajpal@18");

            ps = con.prepareStatement("INSERT INTO challan(vehicle_no,offence,fine,challan_date) VALUES(?,?,?,?)");
            ps.setString(1, vehicle_no);
            ps.setString(2, offence);
            ps.setInt(3, fine);
            ps.setString(4, challan_date);
            ps.executeUpdate();
        
%>

    <h2>watch challans</h2>

    <table>
        <tr>
            <th>id</th>
            <th>vehicle_no</th>
            <th>offence</th>
            <th>fine</th>
            <th>date</th>
        </tr>
<%
        
        st = con.createStatement();
        rs = st.executeQuery("SELECT id, vehicle_no,offence,fine,challan_date FROM challan");
        while (rs.next()) {
%>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("vehicle_no") %></td>
            <td><%= rs.getString("offence") %></td>
            <td><%= rs.getInt("fine") %></td>
            <td><%= rs.getString("challan_date") %></td>
        </tr>
<%
        }
    
    rs.close();
    ps.close();
    con.close();
    st.close();
%>
    </table>

    <p align="center">
        <a href="index.jsp">Add challan</a>
    </p>

</body>
</html>