import 'package:expense_tracker/widgets/expense_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 25.50,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _showExpensesModal() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return NewExpense(addExpense: () {});
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Expenses'), actions: [
          IconButton(onPressed: _showExpensesModal, icon: const Icon(Icons.add))
        ]),
        body: Column(
          children: [
            const Text('The chart '),
            Expanded(child: ExpensesList(expenses: _registeredExpenses))
          ],
        ));
  }
}
