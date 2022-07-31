import 'Employee.dart';
import 'Managment.dart';
import 'Qualification.dart';

class LeadDeveloper extends Employee with Managment {
    LeadDeveloper(
        String firstName,
        String lastName,
        String gender,
        DateTime birthday,
        Qualification qualification,
        double salary
    ) : super(firstName, lastName, gender, birthday, qualification, salary);
}