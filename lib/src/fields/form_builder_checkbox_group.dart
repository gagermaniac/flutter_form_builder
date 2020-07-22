import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_form_builder/src/widgets/grouped_checkbox.dart';

class FormBuilderCheckboxGroup<T> extends FormBuilderField<List<T>> {
  // final Widget secondary;

  FormBuilderCheckboxGroup({
    Key key,
    //From Super
    @required String attribute,
    FormFieldValidator validator,
    List<T> initialValue,
    bool readOnly = false,
    InputDecoration decoration = const InputDecoration(),
    ValueChanged onChanged,
    ValueTransformer valueTransformer,
    bool enabled = true,
    FormFieldSetter onSaved,
    bool autovalidate = false,
    VoidCallback onReset,
    FocusNode focusNode,
    @required List<FormBuilderFieldOption> options,
    Color activeColor,
    Color checkColor,
    Color focusColor,
    Color hoverColor,
    List<T> disabled,
    MaterialTapTargetSize materialTapTargetSize,
    bool tristate = false,
    Axis wrapDirection = Axis.horizontal,
    WrapAlignment wrapAlignment = WrapAlignment.start,
    double wrapSpacing = 0.0,
    WrapAlignment wrapRunAlignment = WrapAlignment.start,
    double wrapRunSpacing = 0.0,
    WrapCrossAlignment wrapCrossAxisAlignment = WrapCrossAlignment.start,
    TextDirection wrapTextDirection,
    VerticalDirection wrapVerticalDirection = VerticalDirection.down,
    Widget separator,
    ControlAffinity controlAffinity = ControlAffinity.leading,
    GroupedCheckboxOrientation orientation = GroupedCheckboxOrientation.wrap,
  }) : super(
          key: key,
          initialValue: initialValue,
          attribute: attribute,
          validator: validator,
          valueTransformer: valueTransformer,
          onChanged: onChanged,
          readOnly: readOnly,
          autovalidate: autovalidate,
          onSaved: onSaved,
          enabled: enabled,
          onReset: onReset,
          decoration: decoration,
          builder: (FormFieldState field) {
            final _FormBuilderCheckboxGroupState<T> state = field;

            return InputDecorator(
              decoration: decoration.copyWith(
                enabled: !state.readOnly,
                errorText: decoration?.errorText ?? field.errorText,
              ),
              child: GroupedCheckbox(
                orientation: orientation,
                value: initialValue,
                options: options,
                onChanged: (val) {
                  field.didChange(val);
                },
                activeColor: activeColor,
                focusColor: focusColor,
                checkColor: checkColor,
                materialTapTargetSize: materialTapTargetSize,
                disabled: disabled,
                hoverColor: hoverColor,
                tristate: tristate,
                wrapAlignment: wrapAlignment,
                wrapCrossAxisAlignment: wrapCrossAxisAlignment,
                wrapDirection: wrapDirection,
                wrapRunAlignment: wrapRunAlignment,
                wrapRunSpacing: wrapRunSpacing,
                wrapSpacing: wrapSpacing,
                wrapTextDirection: wrapTextDirection,
                wrapVerticalDirection: wrapVerticalDirection,
                separator: separator,
                controlAffinity: controlAffinity,
              ),
            );
          },
        );

  @override
  _FormBuilderCheckboxGroupState<T> createState() =>
      _FormBuilderCheckboxGroupState();
}

class _FormBuilderCheckboxGroupState<T> extends FormBuilderFieldState<List<T>> {
  @override
  FormBuilderCheckboxGroup<T> get widget =>
      super.widget as FormBuilderCheckboxGroup;
}
