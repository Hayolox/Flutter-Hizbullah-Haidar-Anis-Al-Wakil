import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controllers/preview_controller.dart';

class PreviewView extends GetView<PreviewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PreviewView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: FileImage(
                      File(controller.image.value),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => Text(
                        'Published : ${DateFormat('dd-MM-yyy').format(controller.date.value)}',
                      )),
                  Row(
                    children: [
                      Text('Color'),
                      SizedBox(
                        width: 7,
                      ),
                      Obx(() => Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: controller.color.value,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                controller.caption.text,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
