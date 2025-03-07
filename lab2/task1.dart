import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\nTo-Do List:");
    print("1. View tasks");
    print("2. Add a task");
    print("3. Remove a task");
    print("4. Exit");
    stdout.write("Choose an option: ");
    
    String? choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        viewTasks(tasks);
        break;
      case '2':
        addTask(tasks);
        break;
      case '3':
        removeTask(tasks);
        break;
      case '4':
        print("Exiting...");
        return;
      default:
        print("Invalid option, please try again.");
    }
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print("Your to-do list is empty.");
  } else {
    print("\nYour tasks:");
    for (int i = 0; i < tasks.length; i++) {
      print("${i + 1}. ${tasks[i]}");
    }
  }
}

void addTask(List<String> tasks) {
  stdout.write("Enter a new task: ");
  String? task = stdin.readLineSync();
  if (task != null && task.isNotEmpty) {
    tasks.add(task);
    print("Task added successfully!");
  } else {
    print("Task cannot be empty.");
  }
}

void removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print("No tasks to remove.");
    return;
  }
  viewTasks(tasks);
  stdout.write("Enter the number of the task to remove: ");
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '');
  if (index != null && index > 0 && index <= tasks.length) {
    print("Task '${tasks.removeAt(index - 1)}' removed successfully.");
  } else {
    print("Invalid task number.");
  }
}