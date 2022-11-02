import 'package:example_app/Service/server_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 0.obs;
  // var db = 0.0.obs;
  var isLoading = false.obs;
  // var list = <String>[].obs;

  // Stateful widget ka InitState

  setData() async {
    isLoading.value = true;
    counter.value = await ServerService.fakeApi();
    isLoading.value = false;
    print("object");
    print('Object 1');
  }

  @override
  void onInit() {
    super.onInit();
    setData();
  }

  // dispose method Statefull widget
  @override
  void onClose() {
    super.onClose();
  }

  increment() {
    // isLoading.value = false;
    // counter++;
    counter.value++;
    // print(counter.value);
  }
}
