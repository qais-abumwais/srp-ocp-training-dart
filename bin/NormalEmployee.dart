import 'Employee.dart';
import 'Position.dart';
import 'Qualification.dart';

class NormalEmployee extends Employee {
    Position _position;
    NormalEmployee(
        String firstName,
        String lastName,
        String gender,
        DateTime birthday,
        Qualification qualification, 
        double salary,
        Position position
    ) : super(firstName, lastName, gender, birthday, qualification, salary)
    {
        _position = position;
    }

    Position get position {
        return _position;
    }
    
}