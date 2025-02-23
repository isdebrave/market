import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/core/common/status.dart';
import 'package:market/dependency_injection.dart';
import 'package:market/domain/model/home_menus/home_menus_model.dart';
import 'package:market/presentation/bloc/view_module/view_module_bloc.dart';

class GlobalNavBarView extends StatelessWidget {
  const GlobalNavBarView({required this.dataList, super.key});

  final List<HomeMenusModel> dataList;

  @override
  Widget build(BuildContext context) => Expanded(
        child: TabBarView(
          children: List<Widget>.generate(
            dataList.length,
            (int index) {
              final int tabId = dataList[index].tabId;

              return BlocProvider<ViewModuleBloc>(
                create: (_) => getIt<ViewModuleBloc>()
                  ..add(GetViewModuleEvent(tabId: tabId)),
                child: const ViewModuleList(),
              );
            },
          ),
        ),
      );
}

class ViewModuleList extends StatelessWidget {
  const ViewModuleList({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ViewModuleBloc, ViewModuleState>(
        builder: (_, ViewModuleState state) => (() {
          switch (state.status) {
            case StatusEnum.initial:
            case StatusEnum.loading:
              return const Center(child: CircularProgressIndicator());

            case StatusEnum.success:
              return ListView.separated(
                separatorBuilder: (_, __) => const Divider(thickness: 4),
                itemCount: state.data.length,
                itemBuilder: (_, int index) => SizedBox(
                  height: 200,
                  child: Center(child: Text(state.data[index].type)),
                ),
              );

            case StatusEnum.error:
              return AlertDialog(
                title: Text(state.errorMessage),
              );
          }
        })(),
      );
}
