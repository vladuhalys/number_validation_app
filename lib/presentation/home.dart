import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:number_validation_app/presentation/widgets/home_app_bar.dart';
import 'package:number_validation_app/presentation/widgets/home_middle_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8EA9FB),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(20, 80, 0, 0),
        child: Column(
          children: [
            HomeAppBar(),
            HomeMiddleBar()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          //  Navigator.of(context).push(
          //     MaterialWithModalsPageRoute(
          //       builder: (_) => const Text('hello'),
          //       ),
          //   );
        },
        child: const Icon(
          Icons.arrow_forward_rounded,
          color: Color(0xff594C74),
          size: 35.0,
        ),
      ),
    );
  }
}
