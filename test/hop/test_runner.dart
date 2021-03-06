part of test_hop;

class TestRunner extends Runner {

  TestRunner(BaseConfig state, List<String> arguments) :
    super(state, arguments);


  @protected
  RootTaskContext getContext() {
    return new TestTaskContext();
  }
}

class TestTaskContext extends RootTaskContext {

  TestTaskContext() : super();

  @protected
  @override
  void printCore(String msg) {
    // at the moment, just swallowing all print output
  }
}
