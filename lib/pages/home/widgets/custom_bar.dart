import 'package:ebook/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  final int selected;
  final Function callback;
  CustomBar({required this.selected, required this.callback});
  final tabs = ['TextBook', 'AudioBook'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
      width: width,
      height: 56,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  width: (width - 40) / 2 - 10,
                  decoration: BoxDecoration(
                      color:
                          selected == index ? Colors.white : Colors.grey[200],
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(tabs[index],style: TextStyle(color: kFont,fontWeight: FontWeight.w500),),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 0,
              ),
          itemCount: tabs.length),
    );
  }
}
