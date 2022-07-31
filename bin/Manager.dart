import 'dart:core';

import 'Calculation.dart';
import 'Employee.dart';
import 'Managment.dart';
import 'Qualification.dart';

class Manager extends Employee with Managment implements Calculation {
    double _bouns;
    Manager(
        String firstName,
        String lastName,
        String gender,
        DateTime birthday,
        Qualification qualification,
        double salary,
        double bouns
    ) : super(firstName, lastName, gender, birthday, qualification, salary)
    {
        _bouns = bouns;
    }

    double get bouns {
        return _bouns;
    }
 
    set bouns(double value) {
        _bouns = value;
    }

    @override
    double calculateBouns({double companyRevenue}) {
        assert(companyRevenue > 0);

        return (bouns / 100) * companyRevenue;
    }
}