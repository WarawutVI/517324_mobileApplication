import 'package:flutter/material.dart';
import 'package:my_app/widgets/action_buttons.dart';
import 'package:my_app/widgets/post_grid.dart';
import 'package:my_app/widgets/profile_header.dart';
import 'package:my_app/widgets/profile_stats.dart';

class ProfilePageui extends StatefulWidget {
  const ProfilePageui({super.key});

  @override
  State<ProfilePageui> createState() => _ProfilePageuiState();
}

class _ProfilePageuiState extends State<ProfilePageui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profileui")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileHeadrt(),
              ProfileStats()
            ],
          ),
          ActionButtons(),
          Expanded(
            // <--- This is the magic fi
            child: PostGrid(),
          ),
        ],
      ),
    );
  }
}
