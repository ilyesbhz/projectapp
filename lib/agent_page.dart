import 'package:flutter/material.dart';
import 'package:test1/agent/agent.dart';
import 'package:test1/agent_details_page.dart';


class AgentPage extends StatelessWidget {
  final List<Agent> agents = [
    Agent(
      id: '1',
      nom: 'Agent Smith',
      nationalite: 'USA',
      photo: 'https://example.com/agent_smith.jpg',
      voix: 'https://example.com/agent_smith_voice.mp3',
      coutHeure: 100.0,
    ),
    Agent(
      id: '2',
      nom: "Agent Jones",
      nationalite: 'UK',
      photo: 'https://example.com/agent_jones.jpg',
      voix: 'https://example.com/agent_jones_voice.mp3',
      coutHeure: 80.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des agents'),
      ),
      body: ListView.builder(
        itemCount: agents.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(agents[index].photo),
            ),
            title: Text(agents[index].nom),
            subtitle: Text(agents[index].id),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AgentDetailsPage(agent: agents[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
