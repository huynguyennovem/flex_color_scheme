import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

/// Widget used to select a ColorScheme based colors in example 5.
///
/// Uses index out out of range of [SchemeColor] to represent and select
/// no selection of [SchemeColor] which sets its value to null in parent,
/// so we can use a selectable item as null input, to represent default value
/// via no value definition. A bit ugly pragmatic approach. Yes it's possible to
/// do it prettier with more code, but this works well enough in this demo.
class ColorSchemePopupMenu extends StatelessWidget {
  const ColorSchemePopupMenu({
    Key? key,
    required this.index,
    this.onChanged,
    this.title,
    this.subtitle,
    this.contentPadding,
  }) : super(key: key);
  final int index;
  final ValueChanged<int>? onChanged;
  final Widget? title;
  final Widget? subtitle;
  final EdgeInsetsGeometry? contentPadding; // Defaults to 16.

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextStyle txtStyle = theme.textTheme.button!;
    final bool enabled = onChanged != null;
    final bool useDefault = index < 0 || index >= SchemeColor.values.length;
    final String colorName =
        enabled && !useDefault ? SchemeColor.values[index].name : 'default';

    return PopupMenuButton<int>(
      padding: EdgeInsets.zero,
      onSelected: onChanged,
      enabled: enabled,
      itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
        for (int i = 0; i < SchemeColor.values.length + 1; i++)
          PopupMenuItem<int>(
            value: i,
            child: ListTile(
              leading: Icon(Icons.lens,
                  color: i >= SchemeColor.values.length
                      ? colorScheme.surface
                      : FlexSubThemes.schemeColor(
                          SchemeColor.values[i],
                          colorScheme,
                        ),
                  size: 35),
              title: i >= SchemeColor.values.length
                  ? Text('default', style: txtStyle)
                  : Text(SchemeColor.values[i].name, style: txtStyle),
            ),
          )
      ],
      child: ListTile(
        enabled: enabled,
        contentPadding:
            contentPadding ?? const EdgeInsets.symmetric(horizontal: 16),
        title: title,
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (subtitle != null) subtitle!,
            Text('ColorScheme color: $colorName'),
          ],
        ),
        trailing: Icon(
          Icons.lens,
          color: enabled && !useDefault
              ? FlexSubThemes.schemeColor(
                  SchemeColor.values[index],
                  colorScheme,
                )
              : colorScheme.surface,
          size: 40,
        ),
      ),
    );
  }
}