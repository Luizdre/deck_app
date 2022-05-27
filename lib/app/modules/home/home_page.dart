import 'package:deck/app/components/image_component.dart';
import 'package:deck/app/components/text_component.dart';
import 'package:deck/app/modules/home/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Yu-Gi-Oh Cards"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  void initState() {
    store.filteredCards.addListener(() {
      if (mounted) setState(() {});
    });
    store.listCards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.4),
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
          backgroundColor: Colors.grey.withOpacity(0.1),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: store.turnFilter,
                icon: const Icon(Icons.filter_alt_outlined))
          ],
        ),
        body: Column(
          children: [
            Observer(
                builder: (_) => AnimatedContainer(
                      height: store.willFilter ? size.height * 0.11 : 0,
                      duration: const Duration(milliseconds: 500),
                      child: SizedBox(
                        width: size.width * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            border: store.willFilter ? null : InputBorder.none,
                            label: const Text(
                              'Filtrar por nome',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onChanged: (v) => setState(() {
                            store.filterCard(v);
                          }),
                        ),
                      ),
                    )),
            Expanded(
              child: Observer(builder: (_) {
                return store.isLoading
                    ? Center(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const DeckText(
                              text:
                                  'Obtivemos algum erro, que tal tentar novamente?'),
                          IconButton(
                              onPressed: store.listCards,
                              icon: const Icon(Icons.refresh))
                        ],
                      ))
                    : store.filteredCards.value.isEmpty
                        ? const Center(
                            child: DeckText(text: 'Nenhuma carta encontrada'),
                          )
                        : GridView.builder(
                            itemCount: store.filteredCards.value.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemBuilder: (c, i) => Card(
                                elevation: 0,
                                color: Colors.transparent,
                                child: InkWell(
                                    onTap: () => Modular.to.pushNamed('/card_details/',
                                        arguments:
                                            store.filteredCards.value[i]),
                                    child: Hero(
                                        tag: store.filteredCards.value[i].id!,
                                        child: DeckImg(
                                            colorProgress: store.utils.getColor(
                                                store.filteredCards.value[i].type!),
                                            img: store.filteredCards.value[i].cardImages![0].imageUrl!)))));
              }),
            ),
          ],
        ));
  }
}
