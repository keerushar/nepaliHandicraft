import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_meetup/pages/list_heritages/widgets/list_product_container.dart';

import '../bloc/list_heritage_bloc.dart';

class ListHeritagePage extends StatelessWidget {
  const ListHeritagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListHeritageBloc()..add(FetchHeritageList()),
      child: const ListProductContainer(),
    );
  }
}
