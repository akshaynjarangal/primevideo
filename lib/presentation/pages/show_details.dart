import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:go_router/go_router.dart';
import 'package:primevideo/config/app_themes.dart';
import 'package:primevideo/presentation/bloc/show_details/show_details_bloc.dart';
import 'package:primevideo/presentation/widgets/app_space_widget.dart';

class ShowDetails extends StatelessWidget {
  const ShowDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ShowDetailsBloc, ShowDetailsState>(
        builder: (context, state) {
          if (state is ShowDetailsLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: CupertinoColors.activeBlue,
              ),
            );
          }
          if (state is ShowDetailsLoaded) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.secondaryButtonColor,
                        image: DecorationImage(
                          repeat: ImageRepeat.repeatX,
                          fit: BoxFit.contain,
                          image: NetworkImage(
                            "${state.showDetails.image?.medium}",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${state.showDetails.name}",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        setHeight(8.0),
                        Row(
                          children: [
                            Text("${state.showDetails.language}"),
                            setWidth(8.0),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 4.0,
                              ),
                              decoration: BoxDecoration(
                                color: AppTheme.secondaryButtonColor,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Text(
                                "${state.showDetails.genres?.join(" | ")}",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                        setHeight(8.0),
                        Text(
                          "${DateTime.parse("${state.showDetails.premiered}").year}",
                        ),
                        setHeight(8.0),
                        HtmlWidget(
                          "${state.showDetails.summary}",
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w300),
                        ),
                        setHeight(16.0),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Cast",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      setHeight(8.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              state.castList.length,
                              (index) => GestureDetector(
                                onTap: () => context.pushNamed('cast-details',extra: '${state.castList[index].person?.id}'),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: index == (state.castList.length - 1)
                                        ? 0
                                        : 16.0,
                                  ),
                                  child: SizedBox(
                                    width: 100,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                "${state.castList[index].person?.image?.medium}",
                                              ),
                                            ),
                                            color:
                                                AppTheme.secondaryButtonColor,
                                          ),
                                        ),
                                        setHeight(8.0),
                                        Text(
                                          "${state.castList[index].person?.name}",
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        setHeight(8.0),
                                        Text(
                                          "as ${state.castList[index].character?.name}",
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
          if (state is ShowDetailsError) {
            return Center(
              child: Text(state.error),
            );
          }
          return Container();
        },
      ),
    );
  }
}
