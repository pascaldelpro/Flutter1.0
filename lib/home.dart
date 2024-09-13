import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      appBar: AppBar(
        title:  const Text("Title"),
        leading:  const Icon(Icons.menu),
        actions: <Widget>[
          Padding(padding: const EdgeInsets.all(10), child:
          IconButton(
            icon:  const Icon(Icons.notifications),
            tooltip: 'Show Hint',
            onPressed: () {},
          ),
          )
          ],
          bottom:  const TabBar(
            tabs: [
              Tab(text: 'Add'),
              Tab(text: 'Finished'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: FloatingActionButton(onPressed: () {
              showDialog(context: context, builder: (BuildContext context)
              {
                return Dialog(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [Text("data")],
                    ),
                  ),
                );
              },
            );
            }, child: const Icon(Icons.add),)),
             const Center(child: Text('Content for Tab 2')),
          ],
        ),
      ),
    );
  }
}