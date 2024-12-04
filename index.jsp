<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Vertical Sliding Images</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1 align="center">Welcome to Movie booking</h1>

    <div class="main-container">
        <div class="slideshow-container">
            <div class="slides">
                <img src="img/amaran.jpg" alt="Amaran Movie" class="movie-image">
                <div class="overlay-text">
                    <h1>Welcome to Movie Ticket Booking</h1>
                    <p>Already have an account? <a href="login.jsp">Login</a> or <a href="register.jsp">Sign Up</a></p>
                </div>
            </div>
            <div class="slides">
                <img src="img/lucky-bh.jpg" alt="Movie 2" class="movie-image">
                <div class="overlay-text">
                    <h1>Discover More Movies</h1>
                    <p>Already have an account? <a href="login.jsp">Login</a> or <a href="register.jsp">Sign Up</a></p>
                </div>
            </div>
            <div class="slides">
                <img src="img/matks.jpg" alt="Movie 3" class="movie-image">
                <div class="overlay-text">
                    <h1>Book Your Tickets Now</h1>
                    <p>Already have an account? <a href="login.jsp">Login</a> or <a href="register.jsp">Sign Up</a></p>
                </div>
            </div>
        </div>
        <div class="controls">
            <button id="prev">Previous</button>
            <button id="next">Next</button>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
