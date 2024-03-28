class Agent {
  final String id; // Unique identifier for the agent
  final String nom; // Name of the agent
  final String nationalite; // Nationality of the agent
  final String photo; // URL of the agent's photo
  final String voix; // URL of the audio file for the agent's voice
  final double coutHeure; // Cost of the agent per hour in Euros

  Agent({ // Constructor to initialize the object
    required this.id,
    required this.nom,
    required this.nationalite,
    required this.photo,
    required this.voix,
    required this.coutHeure,
  });
}
