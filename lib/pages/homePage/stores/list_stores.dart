import 'package:mobx/mobx.dart';
part 'list_stores.g.dart';

class ListStore = _ListStoreBase with _$ListStore;

abstract class _ListStoreBase with Store {
  
  _ListStoreBase(this.title);

  final String title;

  @observable
  bool done = false;

  @action
  void toggleDone() => done = !done;
}
