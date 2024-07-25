import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:reactive_form_ex/reactive_address_gen/form.dart';

@injectable
class ReactiveAddressGenController extends BdayaCombinedController {
  ReactiveAddressGenController();

  final initialModel = const ReactiveAddressGenModel();
  final formGroupRx = SharedValue<ReactiveAddressGenModelForm?>(value: null);

  void addNewAddress(ReactiveAddressGenModelForm formModel) {
    formModel.addAddressesItem(
      Address(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        lineOne: 'lineOne',
        lineTwo: 'lineTwo',
        postalCode: 'postalCode',
      ),
    );
  }

  void submit(ReactiveAddressGenModelForm formGroup) {
    final model = formGroup.model;
    logger.info(model);
  }

  void reset(ReactiveAddressGenModelForm formGroup) {
    formGroup.reset();
    formGroup.addressesControl.clear();
  }
}
