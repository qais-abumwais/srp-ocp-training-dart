import 'package:traning/traning.dart' as traning;

import 'LeadDeveloper.dart';
import 'Manager.dart';
import 'NormalEmployee.dart';
import 'Position.dart';
import 'Printer.dart';
import 'Qualification.dart';
import 'SalesEmployee.dart';

void main(List<String> arguments) {
    // Manager
    Manager rasheed = Manager('Rasheed', 'Rabata', 'M', DateTime(1986, 5, 5), Qualification.Bachelors, 5000, 10);
    // Leader
    LeadDeveloper ibrahim = LeadDeveloper('Ibrahim', 'Swaiss', "M", DateTime(1975, 6, 6), Qualification.Doctoral, 4000);
    // Sales
    SalesEmployee join = SalesEmployee("Brain", "B", "M", DateTime(1990, 7, 7), Qualification.Master, 3000, 15, 1000);
    join.increaseTotal(2000);
    // Developer
    NormalEmployee qais = NormalEmployee("Qais", "Maher", "M", DateTime(1997, 7, 1), Qualification.Bachelors, 3000, Position.developer);
    // HR
    NormalEmployee diana = NormalEmployee("Diana", "Shwabkeh", "F", DateTime(1988, 1, 1), Qualification.Bachelors, 3000, Position.hr);



    // Set Employee Manager
    ibrahim.manager = rasheed;
    join.manager = rasheed;
    qais.manager = ibrahim;
    diana.manager = rasheed;

    // Set subordinates for mangers
    rasheed.addListOfSubordinates([
        ibrahim,
        join,
        diana
    ]);
    ibrahim.addSubordinate(qais);
    
    // Print Data
    Printer printRasheedData = Printer(rasheed);
    printRasheedData.printAllEmployeeData();

    print("\n\n");

    Printer printIbrahimData = Printer(ibrahim);
    printIbrahimData.printAllEmployeeData();

    print("\n\n");

    Printer printJoinData = Printer(join);
    printJoinData.printAllEmployeeData();

    print("\n\n");

    Printer printQaisData = Printer(qais);
    printQaisData.printAllEmployeeData();

    print("\n\n");

    Printer printDianaData = Printer(diana);
    printDianaData.printAllEmployeeData();    
}
