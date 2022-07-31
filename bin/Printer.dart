import 'Employee.dart';
import 'LeadDeveloper.dart';
import 'Manager.dart';
import 'Managment.dart';
import 'NormalEmployee.dart';
import 'Position.dart';
import 'SalesEmployee.dart';

class Printer {
    Employee employee;

    Printer(
        this.employee
    );

    void printAllEmployeeData() {
        assert(employee != null);
        print("Employee Data Name: ${employee.firstName} ${employee.lastName}, Gender: ${employee.gender}");
        if(employee is NormalEmployee) {
            NormalEmployee normalEmployee = employee;

            print("Position: ${normalEmployee.position == Position.hr ? 'HR' : 'Developer'}");
        } else if(employee is Manager) {
            Manager manager = employee;

            print("Position: Manger, Bouns: ${manager.calculateBouns(companyRevenue: 50000)}\nSubordinates: ");
            printSubordinates(manager);
        } else if(employee is LeadDeveloper) {
            LeadDeveloper leadDeveloper = employee;

            print("Position: Lead Developer\nSubordinates: ");
            printSubordinates(leadDeveloper);
        } else if(employee is SalesEmployee) {
            SalesEmployee sales = employee;

            print("Position: Sales Employee, Target: ${sales.target}, TotalSales: ${sales.totalSales}, Commission: ${sales.commission}, Bouns: ${sales.calculateBouns()}");
        }
    }


    void printSubordinates(Managment managment) {
        assert(managment != null && managment.subordinates != null);

        managment.subordinates.forEach((element) {
           print("Name: ${element.firstName} ${element.lastName}, Gender: ${element.gender}");
        });
    }
}