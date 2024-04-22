<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file ="components/navbar.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NILE - Register</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Titan+One&display=swap" rel="stylesheet"> <!-- Changed font link to Titan One -->
    <link rel="icon" href="D:\Programming\Java\android-chrome-512x512.png" type="image/png"> <!-- Added favicon -->

    <style>
        /* Basic styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 20px 0; /* Added padding to create gap between navbar and top */
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding-top: 40px;
        }

        /* Form styling */
        .register-form {
            background-color: rgba(255, 255, 255, 0.3); /* Transparent white background */
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); /* Subtle box shadow */
            width: 400px;
            backdrop-filter: blur(10px); /* Apply a blur effect */
            z-index: 999; /* Ensure the form is above the waves */
            position: relative; /* Ensure positioning context */
            margin-top: 100px; /* Adjust this value as needed to position the form */
        }

        .form-group {
            margin-bottom: 15px;
            display: flex;
            flex-wrap: wrap; /* Allow wrapping */
            align-items: center; /* Align items vertically */
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            flex-basis: 40%; /* Set label width */
            font-size: 14px;
        }

        .form-group input, .form-group textarea {
            width: calc(60% - 5px); /* Set input width */
            margin-right: 10px; /* Added margin for spacing between inputs */
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            transition: border-color 0.3s ease;
            flex-grow: 1;
            font-size: 14px;
        }

        .form-group input:focus, .form-group textarea:focus {
            border-color: #1565c0;
        }

        .button {
            padding: 8px 15px;
            background-color: transparent; /* Initial background color */
            color: #51BBFE; /* Initial text color */
            border: 1px solid #51BBFE; /* Initial border color */
            border-radius: 20px; /* Changed border-radius to make pill-shaped */
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease, border-color 0.3s ease, color 0.3s ease; /* Added transition for background, border, and text color */
            flex-basis: 100%; /* Full width for button */
        }

        .button:hover {
            background-color: #1565c0; /* Updated background color on hover */
            color: #fff; /* Updated text color on hover */
            border-color: #1565c0; /* Updated border color on hover */
        }

        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 3px;
            flex-basis: 100%; /* Full width for error messages */
        }

        .password-restrictions {
            margin-top: 5px;
            font-size: 12px;
            color: #666;
            flex-basis: 100%; /* Full width for password restrictions */
        }

        /* JavaScript animations */
        .fade-in {
            animation: fadeIn 0.5s ease forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Error styling */
        .error {
            border-color: red !important;
        }

        /* Custom styling for Nile */
        .nile-text {
            color: #1565c0;
        }

        /* Wave Animation styling */
        @keyframes move_wave {
            0% {
                transform: translateX(0) translateZ(0) scaleY(1);
            }
            50% {
                transform: translateX(-25%) translateZ(0) scaleY(0.55);
            }
            100% {
                transform: translateX(-50%) translateZ(0) scaleY(1);
            }
        }

        .waveWrapper {
            overflow: hidden;
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            top: 0;
            margin: auto;
        }

        .waveWrapperInner {
            position: absolute;
            width: 100%;
            overflow: hidden;
            height: 100%;
            bottom: 1px;
            background-image: linear-gradient(to top, #b3e5fc 20%, #ffffff 80%); /* Light blueish background */
        }

        .bgTop {
            z-index: 15;
            opacity: 0.5;
        }

        .bgMiddle {
            z-index: 10;
            opacity: 0.75;
        }

        .bgBottom {
            z-index: 5;
        }

        .wave {
            position: absolute;
            left: 0;
            width: 200%;
            height: 100%;
            background-repeat: repeat no-repeat;
            background-position: 0 bottom;
            transform-origin: center bottom;
        }

        .waveTop {
            background-size: 50% 100px;
        }

        .waveAnimation .waveTop {
            animation: move-wave 3s;
            -webkit-animation: move-wave 3s;
            -webkit-animation-delay: 1s;
            animation-delay: 1s;
        }

        .waveMiddle {
            background-size: 50% 120px;
        }

        .waveAnimation .waveMiddle {
            animation: move_wave 10s linear infinite;
        }

        .waveBottom {
            background-size: 100% 100px;
        }

        .waveAnimation .waveBottom {
            animation: move_wave 15s linear infinite;
        }

    </style>
</head>
<body>
    <div class="waveWrapper waveAnimation">
        <div class="waveWrapperInner bgTop">
            <div class="wave waveTop" style="background-image: url('http://front-end-noobs.com/jecko/img/wave-top.png')"></div>
        </div>
        <div class="waveWrapperInner bgMiddle">
            <div class="wave waveMiddle" style="background-image: url('http://front-end-noobs.com/jecko/img/wave-mid.png')"></div>
        </div>
        <div class="waveWrapperInner bgBottom">
            <div class="wave waveBottom" style="background-image: url('http://front-end-noobs.com/jecko/img/wave-bot.png')"></div>
        </div>
    </div>
    <div class="register-form fade-in">
        <h2>Create your <span class="nile-text">Nile</span> Account</h2>
        <div class="form-group">
            <label for="first-name">First Name:</label>
            <input type="text" id="first-name" placeholder="Enter your first name">
            <div class="error-message" id="first-name-error"></div>
        </div>
        <div class="form-group">
            <label for="last-name">Last Name:</label>
            <input type="text" id="last-name" placeholder="Enter your last name">
            <div class="error-message" id="last-name-error"></div>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" placeholder="Enter your email">
            <div class="error-message" id="email-error"></div>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" placeholder="Enter your phone number">
            <div class="error-message" id="phone-error"></div>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <textarea id="address" placeholder="Enter your address"></textarea>
            <div class="error-message" id="address-error"></div>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" placeholder="Enter your password">
            <div class="error-message" id="password-error"></div>
            <div class="password-restrictions" id="password-restrictions"></div>
        </div>
        <div class="form-group">
            <label for="confirm-password">Confirm Password:</label>
            <input type="password" id="confirm-password" placeholder="Confirm your password">
            <div class="error-message" id="confirm-password-error"></div>
        </div>
        <button class="button" id="register-btn">Register</button>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const registerForm = document.querySelector('.register-form');

            // Function to validate form fields
            function validateForm() {
                let isValid = true;
                const firstName = document.getElementById('first-name').value.trim();
                const lastName = document.getElementById('last-name').value.trim();
                const email = document.getElementById('email').value.trim();
                const phone = document.getElementById('phone').value.trim();
                const address = document.getElementById('address').value.trim();
                const password = document.getElementById('password').value.trim();
                const confirmPassword = document.getElementById('confirm-password').value.trim();

                // Clear previous error styles
                document.querySelectorAll('.form-group').forEach(group => {
                    group.classList.remove('error');
                });

                // Simple validation, you can add more complex validation as needed
                if (firstName.length < 3) {
                    document.getElementById('first-name-error').textContent = 'First name should be at least 3 characters long';
                    document.getElementById('first-name').parentNode.classList.add('error');
                    isValid = false;
                } else {
                    document.getElementById('first-name-error').textContent = '';
                }

                if (lastName.length < 3) {
                    document.getElementById('last-name-error').textContent = 'Last name should be at least 3 characters long';
                    document.getElementById('last-name').parentNode.classList.add('error');
                    isValid = false;
                } else {
                    document.getElementById('last-name-error').textContent = '';
                }

                if (!email.match(/^([\w.%+-]+)@([\w-]+\.)+([\w]{2,})$/i)) {
                    document.getElementById('email-error').textContent = 'Enter a valid email address';
                    document.getElementById('email').parentNode.classList.add('error');
                    isValid = false;
                } else {
                    document.getElementById('email-error').textContent = '';
                }

                if (phone.length < 10 || isNaN(phone)) {
                    document.getElementById('phone-error').textContent = 'Enter a valid phone number';
                    document.getElementById('phone').parentNode.classList.add('error');
                    isValid = false;
                } else {
                    document.getElementById('phone-error').textContent = '';
                }

                if (address.length === 0) {
                    document.getElementById('address-error').textContent = 'Enter your address';
                    document.getElementById('address').parentNode.classList.add('error');
                    isValid = false;
                } else {
                    document.getElementById('address-error').textContent = '';
                }

                if (password.length < 8) {
                    document.getElementById('password-error').textContent = 'Password should be at least 8 characters long';
                    document.getElementById('password').parentNode.classList.add('error');
                    isValid = false;
                } else {
                    document.getElementById('password-error').textContent = '';
                }

                if (confirmPassword !== password) {
                    document.getElementById('confirm-password-error').textContent = 'Passwords do not match';
                    document.getElementById('confirm-password').parentNode.classList.add('error');
                    isValid = false;
                } else {
                    document.getElementById('confirm-password-error').textContent = '';
                }

                return isValid;
            }

            // Function to handle form submission
            function handleFormSubmit(event) {
                event.preventDefault();
                if (validateForm()) {
                    // Form is valid, you can perform further actions like AJAX request
                    alert('Form submitted successfully!');
                }
            }

            // Event listener for form submission
            document.getElementById('register-btn').addEventListener('click', handleFormSubmit);

            // Event listener for password input
            document.getElementById('password').addEventListener('input', function() {
                const password = this.value;
                const passwordRestrictions = document.getElementById('password-restrictions');
                const regexUpperCase = /[A-Z]/;
                const regexSpecialChar = /[!@#$%^&*(),.?":{}|<>]/;
                const regexNumber = /[0-9]/;

                if (password.length < 8) {
                    passwordRestrictions.textContent = 'Password must be at least 8 characters long';
                } else if (!regexUpperCase.test(password)) {
                    passwordRestrictions.textContent = 'Password must contain at least one uppercase letter';
                } else if (!regexSpecialChar.test(password) && !regexNumber.test(password)) {
                    passwordRestrictions.textContent = 'Password must contain at least one special character or number';
                } else {
                    passwordRestrictions.textContent = '';
                }
            });
        });
    </script>
</body>
</html>
