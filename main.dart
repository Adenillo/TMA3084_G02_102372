// main.dart
import 'myLib.dart';

void main() {
  // Sample values set to achieve the expected Total Salary = $5070.0 USD
  // Basic Salary ($4500) + Overtime Pay ($570) = $5070.0
  Employee emp = Employee(
    name: 'John Doe',
    basicSalary: 4500.0,
    hourlyRate: 38.0,
    overtimeHours: 15.0,
  );

  double totalSalary = emp.calculateTotalSalary();

  print('----------------------------------------');
  print('      OVERTIME PAYMENT PROGRAM          ');
  print('----------------------------------------');
  print('Employee Name  : ${emp.name}');
  print('Basic Salary   : \$${emp.basicSalary} USD');
  print('Overtime Hours : ${emp.overtimeHours} hours');
  print('Hourly Rate    : \$${emp.hourlyRate} USD');
  print('----------------------------------------');
  print('Total Salary   : \$$totalSalary USD');
  print('----------------------------------------');
}