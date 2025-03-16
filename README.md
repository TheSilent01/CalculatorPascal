# Calculatrice Program

A simple console-based calculator program written in Pascal that allows users to perform basic arithmetic operations (+, -, *, /) on two integer numbers.

## Features

- Supports addition, subtraction, multiplication, and division.
- Handles division by zero by providing an appropriate error message.
- Displays results with proper formatting for division (up to two decimal places).

## Program Flow

1. The program prompts the user to enter two integer numbers (`a` and `b`).
2. The program asks for the arithmetic operation (+, -, *, /).
3. The program performs the operation and outputs the result:
   - If the division operation is chosen and the second number is zero, an error message is displayed.
   - Otherwise, the result of the operation is shown.

## Instructions

1. Clone or download the repository.
2. Compile the program using a Pascal compiler (such as Free Pascal).
3. Run the program, and follow the on-screen instructions to input two numbers and the desired operation.

## Example

```
Enter the first number:
5
Enter the second number:
3
Enter the operation (+, -, *, /):
+
Result: 8
```

### Handling Division by Zero

If division by zero is attempted, the program will display the following message:

```
The operation is invalid: Division by 0
```

## Code Explanation

### Variable Declarations

```pascal
var
  a, b: Integer;
  operation: Char;
```

- `a` and `b` are integers that will store the numbers input by the user.
- `operation` is a character that will store the arithmetic operation (+, -, *, /).

### Input and Validation

```pascal
writeln('Enter the first number:');
readln(a);
writeln('Enter the second number:');
readln(b);
writeln('Enter the operation (+, -, *, /):');
readln(operation);
```

- The program prompts the user to input the two numbers and the desired operation.

### Division by Zero Check

```pascal
if (b = 0) and (operation = '/') then
  writeln('The operation is invalid: Division by 0')
```

- This part ensures that if the user attempts to divide by zero, an error message is displayed.

### Performing the Operation

```pascal
else
begin
  if operation = '+' then
    writeln('Result: ', a + b)
  else if operation = '-' then
    writeln('Result: ', a - b)
  else if operation = '*' then
    writeln('Result: ', a * b)
  else if operation = '/' then
    writeln('Result: ', a / b:0:2) // Format result to 2 decimal places
  else
    writeln('Operation invalid');
end;
```

- The program performs the chosen arithmetic operation, and if the operation is division, it formats the result to two decimal places. If the operation is invalid, it displays an error message.
