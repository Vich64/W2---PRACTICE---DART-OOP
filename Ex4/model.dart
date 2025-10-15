class Customer {
  final String name;
  final String email;

  Customer({required this.name, required this.email});
}

class Address {
  final String street;
  final String city;
  final int zipCode;

  Address({required this.street, required this.city, required this.zipCode});

  @override
  String toString() => '$street, $city, $zipCode';
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class OrderItem {
  final Product product;
  final int quantity;

  OrderItem({required this.product, required this.quantity});
  double totalPrice() => product.price * quantity;
}
