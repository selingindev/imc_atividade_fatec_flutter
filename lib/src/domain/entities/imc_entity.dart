class ImcEntity {
  final double height;
  final double weight;

  ImcEntity({required this.height, required this.weight});

  double calculateIMC (){
    return weight / (height * height);
  }
}