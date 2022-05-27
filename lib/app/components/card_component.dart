// ignore_for_file: must_be_immutable

import 'package:deck/app/components/image_component.dart';
import 'package:deck/app/domain/model/card_model.dart';
import 'package:flutter/material.dart';

class DeckCard extends StatefulWidget {
  CardModel card;
  Color color;
  double width;
  double height;
  DeckCard(
      {Key? key,
      required this.card,
      required this.color,
      this.width = 100,
      this.height = 100})
      : super(key: key);

  @override
  State<DeckCard> createState() => _DeckCardState();
}

class _DeckCardState extends State<DeckCard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: widget.width,
          height: widget.height,
          child: Hero(
              tag: widget.card.id!,
              child: PageView.builder(
                  onPageChanged: (value) => setState(() => index = value),
                  itemCount: widget.card.cardImages!.length,
                  itemBuilder: (_, i) => DeckImg(
                        img: widget.card.cardImages![i].imageUrl!,
                        colorProgress: widget.color,
                      ))),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.card.cardImages!
                .map((e) => Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: SizedBox(
                        width: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: widget.card.cardImages!.indexOf(e) ==
                                          index
                                      ? Colors.white
                                      : Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          width: 10,
                          height: 10,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity:
                                  widget.card.cardImages!.indexOf(e) == index
                                      ? 1
                                      : 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: widget.card.cardImages!.indexOf(e) ==
                                            index
                                        ? Colors.black
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                              )),
                        ),
                      ),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
