<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj1DgVYFMXOXX97CaJnXbVSUmdGXv06LAkTpie77UbNI50rMXwwjFKWyKTqB0-kRb1B7g&usqp=CAU') center/cover no-repeat;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        .form-container input[type="text"],
        .form-container input[type="email"],
        .form-container input[type="message"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-container button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-container button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
    <h1>Send Mail</h1>
        <form action="https://formsubmit.co/varshinidoredla@gmail.com" method="POST">
            <input type="text" name="name" required placeholder="Name">
            <input type="email" name="email" required placeholder="Email">
            <input type="text" name="message" required placeholder="Message">
            <button type="submit">Send</button>
        </form>
    </div>
</body>
</html>
