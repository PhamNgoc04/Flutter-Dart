import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/AddContact.dart';
import 'package:flutterdarttrungtin/Demo32PageStateFull.dart';
import 'package:flutterdarttrungtin/Demo32PageStateless.dart';
import 'package:flutterdarttrungtin/entity/Contact.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';
import 'package:flutterdarttrungtin/helper/DBHelper.dart';

class Demo33Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo33PageState();
  }
}

class Demo33PageState extends State<Demo33Page> {

  late Future<List<Contact>> contacts;

  @override
  void initState() {
    super.initState();
    refreshContacts();
  }

  void refreshContacts() {
    setState(() {
      contacts = DBHelper().findAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Demo 33 Page",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: FutureBuilder<List<Contact>>(
            future: contacts,
            builder: (BuildContext context, AsyncSnapshot<List<Contact>> snapshot) {
                if(snapshot.hasData) {
                  return ListView.builder(
                    padding: EdgeInsets.all(10),
                    itemCount: snapshot.data!.length,
                      itemBuilder: (context, i ) {
                        return Card(
                          margin: EdgeInsets.only(bottom: 5),
                          elevation: 5,
                            child: ListTile(
                              title: Text(snapshot.data![i].name!),
                            ),
                        );
                      }
                  );
                }
                else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
            }
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
            onPressed: () => floatingActionButtonOnPress(),
        ),
    );
  }

  floatingActionButtonOnPress() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => AddContactPage(

       ),
      ),
    );
  }
}
