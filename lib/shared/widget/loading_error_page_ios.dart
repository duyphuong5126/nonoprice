import 'package:flutter/cupertino.dart';
import 'package:nonoprice/utility/cupertino_context_extension.dart';

class LoadingErrorPageIOS extends StatelessWidget {
  final String errorTitle;
  final String errorMessage;
  final Function? onRetry;

  const LoadingErrorPageIOS({
    Key? key,
    required this.errorTitle,
    required this.errorMessage,
    this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorTitle,
            style: context.headlineSmall
                .copyWith(color: CupertinoColors.destructiveRed),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            errorMessage,
            style: context.bodyLarge
                .copyWith(color: CupertinoColors.destructiveRed),
          ),
          const SizedBox(
            height: 8.0,
          ),
          CupertinoButton(
            child: const Icon(
              CupertinoIcons.refresh_thick,
              size: 32,
            ),
            onPressed: () => onRetry?.call(),
          )
        ],
      ),
    );
  }
}
