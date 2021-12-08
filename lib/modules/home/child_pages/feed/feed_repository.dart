import 'package:fake_chat_ui/core/models/user_data_model.dart';
import 'package:fake_chat_ui/core/routes/client_routes.dart';
import 'package:fake_chat_ui/core/services/network/dio_client.dart';

class FeedRepository {
  const FeedRepository({required this.client});
  final DioClient client;

  Future<UserDataModel> requestDataFromServer() async {
    var response = await client.dio.get(AppClientRoutes.kGetBlogs);
    return UserDataModel.fromJson(response.data);
  }

  Future<UserDataModel> requestStoriesDataFromServer() async {
    var response = await client.dio.get(AppClientRoutes.kGetChats);
    return UserDataModel.fromJson(response.data);
  }
}
