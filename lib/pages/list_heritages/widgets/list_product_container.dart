import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_meetup/pages/list_heritages/widgets/list_product_widget.dart';

import '../bloc/list_heritage_bloc.dart';

class ListProductContainer extends StatelessWidget {
  const ListProductContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Nepali Hastakala"),
        ),
        body: BlocBuilder<ListHeritageBloc, ListHeritageState>(
          builder: (context, state) {
            return state.status == ListHeritageStatus.loading
                ? const CircularProgressIndicator()
                : state.status == ListHeritageStatus.dataFetched
                    ? ListView.builder(
                        itemCount: state.heritagesList!.length,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, i) {
                          return ProductWidget(
                              product: state.heritagesList![i]);
                        },
                      )
                    : Text(state.errorMessage ?? "-");
          },
        ),
      ),
    );
  }
}
