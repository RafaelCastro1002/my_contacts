import 'package:my_contacts/app/models/contacts_model.dart';

class ContactsService {
  static List<ContactsModel> getContacts() {
    return [
      ContactsModel('Henrique Cunha', '+55 45 99876-5492', 1),
      ContactsModel('Fernanda Peixoto', '+55 67 99689-5332', 2),
      ContactsModel('Jhon Winstenn', '+55 87 99622-8792', 3),
      ContactsModel('Philip Joseff', '+55 76 99598-3136', 4),
      ContactsModel('Maicon Silva', '+55 67 99672-9023', 5),
      ContactsModel('James Rodolfi', '+55 77 99888-9413', 6),
      ContactsModel('Terry Crews', '+55 88 99982-9999', 7),
      ContactsModel('Mr. Perfect', '+55 88 99633-9280', 8),
      ContactsModel('The Rock', '+55 88 98279-5928', 9),
      ContactsModel('Mark Zuckerberg', '+55 88 99982-9999', 10),
    ];
  }
}
