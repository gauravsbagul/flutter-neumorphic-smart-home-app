import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  final Color color;
  final double blurLavel;
  final Offset offsetWhite;
  final Offset offsetBlack;
  final double height;
  final double width;
  final IconData icon;
  final double iconSize;

  const Design({
    Key key,
    this.color,
    this.blurLavel,
    this.offsetWhite,
    this.offsetBlack,
    this.height,
    this.width,
    this.icon,
    this.iconSize,
  }) : super(key: key);

  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        setState(() {
          isPressed = true;
        });
        return true;
      },
      onPointerUp: (event) {
        setState(() {
          isPressed = false;
        });
        return true;
      },
      child: isPressed
          ? Container(
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: widget.blurLavel,
                    offset: Offset(-3, -3),
                    color: Colors.white.withOpacity(.7),
                  ),
                  BoxShadow(
                    blurRadius: widget.blurLavel,
                    offset: Offset(3, 3),
                    color: Colors.white.withOpacity(.15),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: widget.blurLavel,
                            offset: widget.offsetWhite,
                            color: Colors.white.withOpacity(.7),
                          ),
                          BoxShadow(
                            blurRadius: widget.blurLavel,
                            offset: widget.offsetBlack,
                            color: Colors.black.withOpacity(.25),
                          ),
                        ],
                      ),
                      child: Icon(
                        widget.icon,
                        size: widget.iconSize,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Container(
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                color: Color(0xFFE6EBF2),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: widget.blurLavel,
                    offset: Offset(-3, -3),
                    color: Colors.white.withOpacity(.7),
                  ),
                  BoxShadow(
                    blurRadius: widget.blurLavel,
                    offset: Offset(3, 3),
                    color: Colors.black.withOpacity(.3),
                  ),
                ],
              ),
              child: Icon(
                widget.icon,
                size: 30.0,
                color: Colors.black.withOpacity(.5),
              ),
            ),
    );
  }
}
