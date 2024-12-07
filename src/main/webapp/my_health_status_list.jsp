<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriScout - Health Checkup</title>
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

        h2 {
            color: #007bff;
            font-size: 2em;
            text-align: center;
            margin-bottom: 10px;
        }

        /* File Upload Section */
        .upload-container {
            margin: 20px 0;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            width: 100%;
            max-width: 800px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .upload-container input[type="file"] {
            padding: 10px;
            width: 100%;
        }

        /* Health Issues Table */
        table {
            width: 100%;
            max-width: 800px;
            margin: 20px 0;
            border-collapse: collapse;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
            font-size: 1.2em;
        }

        td {
            font-size: 1em;
        }

        /* Graph Section */
        .graph-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
            width: 100%;
            max-width: 900px;
            margin: 30px 0;
        }

        .graph {
            flex: 1 1 45%;
            min-width: 300px;
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

        /* Graph Style */
        canvas {
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .graph-section {
                flex-direction: column;
                align-items: center;
            }

            .graph {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <!-- Title -->
    <h1>NutriScout Health Checkup</h1>

    <!-- File Upload Section -->
    <div class="upload-container">
        <h2>Upload Your Health Checkup Documents</h2>
        <input type="file" multiple aria-label="Upload your health checkup documents">
    </div>

    <!-- Health Issues Table -->
    <table aria-label="Table to input health issues">
        <thead>
            <tr>
                <th>Health Issue</th>
                <th>Issue Details</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><input type="text" placeholder="Enter health issue" style="width: 100%;" aria-label="Enter health issue"></td>
                <td><textarea placeholder="Describe your health issue in detail" style="width: 100%; height: 60px;" aria-label="Describe health issue"></textarea></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="Enter health issue" style="width: 100%;" aria-label="Enter another health issue"></td>
                <td><textarea placeholder="Describe your health issue in detail" style="width: 100%; height: 60px;" aria-label="Describe another health issue"></textarea></td>
            </tr>
        </tbody>
    </table>

    <!-- Graph Section -->
    <div class="graph-section">
        <!-- Blood Pressure Graph -->
        <div class="graph">
            <h2>Blood Pressure Graph</h2>
            <canvas id="bpGraph" width="400" height="300" aria-label="Blood Pressure Graph"></canvas>
        </div>

        <!-- Sugar Level Graph -->
        <div class="graph">
            <h2>Sugar Levels Graph</h2>
            <canvas id="sugarGraph" width="400" height="300" aria-label="Sugar Levels Graph"></canvas>
        </div>
    </div>

    <!-- Button Section -->
    <div class="button-container">
        <!-- Submit Button -->
        <button type="button" onclick="window.location.href='userhome';">Main Page</button>

        <!-- Back Button -->
        <button type="button" class="back-btn" onclick="window.location.href='my_health_status';">Back</button>
    </div>

    <!-- Script to generate dummy graphs -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Blood Pressure Graph
        const bpCtx = document.getElementById('bpGraph').getContext('2d');
        const bpGraph = new Chart(bpCtx, {
            type: 'line',
            data: {
                labels: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6'],
                datasets: [{
                    label: 'Blood Pressure (mmHg)',
                    data: [120, 125, 130, 115, 140, 135],
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1,
                    fill: true
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: false,
                        min: 100,
                        max: 150
                    }
                }
            }
        });

        // Sugar Levels Graph
        const sugarCtx = document.getElementById('sugarGraph').getContext('2d');
        const sugarGraph = new Chart(sugarCtx, {
            type: 'line',
            data: {
                labels: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6'],
                datasets: [{
                    label: 'Sugar Levels (mg/dL)',
                    data: [90, 100, 110, 105, 95, 115],
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1,
                    fill: true
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: false,
                        min: 80,
                        max: 130
                    }
                }
            }
        });
    </script>

</body>
</html>
