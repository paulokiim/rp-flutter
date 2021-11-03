import 'package:flutter/material.dart';

class ClickableCardWidget extends StatelessWidget {
  final String title;
  final Widget? sufixWidget;
  final Widget? prefixWidget;
  final String? description;

  ClickableCardWidget(
      {required this.title,
      this.sufixWidget,
      this.prefixWidget,
      this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 70,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (this.prefixWidget != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5),
                    child: this.prefixWidget,
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        this.title,
                        style: TextStyle(fontSize: 18),
                      ),
                      if (this.description != null)
                        Text((this.description) as String)
                    ],
                  ),
                ),
                if (this.sufixWidget != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: this.sufixWidget,
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
