import '../data/mock_data.dart';
class FileRepository {
  Future<List> getFiles() async => MockData.files;
}
