import 'dart:math';

import 'Managment.dart';
import 'Qualification.dart';

class Employee {
    int _id;
    String _firstName, _lastName, _gender;
    DateTime _birthday, _startingDate;
    Qualification _qualification;
    double _salary;
    Managment _managment;

    Employee(
        String firstName,
        String lastName,
        String gender,
        DateTime birthday,
        Qualification qualification,
        double salary,
    ) : assert(gender != 'F' || gender != 'M'),
        assert((birthday.difference(DateTime.now()).inDays / 365).round() < 18 || (birthday.difference(DateTime.now()).inDays / 365).round() > 120),
         assert(salary > 0 )
    {
        _id = Random().nextInt(500); // Example of employee id that created auto from the database
        _firstName = firstName;
        _lastName = lastName;
        _gender = gender;
        _birthday = birthday;
        _qualification = qualification;
        _startingDate = DateTime.now();
        _salary = salary;
    }

    int get id {
        return _id;
    }

    String get firstName {
        return _firstName;
    }

    set firstName(String value) {
        _firstName = value;
    }

    String get lastName {
        return _lastName;
    }

    set lastName(String value) {
        _lastName = value;
    }

    String get gender {
        return _gender;
    }

    set gender(String value) {
        assert(gender != 'F' || gender != 'M');
        _gender = value;
    }

    DateTime get birthday {
        return _birthday;
    }

    set birthday(DateTime value) {
        assert((value.difference(DateTime.now()).inDays / 365).round() < 18 || (value.difference(DateTime.now()).inDays / 365).round() > 120);
        _birthday = value;
    }

    DateTime get startingDate {
        return _startingDate;
    }

    set startingDate(DateTime value) {
        assert((value.difference(DateTime(2010)).inDays / 365).round() < 18); // suppose The company started on 2010
        _startingDate = value;
    }

    Qualification get qualification {
        return _qualification;
    }

    set qualification(Qualification value) {
        _qualification = value;
    }

    set salary(double value) {
        _salary = value;
    }

    double get salary {
        return _salary;
    }

    set manager(Managment value) {
        _managment = value;
    }

    Managment get manager {
        return _managment;
    }
}