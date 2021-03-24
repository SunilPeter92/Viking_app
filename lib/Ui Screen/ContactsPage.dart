import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

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
                          _popupDialog(context);
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
                                  child: Text(contact.initials()),
                                  backgroundColor:
                                      Theme.of(context).accentColor,
                                ),
                          title: Text(contact.displayName ?? ''),

                          //This can be further expanded to showing contacts detail
                          // onPressed().
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).cardColor,
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

void _popupDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert Dialog !!!'),
          // content: Text('Alert Dialog Body Goes Here  ..'),
          actions: <Widget>[
            IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.phone,
                  size: 30,
                  color: Theme.of(context).cardColor,
                )),
            //  child: Text('OK')

            IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.message,
                  size: 30,
                  color: Theme.of(context).cardColor,
                )),
          ],
        );
      });
}
