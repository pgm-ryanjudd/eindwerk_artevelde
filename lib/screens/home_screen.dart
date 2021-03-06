import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eindwerk_lite/components/bottom_navigation.dart';
import 'package:eindwerk_lite/components/custom_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CollectionReference workouts = FirebaseFirestore.instance.collection('workouts');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: StreamBuilder(
        stream: workouts.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Text('Loading...');
          }

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
            ),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context, int index) {
              final doc = snapshot.data!.docs[index];
              return SimpleCard(
                margin: 4,
                route: '/workout',
                id: doc.id,
                image: doc['image'],
                title: doc['title'],
                description: doc['description'],
                exercises: doc['exercises'],
              );
            },
          );
        },
      ),
      bottomNavigationBar: const BottomNavigation(selectedPage: 'home'),
    );
  }
}
