import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../models/models.dart';
import '../../provider/providers.dart';

class CustomExpansionTile extends StatefulWidget {
  final List<Widget> tiles;
  final Tile tile;

  const CustomExpansionTile({
    super.key,
    required this.tiles,
    required this.tile,
  });
  @override
  State createState() => CustomExpansionTileState();
}

class CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider themeProvider, child) {
        return ExpansionTile(
          collapsedBackgroundColor: themeProvider.getTheme.backgroundColor,
          title: Text(
            widget.tile.title,
            style: themeProvider.getTheme.textTheme.titleMedium!.copyWith(
              color: isExpanded
                  ? kPrimaryColor
                  : themeProvider.getTheme.textTheme.titleMedium!.color,
            ),
          ),
          iconColor: isExpanded
              ? themeProvider.getTheme.iconTheme.color
              : kPrimaryColor,
          leading: SvgPicture.asset(
            widget.tile.iconString!,
            color: isExpanded
                ? kPrimaryColor
                : themeProvider.getTheme.iconTheme.color,
          ),
          trailing: SizedBox(
            width: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                widget.tile.status != ""
                    ? Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: widget.tile.status == "New"
                              ? const Color.fromARGB(255, 185, 214, 246)
                              : widget.tile.status == "Latest"
                                  ? const Color.fromARGB(255, 250, 203, 200)
                                  : const Color.fromARGB(255, 211, 211, 248),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          widget.tile.status!,
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: widget.tile.status == "New"
                                ? Colors.blue
                                : widget.tile.status == "Latest"
                                    ? Colors.red
                                    : const Color(0xFF6362E7),
                          ),
                        ),
                      )
                    : Container(),
                widget.tile.tiles.isEmpty
                    ? Expanded(child: Container())
                    : Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_down_outlined
                            : Icons.keyboard_arrow_right_outlined,
                        size: 20,
                      ),
              ],
            ),
          ),
          children: widget.tiles,
          onExpansionChanged: (bool expanding) => setState(
            () => isExpanded = expanding,
          ),
        );
      },
    );
  }
}
