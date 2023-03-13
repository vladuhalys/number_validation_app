import 'package:flutter/material.dart';
import 'package:number_validation_app/internal/application.dart';
import 'package:provider/provider.dart';

import 'domain/model/phone.dart';

void main() async {
  runApp(
    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Phone()),
      ],
      child: const Application(),
    ),
  );
}