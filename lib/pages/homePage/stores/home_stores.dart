import 'package:mobx/mobx.dart';
import 'package:todo_list_app/pages/homePage/stores/list_stores.dart';
part 'home_stores.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  
  @observable
  String newTodoTitle = "";

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  ObservableList<ListStore> todoList = ObservableList<ListStore>();

  @action
  void addTodo(){
    todoList.insert(0, ListStore(newTodoTitle));
    newTodoTitle = "";
  }

}