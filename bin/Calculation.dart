import 'Employee.dart';
import 'Manager.dart';
import 'SalesEmployee.dart';

abstract class Calculation {
    double calculateBouns({double companyRevenue});
}