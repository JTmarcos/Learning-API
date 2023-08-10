import 'package:api/components/custom_buttom.dart';
import 'package:api/components/list_tile.dart';
import 'package:api/controllers/post_controller.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _postController = PostController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: Center(
                  child: CustomButtom(
                      onPressed: _postController.callAPI, title: "Button")),
            ),
            AnimatedBuilder(
              animation: Listenable.merge(
                  [_postController.posts, _postController.inLoader]),
              builder: (_, __) => _postController.inLoader.value
                  ? const SizedBox(
                      height: 50, width: 50, child: CircularProgressIndicator())
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const PageScrollPhysics(),
                      itemCount: _postController.posts.value.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CustomListTile(
                            title: _postController.posts.value[index].title);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
