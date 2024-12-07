import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.expeneses, required this.onRemoveExpense});

  final List<Expense> expeneses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expeneses.length,
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error,
          margin: EdgeInsets.symmetric(horizontal: 18),
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.delete,
              size: 39,
            ),
          ),
        ),
        key: ValueKey(expeneses[index]),
        onDismissed: (direction) {
          onRemoveExpense(expeneses[index]);
        },
        child: ExpenseItems(expense: expeneses[index]),
      ),
    );
  }
}
