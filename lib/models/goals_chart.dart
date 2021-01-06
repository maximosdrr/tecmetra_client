class IGoalsChart {
  final DateTime mouth;
  final double consume;

  IGoalsChart(
    this.mouth,
    this.consume,
  );

  get dataAsList => [mouth, consume];
}
