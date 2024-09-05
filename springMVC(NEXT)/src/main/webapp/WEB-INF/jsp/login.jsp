<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://t3.ftcdn.net/jpg/04/87/69/28/360_F_487692869_V8MZ1hLvhXQZKT50EV8Sh13AkdibGJb3.jpg');
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(10px); /* Increase the blur effect */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            width: 40%; /* Decrease the width of the card */
            height: 60vh; /* Decrease the height of the card */
            overflow-y: auto; /* Add scrollbars when content overflows */
            background-image: url('https://i.pinimg.com/564x/8a/f5/0b/8af50b27c68799dd1f116bca271c2bce.jpg');
        }

        .login-box {
            display: none;
        }

        .active-login-box {
            display: block;
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 22px); /* Decrease the width of the input fields */
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .login-buttons {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="login-container">
    <div class="login-buttons">
        <button onclick="showLogin('admin')">Admin Login</button>
        <button onclick="showLogin('doctor')">Doctor Login</button>
        <button onclick="showLogin('patient')">Patient Login</button>
    </div>

    <div class="login-box" id="admin-login">
        <h2>Admin Login</h2>
        <div class="login-form">
            <form>
                <label for="username-admin">Username:</label>
                <input type="text" id="username-admin" name="username-admin" required><br>

                <label for="password-admin">Password:</label>
                <input type="password" id="password-admin" name="password-admin" required><br>

                <a href="/springMVC/admin"><button type="button">Login</button></a>
            </form>
        </div>
    </div>

    <div class="login-box" id="doctor-login">
        <h2>Doctor Login</h2>
        <div class="login-form">
            <form action="/springMVC/hello" method="post">
                <label for="username-doctor">Username:</label>
                <input type="text" id="username-doctor" name="email" required><br>

                <label for="password-doctor">Password:</label>
                <input type="password" id="password-doctor" name="pass" required><br>

                <button type="submit">Login</button>
            </form>
        </div>
    </div>

    <div class="login-box" id="patient-login">
        <h2>Patient Login</h2>
        <div class="login-form">
            <form action="/springMVC/login" >
                <label for="username-patient">Username:</label>
                <input type="text" id="username-patient" name="username-patient" ><br>

                <label for="password-patient">Password:</label>
                <input type="password" id="password-patient" name="password-patient" ><br>

               
                <div style="height: 20px;"></div>
                
            </form>
            <a href="/springMVC/patient"> <button type="submit">Login</button></a> <br/>
            <a href="/springMVC/patreg"><button >Sign-Up</button></a>
        </div>
    </div>
</div>

<script>
    function showLogin(loginType) {
        // Hide all login boxes
        document.getElementById('admin-login').style.display = 'none';
        document.getElementById('doctor-login').style.display = 'none';
        document.getElementById('patient-login').style.display = 'none';

        // Show the selected login box
        document.getElementById(loginType + '-login').style.display = 'block';
    }
</script>
</body>
</html>
