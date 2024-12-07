<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriScout - Body Type Selection</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            color: #333;
            line-height: 1.6;
        }

        /* Header */
        header {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #4CAF50;
            padding: 20px;
            color: white;
        }

        .header-title {
            font-size: 32px;
            font-weight: bold;
        }

        /* Main Section */
        .main-section {
            margin: 40px;
        }

        .main-section h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        /* Tabs for Boys/Men and Girls/Women */
        .tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .tab-btn {
            padding: 10px 20px;
            margin: 0 10px;
            border: 2px solid #4CAF50;
            background-color: white;
            color: #4CAF50;
            font-weight: bold;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .tab-btn.active, .tab-btn:hover {
            background-color: #4CAF50;
            color: white;
        }

        /* Data Display */
        .data-display {
            display: none;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }

        .data-display.active {
            display: block;
        }

        /* Body Type List */
        .body-type {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }

        /* Body Type Image */
        .body-type img {
            width: 50px;
            height: 50px;
            margin-right: 15px;
            border-radius: 50%;
        }

        /* Description Button */
        .desc-btn {
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 10px;
            transition: background-color 0.3s ease;
        }

        .desc-btn:hover {
            background-color: #45a049;
        }

        /* Select Button */
        .select-btn {
            padding: 5px 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 10px;
            transition: background-color 0.3s ease;
        }

        .select-btn:hover {
            background-color: #0056b3;
        }

        /* Navigation Buttons */
        .nav-buttons {
            display: flex;
            justify-content: space-between;
            margin: 20px;
        }

        .nav-buttons .back-btn, .nav-buttons .submit-btn {
            padding: 10px 20px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .nav-buttons .back-btn:hover, .nav-buttons .submit-btn:hover {
            background-color: #555;
        }

        /* Signup Link */
        .signup-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #4CAF50;
            cursor: pointer;
            text-decoration: none;
        }

        .signup-link:hover {
            text-decoration: underline;
        }

        /* Body Type Descriptions */
        .description {
            margin-top: 10px;
            font-size: 14px;
            color: #555;
        }

        /* Modal for Descriptions */
        #description-modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        #description-modal > div {
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 90%;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="header-title">NutriScout - Body Type Selection</div>
    </header>

    <!-- Main Content Section -->
    <main class="main-section">
        <h2>Select Your Body Type</h2>

        <!-- Tabs for Boys/Men and Girls/Women -->
        <div class="tabs">
            <button class="tab-btn" id="boys-tab" onclick="showData('boys')">Men</button>
            <button class="tab-btn" id="girls-tab" onclick="showData('girls')">Female</button>
        </div>

        <!-- Boys Data -->
        <div class="data-display" id="boys-data">
    			<h3>Body Types for Men</h3>
            <div class="body-type">
                <img src="images\12_20_ectomorph.jpg" alt="Ectomorphic">
                <div>
                    <strong>Ectomorphic:</strong> 
                    Naturally lean with a slim, narrow frame, men with this body type find it difficult to gain muscle or body mass due to their fast metabolism. 
                    <button class="desc-btn" onclick="showDescription('Ectomorphic', 'The ectomorphic body type is characterized by a slim, lean appearance. Individuals often have narrow shoulders and hips, with long limbs and little body fat or muscle mass. This body type typically struggles to gain weight and muscle, making it essential to focus on strength training and nutrient-dense foods.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='20_boys_ectomorph';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\12_20_mesomorph.jpg" alt="Mesomorphic">
                <div>
                    <strong>Mesomorphic:</strong> 
                     Broad-shouldered and muscular, men with this body type can easily build and maintain muscle, giving them an athletic, strong appearance. 
                    <button class="desc-btn" onclick="showDescription('Mesomorphic', 'The mesomorphic body type is marked by a muscular and well-defined physique. Individuals typically have broad shoulders, a narrow waist, and can gain muscle easily with training. A balanced diet with adequate protein is important for muscle maintenance and growth.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='20_boys_mesomorph';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\12_20_endomorph.jpg" alt="Endomorphic">
                <div>
                    <strong>Endomorphic:</strong> 
                    Stockier and naturally strong, men with this body type gain muscle easily but also have a tendency to store more body fat. 
                    <button class="desc-btn" onclick="showDescription('Endomorphic', 'The endomorphic body type is characterized by a rounder body shape, with a higher percentage of body fat. Individuals often have wider hips and shoulders, making it important to focus on a balanced diet and regular exercise to manage body fat.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='20_boys_endomorph';">Select</button>
                </div>
            </div>
        </div>

        <!-- Girls Data -->
        <div class="data-display" id="girls-data"> <!-- Changed id to "girls-data" -->
    			<h3>Body Types for Women</h3>
            <div class="body-type">
                <img src="images\12_20_girl_ectomorph.jpg" alt="Ectomorphic">
                <div>
                    <strong>Ectomorphic:</strong> 
                    Slim with narrow hips and shoulders, women with this body type have a hard time gaining weight or curves but maintain a naturally lean physique. 
                    <button class="desc-btn" onclick="showDescription('Ectomorphic', 'The ectomorphic body type is characterized by a slim, lean appearance. Individuals often have narrow shoulders and hips, with long limbs and little body fat or muscle mass. This body type typically struggles to gain weight and muscle, making it essential to focus on strength training and nutrient-dense foods.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='20_girls_ectomorph';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\12_20_girl_mesomorph.jpg" alt="Mesomorphic">
                <div>
                    <strong>Mesomorphic:</strong> 
                     Naturally fit and well-proportioned, women with this body type gain muscle easily and have a defined, athletic look with balanced curves. 
                    <button class="desc-btn" onclick="showDescription('Mesomorphic', 'The mesomorphic body type is marked by a muscular and well-defined physique. Individuals typically have broad shoulders, a narrow waist, and can gain muscle easily with training. A balanced diet with adequate protein is important for muscle maintenance and growth.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='20_girls_mesomorph';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\12_20_girl_endomorph.jpg" alt="Endomorphic">
                <div>
                    <strong>Endomorphic:</strong> 
                    Fuller, softer body shape with wider hips, women with this body type gain weight easily and often need to focus on fat-burning and strength-building exercises. 
                    <button class="desc-btn" onclick="showDescription('Endomorphic', 'The endomorphic body type is characterized by a rounder body shape, with a higher percentage of body fat. Individuals often have wider hips and shoulders, making it important to focus on a balanced diet and regular exercise to manage body fat.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='20_girls_endomorph';">Select</button>
                </div>
            </div>
        </div>

        <!-- Navigation Buttons -->
        <div class="nav-buttons">
            <button class="back-btn" onclick="window.location.href='user_age';">Back</button>
            <button class="submit-btn" onclick="window.location.href='userhome';">Main Page</button>
        </div>

        <!-- Modal for Descriptions -->
        <div id="description-modal">
            <div>
                <h3 id="modal-title"></h3>
                <p id="modal-description" class="description"></p>
                <button class="desc-btn" onclick="closeDescription()">Close</button>
            </div>
        </div>
       
    </main>

    <script>
        function showData(section) {
            document.getElementById('boys-data').classList.remove('active');
            document.getElementById('girls-data').classList.remove('active');
            document.getElementById(section + '-data').classList.add('active');

            document.getElementById('boys-tab').classList.remove('active');
            document.getElementById('girls-tab').classList.remove('active');
            document.getElementById(section + '-tab').classList.add('active');
        }

        function showDescription(title, description) {
            document.getElementById('modal-title').innerText = title;
            document.getElementById('modal-description').innerText = description;
            document.getElementById('description-modal').style.display = 'flex';
        }

        function closeDescription() {
            document.getElementById('description-modal').style.display = 'none';
        }

        function redirectToBody(bodyType) {
            window.location.href = 'user_su_body.html?type=' + bodyType; // Redirect to user_su_body.html with body type
        }
    </script>
</body>
</html>
