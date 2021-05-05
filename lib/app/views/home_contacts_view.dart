import 'package:flutter/material.dart';
import 'package:my_contacts/app/components/contact_card_component.dart';
import 'package:my_contacts/app/models/contacts_model.dart';
import 'package:my_contacts/app/services/contacts_service.dart';

class HomeContactsView extends StatelessWidget {
  final List<ContactsModel> contacts = ContactsService.getContacts();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'Contatos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contatos'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'procurar...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: contacts.length,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return ContactCardComponent(
                            nome: contacts[i].nome,
                            numeroCelular: contacts[i].numeroCelular,
                            numeroImagem: contacts[i].numeroImagem,
                            lastItem: (contacts.length - 1 == i));
                      }),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
