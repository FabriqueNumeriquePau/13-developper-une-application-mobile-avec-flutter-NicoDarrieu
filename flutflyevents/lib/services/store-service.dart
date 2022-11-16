/// Création d'un singleton pour traiter les données de l'application
class StoreService {
  static final StoreService _storeService = StoreService._internal();
  factory StoreService() {
    return _storeService;
  }
  StoreService._internal();
}

List<Map<String, dynamic>> listMovies = [
  {
    "titre": "Flutfly Events",
    "article": "Flutfly Events est une application de gestion d'événements",
    "image": "assets/images/1.jpg",
  },
    {
    "titre": "Flutfly Events 2",
    "article": "Flutfly Events est une application qui utilise Flutter",
    "image": "assets/images/2.jpg",
  },
    {
    "titre": "Flutfly Events 3",
    "article": "Flutfly Events est une application trop cool !",
    "image": "assets/images/3.jpg",
  },
];

///Instanciation du singleton
final storeService = StoreService();
