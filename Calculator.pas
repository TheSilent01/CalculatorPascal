program Calculatrice;

var
  a, b: Integer;
  operation: Char;

begin
  // Input values for a, b, and operation
  writeln('Enter the first number:');
  readln(a);
  writeln('Enter the second number:');
  readln(b);
  writeln('Enter the operation (+, -, *, /):');
  readln(operation);

  // Check for division by zero
  if (b = 0) and (operation = '/') then
    writeln('The operation is invalid: Division by 0')
  else
  begin
    // Perform the operation based on user input
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
end.
