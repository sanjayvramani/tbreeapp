import 'package:flutter/material.dart';
import 'package:tbreeapp/features/refer/controller/new_refer_controller.dart';

class NewReferPage extends StatefulWidget {
  const NewReferPage({super.key});

  @override
  State<NewReferPage> createState() => _NewReferPageState();
}

class _NewReferPageState extends State<NewReferPage> {


  final NewReferController _controller = NewReferController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller.txtName,
            decoration: const InputDecoration(
              labelText: 'Refer Name',
              isDense: true
            ),
          ),
          TextField(
            controller: _controller.txtMobileNumber,
            decoration: const InputDecoration(
              labelText: 'Refer Mobile Number',
              isDense: true
            ),
          ),
          TextField(
            controller: _controller.txtEmailId,
            decoration: const InputDecoration(
              labelText: 'Refer Email Id',
              isDense: true
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 16.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: OutlinedButton(onPressed:(){

            }, child: const Text('Save')),
          ),)
        ],
      ),),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}