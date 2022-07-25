import 'package:flutter/material.dart';
import 'package:instagram/screens/screens.dart';
import 'package:instagram/utilities/constants.dart';

class DirectMessagesScreen extends StatefulWidget {
  final Function() backToHomeScreen;
  final Function() onPressed;
  
  const DirectMessagesScreen({required Key key, required this.backToHomeScreen,required this.onPressed}) : super(key: key);
 // DirectMessagesScreen(this.backToHomeScreen,this.onPressed);
  @override
  _DirectMessagesScreenState createState() => _DirectMessagesScreenState();
}

class _DirectMessagesScreenState extends State<DirectMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: onPressed,
        ),
        title: Text('Direct'),
      ),
      body: DirectMessagesWidget(
        searchFrom: SearchFrom.messagesScreen, imageFile: null,
      ),
    );
  }
}
