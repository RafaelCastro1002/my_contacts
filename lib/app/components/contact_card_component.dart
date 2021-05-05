import 'package:flutter/material.dart';

class ContactCardComponent extends StatelessWidget {
  final String nome;
  final String numeroCelular;
  final int numeroImagem;
  final bool lastItem;

  const ContactCardComponent({
    Key key,
    this.nome,
    this.numeroCelular,
    this.numeroImagem,
    this.lastItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double valuePaddingButton = lastItem ? 100 : 5;

    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        right: 15,
        top: 5,
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Container(
                    color: Colors.grey[300],
                    child: Image(
                      image:
                          AssetImage('assets/images/person$numeroImagem.jpeg'),
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 30)),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          nome,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          numeroCelular,
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 75, right: 25, bottom: valuePaddingButton),
              child: Divider(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
