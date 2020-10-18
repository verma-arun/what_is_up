class CallDetail {
  bool isIncoming;
  bool isMissed;
  DateTime timestamp;

  CallDetail({
    this.isIncoming,
    this.isMissed,
    this.timestamp,
  });
}

List<CallDetail> callDetailsDummyData = [
  CallDetail(isIncoming: true, isMissed: true, timestamp: DateTime.now()),
  CallDetail(isIncoming: true, isMissed: true, timestamp: DateTime.now()),
  CallDetail(isIncoming: false, isMissed: false, timestamp: DateTime.now()),
  CallDetail(isIncoming: false, isMissed: true, timestamp: DateTime.now()),
  CallDetail(isIncoming: true, isMissed: false, timestamp: DateTime.now())
];
