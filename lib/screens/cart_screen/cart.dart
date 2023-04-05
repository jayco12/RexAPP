class Cart  {
  Cart({required this.name, this.isCartBought = false});

  final String name;
  bool isCartBought;

  void toggler(){
    isCartBought = !isCartBought;
  }
}