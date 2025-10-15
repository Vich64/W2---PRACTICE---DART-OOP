import 'model.dart';
import 'order.dart';

void main() {
  //customer
  var csm1 = Customer(name: 'Ronan', email: 'ronan@gmail.com');

  //product
  var pd1 = Product(name: 'House', price: 2.0);
  var pd2 = Product(name: 'Pen', price: 10000.0);

  //orderItems
  var item1 = OrderItem(product: pd1, quantity: 1000000);
  var item2 = OrderItem(product: pd2, quantity: 5);

  //delivery Addr
  var addr = Address(street: '67A', city: 'Phnom Penh', zipCode: 6969);

  //order
  var order1 = Order(customer: csm1, items: [item1, item2], deliveryMethod: DeliveryMethod.Delivery, deliveryAddress: addr);
  var order2 = Order(customer: csm1, items: [item2], deliveryMethod: DeliveryMethod.Pickup);

  print('Customer: ${order1.customer.name}');
  print('Order 1 total: \$${order1.totalAmount()}'); // 1255
  print('Order 2 total: \$${order2.totalAmount()}'); // 50
}
