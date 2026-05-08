<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

<xsl:template match="/">

<html>

<head>

    <title>Student Dashboard</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            font-family:'Poppins', sans-serif;
            min-height:100vh;
            background:linear-gradient(135deg, #ff6a00, #ee0979, #6a11cb);
            background-size:300% 300%;
            animation:bgAnimation 10s ease infinite;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:30px;
        }

        @keyframes bgAnimation{
            0%{background-position:0% 50%;}
            50%{background-position:100% 50%;}
            100%{background-position:0% 50%;}
        }

        .container{
            width:100%;
            max-width:1100px;
            background:rgba(255,255,255,0.15);
            backdrop-filter:blur(15px);
            border-radius:30px;
            padding:40px;
            box-shadow:0 15px 40px rgba(0,0,0,0.3);
            border:1px solid rgba(255,255,255,0.2);
        }

        h2{
            text-align:center;
            color:white;
            font-size:42px;
            margin-bottom:30px;
            letter-spacing:1px;
        }

        table{
            width:100%;
            border-collapse:collapse;
            overflow:hidden;
            border-radius:20px;
            background:white;
            box-shadow:0 10px 25px rgba(0,0,0,0.2);
        }

        th{
            background:linear-gradient(135deg, #6a11cb, #2575fc);
            color:white;
            padding:18px;
            font-size:18px;
            text-transform:uppercase;
        }

        td{
            padding:18px;
            text-align:center;
            font-size:16px;
            color:#333;
            border-bottom:1px solid #eee;
        }

        tr:nth-child(even){
            background:#f8f9ff;
        }

        tr:hover{
            background:#e0f2fe;
            transition:0.3s;
        }

        .footer{
            margin-top:25px;
            text-align:center;
            color:white;
            font-size:15px;
            opacity:0.9;
        }

        @media(max-width:768px){

            .container{
                padding:25px;
            }

            h2{
                font-size:32px;
            }

            th, td{
                padding:12px;
                font-size:14px;
            }
        }

    </style>

</head>

<body>

    <div class="container">

        <h2>Student Details Dashboard</h2>

        <table>

            <tr>
                <th>Name</th>
                <th>Roll No</th>
                <th>Branch</th>
            </tr>

            <xsl:for-each select="students/student">

            <tr>

                <td>
                    <xsl:value-of select="name"/>
                </td>

                <td>
                    <xsl:value-of select="rollno"/>
                </td>

                <td>
                    <xsl:value-of select="branch"/>
                </td>

            </tr>

            </xsl:for-each>

        </table>

        <div class="footer">
            XML + XSL Student Management Interface
        </div>

    </div>

</body>

</html>

</xsl:template>

</xsl:stylesheet>