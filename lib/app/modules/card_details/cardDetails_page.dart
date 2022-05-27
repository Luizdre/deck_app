// ignore_for_file: file_names, must_be_immutable

import 'dart:async';

import 'package:deck/app/components/animated_widget.dart';
import 'package:deck/app/components/card_component.dart';
import 'package:deck/app/components/progress_component.dart';
import 'package:deck/app/components/text_component.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:deck/app/modules/card_details/cardDetails_store.dart';
import 'package:flutter/material.dart';

import '../../domain/model/card_model.dart';

class CardDetailsPage extends StatefulWidget {
  CardModel card;
  CardDetailsPage({Key? key, required this.card}) : super(key: key);
  @override
  CardDetailsPageState createState() => CardDetailsPageState();
}

class CardDetailsPageState extends State<CardDetailsPage> {
  final CardDetailsStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 500), () {
      store.turnAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.card.name!),
        ),
        backgroundColor: Colors.blue,
        body: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                child: Observer(
                  builder: (_) => DeckAnimatedContainer(
                      top: store.animated && widget.card.level != null ? 5 : 0,
                      opacity: store.animated ? 1 : 0,
                      child: Builder(
                          builder: (_) => widget.card.level != null
                              ? Row(
                                  children: [
                                    const DeckText(text: 'Lvl'),
                                    Row(
                                      children: List.generate(
                                          widget.card.level!,
                                          (index) => Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Image.asset(
                                                    'assets/icons/level.png',
                                                    height: 15),
                                              )),
                                    )
                                  ],
                                )
                              : const SizedBox())),
                )),
            Observer(
                builder: (_) => DeckAnimatedContainer(
                    duration: 500,
                    left: store.animated && widget.card.race != null ? 0 : 8,
                    opacity: store.animated ? 1 : 0,
                    child: Builder(
                        builder: (context) => widget.card.race != null
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 5),
                                child: Row(
                                  children: [
                                    const DeckText(text: 'Race: '),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: DeckText(text: widget.card.race!),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 0),
                                      child: Image.asset(store.utils
                                          .getImageByRace(widget.card.race!)),
                                    )
                                  ],
                                ),
                              )
                            : const SizedBox()))),
            Observer(
                builder: (_) => DeckAnimatedContainer(
                      duration: 700,
                      left: store.animated && widget.card.attribute != null
                          ? 0
                          : 8,
                      opacity: store.animated ? 1 : 0,
                      child: Builder(
                          builder: (context) => widget.card.attribute != null
                              ? Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 5),
                                  child: Row(
                                    children: [
                                      const DeckText(text: 'Attribute: '),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: DeckText(
                                            text: widget.card.attribute!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 10, 0),
                                        child: Image.asset(
                                          store.utils.getImageByAttribute(
                                              widget.card.attribute!),
                                          height: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : const SizedBox()),
                    )),
            Builder(
                builder: (_) => widget.card.type != null
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DeckCard(
                            height: 200,
                            width: 200,
                            card: widget.card,
                            color: store.utils.getColor(widget.card.type!)),
                      )
                    : const SizedBox()),
            Observer(
                builder: (_) => store.isLoading
                    ? Center(
                        child: DeckProgressIndicator(
                            value: null,
                            color: store.utils.getColor(widget.card.type!)),
                      )
                    : ExpansionTile(
                        title: const DeckText(text: 'Descriçao'),
                        children: [DeckText(text: widget.card.desc!)],
                      )),
            Builder(
                builder: (_) =>
                    widget.card.atk != null || widget.card.def != null
                        ? Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                DeckText(text: 'ATK: ${widget.card.atk}'),
                                DeckText(text: 'DEF: ${widget.card.def}')
                              ],
                            ),
                          )
                        : const SizedBox())
          ],
        ));
  }
}
