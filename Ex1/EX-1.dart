enum Skill { FLUTTER, DART, OTHER }

class Address {
  String _street;
  String _city;
  int _zipCode;

  Address(this._street, this._city, this._zipCode);

  //getter
  String get street => _street;
  String get city => _city;
  int get zipCode => _zipCode;

  @override
  String toString(){ 
    return '$_street, $_city, $_zipCode';
  }
}

class Employee {
  
  String _name;
  double _baseSalary;
  List<Skill> _skill;
  Address _address;
  int _yearOfExperience;

  Employee(this._name, this._baseSalary, this._skill, this._address, this._yearOfExperience);

  //named constructor for mobileDeveloper
  Employee.mobileDeveloper(this._name, this._baseSalary, this._address, this._yearOfExperience,) : _skill = const [Skill.DART, Skill.FLUTTER];

  //getter
  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skill => _skill;
  Address get address => _address;
  int get yearOfExperience => _yearOfExperience;

  void printDetails() {
    print(
        'Employee: $_name, Base Salary: \$$_baseSalary \nSkills: $_skill \nAddress: $_address \nYears of Experience: $_yearOfExperience \n\n');
  }

  double computeSalary() {
    double total = _baseSalary;
    total += _yearOfExperience * 2000;
    if (_skill.contains(Skill.DART)) {
      total += 3000;
    }
    if (_skill.contains(Skill.FLUTTER)) {
      total += 5000;
    }
    if (_skill.contains(Skill.OTHER)) {
      total += 1000;
    }
    return total;
  }
}

void main() {
  //test1
  var addr1 = Address('6A', 'Phnom Penh', 123);
  var emp1 = Employee('Sak', 2000.0, [Skill.OTHER], addr1, 2);
  var emp2 = Employee.mobileDeveloper('Sok', 2500.0, addr1, 3);
  emp1.printDetails();
  emp2.printDetails();
  print('compute salary: \$${emp1.computeSalary()}');
  //access by getters
  // print('\nAccess via getters:');
  // print('Name: ${emp2.name}');
  // print('Skills: ${emp2.skill}');
  // print('City: ${emp2.address.city}');
}
