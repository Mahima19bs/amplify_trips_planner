
import 'package:amplify_core/amplify_core.dart';
import 'Trip.dart';

export 'Trip.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "dfa8a3c8f1a5bda2cfc8cf3d5959d993";
  @override
  List<ModelSchema> modelSchemas = [Trip.schema];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [];

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Trip":
        return Trip.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}
