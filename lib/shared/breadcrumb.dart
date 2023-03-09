import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/router/router.dart';

List<String> breadcrumb = [Flurorouter.summaryRoute];

class Breadcrumb extends StatelessWidget {
  const Breadcrumb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          children: [
            //? conditional sidebar
            //? breadcrumb
            Column(
              children: [
                const Text('Actual Page'),
                Row(
                  children: breadcrumb.map((e) => const BreadcrumbItem(currentRoute: 'das',), ).toList(),
                ),
              ],
            ),
          ],
        ));
  }
}


class BreadcrumbItem extends StatefulWidget {
  final String currentRoute;
  const BreadcrumbItem({super.key, required this.currentRoute});

  @override
  State<BreadcrumbItem> createState() => _BreadcrumbItemState();
}

class _BreadcrumbItemState extends State<BreadcrumbItem> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.currentRoute),
      ],
    );
  }
}