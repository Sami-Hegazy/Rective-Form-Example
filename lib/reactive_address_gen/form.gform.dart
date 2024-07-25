// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveReactiveAddressGenModelFormConsumer extends StatelessWidget {
  const ReactiveReactiveAddressGenModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ReactiveAddressGenModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveReactiveAddressGenModelForm.of(context);

    if (formModel is! ReactiveAddressGenModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ReactiveAddressGenModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ReactiveAddressGenModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ReactiveAddressGenModelForm form;
}

class ReactiveReactiveAddressGenModelForm extends StatelessWidget {
  const ReactiveReactiveAddressGenModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final ReactiveAddressGenModelForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static ReactiveAddressGenModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ReactiveAddressGenModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ReactiveAddressGenModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ReactiveAddressGenModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveAddressGenModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveReactiveAddressGenModelFormExt on BuildContext {
  ReactiveAddressGenModelForm? reactiveAddressGenModelFormWatch() =>
      ReactiveReactiveAddressGenModelForm.of(this);

  ReactiveAddressGenModelForm? reactiveAddressGenModelFormRead() =>
      ReactiveReactiveAddressGenModelForm.of(this, listen: false);
}

class ReactiveAddressGenModelFormBuilder extends StatefulWidget {
  const ReactiveAddressGenModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ReactiveAddressGenModel? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context,
      ReactiveAddressGenModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, ReactiveAddressGenModelForm formModel)? initState;

  @override
  _ReactiveAddressGenModelFormBuilderState createState() =>
      _ReactiveAddressGenModelFormBuilderState();
}

class _ReactiveAddressGenModelFormBuilderState
    extends State<ReactiveAddressGenModelFormBuilder> {
  late ReactiveAddressGenModelForm _formModel;

  @override
  void initState() {
    _formModel = ReactiveAddressGenModelForm(
        ReactiveAddressGenModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ReactiveAddressGenModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveReactiveAddressGenModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ReactiveAddressGenModelForm
    implements FormModel<ReactiveAddressGenModel> {
  ReactiveAddressGenModelForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String addressesControlName = "addresses";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String nameControlPath() => pathBuilder(nameControlName);

  String addressesControlPath() => pathBuilder(addressesControlName);

  String? get _nameValue => nameControl?.value;

  List<Address> get _addressesValue =>
      addressesAddressForm.map((e) => e.model).toList();

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAddresses {
    try {
      form.control(addressesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get nameErrors => nameControl?.errors;

  Map<String, Object> get addressesErrors => addressesControl.errors;

  void get nameFocus => form.focus(nameControlPath());

  void get addressesFocus => form.focus(addressesControlPath());

  void nameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressesValueUpdate(
    List<Address> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      addressesClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <Address>[];
    final toAdd = <Address>[];

    localValue.asMap().forEach((k, v) {
      final values = (addressesControl.controls).map((e) => e.value).toList();

      if (addressesAddressForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      addressesControl.updateValue(
          toUpdate.map((e) => AddressForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        addressesControl.add(AddressForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void addressesInsert(
    int i,
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = (addressesControl.controls).map((e) => e.value).toList();
    if (values.length < i) {
      addAddressesItem(value);
      return;
    }

    addressesControl.insert(
      i,
      AddressForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void addressesClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressesAddressForm.clear();
    addressesControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressesValuePatch(
    List<Address> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = addressesAddressForm.asMap().keys;

    final toPatch = <Address>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    addressesControl.patchValue(
        toPatch.map((e) => AddressForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void nameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void addressesValueReset(
    List<Address> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressesControl.reset(
          value:
              value.map((e) => AddressForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String>? get nameControl => containsName
      ? form.control(nameControlPath()) as FormControl<String>?
      : null;

  FormArray<Map<String, Object?>> get addressesControl =>
      form.control(addressesControlPath()) as FormArray<Map<String, Object?>>;

  List<AddressForm> get addressesAddressForm {
    final values = (addressesControl.controls).map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, AddressForm(form, pathBuilder("addresses.$k"))))
        .values
        .toList();
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addressesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<AddressForm>>
      get addressesExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<AddressForm>>(
              form.control(addressesControlPath())
                  as FormArray<Map<String, Object?>>,
              () => addressesAddressForm);

  void addAddressesItem(Address value) {
    addressesControl.add(AddressForm.formElements(value));
  }

  void removeAddressesItemAtIndex(int i) {
    if ((addressesControl.value ?? []).length > i) {
      addressesControl.removeAt(i);
    }
  }

  void addAddressesItemList(List<Address> value) {
    value.map((e) => addAddressesItem(e));
  }

  @override
  ReactiveAddressGenModel get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'ReactiveAddressGenModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ReactiveAddressGenModel(
        name: _nameValue, addresses: _addressesValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      addressesAddressForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      addressesAddressForm.forEach((e) => e.toggleDisabled());

      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  void submit({
    required void Function(ReactiveAddressGenModel model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ReactiveAddressGenModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ReactiveAddressGenModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ReactiveAddressGenModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(
          ReactiveAddressGenModel? reactiveAddressGenModel) =>
      FormGroup({
        nameControlName: FormControl<String>(
            value: reactiveAddressGenModel?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        addressesControlName: FormArray(
            (reactiveAddressGenModel?.addresses ?? [])
                .map((e) => AddressForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class AddressForm implements FormModel<Address> {
  AddressForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String lineOneControlName = "lineOne";

  static const String lineTwoControlName = "lineTwo";

  static const String postalCodeControlName = "postalCode";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String lineOneControlPath() => pathBuilder(lineOneControlName);

  String lineTwoControlPath() => pathBuilder(lineTwoControlName);

  String postalCodeControlPath() => pathBuilder(postalCodeControlName);

  String get _idValue => idControl.value as String;

  String? get _lineOneValue => lineOneControl?.value;

  String? get _lineTwoValue => lineTwoControl?.value;

  String? get _postalCodeValue => postalCodeControl?.value;

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLineOne {
    try {
      form.control(lineOneControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLineTwo {
    try {
      form.control(lineTwoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPostalCode {
    try {
      form.control(postalCodeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get idErrors => idControl.errors;

  Map<String, Object>? get lineOneErrors => lineOneControl?.errors;

  Map<String, Object>? get lineTwoErrors => lineTwoControl?.errors;

  Map<String, Object>? get postalCodeErrors => postalCodeControl?.errors;

  void get idFocus => form.focus(idControlPath());

  void get lineOneFocus => form.focus(lineOneControlPath());

  void get lineTwoFocus => form.focus(lineTwoControlPath());

  void get postalCodeFocus => form.focus(postalCodeControlPath());

  void lineOneRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLineOne) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          lineOneControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            lineOneControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void lineTwoRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLineTwo) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          lineTwoControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            lineTwoControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void postalCodeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPostalCode) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          postalCodeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            postalCodeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lineOneValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lineOneControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lineTwoValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lineTwoControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postalCodeValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postalCodeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lineOneValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lineOneControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lineTwoValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lineTwoControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postalCodeValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postalCodeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void lineOneValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      lineOneControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void lineTwoValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      lineTwoControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void postalCodeValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      postalCodeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String>? get lineOneControl => containsLineOne
      ? form.control(lineOneControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get lineTwoControl => containsLineTwo
      ? form.control(lineTwoControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get postalCodeControl => containsPostalCode
      ? form.control(postalCodeControlPath()) as FormControl<String>?
      : null;

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void lineOneSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      lineOneControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      lineOneControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void lineTwoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      lineTwoControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      lineTwoControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void postalCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      postalCodeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      postalCodeControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Address get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'AddressForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Address(
        id: _idValue,
        lineOne: _lineOneValue,
        lineTwo: _lineTwoValue,
        postalCode: _postalCodeValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  void submit({
    required void Function(Address model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AddressForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Address? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Address? address) => FormGroup({
        idControlName: FormControl<String>(
            value: address?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lineOneControlName: FormControl<String>(
            value: address?.lineOne,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lineTwoControlName: FormControl<String>(
            value: address?.lineTwo,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        postalCodeControlName: FormControl<String>(
            value: address?.postalCode,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveReactiveAddressGenModelFormArrayBuilder<
    ReactiveReactiveAddressGenModelFormArrayBuilderT> extends StatelessWidget {
  const ReactiveReactiveAddressGenModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveReactiveAddressGenModelFormArrayBuilderT>?
      formControl;

  final FormArray<ReactiveReactiveAddressGenModelFormArrayBuilderT>? Function(
      ReactiveAddressGenModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ReactiveAddressGenModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveReactiveAddressGenModelFormArrayBuilderT? item,
      ReactiveAddressGenModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveReactiveAddressGenModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveReactiveAddressGenModelFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveReactiveAddressGenModelFormFormGroupArrayBuilder<
        ReactiveReactiveAddressGenModelFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactiveReactiveAddressGenModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveReactiveAddressGenModelFormFormGroupArrayBuilderT>>?
      extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveReactiveAddressGenModelFormFormGroupArrayBuilderT>>
      Function(ReactiveAddressGenModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ReactiveAddressGenModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveReactiveAddressGenModelFormFormGroupArrayBuilderT? item,
      ReactiveAddressGenModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveReactiveAddressGenModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveReactiveAddressGenModelFormFormGroupArrayBuilderT>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveAddressFormConsumer extends StatelessWidget {
  const ReactiveAddressFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, AddressForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAddressForm.of(context);

    if (formModel is! AddressForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class AddressFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const AddressFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final AddressForm form;
}

class ReactiveAddressForm extends StatelessWidget {
  const ReactiveAddressForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final AddressForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static AddressForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<AddressFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        AddressFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as AddressFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return AddressFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveAddressFormExt on BuildContext {
  AddressForm? addressFormWatch() => ReactiveAddressForm.of(this);

  AddressForm? addressFormRead() => ReactiveAddressForm.of(this, listen: false);
}

class AddressFormBuilder extends StatefulWidget {
  const AddressFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Address? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, AddressForm formModel, Widget? child) builder;

  final void Function(BuildContext context, AddressForm formModel)? initState;

  @override
  _AddressFormBuilderState createState() => _AddressFormBuilderState();
}

class _AddressFormBuilderState extends State<AddressFormBuilder> {
  late AddressForm _formModel;

  @override
  void initState() {
    _formModel = AddressForm(AddressForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AddressFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveAddressForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ReactiveAddressFormArrayBuilder<ReactiveAddressFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveAddressFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveAddressFormArrayBuilderT>? formControl;

  final FormArray<ReactiveAddressFormArrayBuilderT>? Function(
      AddressForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, AddressForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveAddressFormArrayBuilderT? item,
      AddressForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAddressForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveAddressFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveAddressFormFormGroupArrayBuilder<
    ReactiveAddressFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveAddressFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveAddressFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveAddressFormFormGroupArrayBuilderT>>
      Function(AddressForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, AddressForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveAddressFormFormGroupArrayBuilderT? item,
      AddressForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAddressForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveAddressFormFormGroupArrayBuilderT>[])
                .asMap()
                .map((i, item) => MapEntry(
                      i,
                      itemBuilder(
                        context,
                        i,
                        item,
                        formModel,
                      ),
                    ))
                .values
                .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
