import 'package:bukit_vista/core/widgets/bukit_vista_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/booking_page_cubit.dart';

part 'part/chip.dart';
part 'part/chips_list.dart';
part 'part/date.dart';
part 'part/text_button_row.dart';

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
          body = CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const DateContainer(),
                    const SizedBox(height: 12),
                    ChipsList(selectedChipIndex: state.chipSelectedIndex),
                    const SizedBox(height: 8),
                    const TextButtonRow()
                  ],
                ),
              ),
            ],
          );
        }
        return BukitVistaScaffold(
          title: 'Booking',
          body: body,
          selectedIndex: state.navbarSelectedIndex,
        );
      },
    );
  }
}
