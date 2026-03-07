import 'package:flutter/material.dart';

class PostGrid extends StatelessWidget {
  const PostGrid({super.key});
  // Instargram โดยการสร้างแบบ UI Composition  
  @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
        
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

        
          Expanded(
            child: TabBarView(
              children: [
             
                buildGrid(),
               
                const Center(child: Text("Reels Page")),
              
                const Center(child: Text("Tagged Page")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  
  Widget buildGrid() {
    return GridView.builder(
     
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