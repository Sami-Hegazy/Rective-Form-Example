import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'form.gform.dart';

@ReactiveFormAnnotation()
@FormGroupAnnotation<ReactiveAddressGenModel>()
class ReactiveAddressGenModel {
  const ReactiveAddressGenModel({
    @FormControlAnnotation<String>() this.name,
    @FormArrayAnnotation<Address>() this.addresses = const [],
  });

  final String? name;
  final List<Address> addresses;
}

@ReactiveFormAnnotation()
@FormGroupAnnotation<Address>()
class Address {
  final String id;
  final String? lineOne;
  final String? lineTwo;
  final String? postalCode;

  const Address({
    @FormControlAnnotation<String>() required this.id,
    @FormControlAnnotation<String>() required this.lineOne,
    @FormControlAnnotation<String>() required this.lineTwo,
    @FormControlAnnotation<String>() required this.postalCode,
  });
}
