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
            <button class="tab-btn" id="boys-tab" onclick="showData('boys')">Boys</button>
            <button class="tab-btn" id="girls-tab" onclick="showData('girls')">Girls</button>
        </div>

        <!-- Boys Data -->
        <div class="data-display" id="boys-data">
            <h3>Body Types for Boys</h3>
            <div class="body-type">
                <img src="images\ecto.jpg" alt="Ectomorphic">
                <div>
                    <strong>Ectomorphic:</strong> 
                    narrow shoulders and hips, and tends to have little muscle or fat 
                    <button class="desc-btn" onclick="showDescription('Ectomorphic', 'The ectomorphic body type is characterized by a slim, lean appearance. Individuals often have narrow shoulders and hips, with long limbs and little body fat or muscle mass. This body type typically struggles to gain weight and muscle, making it essential to focus on strength training and nutrient-dense foods.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='12_male_ectomorph';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\meso.jpg" alt="Mesomorphic">
                <div>
                    <strong>Mesomorphic:</strong> 
                    broad shoulders, narrower hips, and tends to build muscle easily 
                    <button class="desc-btn" onclick="showDescription('Mesomorphic', 'The mesomorphic body type is marked by a muscular and well-defined physique. Individuals typically have broad shoulders, a narrow waist, and can gain muscle easily with training. A balanced diet with adequate protein is important for muscle maintenance and growth.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='12_male_mesomorph';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\endo.jpg" alt="Endomorphic">
                <div>
                    <strong>Endomorphic:</strong> 
                    “pear-shaped” body and higher affinity to store body fat 
                    <button class="desc-btn" onclick="showDescription('Endomorphic', 'The endomorphic body type is characterized by a rounder body shape, with a higher percentage of body fat. Individuals often have wider hips and shoulders, making it important to focus on a balanced diet and regular exercise to manage body fat.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='12_male_endomorphic';">Select</button>
                </div>
            </div>
        </div>

        <!-- Girls Data -->
        <div class="data-display" id="girls-data">
            <h3>Body Types for Girls</h3>
            <div class="body-type">
                <img src="images\rectangle.jpg" alt="Rectangle">
                <div>
                    <strong>Rectangle:</strong> 
                    The rectangle female body type has similar widths for bust, hip, and shoulder.
                    <button class="desc-btn" onclick="showDescription('Rectangle', 'The rectangle body type is characterized by balanced proportions, where the bust, waist, and hips are similar in width. Individuals with this shape can achieve curves through strength training and a diet rich in protein and healthy fats.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='12_girls_rectangle';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\inverted_triangle.jpg" alt="Inverted Triangle">
                <div>
                    <strong>Inverted Triangle:</strong> 
                    Bigger proportions on the top than on the bottom.
                    <button class="desc-btn" onclick="showDescription('Inverted Triangle', 'The inverted triangle body type features broader shoulders and bust, with narrower hips. This body type can be emphasized by focusing on lower body workouts while maintaining a balanced diet to keep overall body fat in check.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='12_girls_inverted_triangle';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\hourglass.jpg" alt="Hourglass">
                <div>
                    <strong>Hourglass:</strong> 
                    Contoured waist with wider hips and bust.
                    <button class="desc-btn" onclick="showDescription('Hourglass', 'The hourglass body type is characterized by a well-defined waist with similar bust and hip measurements. Individuals should focus on maintaining muscle mass and a balanced diet to preserve their curves.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='12_girls_hourglass';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\round.jpg" alt="Apple">
                <div>
                    <strong>Round:</strong> 
                    Rounder shape with no defined waist.
                    <button class="desc-btn" onclick="showDescription('Round', 'If your bust is larger than the rest of your body, your hips are narrow, and your midsection is fuller, you have what’s usually called a round or oval body type.Stylists usually point people with this body type toward tops that flare at the top or that have vertical details.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='12_girls_round';">Select</button>
                </div>
            </div>
            <div class="body-type">
                <img src="images\athelete.jpg" alt="Pear">
                <div>
                    <strong>Athletic:</strong> 
                    If your body is muscular but isn’t particularly curvy, you might have an athletic body type.
                    <button class="desc-btn" onclick="showDescription('Athletic', 'Your shoulder and hip measurements are about the same.Your waist is narrower than your shoulder and hips, but it isn’t overly-defined and looks more straight up and down.Stylists often point to halter, strapless, and racerback styles.')">More Info</button>
                    <button class="select-btn" onclick="window.location.href='12_girls_athletics';">Select</button>
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
