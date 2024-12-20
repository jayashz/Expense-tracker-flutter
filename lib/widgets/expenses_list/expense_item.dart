import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItems extends StatelessWidget {
  const ExpenseItems({super.key, required this.expense});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(
              expense.title,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rs.${expense.amount.toString()}',
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 4),
                    Text(
                      expense.formatedDate,
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
