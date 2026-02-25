import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testtwentysix/app_widget.dart';
import 'package:testtwentysix/config_reader.dart';
import 'package:testtwentysix/enviroment.dart';
import 'package:flutter/material.dart';


Future<void> MainCommon(String env) async{
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader .initialize();

  MaterialColor? primaryColor;
  switch(env) {
    case Environment.dev :
      primaryColor = Colors.blue;
      break;
    case Environment.prod :
      primaryColor = Colors.green;
      break;

  }
 runApp(Provider.value(
     value: primaryColor!,
     child: MyApp()));

}

