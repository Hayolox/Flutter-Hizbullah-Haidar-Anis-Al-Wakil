import 'package:flutter/material.dart';

class appBarContent extends StatelessWidget {
  appBarContent(this.nameAppbar, this.countAppbar, this.active);
  String nameAppbar;
  int countAppbar;

  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
            color: active == true ? Colors.blue : const Color(0xffF6F6F6),
            width: 1),
      )),
      child: Row(
        children: [
          Text(
            // ignore: unnecessary_string_interpolations
            '$nameAppbar',
            style: TextStyle(
                fontSize: 15,
                color: active == true ? Colors.blue : Colors.grey),
          ),
          const SizedBox(
            width: 3,
          ),
          countAppbar > 0
              ? Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      countAppbar > 0 ? '$countAppbar' : '',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xffF6F6F6),
                      ),
                    ),
                  ),
                )
              : const Text(''),
        ],
      ),
    );
  }
}
