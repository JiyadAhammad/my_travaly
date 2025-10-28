class AppFailures {
  AppFailures({required this.message, required this.statusCode});
  final String message;
  final int statusCode;
}

class ClientFailures extends AppFailures {
  ClientFailures({required super.message, required super.statusCode});
}

class ServerFailures extends AppFailures {
  ServerFailures({required super.message, required super.statusCode});
}
