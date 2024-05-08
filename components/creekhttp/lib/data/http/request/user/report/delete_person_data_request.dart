/*
 * @Date: 2023-11-08 14:47:23
 * @LastEditors: yuen
 * @LastEditTime: 2023-11-09 09:55:06
 * @FilePath: \project\creekhttp\lib\data\http\request\user\report\delete_person_data_request.dart
 */
import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

class DeletePersonDataRequest extends BaseRequest {
  @override
  HttpMethod get httpMethod => HttpMethod.post;

  // @override
  // bool get needLogin => true;

  @override
  String get path => UrlPath.cleanPersonDataFromCloud;
}
