/*Imagínete que tienes una clase de carrito de compras que mantiene un List<double> privado de precios. Añádase lo siguiente:

    Llamó un metodo total que devuelve la suma de los precios
    Un setter que sustituya la lista por una nueva, siempre y cuando la nueva lista no contenga ningún precio negativo (en cuyo caso el setter debería lanzar un InvalidPriceException).*/

class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];
  
  // Add a "total" getter here
  double get total => _prices.reduce((value, element) => value + element);
  

  // Add a "prices" setter here
  set prices(List<double> precio){
    if(precio.any((p) => p < 0)){
      throw InvalidPriceException();
    }
  _prices = precio;  
  }
  