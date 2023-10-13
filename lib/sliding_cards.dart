import 'package:flutter/material.dart';

import 'card_content.dart';
import 'card_model.dart';

class SlidingCardsView extends StatefulWidget {
  const SlidingCardsView({super.key});

  @override
  State<SlidingCardsView> createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView.builder(
        clipBehavior: Clip.none,
        controller: pageController,
        itemCount: demoCardData.length,
        itemBuilder: (context, index) {
          // double offset = pageOffset - index;

          return Container(
            clipBehavior: Clip.none,
            margin: const EdgeInsets.only(left: 8, right: 8, bottom: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(8, 20),
                  blurRadius: 24,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                // Image
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(32)),
                  child: Image.asset(
                    'assets/${demoCardData[index].image}',
                    height: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.none,
                  ),
                ),
                // Rest of the content
                const SizedBox(height: 8),
                Expanded(
                  child: CardContent(
                    name: demoCardData[index].name,
                    date: demoCardData[index].date,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
