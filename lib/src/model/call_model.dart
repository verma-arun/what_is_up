import 'call_details_model.dart';

class CallModel {
  String name;
  String avatarUrl;
  String callType;
  List<CallDetail> callDetail;

  get lastCall => callDetail[callDetail.length - 1];

  CallModel({this.name, this.avatarUrl, this.callType, this.callDetail});
}

List<CallModel> callDummyData = [
  CallModel(
      name: "Mayank Girdhar",
      avatarUrl: "https://picsum.photos/200",
      callType: "video",
      callDetail: callDetailsDummyData),
  CallModel(
      name: "Sukhi",
      avatarUrl: "https://picsum.photos/200",
      callType: "audio",
      callDetail: callDetailsDummyData),
  CallModel(
      name: "Kalu bhai",
      avatarUrl: "https://picsum.photos/200",
      callType: "video",
      callDetail: callDetailsDummyData)
];
