package com.calculator;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String expression = request.getParameter("expression");
        double result = 0;

        try {
            result = evaluateExpression(expression);
        } catch (ArithmeticException e) {
            response.getWriter().write("Error: " + e.getMessage());
            return;
        }

        HttpSession session = request.getSession();
        List<String> history = (List<String>) session.getAttribute("history");
        if (history == null) {
            history = new ArrayList<>();
        }
        history.add(expression + " = " + result);
        session.setAttribute("history", history);

        response.sendRedirect("index.jsp");
    }

    private double evaluateExpression(String expression) {
        // Simple expression evaluation (you can use JavaScript for better parsing)
        String[] tokens = expression.split(" ");
        double num1 = Double.parseDouble(tokens[0]);
        String operator = tokens[1];
        double num2 = Double.parseDouble(tokens[2]);

        switch (operator) {
            case "+": return num1 + num2;
            case "-": return num1 - num2;
            case "*": return num1 * num2;
            case "/": 
                if (num2 == 0) throw new ArithmeticException("Cannot divide by zero");
                return num1 / num2;
            default: throw new IllegalArgumentException("Invalid operator");
        }
    }
}
