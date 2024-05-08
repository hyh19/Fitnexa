part of creek_base;

abstract class CreekBaseStatelessPage extends StatelessWidget {
  CreekBaseStatelessPage({Key? key}) : super(key: key);

  bool dialogShow = false;

  void showToast(String msg) {
    CreekToast.showToast(msg);
  }

  void showLoading(String tip) {
    if (!dialogShow) {
      dialogShow = true;
      CreekLoading.show(title: tip, needMask: true);
    }
  }

  void showLoadings({String title = "Setting up…"}) {
    if (!dialogShow) {
      dialogShow = true;
      CreekLoading.show(title: title, needMask: true);
    }
  }

  void hideLoading() {
    if (dialogShow) {
      dialogShow = false;
      CreekLoading.dismiss();
    }
  }
}
