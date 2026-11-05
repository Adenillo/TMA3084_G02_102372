//Adenillo Sheldy (102372)

// myLib.dart

class Employee {
  String name;
  double basicSalary;
  double hourlyRate;
  double overtimeHours;

  // Constructor
  Employee({
    required this.name,
    required this.basicSalary,
    required this.hourlyRate,
    required this.overtimeHours,
  });

  // Function to calculate overtime pay
  double calculateOvertimePay() {
    return overtimeHours * hourlyRate;
  }

  // Function to calculate total salary
  double calculateTotalSalary() {
    return basicSalary + calculateOvertimePay();
  }
}