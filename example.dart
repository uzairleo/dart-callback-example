
/*
Callback:
If we go by definition, the Callback is a function or a method which we pass as an argument into another function or method and 
can perform an action when we require it.

*/
typedef Callback = int Function(int t);
//also we can write the above one like this ===> typedef int Callback (int t);
// why we used typedef to create call backs if we can also take that work s
// simply by defining that function type like this function(int) callback
class Button {
  int _count = 0;
//  Function(int)
  Callback callback;
  void tap() {
    ++_count;
//          callback(2272);
    if (callback != null && (_count % 2) == 0) {
      callback(_count);
    }
  }

// void setCallback(Function(int) f){
//      this.callback = f;
//  }
  Button(this.callback);
}

//Main starts
main(List<String> args) {
  Button button = new Button((value) {
    print(value);
    return value;
  });
//  button.setCallback((a){
//    print(a);
// });
  for (int i = 0; i < 6; ++i) {
    button.tap();
  }
}
//
