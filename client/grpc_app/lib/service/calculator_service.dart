import 'package:fixnum/fixnum.dart';
import 'package:grpcapp/service/calculator.pbgrpc.dart';
import 'package:grpcapp/grpc_client.dart';

class CalculatorService {
  static Future<getResult> add(int a, int b) async {
    var client = CalculateClient(GrpcClient.getClient());
    sendNumbers numbers = sendNumbers.create();
    numbers.a = Int64(a);
    numbers.b = Int64(b);
    return await client.add(numbers);
  }
}
