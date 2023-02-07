class ExpenseTracker {
  double balance;
  double income;
  double expense;
  ExpenseTracker({
    required this.balance,
    required this.income,
    required this.expense,
  });

  @override
  String toString() {
    return 'Balance: $balance\nIncome: $income\nExpense: $expense';
  }

  void addIncome(double income){
    balance+=income;
  }
  void addExpense(double expen){
    if(balance>0) {
      balance-=expen;
    }else{
      print('You have insufficient balance to spend');
    }
    
  }
}

void main() {
  var tracker = ExpenseTracker(balance: 0.0, income: 0.0, expense: 0.0);

  tracker.balance = 100000;
  tracker.addIncome(200000);
  tracker.addExpense(500000);
  tracker.addExpense(100000);
  print(tracker.balance);
  //print(tracker);
}