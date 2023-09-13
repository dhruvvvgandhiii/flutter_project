import '../apiClient/api_client.dart';
import '../models/registerDeviceAuth/post_register_device_auth_resp.dart';

/// Repository class for managing API requests.
///
/// This class provides a simplified interface for making the
/// API request using the [ApiClient] instance
class Repository {
  final _apiClient = ApiClient();

  Future<PostRegisterDeviceAuthResp> registerDeviceAuth({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.registerDeviceAuth(
      headers: headers,
      requestData: requestData,
    );
  }
}
