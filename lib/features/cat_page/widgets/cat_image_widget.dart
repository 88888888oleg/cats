import 'package:cats/features/cat_page/bloc/find_cats_bloc.dart';
import 'package:cats/features/cat_page/widgets/error_cat_widget.dart';
import 'package:cats/generated_assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatImageWidget extends StatelessWidget {
  const CatImageWidget({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindCatsBloc, FindCatsState>(
      builder: (context, state) {
        return state.maybeMap(
          error: (_) {
            return const ErrorCatWidget();
          },
          loaded: (state) {
            return Stack(
              children: [
                SizedBox(
                  height: height / 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Image.network(
                    state.photoUrl,
                    height: height / 2,
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeat,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: child,
                        );
                      }
                      return Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: height / 4),
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const ErrorCatWidget();
                    },
                  ),
                ),
              ],
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
