import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import '../models/recipe.dart';

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({super.key});

  @override
  State<AddRecipeScreen> createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  final titleController = TextEditingController();
  final descController = TextEditingController();

  final service = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ajouter recette")),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Titre"),
            ),
            TextField(
              controller: descController,
              decoration: const InputDecoration(labelText: "Description"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                final recipe = Recipe(
                  title: titleController.text,
                  description: descController.text,
                );

                await service.addRecipe(recipe);

                Navigator.pop(context);
              },
              child: const Text("Enregistrer"),
            )
          ],
        ),
      ),
    );
  }
}
