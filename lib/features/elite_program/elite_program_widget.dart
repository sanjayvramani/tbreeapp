import 'package:flutter/material.dart';
import 'package:tbreeapp/features/elite_program/controller/elite_program_controller.dart';
import 'package:tbreeapp/features/elite_program/widget/elite_widget.dart';

class EliteProgramPage extends StatefulWidget {
  const EliteProgramPage({super.key});

  @override
  State<EliteProgramPage> createState() => _EliteProgramPageState();
}

class _EliteProgramPageState extends State<EliteProgramPage> {

  final EliteProgramController _controller = EliteProgramController();
  
  @override
  void initState() {
    super.initState();
    _controller.loadElitePrograms();
  }
  
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Shobha Elite'),
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: GridView.count(crossAxisCount: 3,
      crossAxisSpacing: 2.0,  
      mainAxisSpacing: 2.0,  
      shrinkWrap: false,
      children: List.generate(_controller.lstElite.length, (index) {
        return EliteWidget(model: _controller.lstElite[index]);
      }),),
      ),
    );
  }
}