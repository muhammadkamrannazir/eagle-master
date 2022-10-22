wclass OnbordingContent {
  String image;
  String title;
  String discription;

  OnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      //0
      title: 'Quality Products',
      image: 'assets/1.png',
      discription:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the"),
  OnbordingContent(
      //1
      title: 'Fast Delevery',
      image: 'assets/2.png',
      discription:
          "Now lets see how you as an online seller can boost your sales by simply reducing the delivery time."),
  OnbordingContent(
      //2
      title: 'Online Order',
      image: 'assets/3.png',
      discription:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the"),
];
