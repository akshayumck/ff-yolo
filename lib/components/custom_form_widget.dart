import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormWidget extends StatefulWidget {
  const CustomFormWidget({Key? key}) : super(key: key);

  @override
  _CustomFormWidgetState createState() => _CustomFormWidgetState();
}

class _CustomFormWidgetState extends State<CustomFormWidget> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Text(
        'Hello World',
        style: FlutterFlowTheme.of(context).bodyText1,
      ),
    );
  }
}
