import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/application/bloc/home_bloc_bloc.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      builder: (context, state) {
        return SizedBox(
          height: 50,
          child: TextFormField(
            controller: _searchController,
            decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeBlocBloc>(context)
                          .add(SearchMeal(searchText: _searchController.text));
                      FocusScope.of(context).unfocus();
                    },
                    icon: const Icon(Icons.search)),
                hintText: "search meals you want to",
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ))),
            onFieldSubmitted: (value) => BlocProvider.of<HomeBlocBloc>(context)
                .add(SearchMeal(searchText: _searchController.text)),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
