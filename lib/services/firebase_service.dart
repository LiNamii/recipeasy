import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/recipe.dart';

class FirebaseService {
  final _db = FirebaseFirestore.instance.collection('recipes');

  Future<void> addRecipe(Recipe recipe) async {
    await _db.add(recipe.toMap());
  }

  Stream<QuerySnapshot> getRecipes() {
    return _db.orderBy('createdAt', descending: true).snapshots();
  }
}
