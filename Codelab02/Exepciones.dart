typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

// Call logException to log an exception, and doneLogging when finished.
abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  // Invoking this method might cause an exception.
  
  try {
    untrustworthy();  //llamada al metodo untrustworthy
  } on ExceptionWithMessage catch (e) {   // uso del catch para el manejo de la exepcion
    logger.logException(e.runtimeType,e.message); //
  } on Exception {
    logger.logException(Exception);
  } finally {
    logger.doneLogging();
  }
  
}

// Tests your solution (Don't edit!):
class MyLogger extends Logger {
  Type? lastType;
  String lastMessage = '';
  bool done = false;

  void logException(Type t, [String? message]) {
    lastType = t;
    lastMessage = message ?? lastMessage;
  }