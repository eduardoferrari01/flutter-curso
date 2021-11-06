import 'package:bytebank/dao/contact_dao.dart';
import 'package:bytebank/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNameController = TextEditingController();
  final ContactDao _dao = ContactDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New contatc'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  label: Text('Full name'),
                ),
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  controller: _accountNameController,
                  decoration: InputDecoration(
                    label: Text('Account number'),
                  ),
                  style: TextStyle(fontSize: 24.0),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final String name = _nameController.text;
                      final int accountNumber = int.parse(_accountNameController.text);
                      Contact newContact = Contact(0, name, accountNumber);
                      _dao.save(newContact).then((id) => Navigator.pop(context));
                    },
                    child: Text('Create'),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
