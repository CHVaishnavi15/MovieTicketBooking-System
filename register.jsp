<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
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
        .form-container .error {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Sign Up</h2>
        <form method="POST">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Sign Up</button>
        </form>
        <div class="message">
            <% 
                // Capture form data
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                if (username != null && password != null) {
                    try {
                        // Load MySQL driver
                        Class.forName("com.mysql.cj.jdbc.Driver");

                        // Establish connection to the database
                        Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/moviedb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC",
                            "root", ""
                        );

                        // Check if username already exists
                        String checkQuery = "SELECT * FROM users WHERE username = ?";
                        PreparedStatement checkStmt = conn.prepareStatement(checkQuery);
                        checkStmt.setString(1, username);
                        ResultSet rs = checkStmt.executeQuery();

                        if (rs.next()) {
                            out.println("<p class='error'>Username already exists. Please choose another.</p>");
                        } else {
                            // Insert new user into the database
                            String insertQuery = "INSERT INTO users (username, password) VALUES (?, ?)";
                            PreparedStatement insertStmt = conn.prepareStatement(insertQuery);
                            insertStmt.setString(1, username);
                            insertStmt.setString(2, password);

                            int rowsAffected = insertStmt.executeUpdate();

                            if (rowsAffected > 0) {
                                // Redirect to movies.jsp
                                response.sendRedirect("movies.jsp");
                            } else {
                                out.println("<p class='error'>Error during sign-up. Please try again.</p>");
                            }

                            insertStmt.close();
                        }

                        // Close resources
                        rs.close();
                        checkStmt.close();
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<p class='error'>Error: " + e.getMessage() + "</p>");
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
