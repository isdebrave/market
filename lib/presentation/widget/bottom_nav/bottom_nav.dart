import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/core/theme/config/color_scheme/color_scheme_extension.dart';
import 'package:market/core/util/custom_svg_picture.dart';
import 'package:market/presentation/cubit/bottom_nav_cubit.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: colorScheme.outline),
        ),
      ),
      child: BottomAppBar(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<BottomNavCubit, BottomNavEnum>(
          builder: (_, BottomNavEnum state) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List<Widget>.generate(
              BottomNavEnum.values.length,
              (int index) => GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  context.read<BottomNavCubit>().changeIndex(index);
                },
                child: SizedBox(
                  width: 79.75,
                  child: state == BottomNavEnum.values[index]
                      ? CustomSvgPicture(
                          logo: BottomNavEnum.values[index].activeIcon,
                          color: colorScheme.primary,
                        )
                      : CustomSvgPicture(
                          logo: BottomNavEnum.values[index].icon,
                          color: colorScheme.contentPrimary,
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
