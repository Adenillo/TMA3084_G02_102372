// Pizza Order Calculator by Adenillo Sheldy (102372)

import 'dart:io';

void main() {
  bool keepOrdering = true;

  while (keepOrdering) {
    // 1. Display Prices
    print('------------------------------------');
    print('      PIZZA ORDER CALCULATOR        ');
    print('------------------------------------');
    print('Prices:');
    print('  S - Small  : \$5');
    print('  M - Medium : \$7');
    print('  L - Large  : \$10');
    print('------------------------------------');

    // 2. Ask User for Pizza Size
    stdout.write('Select size (S, M, L) or Q to quit: ');
    String? sizeInput = stdin.readLineSync()?.trim().toUpperCase();

    if (sizeInput == 'Q') {
      print('Thank you for using Pizza Order Calculator. Goodbye!');
      break;
    }

    if (sizeInput == null || (sizeInput != 'S' && sizeInput != 'M' && sizeInput != 'L')) {
      print('Invalid size selected! Please try again.\n');
      continue; // Loops back to the beginning of the while loop
    }

    // 3. Ask User for Quantity
    stdout.write('Enter quantity: ');
    String? qtyInput = stdin.readLineSync()?.trim();
    int? quantity = int.tryParse(qtyInput ?? '');

    if (quantity == null || quantity <= 0) {
      print('Invalid quantity! Please enter a positive integer.\n');
      continue; // Loops back to validate input
    }

    // 4. Use switch statement to calculate total payment
    int pricePerPizza = 0;
    switch (sizeInput) {
      case 'S':
        pricePerPizza = 5;
        break;
      case 'M':
        pricePerPizza = 7;
        break;
      case 'L':
        pricePerPizza = 10;
        break;
    }

    int totalPayment = pricePerPizza * quantity;

    // 5. Output Result
    print('------------------------------------');
    print('Order Details:');
    print('  Size     : $sizeInput');
    print('  Quantity : $quantity');
    print('  Total    : \$$totalPayment USD');
    print('------------------------------------\n');

    // Ask if user wants to place another order
    stdout.write('Would you like to place another order? (Y/N): ');
    String? continueInput = stdin.readLineSync()?.trim().toUpperCase();
    if (continueInput != 'Y') {
      keepOrdering = false;
      print('Thank you for your order! Goodbye!');
    }
    print('');
  }
}