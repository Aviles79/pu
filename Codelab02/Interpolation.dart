String stringify(int x, int y) {
  
  return '$x $y'; //se retornan las variables entre comillas sencillas para realizar la interpolacion
  
}

// Tests your solution (Don't edit!): 
void main() {
  assert(stringify(2, 3) == '2 3',
      "Your stringify method returned '${stringify(2, 3)}' instead of '2 3'");
  print('Success!');
}