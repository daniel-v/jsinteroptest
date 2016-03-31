import "package:js/js.dart";

@JS()
@anonymous
class MethodParams {
  external String get aParameter;
  external factory MethodParams({ String aParameter });
}

@JS()
class MyService {
  @JS("methodToCall")
  external static methodToCall(params);
}

main() {
  MyService.methodToCall(new MethodParams(aParameter: "Hello World"));
}