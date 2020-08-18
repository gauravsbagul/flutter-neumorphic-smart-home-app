import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  final Color color;
  final dynamic item;
  final IconData icon;
  final double iconSize;
  final Function buttonPressed;

  const Design({
    Key key,
    this.color,
    this.item,
    this.icon,
    this.iconSize,
    this.buttonPressed,
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
        print('EVENT: $event');
        setState(() {
          isPressed = true;
        });
        widget.buttonPressed(widget.item);
        return true;
      },
      onPointerUp: (event) {
        setState(() {
          isPressed = false;
        });
        return true;
      },
      child: isPressed
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: widget.color ?? Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(5, 5),
                      color: Colors.white.withOpacity(.7),
                    ),
                    BoxShadow(
                      blurRadius: 3.0,
                      offset: Offset(-5, -5),
                      color: Colors.white.withOpacity(.15),
                    ),
                  ],
                ),
                child: Text(
                  widget.item.toString(),
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: widget.color ?? Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(-5, -5),
                      color: Colors.white.withOpacity(.3),
                    ),
                    BoxShadow(
                      blurRadius: 3.0,
                      offset: Offset(5, 5),
                      color: widget.color != null
                          ? widget.color.withOpacity(.10)
                          : Colors.black.withOpacity(.15),
                    ),
                  ],
                ),
                child: Text(
                  widget.item.toString(),
                  style: TextStyle(
                    color:
                        widget.color != null ? Colors.white : Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
    );
  }
}
