import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:primevideo/config/app_themes.dart';
import 'package:primevideo/presentation/bloc/show_list/show_list_bloc.dart';
import 'package:primevideo/presentation/widgets/app_space_widget.dart';
import 'package:shimmer/shimmer.dart';

class HomeShowList extends StatelessWidget {
  const HomeShowList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prime Video'),
      ),
      body: BlocBuilder<ShowListBloc, ShowListState>(
        builder: (context, state) {
          if (state is ShowListLoading) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1/1.4,
                children: List.generate(10, (index) {
                  return Shimmer.fromColors(
                    baseColor: AppTheme.secondaryButtonColor.withOpacity(0.5),
                    highlightColor: AppTheme.secondaryButtonColor,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryButtonColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  );
                }),
              ),
            );
          }
          if (state is ShowListLoaded) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shows',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    setHeight(16.0),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 1 / 1.6,
                      children: List.generate(
                        20,
                        (index) => GestureDetector(
                          onTap: () {
                            context.pushNamed('show-details',extra: '${state.showList[index].id}');
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image:  DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        "${state.showList[index].image?.medium}",
                                      ),
                                    ),
                                    color: AppTheme.secondaryButtonColor,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              setHeight(8.0),
                              Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.star_fill,
                                    color: CupertinoColors.activeBlue,
                                    size: 16.0,
                                  ),
                                  setWidth(4.0),
                                  Text(
                                    '${state.showList[index].rating?.average ?? 0.0}',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                              setHeight(8.0),
                              Text(
                                '${state.showList[index].name}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
