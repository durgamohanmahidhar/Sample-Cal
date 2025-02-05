
# JSP Calculator with Java Servlet

This is a simple calculator built using JSP (JavaServer Pages) and JavaScript. The calculator supports basic arithmetic operations such as addition, subtraction, multiplication, and division. It uses JavaScript for all calculations on the client-side and provides real-time feedback to the user.




## Features

- Basic Arithmetic Operations: Supports +, -, *, / operations.
- Clear (C) Button: Clears the current input, allowing users to start a new calculation.
- Error Handling: Handles invalid expressions and division by zero errors.
- Responsive UI: The UI is responsive, adapting to different screen sizes (mobile and desktop).
- Keyboard Support: Users can perform calculations using both the UI buttons and the keyboard.


## Code Explanation

This project consists of a single JSP file (index.jsp), which serves as the user interface. It utilizes JavaScript for all client-side logic, including:

- Handling button clicks to append numbers and operators to the input field.
- Calculating the result when the user clicks the equals (=) button or presses Enter on the keyboard.
- Handling the Clear (C) button to reset the input field.
- Managing error handling, such as division by zero.

The JavaScript functions are directly embedded within the JSP page, making this a client-side calculation app. The layout and styles are handled using Bootstrap, ensuring a clean and responsive design.
## Installation

#### Prerequisites

- Apache Tomcat (or any other servlet container) for running JSP applications.
- JDK (Java Development Kit) version 8 or higher to run the Java environment

#### Steps to run

- Clone the Repository: To get started, clone the repository to your local machine by using the following command:

```bash
  git clone https://github.com/ayushmahale2709/jsp-calculator.git

```
- Deploy the Project to Tomcat: Copy the jsp-calculator project into the webapps folder of your Tomcat server or deploy it directly from your IDE if you’re using one (e.g., IntelliJ IDEA, Eclipse).

- Start the Tomcat Server: Ensure your Tomcat server is running. You can start the server through your IDE or by running the startup.bat (Windows) or startup.sh (Linux/Mac) script from the Tomcat directory.

- Access the Application: Open your web browser and navigate to the following URL:

``` bash
http://localhost:8080/jsp-calculator/index.jsp
```
- Use the Calculator:

  - Enter numbers and operations using the on-screen buttons or your keyboard.
  - Click on the C button to clear the input field and start over.
  - Press = to calculate the result.
    
## Screenshots

### Calculator UI (Desktop): 

![Image](https://github.com/user-attachments/assets/b45ad35b-0306-4950-a9af-dbec009f4501)

### Calculation

![Image](https://github.com/user-attachments/assets/ec68db6e-e910-4538-976b-a41d4bdb46d6)

![Image](https://github.com/user-attachments/assets/36168f44-3bb1-47b3-8d5b-dd0ef3faa057)

### division by zero error handling 

![Image](https://github.com/user-attachments/assets/580df728-4a81-4d45-a192-225782fc1a7e)

## Conclusion

This project demonstrates how to create a simple calculator using JSP and JavaScript for client-side interactions. It provides basic arithmetic functionality, supports keyboard input, and handles errors like division by zero. The responsive UI makes it user-friendly on both desktop and mobile devices.