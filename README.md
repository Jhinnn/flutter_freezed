# flutter_freezed


### 第一步 
安装 build_runner freezed 
```
  flutter pub add freezed_annotation
  flutter pub add --dev build_runner
  flutter pub add --dev freezed
  # 如果需要生成 toJson/fromJson 需要添加下面的
  flutter pub add json_annotation
  flutter pub add --dev json_serializable
```

### 第二步
创建一个模型文件，像这样的：
```
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'baidu_model.freezed.dart';
part 'baidu_model.g.dart';

@freezed
class BaiduModel with _$BaiduModel {
  factory BaiduModel(
      {required String word,
      required String desc,
      required String img,
      required String rawUrl,
      required String time}) = _BaiduModel;

  factory BaiduModel.fromJson(Map<String, Object?> json) =>
      _$BaiduModelFromJson(json);
}

```

### 第三步
执行如下命令
```
flutter pub run build_runner build
```
则会生成如下文件文件
![WX20230310-161827@2x](https://user-images.githubusercontent.com/17973224/224261502-d9b6ca6e-245b-4a27-bfc7-fc777b84042f.png)

### 第四步
使用
```
WeiboModel weiboModel =
          WeiboModel(title: '恭喜恭喜', time: '2023-03-10 12:32:30');
weiboModel.toJson();
```







