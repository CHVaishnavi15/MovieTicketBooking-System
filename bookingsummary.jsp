<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Summary</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: left;
        }
        .header {
            text-align: center;
            color: #007bff;
            font-size: 18px;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .details {
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
        }
        .details strong {
            color: #444;
        }
        .summary {
            margin-top: 20px;
            padding-top: 10px;
            border-top: 1px solid #ddd;
        }
        .summary .item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        .summary .total {
            font-weight: bold;
            color: #444;
        }
        button {
            display: block;
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            width: 100%;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">Booking Summary</div>

        <div class="details"><strong>Name:</strong> <span><%= request.getParameter("name") %></span></div>
        <div class="details"><strong>Mobile:</strong> <span><%= request.getParameter("mobile") %></span></div>
        <div class="details"><strong>Email:</strong> <span><%= request.getParameter("email") %></span></div>
        <div class="details"><strong>Theatre:</strong> <span><%= request.getParameter("theatre") %></span></div>
        <div class="details"><strong>Seat:</strong> <span><%= request.getParameter("seat") %></span></div>
        <div class="details"><strong>Payment Option:</strong> <span><%= request.getParameter("payment_option") %></span></div>

        <div class="summary">
            <div class="item">
                <span>Base Price</span>
                <span>Rs. 150</span>
            </div>
            <div class="item">
                <span>Convenience Fee</span>
                <span>Rs. 66.08</span>
            </div>
            <div class="item total">
                <span>Total Payable</span>
                <span>Rs. 216.08</span>
            </div>
        </div>

        <!-- Next button to navigate to confirmation.jsp -->
        <form action="confirmation.jsp" method="post">
            <input type="hidden" name="name" value="<%= request.getParameter("name") %>">
            <input type="hidden" name="mobile" value="<%= request.getParameter("mobile") %>">
            <input type="hidden" name="email" value="<%= request.getParameter("email") %>">
            <input type="hidden" name="theatre" value="<%= request.getParameter("theatre") %>">
            <input type="hidden" name="seat" value="<%= request.getParameter("seat") %>">
            <input type="hidden" name="payment_option" value="<%= request.getParameter("payment_option") %>">
            <input type="hidden" name="total_amount" value="216.08">
            <button type="submit">Next</button>
        </form>
    </div>
</body>
</html>
