// import 'package:flutter_driver/driver_extension.dart';
// import 'package:my_movies/main.dart' as app;
//
// void main() {
//   // This line enables the extension.
//   enableFlutterDriverExtension();
//
//   // Call the `main()` function of the app, or call `runApp` with
//   // any widget you are interested in testing.
//   app.main();
// }
//
// // import 'package:flutter_driver/driver_extension.dart';
// // import 'package:counter_app/main.dart' as app;
// // void main() {
// // This line enables the extension.
// //   enableFlutterDriverExtension();
// //   runApp(MyApp());
// // }

import 'package:my_movies/src/app.dart';

//import '../lib/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_driver/driver_extension.dart';

void main() {
  enableFlutterDriverExtension();
  runApp(App());
}