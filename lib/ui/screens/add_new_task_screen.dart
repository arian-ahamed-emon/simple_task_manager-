import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TMAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 42,
              ),
              Text('Add New Task',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Tittle'),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Description',
                ),
                maxLines: 6,
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Icon(Icons.arrow_circle_right))
            ],
          ),
        ),
      ),
    );
  }
}
