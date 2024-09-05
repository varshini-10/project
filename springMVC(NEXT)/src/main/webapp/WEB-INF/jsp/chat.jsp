<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
    
    
    
        .chat-window {
    width: 300px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 20px auto;
    padding: 10px;
}

.chat-header {
    background-color: #007bff;
    color: white;
    padding: 10px;
    text-align: center;
}

.chat-body {
    min-height: 200px;
    max-height: 400px;
    overflow-y: scroll;
    padding: 10px;
}

.message {
    padding: 5px;
    margin: 5px;
    border-radius: 5px;
}

.bot-message {
    background-color: #f2f2f2;
}

.chat-input {
    display: flex;
    padding: 10px;
}

#user-input {
    flex: 1;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 5px;
}

#send-button {
    margin-left: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 5px 10px;
    cursor: pointer;
}

    </style>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
    const chatBody = document.getElementById("chat-body");
    const userInput = document.getElementById("user-input");
    const sendButton = document.getElementById("send-button");

    sendButton.addEventListener("click", function () {
        const userMessage = userInput.value;

        if (userMessage) {
            addMessage("user", userMessage);
            const botReply = generateBotReply(userMessage);
            addMessage("bot", botReply);

            userInput.value = "";
        }
    });

    function addMessage(sender, message) {
        const messageDiv = document.createElement("div");
        messageDiv.classList.add("message");
        messageDiv.classList.add(${sender}-message);
        messageDiv.textContent = message;
        chatBody.appendChild(messageDiv);
        chatBody.scrollTop = chatBody.scrollHeight;
    }

    function generateBotReply(userMessage) {
        if (userMessage.toLowerCase() === "total departments") {
            return "We have the following departments: Cardiology, Neurology, Orthopedics, General Surgery, and ENT Specialist.";
        }
        else if (userMessage.toLowerCase() === "hi") {
            return "Hello How can i help you..";
        }
        else if (userMessage.toLowerCase() === "thank you") {
            return "Thank You , Have a Good Day";
        }
        else if (userMessage.toLowerCase() === "cardiology") {
            return "Our Cardiology department is staffed by the following doctors: Dr. Raghu,\n Dr. M. Prasanna,\n Dr. K. Rama Krishna,\n and Dr. Shilpa Jayaprakash.";
        } else if (userMessage.toLowerCase() === "neurology") {
            return "In our Neurology department, you can consult with the following doctors: Dr. G. Ramakrishna, Dr. Pravalika Dutta, Dr. K. Sreekanta Swami, and Dr. Shilpa Jayaprakash.";
        } else if (userMessage.toLowerCase() === "dr. raghu") {
            const qualification = "MBBS, MS (Cardiology)";
            const randomDates = generateRandomAppointmentDates(3);
            return Dr. Raghu's qualifications are ${qualification}. Here are some available appointment dates: ${randomDates.join(", ")}.;
        } else if (userMessage.toLowerCase() === "show details of dr. pravalika") {
            const qualification = "MBBS, MD (Neurology)";
            const randomDates = generateRandomAppointmentDates(3);
            return Dr. Pravalika's qualifications are ${qualification}. Here are some available appointment dates: ${randomDates.join(", ")}.;
        } else if (userMessage.toLowerCase() === "about the address") {
            return "Our hospital is located at KL University, Vijayawada.";
        } else {
            return "I'm sorry, I couldn't understand your request. How can I assist you further?";
        }
    }

    function generateRandomAppointmentDates(count) {
        const dates = [];
        const today = new Date();
        for (let i = 0; i < count; i++) {
            const randomDate = new Date(today);
            randomDate.setDate(today.getDate() + Math.floor(Math.random() * 15)); // Random date within 15 days
            dates.push(randomDate.toDateString());
        }

        return dates;
    }
});

    </script>
</head>
<body>
<h2 align="center">Chat With Us</h2>
    <div class="chat-window">
        <div class="chat-header">
            ChatBot
        </div>
        <div class="chat-body" id="chat-body">
            <div class="message bot-message">
                Hello! How can I assist you today?
            </div>
        </div>
        <div class="chat-input">
            <input type="text" id="user-input" placeholder="Type your message...">
            <button id="send-button">Send</button>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>