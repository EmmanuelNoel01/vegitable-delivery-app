import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.grey[800],
              iconSize: 20,
              padding: EdgeInsets.zero,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
                color: Colors.grey[800],
                iconSize: 20,
                padding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildCardItem(
              name: 'Red Apples',
              weight: '590g',
              price: 'UGX. 10,000',
              quantity: 1,
              isBold: true,
              imagePath: 'assets/apple.png',
            ),
            Divider(height: 24, thickness: 1),
            _buildCardItem(
              name: 'Orange',
              weight: '590g',
              price: 'UGX. 10,000',
              quantity: 1,
              isBold: true,
              imagePath: 'assets/Orange.jpeg',
            ),
            Divider(height: 24, thickness: 1),
            _buildCardItem(
              name: 'Pineapple',
              weight: '590g',
              price: 'UGX. 10,000',
              quantity: 1,
              isBold: true,
              imagePath: 'assets/Pineapple.jpg',
            ),
            SizedBox(height: 30),
            _buildPromoCode(),
            SizedBox(height: 30),
            _buildDummySummary(),
            SizedBox(height: 60),
            _buildCheckOutButton(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildCardItem({
  required String name,
  required String weight,
  required String price,
  required int quantity,
  required bool isBold,
  required String imagePath,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(width: 16),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            SizedBox(height: 4),
            Text(
              weight,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            SizedBox(height: 8),
            Text(
              weight,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove, size: 18),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                quantity.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, size: 18),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildPromoCode() {
  return SizedBox(
    width: double.infinity,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'PromoCode',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
              Text(
                'EX67WQQ9KY',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Icon(Icons.check_circle_outline, color: Colors.green[400]),
        ],
      ),
    ),
  );
}

Widget _buildDummySummary() {
  return Column(
    children: [
      _buildDummySummaryRow('Subtotal:', 'UGX. 15,000'),
      SizedBox(height: 8),
      _buildDummySummaryRow('Delivery:', 'UGX. 15,000'),
      SizedBox(height: 8),
      _buildDummySummaryRow('Discount:', 'UGX. 15,000'),
      Divider(height: 24, thickness: 1),
      _buildDummySummaryRow('Subtotal:', 'UGX. 15,000'),
    ],
  );
}

Widget _buildDummySummaryRow(
  String label,
  String value, {
  bool isTotal = false,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[600],
          fontWeight: isTotal ? FontWeight.normal : FontWeight.normal,
        ),
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: 18,
          fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          color: isTotal ? Colors.orange[800] : Colors.black,
        ),
      ),
    ],
  );
}

Widget _buildCheckOutButton(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        // primary: Colors.green[800],
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'UGX. 10,000',
              style: TextStyle(
                // fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  'Check Out',
                  style: TextStyle(
                    // fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
