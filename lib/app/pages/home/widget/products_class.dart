import 'package:farmacia_proj/app/core/ui/helpers/size_extensions.dart';
import 'package:farmacia_proj/app/core/ui/styles/text_styles.dart';
import 'package:farmacia_proj/app/repositories/data.dart';
import 'package:flutter/material.dart';

class ProductsClass extends StatefulWidget {
  const ProductsClass({super.key});

  @override
  State<ProductsClass> createState() => _ProductsClassState();
}

class _ProductsClassState extends State<ProductsClass> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryIconList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(
                () {
                  _selectedIndex = index;
                },
              );
            },
            child: CategoryItem(
              name: name[index],
              color: _selectedIndex == index
                  ? const Color(0xffF2B2C9)
                  : Colors.white,
              // backgroundColor:
              //     _selectedIndex == index ? Color(0xffF2B2C9) : Colors.white,
              // : const Color(0xfff2e3db),
              icon: Image.asset(
                categoryIconList[index],
                width: 45,
                height: 25,
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.icon,
    required this.name,
    required this.color,
  });

  final Widget icon;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: context.percentWidth(0.12),
            height: context.percentHeight(0.06),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            child: icon,
          ),
          const SizedBox(height: 8),
          Text(name, style: context.textStyles.textBold.copyWith(fontSize: 12)),
        ],
      ),
    );
  }
}
