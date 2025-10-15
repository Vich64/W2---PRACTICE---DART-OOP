import 'model.dart';

enum DeliveryMethod { Delivery, Pickup }

class Order {
  final Customer customer;
  final List<OrderItem> items;
  final DeliveryMethod deliveryMethod;
  final Address? deliveryAddress;

  Order({required this.customer, required this.items, required this.deliveryMethod, this.deliveryAddress});

  double totalAmount() {
    double total = items.fold(0, (sum, item) => sum + item.totalPrice());
    if (deliveryMethod == DeliveryMethod.Delivery) {
      total += 2.0; // delivery fee
    }
    return total;
  }
}
