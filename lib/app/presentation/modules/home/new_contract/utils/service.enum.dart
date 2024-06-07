enum ServiceType {
  water(indexValue: 0),
  electricity(indexValue: 1),
  internet(indexValue: 2);

  const ServiceType({
    required this.indexValue,
  });

  final int indexValue;
}
