import 'package:app8_anuncios/slide.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {  


  home ({ Key? key }) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;

  var _listSlide = [
    {'id': 0, 'image': 'assets/images/anuncio1.png'},
    {'id': 1, 'image': 'assets/images/anuncio2.png'},
    {'id': 2, 'image': 'assets/images/anuncio3.png'},
    {'id': 3, 'image': 'assets/images/anuncio4.png'},
    {'id': 4, 'image': 'assets/images/anuncio5.jpg'}
  ];

  @override
  void initState() {
    _pageController.addListener(() { 
      int next = _pageController.page?.round() as int;
      if(_currentPage != next){
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _titulo(),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _listSlide.length,
                itemBuilder: (_, currentIndex){
                  bool activePage = currentIndex == _currentPage;
                  return Slide(
                    activePage: activePage,
                    image: _listSlide[currentIndex]['image'] as String,);
                },
              ),
            ),
            _buildBullets()
          ],
        ),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Anúncios"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

 Widget _buildBullets() {
   return Padding(
     padding: EdgeInsets.all(8),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
        children: _listSlide.map((i){
           return InkWell(
             onTap: (){
               setState(() {
                 _pageController.jumpToPage(i['id']  as int);
                 _currentPage = i['id'] as int;
               });
             },
              child: Container(
              margin: EdgeInsets.all(10),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: _currentPage == i['id'] ? Colors.red : Colors.grey),
                     ),
           );
        }).toList(),  
     ), 
   );
 }
}