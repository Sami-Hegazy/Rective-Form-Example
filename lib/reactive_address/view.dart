import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
// import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'controller.dart';
import 'package:flutter/material.dart';
// import 'form.dart';

class AddressReactiveView extends StatelessWidget {
  const AddressReactiveView({
    super.key,
    required this.controller,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.factory,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) =>
      HookBuilder(
        builder: (context) => AddressReactiveView(
          controller: useBdayaViewController(
            hookMode: hookMode,
            instanceName: instanceName,
            keys: keys,
            param1: param1,
            param2: param2,
          ),
        ),
      );

  // //TODO: Replace T with the expected modal result
  // static Future<T?> showModal<T>(
  //   BuildContext context, {
  //   required PostDetailsReactiveFormParameters params,
  // }) async {
  //   return await showDialog<T>(
  //     context: context,
  //     builder: (context) => Dialog(
  //       //TODO: assign dialog properties
  //       child: hooked(
  //         param1: params,
  //       ),
  //     ),
  //   );
  // }

  final AddressReactiveController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReactiveForm(
        formGroup: controller.formGroup,
        child: ListView(
          children: [
            ReactiveTextField<String>(
              formControlName: ConstFormGroup.postText,
            ),
            const SizedBox(height: 16),
            ReactiveFormArray<Map<String, Object?>>(
              formArrayName: ConstFormGroup.addresses,
              builder: (context, formArray, child) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Addresses : ${formArray.controls.length}'),
                    const SizedBox(height: 16),
                    for (final fg
                        in formArray.controls.cast<FormGroup>().indexed)
                      AddressWidget(
                        key: ValueKey(fg.hashCode),
                        formGroup: fg.$2,
                        index: fg.$1,
                        onDelete: () {
                          formArray.removeAt(fg.$1);
                        },
                      ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => controller.addNewAddress(formArray),
                      style: const ButtonStyle(
                        minimumSize: WidgetStatePropertyAll(Size(250, 50)),
                      ),
                      child: const Text('Add New Address'),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: controller.submit,
                  style: const ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(250, 50)),
                  ),
                  child: const Text('Submit'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: controller.reset,
                  style: const ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(250, 50)),
                  ),
                  child: const Text('Reset'),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    super.key,
    required this.formGroup,
    required this.index,
    required this.onDelete,
  });

  final FormGroup formGroup;
  final int index;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: formGroup,
      child: Row(
        children: [
          Column(
            children: [
              IconButton(
                onPressed: onDelete,
                icon: const Icon(Icons.delete),
              ),
              Text(index.toString()),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ReactiveTextField<String>(
                  formControlName: ConstFormGroup.lineOne,
                  decoration: const InputDecoration(
                    labelText: 'Line 1',
                  ),
                ),
                ReactiveTextField<String>(
                  formControlName: ConstFormGroup.lineTwo,
                  decoration: const InputDecoration(
                    labelText: 'Line 2',
                  ),
                ),
                ReactiveTextField<String>(
                  formControlName: ConstFormGroup.postalCode,
                  decoration: const InputDecoration(
                    labelText: 'Postal Code',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
