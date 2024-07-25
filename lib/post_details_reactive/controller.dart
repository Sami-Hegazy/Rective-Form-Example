import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
// import 'package:flutter/widgets.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
// import 'form.dart';

@lazySingleton
class PostDetailsReactiveController extends BdayaCombinedController {
  PostDetailsReactiveController();

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
