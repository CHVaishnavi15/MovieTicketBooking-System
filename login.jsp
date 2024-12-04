<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }

        .form-container {
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-container input,
        .form-container button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        .form-container input:focus {
            outline: none;
            border-color: #007bff;
        }

        .form-container button {
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        .form-container button:hover {
            background-color: #0056b3;
        }

        .form-container p {
            font-size: 14px;
            color: #555;
        }

        .form-container a {
            color: #007bff;
            text-decoration: none;
        }

        .form-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Login</h2>
        <form action="login.jsp" method="POST">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
        <p>Don't have an account? <a href="register.jsp">Sign up here</a></p>
        
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null && password != null) {
                try {
                    // Load MySQL driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish connection to the database
                    Connection conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/moviedb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC",
                        "root", "");

                    // Prepare the query to check if the username and password match any record in the database
                    String loginQuery = "SELECT * FROM users WHERE username=? AND password=?";
                    PreparedStatement stmt = conn.prepareStatement(loginQuery);
                    stmt.setString(1, username);
                    stmt.setString(2, password);
                    ResultSet rs = stmt.executeQuery();

                    // If a matching record is found
                    if (rs.next()) {
                        // Successful login, redirect to movies.jsp
                        response.sendRedirect("movies.jsp");
                    } else {
                        out.println("<p style='color:red;'>Invalid username or password. Please try again.</p>");
                    }

                    stmt.close();
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
                }
            }
        %>
    </div>
</body>
</html>


