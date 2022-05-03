import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  factory DataModel({
    required int id,
    required String title,
    required String worth,
    required String thumbnail,
    required String image,
    required String description,
    required String instructions,
    @JsonKey(name: 'open_giveaway_url') required String openGiveawayUrl,
    @JsonKey(name: 'published_date') required String publishedDate,
    required String type,
    required String platforms,
    @JsonKey(name: 'end_date') required String endDate,
    required int users,
    required String status,
    @JsonKey(name: 'gamerpower_url') required String gamerPowerUrl,
    @JsonKey(name: 'open_giveaway') required String openGiveaway,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}
