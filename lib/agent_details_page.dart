import 'package:flutter/material.dart';
import 'package:test1/agent/agent.dart';

/* import 'package:audioplayers/audioplayers.dart'; */

class AgentDetailsPage extends StatelessWidget {
  final Agent agent;

  AgentDetailsPage({required this.agent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${agent.nom}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(agent.photo),
              radius: 100,
            ),
            SizedBox(height: 16),
            Text(
              'ID: ${agent.id}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Nationalité: ${agent.nationalite}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Code to play the agent's voice (Methode number 7)
              },
              child: Text('Écouter la voix'),
            ),
            SizedBox(height: 16),
            Text(
              'Coût par heure: ${agent.coutHeure} €',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
