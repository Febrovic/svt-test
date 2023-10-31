class Model {
  final String name;
  final int progress;
  final String imageUrl;

  const Model({
    required this.name,
    required this.progress,
    required this.imageUrl,
  });
}

class ModelsApi {
  Future<List<Model>> getModels() async {
    List<Model> models = [
      const Model(
          name: 'Model-A', progress: 50, imageUrl: 'images/Rectangle 1.jpg'),
      const Model(
          name: 'Model-A', progress: 50, imageUrl: 'images/Rectangle 1.jpg'),
      const Model(
          name: 'Model-A', progress: 50, imageUrl: 'images/Rectangle 1.jpg'),
    ];
    return models;
  }
}
