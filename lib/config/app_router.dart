import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:primevideo/presentation/bloc/cast_details/cast_details_bloc.dart';
import 'package:primevideo/presentation/bloc/show_details/show_details_bloc.dart';
import 'package:primevideo/presentation/pages/cast_details.dart';
import 'package:primevideo/presentation/pages/home_show_list.dart';
import 'package:primevideo/presentation/pages/show_details.dart';
import 'package:primevideo/utils/di/di.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, GoRouterState state) {
        return const HomeShowList();
      },
      routes: [
        GoRoute(
          path: 'show-details',
          name: 'show-details',
          builder: (context, GoRouterState state) {
            return BlocProvider(
              create: (context) => getIt<ShowDetailsBloc>()
                ..add(ShowDetailsLoadEvent(showId: "${state.extra}")),
              child: const ShowDetails(),
            );
          },
          routes: [
            GoRoute(
              path: 'cast-details',
              name: 'cast-details',
              builder: (context, GoRouterState state) {
                return BlocProvider(
                  create: (context) => getIt<CastDetailsBloc>()..add(
                    CastDetailsLoadEvent(id: "${state.extra}"),
                  ),
                  child: const CastDetails(),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
