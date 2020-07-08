import 'package:grpc/grpc.dart';

class GrpcClient {
  static ClientChannel client;
  static ClientChannel getClient() {
    if (client == null) {
      client = ClientChannel(
        '10.0.2.2',
        port: 3000,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
    }
    return client;
  }
}
