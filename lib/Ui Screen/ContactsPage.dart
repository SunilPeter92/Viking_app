import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:viking/Ui%20Screen/DialScreen.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<Contact> _contacts = [];
  Future<PermissionStatus> _getPermission() async {
    final PermissionStatus permission = await Permission.contacts.status;

    if (permission == PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
          await [Permission.contacts].request();
      // print(permissionStatus);
      return permissionStatus[Permission.contacts] ?? PermissionStatus.denied;
    } else {
      print("oooo");
      return permission;
    }
    return null;
  }

  Future<void> getContacts() async {
    if (_contacts.length == 0) {
      PermissionStatus p = await _getPermission();
      if (p == PermissionStatus.granted) {
        final List<Contact> contacts =
            (await ContactsService.getContacts()).toList();

        setState(() {
          _contacts = contacts;
        });
        print(_contacts.length);
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: Text('Permissions error'),
                  content: Text('Please enable contacts access '
                      'permission in system settings'),
                  actions: <Widget>[
                    InkWell(
                      child: Text('OK'),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                  ],
                ));
      }
    } else {
      return;
    }
  }

  //Iterable<Contact> _contacts;

  @override
  void initState() {
    //_getPermission();

    getContacts();

    // getContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height.toString() + 'aa');

    print(_contacts.length);
    return Scaffold(
      body: !_contacts.isEmpty
          //Build a list view of all contacts, displaying their avatar and
          // display name
          ? ListView.builder(
              itemCount: _contacts.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                Contact contact = _contacts?.elementAt(index);
                return Container(
                  height: height * .11,
                  //height: 80,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          _popupDialog(context, height, width,contact.displayName);
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 18),
                          leading: (contact.avatar != null &&
                                  contact.avatar.isNotEmpty)
                              ? CircleAvatar(
                                  backgroundImage: MemoryImage(contact.avatar),
                                )
                              : CircleAvatar(
                                  child: Text(
                                    contact.initials(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor:
                                      Theme.of(context).accentColor,
                                ),
                          title: Text(
                            contact.displayName ?? '',
                            style: TextStyle(color: Colors.white),
                          ),

                          //This can be further expanded to showing contacts detail
                          // onPressed().
                        ),
                      ),
                      Divider(color: Colors.white
                          //Theme.of(context).cardColor,
                          )
                    ],
                  ),
                );
              },
            )
          : Center(child: const CircularProgressIndicator()),
    );
  }
}

void _popupDialog(BuildContext context, double height, double width,String number) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child:Container(
              alignment: Alignment.center,
              height: height * .3,
              //  height: 100,
              width: width - 100,
              decoration: BoxDecoration(
                // color: Theme.of(context).canvasColor,
                borderRadius:  BorderRadius.circular(50),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: InkWell(
                          onTap: () {
                            print(number);
                            print(number);
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DialScreen(number: number,)));
                          },
                          child: Icon(
                            Icons.phone,
                            size: 60,
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: InkWell(
                          onTap: () {
                            print(number);
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DialScreen(number: number,)));
                          },
                          child: Icon(
                            Icons.message,
                            size: 60,
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
        );
      });
}
