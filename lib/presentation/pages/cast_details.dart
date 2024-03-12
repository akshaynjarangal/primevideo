import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:primevideo/config/app_themes.dart';
import 'package:primevideo/presentation/bloc/cast_details/cast_details_bloc.dart';
import 'package:primevideo/presentation/widgets/app_space_widget.dart';

class CastDetails extends StatelessWidget {
  const CastDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cast Details")),
      body: BlocBuilder<CastDetailsBloc, CastDetailsState>(
        builder: (context, state) {
          if (state is CastDetailsLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: CupertinoColors.activeBlue,
              ),
            );
          }
          if(state is CastDetailsError){
            return Center(
              child: Text(state.error),
            );
          }
          if (state is CastDetailsLoaded) {
            log("${state.castDetails.image?.medium}");
            return CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  image:  DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "${state.castDetails.image?.medium}",
                                    ),
                                  ),
                                  color: AppTheme.secondaryButtonColor,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${state.castDetails.name}",
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    setHeight(8),
                                    Text(
                                      '${state.castDetails.country?.name}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        setHeight(16),
                        Row(
                          children: [
                            const Icon(
                              Icons.cake,
                              color: AppTheme.primaryButtonColor,
                            ),
                            setWidth(8),
                            Text(
                              state.castDetails.birthday==null?"":DateFormat("MMMM dd, yyyy").format(state.castDetails.birthday!),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
