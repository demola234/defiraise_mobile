import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/features/home/presentation/state/categories_bloc/bloc/categories_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectCategoryWidget extends ConsumerStatefulWidget {
  const SelectCategoryWidget({
    super.key,
  });

  @override
  ConsumerState<SelectCategoryWidget> createState() =>
      _SelectPostCategoryBottomSheetSheetState();
}

class _SelectPostCategoryBottomSheetSheetState
    extends ConsumerState<SelectCategoryWidget> {
  // Add default synergy home to list

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.55,
        decoration: const BoxDecoration(
          color: AppColors.white100,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3E9F2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
              const VerticalMargin(24),
              BlocBuilder<CategoriesBlocBloc, CategoriesBlocState>(
                builder: (context, state) {
                  return Expanded(
                      child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      ...ListTile.divideTiles(
                        context: context,
                        tiles: state.maybeWhen(
                          orElse: () {
                            return [];
                          },
                          loading: () {
                            return [
                              const Center(
                                child: CircularProgressIndicator(),
                              )
                            ];
                          },
                          loaded: (categories) => List.generate(
                            categories.data.length,
                            (index) {
                              return Column(
                                children: [
                                  ListTile(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pop(categories.data[index]);
                                    },
                                    title: Text(
                                      categories.data[index].name!,
                                      textAlign: TextAlign.center,
                                      style: Config.b2(context)
                                          .copyWith(color: AppColors.grey100),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ));
                },
              ),
            ]));
  }
}
