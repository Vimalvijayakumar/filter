import 'package:flutter/material.dart';

class ChK_BoxWidget extends StatelessWidget {
  const ChK_BoxWidget({
    super.key,
    required this.chkvalue,
    required this.name,
  });

  final bool chkvalue;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListTile(
          dense: true,
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.zero,
          leading: chkvalue
              ? const Icon(
                  Icons.radio_button_checked_rounded,
                  color: Colors.brown,
                )
              : const Icon(
                  Icons.radio_button_off_rounded,
                  color: Colors.grey,
                ),
          title: Row(
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                name == "Nearest to Me" ? " (default)" : "",
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          )),
    );
  }
}
