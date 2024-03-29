import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({super.key, required this.selectedSize, required this.onSizeSelected, required this.sizes});
  final List<String> sizes;
  final String selectedSize;
  final void Function(String) onSizeSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          sizes.length,
              (index) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: Material(
              child: InkWell(
                borderRadius: BorderRadius.circular(3),
                onTap: () => onSizeSelected(sizes[index]),
                child: Ink(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: selectedSize == sizes[index]
                          ? Color(0xFF667EEA)
                          : Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(3)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      sizes[index],
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: selectedSize == sizes[index]
                              ? Colors.white
                              : Colors.black87),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}