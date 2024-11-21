import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expeneses});
  final List<Expense> expeneses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expeneses.length,
      itemBuilder: (ctx, index) => ExpenseItems(expense: expeneses[index]),
    );
  }
}
