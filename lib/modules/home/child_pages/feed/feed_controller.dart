import 'package:fake_chat_ui/core/enums/request_state.dart';
import 'package:fake_chat_ui/core/models/user_data_model.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_repository.dart';
import 'package:rx_notifier/rx_notifier.dart';

class FeedController {
  FeedController({required this.repository});

  final FeedRepository repository;
  var stateFetchFeed = RxNotifier<RequestState>(RequestState.IDLE);
  var feedList = RxList<Results>([]);

  var stateFetchStories = RxNotifier<RequestState>(RequestState.IDLE);
  var storiesList = RxList<Results>([]);

  void fetchData() {
    stateFetchFeed.value = RequestState.LOADING;
    repository.requestDataFromServer().then((UserDataModel response) {
      feedList.clear();
      feedList.addAll(response.results);
      stateFetchFeed.value = RequestState.SUCCESS;
    }).catchError((onError) {
      print('FeedController Error: ${onError.toString()}');
      stateFetchFeed.value = RequestState.FAIL;
    });
  }

  void fetchStoriesData() {
    stateFetchStories.value = RequestState.LOADING;
    repository.requestStoriesDataFromServer().then((UserDataModel response) {
      storiesList.clear();
      storiesList.addAll(response.results);
      stateFetchStories.value = RequestState.SUCCESS;
    }).catchError((onError) {
      print('FeedController Error: ${onError.toString()}');
      stateFetchStories.value = RequestState.FAIL;
    });
  }
}
