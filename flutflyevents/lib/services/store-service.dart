import 'package:cloud_firestore/cloud_firestore.dart';

/// Création d'un singleton pour traiter les données de l'application
class StoreService {
  static final StoreService _storeService = StoreService._internal();
  factory StoreService() {
    return _storeService;
  }
  StoreService._internal();

  final db = FirebaseFirestore.instance;

  /// Liste dynamique pour l'injection dans la page Movies
  List<Map<String, dynamic>> choice = [];

  /// Liste statique pour l'injection dans la page Movies
  List<Map<String, dynamic>> listMovies = [
    {
      "titre": "John Wick",
      "categorie": "Action",
      "image":
          "https://occ.a.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABXxoqwj5VDBztOi6IJfwqxHk0kND2aHQ4Du8nqE8Ryau62WO-lEi6MWbfPtrefEEpWphID5rrBOT0iBny9BlEqD3IksLb6miRg35.jpg?r=b18",
    },
    {
      "titre": "Avatar: la voie de l'eau",
      "categorie": "Science-Fiction",
      "image":
          "https://www.essentialhomme.fr/wp-content/uploads/2022/04/Avatar-The-Way-of-Water-0.jpg",
    },
    {
      "titre": "Black Panther: Wakanda Forever",
      "article": "Fantastique",
      "image":
          "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/E9C42FC150931CED05EFA1EAE4FE82141414FF93C4867DFEB9F075BCDA9559E6/scale?width=1200&aspectRatio=1.78&format=jpeg",
    },
  ];

  /// Récupérer les données depuis la base de données
  getFireMovies() async {
    await db.collection('Movies').get().then((event) {
      print(event.docs);
      for (var doc in event.docs) {
        choice.add({"id": doc.id, "data": doc.data()});
      }
        print("Documents chargés : ${choice}");
    }).catchError((error) {
      print(error);
    });
  }
}

///Instanciation du singleton
final storeService = StoreService();
