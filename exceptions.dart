class BankAccount{
  double balance;
  BankAccount.newClient(double balance): this.balance=balance{
    if(balance<0){
      throw Exception('Balance cannot be less than 0');
    }
  }
}
 main(List<String> args) {
  try{
    double balance = -100;
    if(balance<0){
      throw ZeroBalanceException(balance: balance);
      // throw Exception('Balance cannot be less than 0');
    }
    print(balance);
  }on ZeroBalanceException catch(e){
     print(e);
  }
}

class ZeroBalanceException implements Exception{
  double balance;
  ZeroBalanceException({
    required this.balance,
  });

  @override
  String toString() {
    return 'ZeroBalanceException: $balance should not be less than zero';
  }
}

