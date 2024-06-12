import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.addExpense});

  final Function addExpense;

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        TextField(
          controller: _titleController,
          maxLength: 50,
          decoration: const InputDecoration(labelText: 'Title'),
        ),
        TextField(
          controller: _amountController,
          decoration:
              const InputDecoration(labelText: 'Amount', prefixText: '€ '),
          keyboardType: TextInputType.number,
          maxLength: 10,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  debugPrint(_titleController.text);
                },
                child: const Text('Add Expense')),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel')),
          ],
        )
      ]),
    );
  }
}
