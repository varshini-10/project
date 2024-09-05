<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #0074e4;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        h1 {
            margin: 0;
        }

        .doctor-list {
            max-width: 1200px;
            margin: 20px auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .doctor-card {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 10px;
            width: 30%;
            text-align: center;
            padding: 20px;
        }

        .doctor-image {
            border-radius: 50%;
            max-width: 100px;
            height: auto;
        }

        .doctor-name {
            font-weight: bold;
            margin: 10px 0;
        }

        .doctor-specialization {
            color: #777;
        }

        .button-container {
            margin-top: 20px;
        }

        .button {
            background-color: #0074e4;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header>
        <h1>CARDIOLOGY DEPARTMENT</h1>
    </header>

    <div class="doctor-list">
        <!-- First Row of Doctors -->
        <div class="doctor-card">
            <img class="doctor-image" src="data:image/jpeg;base64,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" alt="Doctor 1">
            <h2 class="doctor-name">Dr.Raja Govindan </h2>
            <p class="doctor-specialization">Cardiologist</p>
            <div class="button-container">
               <a href="/springMVC/raghuappt"><button class="button">Book Appointment</button></a>
            </div>
        </div>
        <div class="doctor-card">
            <img class="doctor-image" src="https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?size=626&ext=jpg&ga=GA1.1.1880011253.1698969600&semt=sph" alt="Doctor 2">
            <h2 class="doctor-name">Dr.Reethika</h2>
            <p class="doctor-specialization">Cardiologist</p>
            <div class="button-container">
                <button class="button">Book Appointment</button>
            </div>
        </div>
        <div class="doctor-card">
            <img class="doctor-image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS98H2-XdWsVlexajnyPAvKNOF_2lxx5E4TKKD9oorpULJDoDOyZdP8WNic-c2weHkX-6U&usqp=CAU" alt="Doctor 3">
            <h2 class="doctor-name">Dr.Varshini</h2>
            <p class="doctor-specialization">Cardiologist</p>
            <div class="button-container">
                <button class="button">Book Appointment</button>
            </div>
        </div>

        <!-- Second Row of Doctors -->
        <div class="doctor-card">
            <img class="doctor-image" src="doctor4.jpg" alt="Doctor 4">
            <h2 class="doctor-name">Dr. Emily White</h2>
            <p class="doctor-specialization">Cardiologist</p>
            <div class="button-container">
                <button class="button">Book Appointment</button>
            </div>
        </div>
        <div class="doctor-card">
            <img class="doctor-image" src="doctor5.jpg" alt="Doctor 5">
            <h2 class="doctor-name">Dr. Michael Green</h2>
            <p class "doctor-specialization">Cardiologist</p>
            <div class="button-container">
                <button class="button">Book Appointment</button>
            </div>
        </div>
        <div class="doctor-card">
            <img class="doctor-image" src="doctor6.jpg" alt="Doctor 6">
            <h2 class="doctor-name">Dr. Sarah Johnson</h2>
            <p class="doctor-specialization">Cardiologist</p>
            <div class="button-container">
                <button class="button">Book Appointment</button>
            </div>
        </div>
    </div>
</body>
</html>
