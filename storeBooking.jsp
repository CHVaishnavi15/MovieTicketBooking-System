<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*" %>

<%
    // Database connection parameters
    String dbURL = "jdbc:mysql://localhost:3306/moviedb";
    String dbUser = "root";
    String dbPassword = "";

    // Retrieve form data from the request
    String name = request.getParameter("name");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    String theatre = request.getParameter("theatre");
    String seat = request.getParameter("seat");
    String payment_option = request.getParameter("payment_option");

    // Create database connection
    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        // SQL to insert booking details into the table
        String sql = "INSERT INTO booking_details (name, mobile, email, theatre, seat, payment_option) VALUES (?, ?, ?, ?, ?, ?)";
        preparedStatement = connection.prepareStatement(sql);

        // Set parameters
        preparedStatement.setString(1, name);
        preparedStatement.setString(2, mobile);
        preparedStatement.setString(3, email);
        preparedStatement.setString(4, theatre);
        preparedStatement.setString(5, seat);
        preparedStatement.setString(6, payment_option);

        // Execute update
        int rowsInserted = preparedStatement.executeUpdate();

        if (rowsInserted > 0) {
            // Store details in request scope for forwarding to bookingsummary.jsp
            request.setAttribute("name", name);
            request.setAttribute("mobile", mobile);
            request.setAttribute("email", email);
            request.setAttribute("theatre", theatre);
            request.setAttribute("seat", seat);
            request.setAttribute("payment_option", payment_option);

            // Forward to bookingsummary.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("bookingsummary.jsp");
            dispatcher.forward(request, response);
        } else {
            out.println("Error: Booking not saved.");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        if (preparedStatement != null) preparedStatement.close();
        if (connection != null) connection.close();
    }
%>
