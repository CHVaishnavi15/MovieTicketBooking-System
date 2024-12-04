<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies</title>
    <style>
        /* Body background and font */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #ffffff; /* White background */
            color: #000;
        }

        /* Page title */
        h1 {
            text-align: center;
            margin: 20px 0;
            color: #333;
        }

        /* Movies grid container */
        .movies-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* 3 movies per row */
            gap: 40px 20px; /* Increased vertical gap (40px) and horizontal gap (20px) */
            padding: 40px;
            justify-content: center; /* Center-align the grid */
        }

        /* Individual movie box */
        .movie-box {
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            background-color: #f9f9f9; /* Light gray background for boxes */
            color: #000;
            width: 80%; /* Reduced width of the boxes */
            margin: 0 auto; /* Center-align individual boxes */
        }

        /* Movie image */
        .movie-box img {
            width: 100%;
            height: 350px; /* Increased image height */
            object-fit: cover;
        }

        /* Genre label */
        .genre {
            font-size: 16px;
            font-weight: bold;
            color: #007bff;
            margin-top: 10px;
        }

        /* Movie name */
        .movie-name {
            font-size: 20px;
            font-weight: bold;
            margin: 10px 0;
        }

        /* Book Now button */
        .book-now {
            margin: 15px 0;
            padding: 10px 25px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Remove default link styling */
            transition: background-color 0.3s ease;
        }

        .book-now:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Movies</h1>
    <div class="movies-container">
        <!-- Row 1 -->
        <div class="movie-box">
            <img src="img/amaran.jpg" alt="Amaran">
            <div class="genre">Action</div>
            <div class="movie-name">Amaran</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>
        <div class="movie-box">
            <img src="img/lucky-bh.jpg" alt="Luckybhasker">
            <div class="genre">Drama</div>
            <div class="movie-name">Luckybhasker</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>
        <div class="movie-box">
            <img src="img/matks.jpg" alt="Matka">
            <div class="genre">Thriller</div>
            <div class="movie-name">Matka</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>

        <!-- Row 2 -->
        <div class="movie-box">
            <img src="img/kanguva.jpg" alt="Hero">
            <div class="genre">Romance</div>
            <div class="movie-name">Hero</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>
        <div class="movie-box">
            <img src="img/ka1.jpg" alt="Funny Times">
            <div class="genre">Comedy</div>
            <div class="movie-name">Ka</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>
        <div class="movie-box">
            <img src="img/singham.jpg" alt="Spooky Night">
            <div class="genre">Horror</div>
            <div class="movie-name">Singham</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>

        <!-- Row 3 -->
        <div class="movie-box">
            <img src="img/sukshma.jpg" alt="Dreamworld">
            <div class="genre">Fantasy</div>
            <div class="movie-name">Sukshma</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>
        <div class="movie-box">
            <img src="img/hello.jpg" alt="Explorer">
            <div class="genre">Action</div>
            <div class="movie-name">Hello Mummy</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>
        <div class="movie-box">
            <img src="img/kishkindha.jpg" alt="Future Wars">
            <div class="genre">Sci-Fi</div>
            <div class="movie-name">Kishkindhakana</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>

        <!-- Row 4 -->
        <div class="movie-box">
            <img src="img/zebra.jpg" alt="Great Leader">
            <div class="genre">Biography</div>
            <div class="movie-name">Zebra</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>
        <div class="movie-box">
            <img src="img/mechanic.jpg" alt="Hidden Truth">
            <div class="genre">Mystery</div>
            <div class="movie-name">Mechanic Rocky</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>
        <div class="movie-box">
            <img src="img/bagheera.jpg" alt="Battleground">
            <div class="genre">War</div>
            <div class="movie-name">Bagheera</div>
            <a href="book.jsp" class="book-now">Book Now</a>
        </div>
    </div>
</body>
</html>
