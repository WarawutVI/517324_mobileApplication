import 'package:flutter/material.dart';

class PostGrid extends StatelessWidget {
  const PostGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Wrap in DefaultTabController to manage the bar state
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          // 2. The Navigation Bar (Icons)
          const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.grid_on)),
              Tab(icon: Icon(Icons.video_library_outlined)),
              Tab(icon: Icon(Icons.person_pin_outlined)),
            ],
          ),

          // 3. Expanded is REQUIRED here to prevent the Layout Error
          Expanded(
            child: TabBarView(
              children: [
                // TAB 1: Posts Grid
                buildGrid(),
                // TAB 2: Reels
                const Center(child: Text("Reels Page")),
                // TAB 3: Tagged
                const Center(child: Text("Tagged Page")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method for your Grid
  Widget buildGrid() {
    return GridView.builder(
      // shrinkWrap is not needed now because of Expanded above
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.grey[300],
        );
      },
    );
  }
}