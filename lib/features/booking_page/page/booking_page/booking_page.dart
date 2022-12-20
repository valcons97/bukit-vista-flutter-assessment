import 'package:bukit_vista/core/widgets/bukit_vista_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/booking_page_cubit.dart';

part 'part/date.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingPageCubit, BookingPageState>(
      builder: (context, state) {
        late Widget body;
        if (state.state == BookingState.loading) {
          body = Container();
        } else if (state.state == BookingState.loaded) {
          body = const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: DateContainer(),
              ),
            ],
          );
        }
        return BukitVistaScaffold(
          title: 'Booking',
          body: body,
          selectedIndex: state.selectedIndex,
        );
      },
    );
  }
}
