import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final String? title;
  const MenuTile({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title!,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(
        Icons.navigate_next,
        color: Colors.black,
      ),
    );
  }
}
