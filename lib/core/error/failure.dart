abstract class Failure {
  String? message;
  Failure({this.message});
}

// General failures
class ServerFailure extends Failure {
  ServerFailure({String? message}): super(message: message);
}

class CacheFailure extends Failure {
  CacheFailure({String? message}): super(message: message);
}
