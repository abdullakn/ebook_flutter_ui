class Book{
  String type;
  String name;
  String publisher;
  DateTime date;
  String imageUrl;
  num score;
  double ratings;
  String review;
  num height;


  Book({required this.type,required this.name,required this.publisher,required this.date,required this.imageUrl,required this.score,required this.ratings,required this.review,required this.height});


  static List<Book> generateBook(){
    return [
      Book(type:"History" , name:"This is the Way", publisher:"isStudio", date:DateTime(2019,3,5), imageUrl:"assets/images/book1.jpg", score: 4.7, ratings: 892, review:"Nothing now", height: 220.0),
      Book(type:"History" , name:"This is the Way", publisher:"isStudio", date:DateTime(2019,3,5), imageUrl:"assets/images/book2.jpg", score: 4.7, ratings: 892, review:"Nothing now", height: 220.0),
      Book(type:"History" , name:"This is the Way", publisher:"isStudio", date:DateTime(2019,3,5), imageUrl:"assets/images/book3.jpg", score: 4.7, ratings: 892, review:"Nothing now", height: 220.0),
      Book(type:"History" , name:"This is the Way", publisher:"isStudio", date:DateTime(2019,3,5), imageUrl:"assets/images/book4.jpg", score: 4.7, ratings: 892, review:"Nothing now", height: 220.0),
      Book(type:"History" , name:"This is the Way", publisher:"isStudio", date:DateTime(2019,3,5), imageUrl:"assets/images/book5.jpg", score: 4.7, ratings: 892, review:"Nothing now", height: 220.0),
      Book(type:"History" , name:"This is the Way", publisher:"isStudio", date:DateTime(2019,3,5), imageUrl:"assets/images/book6.jpg", score: 4.7, ratings: 892, review:"Nothing now", height: 220.0),
    ];
  }

}