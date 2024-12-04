<!DOCTYPE html>
<html>
<head>
    <title>Book Your Seat</title>
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

        .booking-form {
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .booking-form h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .booking-form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .booking-form input,
        .booking-form select,
        .booking-form button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        .booking-form input:focus,
        .booking-form select:focus {
            outline: none;
            border-color: #007bff;
        }

        .booking-form button {
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        .booking-form button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form class="booking-form" action="storeBooking.jsp" method="post">
        <h2>Book Your Seat</h2>
        
        <label for="name">Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>

        <label for="mobile">Mobile Number</label>
<input type="tel" id="mobile" name="mobile" placeholder="Enter your mobile number" required 
       pattern="^[0-9]{10}$" maxlength="10" title="Please enter a 10-digit mobile number">


        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="theatre">Select Theatre</label>
        <select id="theatre" name="theatre" required>
            <option value="Grand Cinema">Grand Cinema</option>
            <option value="CityLight Theatre">CityLight Theatre</option>
            <option value="Multiplex Deluxe">Multiplex Deluxe</option>
            <option value="Other">Other</option>
        </select>

        <label for="seat">Seat You Want to Book</label>
        <input type="text" id="seat" name="seat" placeholder="Enter seat number" required>

        <label for="payment_option">Payment Option</label>
        <select id="payment_option" name="payment_option" required>
            <option value="ATM Card">ATM Card</option>
            <option value="Credit Card">Credit Card</option>
            <option value="Debit Card">Debit Card</option>
            <option value="Other">Other</option>
        </select>

        <button type="submit">Book</button>
    </form>
</body>
</html>
