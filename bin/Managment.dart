import 'Employee.dart';

class Managment {
    List<Employee> _subordinates;

    List<Employee> get subordinates {
        return _subordinates;
    }
 
    void addListOfSubordinates(List<Employee> subordinates) {
        assert(subordinates != null);
        _subordinates = subordinates;
    }

    void addSubordinate(Employee subordinate) {
        assert(subordinate != null);
        if(_subordinates == null) {
            _subordinates = [];
            _subordinates.add(subordinate);
            return;
        }
        assert(_subordinates.firstWhere((element) => element.id == subordinate.id, orElse: () => null) == null); // Aleardy exsit
        _subordinates.add(subordinate);
    }

    void removeSubordinate(Employee subordinate) {
        assert(subordinate != null);
        if(_subordinates == null) {
            return;
        }
        assert(_subordinates.firstWhere((element) => element.id == subordinate.id, orElse: () => null) != null); // not exsit
        _subordinates.removeWhere((element) => element.id == subordinate.id);
    }
}