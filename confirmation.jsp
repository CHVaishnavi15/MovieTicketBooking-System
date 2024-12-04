<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmed</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #c09aea, #2575fc);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .confirmation-container {
            background: #ffffff;
            color: #333;
            padding: 40px 30px;
            border-radius: 20px;
            box-shadow: 0px 15px 30px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 90%;
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .confirmation-container h2 {
            font-size: 2.5rem;
            color: #28a745;
            margin-bottom: 15px;
            font-weight: 700;
        }

        .confirmation-container p {
            font-size: 1.2rem;
            margin: 10px 0;
            color: #555;
        }

        .confirmation-container p.seat {
            font-size: 1.5rem;
            font-weight: bold;
            color: #007bff;
            background: rgba(0, 123, 255, 0.1);
            padding: 10px;
            border-radius: 10px;
            display: inline-block;
            margin: 15px 0;
        }

        .button {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            font-size: 1rem;
            color: #fff;
            background: linear-gradient(135deg, #2575fc, #6a11cb);
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .button:hover {
            transform: translateY(-3px);
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="confirmation-container">
        <h2>Booking Confirmed!</h2>
        <p>Thank you for booking with us.</p>
        <p class="seat">Your Seat: 
            <%= request.getParameter("seat") != null && !request.getParameter("seat").isEmpty() 
                ? request.getParameter("seat") 
                : "Not Assigned" %>
        </p>
        <a class="button" href="book.jsp">Book Another Seat</a>
    </div>
</body>
</html>
