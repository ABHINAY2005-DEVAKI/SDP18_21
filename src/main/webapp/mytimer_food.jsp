<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriScout - Alarm Manager</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        h1 {
            color: #28a745;
            font-size: 2.5em;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Alarm Form Section */
        .alarm-container {
            width: 60%;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .alarm-form {
            display: flex;
            flex-direction: column;
        }

        .alarm-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .alarm-row input {
            padding: 10px;
            font-size: 1em;
            width: 48%;
        }

        .alarm-row button {
            padding: 10px;
            font-size: 1em;
            width: 100%;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }

        .alarm-row button:hover {
            background-color: #0056b3;
        }

        /* Submit and Back Buttons */
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        button {
            padding: 12px 25px;
            font-size: 1.2em;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #218838;
        }

        button.back-btn {
            background-color: #007bff;
        }

        button.back-btn:hover {
            background-color: #0056b3;
        }

        /* Signup Link */
        .signup-link {
            text-align: center;
            margin-top: 20px;
            font-size: 1.2em;
            color: #dc3545;
            cursor: pointer;
            text-decoration: none;
        }

        .signup-link:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>

    <!-- Title -->
    <h1>NutriScout Alarm Manager</h1>

    <!-- Alarm Form -->
    <div class="alarm-container">
        <form class="alarm-form" id="alarm-form">
            <div class="alarm-row">
                <input type="time" id="alarm-time" placeholder="Set Alarm Time" required>
                <input type="text" id="alarm-note" placeholder="Enter Note" required>
            </div>
            <button type="button" onclick="addAlarm()">Add Alarm</button>
        </form>
    </div>

    <!-- Alarm List -->
    <div id="alarm-list"></div>

    <!-- Button Section -->
    <div class="button-container">
        <!-- Submit Button -->
        <button type="button" onclick="window.location.href='userhome';">Main Page</button>

        <!-- Back Button -->
        <button type="button" class="back-btn" onclick="window.location.href='mytimers';">Back</button>
    </div>


    <script>
        let alarms = [];

        // Function to add an alarm
        function addAlarm() {
            const time = document.getElementById('alarm-time').value;
            const note = document.getElementById('alarm-note').value;

            if (time && note) {
                const alarm = {
                    time: time,
                    note: note
                };
                alarms.push(alarm);
                displayAlarms();
                setAlarmNotification(alarm);
            } else {
                alert("Please fill in both the time and the note.");
            }
        }

        // Function to display alarms
        function displayAlarms() {
            const alarmList = document.getElementById('alarm-list');
            alarmList.innerHTML = '';
            alarms.forEach((alarm, index) => {
                const alarmItem = document.createElement('div');
                alarmItem.innerHTML = `<p><strong>Alarm ${index + 1}:</strong> ${alarm.time} - ${alarm.note}</p>`;
                alarmList.appendChild(alarmItem);
            });
        }

        // Function to notify when alarm time comes
        function setAlarmNotification(alarm) {
            const alarmTime = new Date();
            const [hours, minutes] = alarm.time.split(':');
            alarmTime.setHours(hours);
            alarmTime.setMinutes(minutes);
            alarmTime.setSeconds(0);

            const currentTime = new Date();
            const timeDifference = alarmTime.getTime() - currentTime.getTime();

            if (timeDifference > 0) {
                setTimeout(() => {
                    alert(`Alarm: ${alarm.note}`);
                }, timeDifference);
            }
        }
    </script>

</body>
</html>
