import 'package:bigfoot_electro/theme/style.dart';
import 'package:flutter/material.dart';


Widget searchBar(Function onChange) {
  return Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                onChange(value);
              },
              style: TextStyle(
                color: BFEColors.NAVY
              ),
              decoration: InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                // fillColor: BFEColors.BEIGE,
                // hoverColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide()
                ),
              ),
            ),
          );
}