class BankAccount {
 
    // TODO
     
  int _id;
  String _name;
  double _balance = 0;

  BankAccount(this._id, this._name, this._balance);

  //getter
  int get id => _id;
  String get name => _name;
  double get balance => _balance;

  void withdraw(double amount){
    if (amount <= 0){
      throw ArgumentError('Withdraw need to be > 0');
    }
    if (balance < amount){
      print('Insufficient bakance');
    }
    else {
      _balance -= amount;
      print('Withdraw $amount successful');
    }
  }

  void credit(double amount){
    if (amount <= 0){
      throw ArgumentError('Credit amount need to be > 0');
    }
   _balance += amount;
   print('$amount Credit successfully :)'); 
  }
}

class Bank { 

  // TODO

  String _name;
  List<BankAccount> _bankAccount = []; // initialize empty list

  Bank({required String name}) : _name = name;
  
  //getter 
  String get name => _name;

  BankAccount createAccount(int accid, String accOwner){
    for (var allId in _bankAccount){
      if (allId.id == accid) {
        throw ArgumentError('Account with id $accid already exist');
      }
    }
    final newAccount = BankAccount(accid, accOwner, 0);
    _bankAccount.add(newAccount);
    return newAccount;
  }
}
 
void main() {

  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
