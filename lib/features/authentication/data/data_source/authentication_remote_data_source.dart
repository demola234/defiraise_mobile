
import 'package:defiraiser_mobile/core/global/error/exceptions.dart';
import 'package:defiraiser_mobile/core/network/endpoint_manager.dart';
import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';



abstract class AuthenticationRemoteDataSource {
  Future<CreateAccountResponse> createAccount(String username,String email);
}

class IAuthenticationRemoteDataSource implements AuthenticationRemoteDataSource {
  final NetworkProvider client;
  IAuthenticationRemoteDataSource(this.client);
  
  @override
  Future<CreateAccountResponse> createAccount(String username, String email) async {
   final response = await client.call(
        path: EndpointManager.createAccount,
        method: RequestMethod.post,
       body: {
          "username": username,
          "email": email
       });
    final res = response!.data;
    if (response.statusCode == 200) {
      return CreateAccountResponse.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }
}