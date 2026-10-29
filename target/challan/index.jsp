<html>
    <head>
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
<h2>WELCOME TO CHALLAN INDIA</h2>
<form action="result.jsp" method="post">


    <input type="text" name="vehicle_no" placeholder="MH 00 XX 0000"><br><br>
    <br>
    <label>offence</label>
    <select id="offence" name="offence" required>
        <option>overs speed</option>
        <option>break signal</option>
        <option>no helment</option>
        <option>no no licennse</option>
        
    </select>
    <br><br>
    <input type="text" name="fine" placeholder="Rs."><br><br>
    <input type="date"  name="challan_date"><br><br>
    <input type="submit"  value=" save">submit</input>
</form>
</body>
</html>
