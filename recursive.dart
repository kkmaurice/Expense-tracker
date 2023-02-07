void main(){
var value = _recursive(5);
print(value);
}

int _recursive(int number){
  if(number == 0) return 0;
  return number + _recursive(number-1);
}