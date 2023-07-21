import 'package:flutter/material.dart';
import 'package:riverpod_context/riverpod_context.dart';

import 'package:chat_ia/shared/dummy/chats_dummy.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_comment_rounded),
        ),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              )
            ],
          ),
          title: const Text('WhatChat'),
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(
          children: List.generate(
            3,
            (index) => ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                var e = context.read(chatsProvider);
                return ListTile(
                  onTap: () {},
                  title: Text('${e['name']} ${index.toString()}'),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CircleAvatar(
                      radius: 20.sp,
                      child: Image.network(
                          e["image"] + (index * 2).toString() + ".jpg"),
                    ),
                  ),
                  subtitle: Text(e['lastMessage']["message"]),
                  trailing: Text(e['lastMessage']['hour']),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
