import 'Calculation.dart';
import 'Employee.dart';
import 'Qualification.dart';

class SalesEmployee extends Employee implements Calculation {
    double _commission, _target;
    double _totalSales;

    SalesEmployee(
        String firstName,
        String lastName,
        String gender,
        DateTime birthday,
        Qualification qualification,
        double salary,
        double commission,
        double target
    ) :
    assert (commission > 0 || commission < 100),
    assert (target > 0),
    super(firstName, lastName, gender, birthday, qualification, salary)
    {
        _commission = commission;
        _target = target;
    }

    set commission(double value) {
        _commission = value;
    }

    double get commission {
        return _commission;
    }

    set target(double value) {
        _target = value;
    }

    double get target {
        return _target;
    }

    void increaseTotal(double value) {
        _totalSales ??= 0; 
        _totalSales += value;
    }

    double get totalSales {
        return _totalSales ?? 0;
    }

    @override
    double calculateBouns({double companyRevenue}) {
        assert(_totalSales > _target);

        return (_commission / 100) * _totalSales;
    }

}