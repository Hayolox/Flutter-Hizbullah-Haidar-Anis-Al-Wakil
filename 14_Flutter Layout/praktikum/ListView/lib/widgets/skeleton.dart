import 'package:flutter/material.dart';
import 'package:listview/main.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:get/get.dart';

class SkeletonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: SkeletonAnimation(
                  shimmerColor: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.grey[300],
                  )),
              title: SkeletonAnimation(
                shimmerColor: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 20,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
              ),
              subtitle: SkeletonAnimation(
                shimmerColor: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 10,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
              ),
            );
          },
        ));
  }
}
