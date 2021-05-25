import 'package:flutter/material.dart';
import 'package:moorv2/UI/HomePage.dart';
import 'package:moorv2/databse/moor_database.dart';
import 'package:provider/provider.dart';
import 'package:moor/ffi.dart';
// import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3/open.dart';

void main() {
  // open.overrideFor(OperatingSystem.windows, _ );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<Database>(create: (_) => Database())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.red, fontFamily: "Montserrat"),
        home: HomePage(),
      ),
    );
  }
}


// DynamicLibrary _openOnLinux() {
//   final script = File(Platform.script.toFilePath());
//   final libraryNextToScript = File('${script.path}/sqlite3.so');
//   return DynamicLibrary.open(libraryNextToScript.path);
// }

