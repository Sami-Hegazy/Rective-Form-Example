import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:reactive_form_ex/reactive_address_gen/form.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'controller.dart';
import 'package:flutter/material.dart';

class ReactiveAddressGenView extends StatelessWidget {
  const ReactiveAddressGenView({
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
        builder: (context) => ReactiveAddressGenView(
          controller: useBdayaViewController(
            hookMode: hookMode,
            instanceName: instanceName,
            keys: keys,
            param1: param1,
            param2: param2,
          ),
        ),
      );

  final ReactiveAddressGenController controller;

  @override
  Widget build(BuildContext context) {
    //see also BdayaMultiLoadableAreaWrapper, and BdayaLoadableAreaWrapper.custom
    return Scaffold(
      body: ReactiveAddressGenModelFormBuilder(
        model: controller.initialModel,
        initState: (context, formModel) {
          controller.formGroupRx.$ = formModel;
        },
        builder: (context, formModel, child) {
          return ListView(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.nameControl,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: 16),
              ReactiveReactiveAddressGenModelFormFormGroupArrayBuilder<
                  AddressForm>(
                builder: (context, itemList, formModel) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Addresses : ${itemList.length}'),
                      const SizedBox(height: 16),
                      for (final fg in itemList) fg,
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => controller.addNewAddress(formModel),
                        style: const ButtonStyle(
                          minimumSize: WidgetStatePropertyAll(Size(250, 50)),
                        ),
                        child: const Text('Add New Address'),
                      ),
                    ],
                  );
                },
                extended: formModel.addressesExtendedControl,
                itemBuilder: (context, i, item, formModel) {
                  return AddressGenWidget(
                    // key: ValueKey(item.id),
                    formGroup: item!,
                    index: i,
                    onDelete: () {
                      formModel.addressesControl.removeAt(i);
                    },
                  );
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => controller.submit(formModel),
                    style: const ButtonStyle(
                      minimumSize: WidgetStatePropertyAll(Size(250, 50)),
                    ),
                    child: const Text('Submit'),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () => controller.reset(formModel),
                    style: const ButtonStyle(
                      minimumSize: WidgetStatePropertyAll(Size(250, 50)),
                    ),
                    child: const Text('Reset'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}

class AddressGenWidget extends StatelessWidget {
  const AddressGenWidget({
    super.key,
    required this.formGroup,
    required this.index,
    required this.onDelete,
  });

  final AddressForm formGroup;
  final int index;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return ReactiveAddressForm(
      form: formGroup,
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
                  formControl: formGroup.lineOneControl,
                  decoration: const InputDecoration(
                    labelText: 'Line 1',
                  ),
                ),
                ReactiveTextField<String>(
                  formControl: formGroup.lineTwoControl,
                  decoration: const InputDecoration(
                    labelText: 'Line 2',
                  ),
                ),
                ReactiveTextField<String>(
                  formControl: formGroup.postalCodeControl,
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
