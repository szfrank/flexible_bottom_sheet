import 'package:flutter/material.dart';
import 'package:flexible_bottom_sheet/flexible_bottom_sheet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    List tmpList = [
      '如何用Mac自带的QuickTime Player录制视频并制作GIF动图',
      '之前写简书或者别的博客文章，看到别人家的博客GIF动图做的酷炫',
      '选取文件那里选择你刚刚保存的剪辑后的视频文件',
      '这是一个优雅的测试',
      '之前写简书或者别的博客文章，看到别人家的博客GIF动图做的酷炫',
      '如何用Mac自带的QuickTime Player录制视频并制作GIF动图',
      '这是一个优雅的测试',
      '如何用Mac自带的QuickTime Player录制视频并制作GIF动图',
      '之前写简书或者别的博客文章，看到别人家的博客GIF动图做的酷炫',
      '这是一个优雅的测试',
      '之前写简书或者别的博客文章，看到别人家的博客GIF动图做的酷炫',
      '打开QuickTime Player,选择菜单栏上的文件，选择新建屏幕录制，如下图所示',
      '录制后保存到桌面上，用QuickTime Player打开刚才录制的视频文件',
      '之后可以看到剪辑横条，红色线可以选择你要剪切掉的内容',
      '打开后，选择菜单栏上的显示->显示剪辑',
      '然后选择编辑->分离剪辑，会得到下面的图片',
    ];
    showFlexibleModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 43.0),
              Expanded(
                child: Text(
                  '共323条留言',
                  textAlign: TextAlign.center,
                ),
              ),
              const IconButton(onPressed: null, icon: Icon(Icons.close)),
            ],
          ),
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              itemBuilder: (_, int index) {
                final String data = tmpList[index];
                return Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 10.0),
                  child: Text(
                    data ?? '',
                    textAlign: TextAlign.start,
                  ),
                );
              },
              itemCount: tmpList.length,
              // controller: _scrollControll,
            ),
          ),
        ]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
