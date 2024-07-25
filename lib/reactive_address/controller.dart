import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
// import 'package:flutter/widgets.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
// import 'form.dart';

@lazySingleton
class AddressReactiveController extends BdayaCombinedController {
  AddressReactiveController();

  final formGroup = FormGroup({
    ConstFormGroup.postText: FormControl<String>(),
    ConstFormGroup.addresses: FormArray<Map<String, Object?>>([]),
  });

  void addNewAddress(FormArray<Map<String, Object?>> array) {
    array.add(createAddressFg());
  }

  FormGroup createAddressFg() {
    return FormGroup({
      ConstFormGroup.lineOne: FormControl<String>(),
      ConstFormGroup.lineTwo: FormControl<String>(),
      ConstFormGroup.postalCode: FormControl<String>(),
    });
  }

  void submit() {
    logger.info(formGroup.value);

    // TODO: we will use generator to replace all of this and fix friction
    ///the problem here is that we are not using cast for each control
    ///and we need to add the names of each control
    final text = formGroup.value[ConstFormGroup.postText] as String;
    final addresses =
        formGroup.value[ConstFormGroup.addresses] as List<Map<String, Object?>>;
    for (final address in addresses) {
      final line1 = address[ConstFormGroup.lineOne] as String;
      final line2 = address[ConstFormGroup.lineTwo] as String;
      final postalCode = address[ConstFormGroup.postalCode] as String;

      logger.info(
          "text: $text, line1: $line1, line2: $line2, postalCode: $postalCode");
    }
  }

  void reset() {
    formGroup.reset();
    final array = formGroup.control(ConstFormGroup.addresses) as FormArray;
    array.clear();
  }
}

class ConstFormGroup {
  ConstFormGroup._();

  static const String postText = "post-text";
  static const String addresses = "addresses";
  static const String lineOne = "line-one";
  static const String lineTwo = "line-two";
  static const String postalCode = "postal-code";
}
