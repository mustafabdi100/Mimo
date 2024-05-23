import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

class StatementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Statements',
          style: TextStyle(
            color: Color(0xFF4B645F),
            fontFamily: 'Montserrat',
          ),
        ),
        backgroundColor: Color(0xFFF1EFE8),
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFF4B645F)),
      ),
      body: Container(
        color: Color(0xFFF1EFE8),
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            StatementItem(
              date: '20 May 2024',
              transactions: [
                TransactionItem(
                  description: 'KPLC',
                  number: '276530742',
                  amount: -1986.00,
                  time: '12:38 PM',
                ),
                TransactionItem(
                  description: 'NSSF',
                  number: '276530742',
                  amount: 2500.00,
                  time: '12:38 PM',
                ),
                TransactionItem(
                  description: 'KRA',
                  number: '276530742',
                  amount: -3000.00,
                  time: '12:38 PM',
                ),
              ],
            ),
            StatementItem(
              date: '17 May 2024',
              transactions: [
                TransactionItem(
                  description: 'KPLC',
                  number: '276530742',
                  amount: 1000.00,
                  time: '12:38 PM',
                ),
                TransactionItem(
                  description: 'NSSF',
                  number: '276530742',
                  amount: -500.00,
                  time: '12:38 PM',
                ),
              ],
            ),
            StatementItem(
              date: '14 May 2024',
              transactions: [
                TransactionItem(
                  description: 'KRA',
                  number: '276530742',
                  amount: -2000.00,
                  time: '12:38 PM',
                ),
                TransactionItem(
                  description: 'KPLC',
                  number: '276530742',
                  amount: 1200.00,
                  time: '12:38 PM',
                ),
                TransactionItem(
                  description: 'NSSF',
                  number: '276530742',
                  amount: -1800.00,
                  time: '12:39 PM',
                ),
              ],
            ),
            StatementItem(
              date: '12 May 2024',
              transactions: [
                TransactionItem(
                  description: 'KRA',
                  number: '276530742',
                  amount: 3500.00,
                  time: '12:38 PM',
                ),
              ],
            ),
            StatementItem(
              date: '11 May 2024',
              transactions: [
                TransactionItem(
                  description: 'KPLC',
                  number: '276530742',
                  amount: -1000.00,
                  time: '12:38 PM',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class StatementItem extends StatelessWidget {
  final String date;
  final List<TransactionItem> transactions;

  const StatementItem({
    required this.date,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            date,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: transactions,
        ),
      ],
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String description;
  final String number;
  final double amount;
  final String time;

  const TransactionItem({
    required this.description,
    required this.number,
    required this.amount,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFE0E0E0),
            radius: 20,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Text(
                  number,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                (amount < 0 ? '- KSH ' : '+ KSH ') +
                    amount.abs().toStringAsFixed(2),
                style: TextStyle(
                  color: amount < 0 ? Colors.red[900] : Colors.green[900],
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
