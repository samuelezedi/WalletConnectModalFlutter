import 'package:flutter/material.dart';
import 'package:walletconnect_modal_flutter/services/utils/toast/toast_message.dart';
import 'package:walletconnect_modal_flutter/services/utils/toast/toast_utils_singleton.dart';
import 'package:walletconnect_modal_flutter/widgets/toast/walletconnect_modal_toast.dart';

class WalletConnectModalToastManager extends StatelessWidget {
  const WalletConnectModalToastManager({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ToastMessage?>(
      stream: toastUtils.instance.toasts,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          return WalletConnectModalToast(message: snapshot.data!);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
