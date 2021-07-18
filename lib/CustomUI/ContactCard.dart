import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/Model/ChatModel.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, required this.contact}) : super(key: key);
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: SvgPicture.asset(
          "assets/person.svg",
          color: Colors.white,
          height: 30,
          width: 30,
        ),
        backgroundColor: Colors.blueGrey[200],
      ),
      title: Text(contact.name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
      subtitle: Text(
        contact.status,
        style: TextStyle(fontSize: 13),
      ),
    );
  }
}
