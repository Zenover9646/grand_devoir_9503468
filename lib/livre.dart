class Livre {
  final String titre;
  final String auteur;
  final String description;

  const Livre({
    required this.titre,
    required this.auteur,
    required this.description,
  });
}

const livres = [
  Livre(
    titre: 'L Aventure ambigue',
    auteur: 'Cheikh Hamidou Kane',
    description: 'Un roman sur la tradition, l ecole et l identite.',
  ),
  Livre(
    titre: 'Une si longue lettre',
    auteur: 'Mariama Ba',
    description: 'Une histoire epistolaire sur la vie d une femme au Senegal.',
  ),
  Livre(
    titre: 'Allah n est pas oblige',
    auteur: 'Ahmadou Kourouma',
    description: 'Le parcours d un enfant dans un contexte de guerre.',
  ),
];
