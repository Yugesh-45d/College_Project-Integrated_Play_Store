// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_store_app/screens/other_apps/notes/models/note_model.dart';
import 'package:play_store_app/screens/other_apps/notes/providers/provider_data.dart';
import 'package:play_store_app/screens/other_apps/notes/screens/note_page.dart';
import 'package:play_store_app/screens/playstore_app/playstore_homepage.dart';
import 'package:provider/provider.dart';

class NotesAppHomePage extends StatefulWidget {
  const NotesAppHomePage({super.key});

  @override
  State<NotesAppHomePage> createState() => _NotesAppHomePageState();
}

class _NotesAppHomePageState extends State<NotesAppHomePage> {
  Color primaryColor = Color(0xfff3f2f7);
  Color secondaryColor = Colors.amber;
  Color thirdColor = Colors.black;
  void createNewNote() {
    //create a new id
    int id = Provider.of<NotesAppProviderData>(context, listen: false)
        .getAllNotes()
        .length;

    //create a blank note
    NoteModel newNote = NoteModel(id: id, text: '');

    //go to edit the note
    goToNotePage(newNote, true);
  }

  //go to note editing page
  goToNotePage(NoteModel note, bool isNewNote) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NotesAppNotePage(
          note: note,
          isNewNote: isNewNote,
        ),
      ),
    );
  }

  //delete note
  void deleteNote(NoteModel note) {
    Provider.of<NotesAppProviderData>(context, listen: false).deleteNote(note);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NotesAppProviderData>(
      builder: (context, value, child) => SafeArea(
        child: WillPopScope(
          
  onWillPop: () async {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PlayStoreHomePage()));
          return true;
        },


          child: Scaffold(
            backgroundColor: primaryColor,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.back,
                              color: secondaryColor,
                              size: 28,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Folders",
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            showCupertinoModalPopup(
                              context: context,
                              builder: (BuildContext context) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CupertinoActionSheet(
                                  actions: <CupertinoActionSheetAction>[
                                    CupertinoActionSheetAction(
                                      child: const Text(
                                        'Sort: Title A->Z',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    CupertinoActionSheetAction(
                                      child: const Text(
                                        'Sort: Title Z->A',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    CupertinoActionSheetAction(
                                      child: const Text(
                                        'Sort notes: By time',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    CupertinoActionSheetAction(
                                      child: const Text(
                                        'Settings',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                  cancelButton: CupertinoActionSheetAction(
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                          child: SvgPicture.asset(
                            "assets/pending.svg",
                            height: 28,
                            color: secondaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      "All Notes",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 8),
                    CupertinoSearchTextField(),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                      ),
                      child: Text(
                        "Notes",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    value.getAllNotes().isNotEmpty
                        ? CupertinoListSection.insetGrouped(
                            margin: EdgeInsets.all(4),
                            children: List.generate(
                              value.getAllNotes().length,
                              (index) => GestureDetector(
                                onLongPress: () {
                                  // print("Hello World");
                                },
                                child: CupertinoListTile.notched(
                                  title: Text(
                                    value.getAllNotes()[index].text,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "27.07.2023,  ${value.getAllNotes()[index].text}",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4),
                                            child: Icon(
                                              CupertinoIcons.folder,
                                              color: Colors.grey,
                                              size: 16,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                              top: 4,
                                            ),
                                            child: Text(
                                              "Notes",
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  // additionalInfo: Text("12 days ago"),
                                  // trailing: CupertinoListTileChevron(),
                                  onTap: () {
                                    goToNotePage(
                                      value.getAllNotes()[index],
                                      false,
                                    );
                                  },
                                ),
                              ),
                            ),
                          )
                        : Center(child: Text("No Notes")),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                if (value == 1) {
                  createNewNote();
                }
              },
              items: [
                BottomNavigationBarItem(
                  icon: Text(
                    "${value.getAllNotes().length} notes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/edit.svg",
                    height: 24,
                    color: secondaryColor,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
