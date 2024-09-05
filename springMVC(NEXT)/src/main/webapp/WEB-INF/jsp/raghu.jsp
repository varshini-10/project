<!DOCTYPE html>
<html>
<head>
    <title>Doctor's Page</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
    	/* Global Styles */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

.background-image {
    background-image: url('background.jpg'); /* Add your background image URL here */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    height: 100vh;
    color: #fff;
    text-align: center;
}

/* Doctor's Profile Section */
.doctor-profile {
    background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
    padding: 20px;
}

/* Cards Section */
.card-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    margin-top: 30px;
}

.card {
    background-color: #fff;
    width: 300px;
    margin: 10px;
    border-radius: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    padding: 10px;
    text-align: left;
}

.card h2 {
    margin: 0;
    padding: 0;
    font-size: 18px;
    color: black;
}

.card p {
    margin: 5px 0;
    font-size: 14px;
    color: black;
}

.card-button {
    display: block;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px;
    cursor: pointer;
    margin-top: 10px;
}

.card-button:hover {
    background-color: #0056b3;
}
    	
    </style>
</head>
<body>
    <div class="background-image">
        <!-- Doctor's Profile Section -->
        <div class="doctor-profile">
            <h1>Dr. Raghu</h1>
            <p>Qualification: MD, MBBS</p>
        </div>

        <!-- Cards Section -->
        <div class="card-container">
            <!-- Card 1 -->
            <div class="card">
                <h2>VIEW MY APPOINTMENTS</h2>
                <a href="/springMVC/raghuappnts"><button class="card-button">View</button></a>
            </div>

            <!-- Card 2 -->
            <div class="card">
                <h2>ADD PATIENT RECORD</h2>
          
                <button class="card-button">view</button>
            </div>

            <!-- Card 3 -->
            <div class="card">
                <h2>MY SCHEDULES</h2>

                <button class="card-button">View</button>
            </div>

            <!-- Card 4 -->
            <div class="card">
                <h2>Card 4</h2>
                <p>Department: Pediatrics</p>
                <p>Description: Lorem ipsum dolor sit amet.</p>
                <button class "card-button">Learn More</button>
            </div>

            <!-- Card 5 -->
            <div class="card">
                <h2>Card 5</h2>
                <p>Department: Dermatology</p>
                <p>Description: Lorem ipsum dolor sit amet.</p>
                <button class="card-button">Learn More</button>
            </div>

            <!-- Card 6 -->
            <div class="card">
                <h2>Card 6</h2>
                <p>Department: Ophthalmology</p>
                <p>Description: Lorem ipsum dolor sit amet.</p>
                <button class="card-button">Learn More</button>
            </div>
        </div>
    </div>
</body>
</html>
