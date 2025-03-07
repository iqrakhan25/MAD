import 'dart:io';

class TodoList {
  List<String> tasks = [];

  void addTask(String task) {
    tasks.add(task);
    print('Task "$task" added successfully!');
  }

  void removeTask(int index) {
    if (index >= 0 && index < tasks.length) {
      print('Task "${tasks[index]}" removed successfully!');
      tasks.removeAt(index);
    } else {
      print('Invalid index!');
    }
  }

  void displayTasks() {
    if (tasks.isEmpty) {
      print('No tasks available!');
    } else {
      print('\nYour To-Do List:');
      for (int i = 0; i < tasks.length; i++) {
        print('$i: ${tasks[i]}');
      }
    }
  }
}

void main() {
  TodoList todoList = TodoList();
  
  while (true) {
    print('\nTo-Do List Menu:');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. View Tasks');
    print('4. Exit');
    stdout.write('Choose an option: ');
    
    String? input = stdin.readLineSync();
    if (input == null) continue;
    
    switch (input) {
      case '1':
        stdout.write('Enter task: ');
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          todoList.addTask(task);
        } else {
          print('Task cannot be empty!');
        }
        break;
      case '2':
        todoList.displayTasks();
        stdout.write('Enter task number to remove: ');
        String? indexInput = stdin.readLineSync();
        if (indexInput != null && int.tryParse(indexInput) != null) {
          todoList.removeTask(int.parse(indexInput));
        } else {
          print('Invalid input!');
        }
        break;
      case '3':
        todoList.displayTasks();
        break;
      case '4':
        print('Exiting...');
        return;
      default:
        print('Invalid choice! Please select a valid option.');
    }
  }
}