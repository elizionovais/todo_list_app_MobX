import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_list_app/pages/homePage/stores/home_stores.dart';
import 'package:todo_list_app/pages/loginPage/login_page.dart';

import '../loginPage/components/custom_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeStore homeStore = HomeStore();
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple,
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Tarefas',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 32),
                    ),
                    IconButton(
                      icon: const Icon(Icons.exit_to_app),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Observer(
                          builder: (_) {
                            return CustomTextField(
                              obscureText: false,
                              enabled: true,
                              controller: controller,
                              hintText: 'Tarefa',
                              onChaged: homeStore.setNewTodoTitle,
                              icon: null,
                              suffixIcon: homeStore.isFormValid
                                  ? IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        homeStore.addTodo();
                                        WidgetsBinding.instance.addPostFrameCallback((_) => controller.clear());
                                      },
                                    )
                                  : null,
                            );
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Observer(
                            builder: (_) {
                              return ListView.separated(
                                itemCount: homeStore.todoList.length,
                                itemBuilder: (_, index) {
                                  final todo = homeStore.todoList[index];
                                  return Observer(
                                    builder: (_) {
                                      return ListTile(
                                        title: Text(
                                          todo.title,
                                          style: TextStyle(
                                              decoration: todo.done ? TextDecoration.lineThrough : null,
                                              color: todo.done ? Colors.grey : Colors.black),
                                        ),
                                        onTap: todo.toggleDone,
                                      );
                                    },
                                  );
                                },
                                separatorBuilder: (_, __) {
                                  return const Divider();
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
