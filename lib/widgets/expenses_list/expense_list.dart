import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.expeneses, required this.onRemoveExpense});

  final List<Expense> expeneses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expeneses.length,
      itemBuilder: (ctx, index) => Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                onRemoveExpense(expeneses[index]);
              },
              icon: CupertinoIcons.delete,
              backgroundColor: Colors.red.shade700,
              borderRadius: BorderRadius.circular(8),
            )
          ],
        ),
        child: ExpenseItems(expense: expeneses[index]),
      ),
    );
  }
}
