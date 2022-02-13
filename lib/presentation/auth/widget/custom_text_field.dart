part of '../screen/auth_view.dart';

class _CustomTextField extends StatelessWidget {
  const _CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}