class ImcEntity {
  final double height;
  final double weight;

  ImcEntity(this.height, this.weight);

  double calculateIMC (){
    return weight / (height * height);
  }
}