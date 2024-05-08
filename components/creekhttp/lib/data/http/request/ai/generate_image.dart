import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';
import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 生成图片
class GenerateImageRequest extends BaseRequest {
  @override
  bool get needLogin => false;

  @override
  String get url => 'https://service-rcg243wq-1320941919.sg.tencentapigw.com/release/sdapi/v1/txt2img';

  @override
  String get path => '';

  @override
  int get receiveTimeout => 300;

}