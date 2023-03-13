import 'package:flutter/material.dart';
import 'package:number_validation_app/presentation/widgets/home_app_bar.dart';
import 'package:number_validation_app/presentation/widgets/home_middle_bar.dart';
import 'package:provider/provider.dart';

import '../domain/model/phone.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color activeButtonColor = Colors.white;
  Color disableButtonColor = const Color(0xFFB7C8FD);
  Color activeIconColor = const Color(0xFF594C74);
  Color disableIconColor = const Color(0xFF7886B8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8EA9FB),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(20, 80, 0, 0),
        child: Column(
          children: [HomeAppBar(), HomeMiddleBar()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: (context.watch<Phone>().phone.length == 13) ? 6.0 : 0,
        backgroundColor: (context.watch<Phone>().phone.length == 13)
            ? activeButtonColor
            : disableButtonColor,
        onPressed: (context.watch<Phone>().phone.length == 13)
            ? () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Phone number'),
                    content: Text(context.watch<Phone>().getFullPhone()),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              }
            : null,
        child: Icon(
          Icons.arrow_forward_rounded,
          color: (context.watch<Phone>().phone.length == 13)
            ? activeIconColor
            : disableIconColor,
          size: 35.0,
        ),
      ),
    );
  }
}
