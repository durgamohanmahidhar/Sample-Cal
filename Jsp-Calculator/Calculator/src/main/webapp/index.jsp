<%@ page import="javax.script.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>

<html>

<head>

    <title>JSP Calculator with JavaScript</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f4f9;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 400px;
            margin-top: 50px;
            padding: 20px;
            background-color: #484141;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .text-center {
            font-size: 24px;
            color: #333;
        }

        #result {
            font-size: 32px;
            padding: 15px;
            text-align: right;
            border: 2px solid #ccc;
            border-radius: 8px;
            margin-bottom: 20px;
            width: 100%;
        }

        .btn {
            font-size: 18px;
            padding: 20px;
            margin: 5px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .btn-secondary {
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            color: #333;
        }

        .btn-secondary:hover {
            background-color: #e0e0e0;
        }

        .btn-primary {
            background-color: #4d90fe;
            border: none;
            color: white;
        }

        .btn-primary:hover {
            background-color: #357ae8;
        }

        .btn-warning {
            background-color: #f8c146;
            border: none;
            color: white;
        }

        .btn-warning:hover {
            background-color: #f6a21d;
        }

        .btn-success {
            background-color: #4caf50;
            border: none;
            color: white;
        }

        .btn-success:hover {
            background-color: #45a049;
        }

        /* CSS Grid for 4x4 layout */
        .grid-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 10px;
        }

    </style>

    <script>
        function appendValue(value) {
            document.getElementById("result").value += value;
        }

        function calculateResult() {
            try {
                var expression = document.getElementById("result").value;

                // Check for division by zero
                if (expression.includes('/0')) {
                    throw new Error("Cannot divide by zero.");
                }

                // Calculate the result
                document.getElementById("result").value = eval(expression);
            } catch (e) {
                alert("Error: " + e.message);
                document.getElementById("result").value = "";
            }
        }

        function clearResult() {
            document.getElementById("result").value = "";
        }

        
        document.addEventListener("keydown", function (event) {
            if (event.key >= '0' && event.key <= '9') {
                appendValue(event.key);
            } else if (event.key === '+' || event.key === '-' || event.key === '*' || event.key === '/') {
                appendValue(event.key);
            } else if (event.key === 'Enter') {
                calculateResult();
            } else if (event.key === 'Backspace') {
                clearResult();
            }
        });
    </script>

</head>

<body>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12">
                <input type="text" id="result" class="form-control text-right mb-3" readonly>
                <div class="grid-container">

                    <button class="btn btn-secondary" onclick="appendValue('7')">7</button>
                    <button class="btn btn-secondary" onclick="appendValue('8')">8</button>
                    <button class="btn btn-secondary" onclick="appendValue('9')">9</button>
                    <button class="btn btn-primary" onclick="appendValue('/')">/</button>

                    <button class="btn btn-secondary" onclick="appendValue('4')">4</button>
                    <button class="btn btn-secondary" onclick="appendValue('5')">5</button>
                    <button class="btn btn-secondary" onclick="appendValue('6')">6</button>
                    <button class="btn btn-primary" onclick="appendValue('*')">*</button>

                    <button class="btn btn-secondary" onclick="appendValue('1')">1</button>
                    <button class="btn btn-secondary" onclick="appendValue('2')">2</button>
                    <button class="btn btn-secondary" onclick="appendValue('3')">3</button>
                    <button class="btn btn-primary" onclick="appendValue('-')">-</button>

                    <button class="btn btn-secondary" onclick="appendValue('0')">0</button>
                    <button class="btn btn-warning" onclick="clearResult()">C</button>
                    <button class="btn btn-success" onclick="calculateResult()">=</button>
                    <button class="btn btn-primary" onclick="appendValue('+')">+</button>

                </div>
            </div>
        </div>
    </div>

</body>

</html>
