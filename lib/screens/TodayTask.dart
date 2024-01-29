// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:table_calendar/table_calendar.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Task Calendar',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: TaskCalendarPage(),
//     );
//   }
// }

// class Task {
//   int id;
//   String title;
//   DateTime date;

//   Task({required this.id, required this.title, required this.date});

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'title': title,
//       'date': date.toIso8601String(),
//     };
//   }

//   factory Task.fromMap(Map<String, dynamic> map) {
//     return Task(
//       id: map['id'],
//       title: map['title'],
//       date: DateTime.parse(map['date']),
//     );
//   }
// }

// class TaskDatabase {
//   static Database? _database;
//   static final TaskDatabase instance = TaskDatabase._();

//   TaskDatabase._();

//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await initDatabase();
//     return _database!;
//   }

//   Future<Database> initDatabase() async {
//     final path = join(await getDatabasesPath(), 'task_database.db');
//     return await openDatabase(path, version: 1, onCreate: (db, version) {
//       return db.execute(
//         'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, date TEXT)',
//       );
//     });
//   }

//   Future<void> insertTask(Task task) async {
//     final db = await database;
//     await db.insert('tasks', task.toMap());
//   }

//   Future<List<Task>> getTasks(DateTime date) async {
//     final db = await database;
//     final List<Map<String, dynamic>> maps = await db.query(
//       'tasks',
//       where: 'date = ?',
//       whereArgs: [date.toIso8601String()],
//     );
//     return List.generate(maps.length, (i) {
//       return Task.fromMap(maps[i]);
//     });
//   }

//   Future<void> deleteTask(int id) async {
//     final db = await database;
//     await db.delete(
//       'tasks',
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }
// }

// class TaskCalendarPage extends StatefulWidget {
//   @override
//   _TaskCalendarPageState createState() => _TaskCalendarPageState();
// }

// class _TaskCalendarPageState extends State<TaskCalendarPage> {
//   late final CalendarController _calendarController;
//   late List<Task> _tasks;
//   late TaskDatabase _database;

//   @override
//   void initState() {
//     super.initState();
//     _calendarController = CalendarController();
//     _tasks = [];
//     _database = TaskDatabase.instance;
//     _initializeDatabase();
//   }

//   Future<void> _initializeDatabase() async {
//     await _database.initDatabase();
//     await _loadTasks(DateTime.now());
//   }

//   Future<void> _loadTasks(DateTime date) async {
//     final tasks = await _database.getTasks(date);
//     setState(() {
//       _tasks = tasks;
//     });
//   }

//   Future<void> _addTask() async {
//     final now = DateTime.now();
//     final task = Task(id: now.millisecondsSinceEpoch, title: 'New Task', date: now);
//     await _database.insertTask(task);
//     _loadTasks(now);
//   }

//   Future<void> _deleteTask(int id) async {
//     await _database.deleteTask(id);
//     _loadTasks(DateTime.now());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Task Calendar'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TableCalendar(
//             calendarController: _calendarController,
//             onDaySelected: (date, _) async {
//               await _loadTasks(date);
//             },
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _tasks.length,
//               itemBuilder: (context, index) {
//                 final task = _tasks[index];
//                 return ListTile(
//                   title: Text(task.title),
//                   subtitle: Text('${task.date.day}/${task.date.month}/${task.date.year}'),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       _deleteTask(task.id);
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _addTask,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
