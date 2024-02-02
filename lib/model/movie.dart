class MovieModel {
  String? imageAsset; 
  String? movieName; 
  String? movieRating; 
  String? year; 
  final List<Map>? cast; 
  final List<Map>? comments;

  MovieModel({
    required this.imageAsset, 
    required this.movieName, required this.movieRating, required this.year, 
    
    required this.cast, required this.comments}); 
}

// data
final forYourImages = [
  MovieModel(
    imageAsset: 'assets/images/for_you_image_1.jpeg', 
    movieName: '', 
    movieRating: '',
     year: '', 
     cast: [], 
     comments: []),

     MovieModel(
    imageAsset: 'assets/images/for_you_image_2.jpeg', 
    movieName: '', 
    movieRating: '',
     year: '', 
     cast: [], 
     comments: []),

     MovieModel(
    imageAsset: 'assets/images/for_you_image_3.jpeg', 
    movieName: '', 
    movieRating: '',
     year: '', 
     cast: [], 
     comments: []),

     MovieModel(
    imageAsset: 'assets/images/for_you_image_4.jpeg', 
    movieName: '', 
    movieRating: '',
     year: '', 
     cast: [], 
     comments: []),
]; 


final popularImages = [
  MovieModel(
      imageAsset: "assets/images/popular_image_1.jpeg",
      movieName: "Dune",
      cast: [
        {
          "name": "Timothee Chalamet",
          "role": "Paul Atreides",
          "image": "assets/actor_1.jpeg",
        },
        {
          "name": "Zendaya",
          "role": "Chani",
          "image": "assets/actor_2.jpeg",
        },
        {
          "name": "Rebecca Ferguson",
          "role": "Lady Jessica",
          "image": "assets/actor_3.jpeg",
        },
        {
          "name": "Oscar Isaac",
          "role": "Duke Leto",
          "image": "assets/actor_4.jpeg",
        },
        {
          "name": "Jaon Momoa",
          "role": "Duncan Idaho",
          "image": "assets/actor_5.jpeg",
        },
      ],
      comments: [
        {
          "name": "Cody Fisher",
          "imageUrl": "assets/actor_1.png",
          "date": "June 14, 2022",
          "rating": "5.0",
          "comment":
              "Great movie! I will review ite more than once. Special thanks to one the operator!"
        },
        {
          "name": "Theresa Webb",
          "imageUrl": "assets/actor_2.png",
          "date": "Aug 2, 2021",
          "rating": "4.0",
          "comment": "Not a bad movie, but not much impressed"
        },
        {
          "name": "Caitriona Balfe",
          "imageUrl": "assets/actor_3.png",
          "date": "June 26, 2020",
          "rating": "4.8",
          "comment": "Love the way it is designed."
        },
      ],
      year: "2021",
      movieRating: "8.3"),
  MovieModel(
      imageAsset: "assets/images/popular_image_2.jpeg",
      movieName: "Shang-Chi",
      year: "2022",
      movieRating: "6.4", 
      cast: [], 
      comments: []),

  MovieModel(
      imageAsset: "assets/images/popular_image_3.jpeg",
      movieName: "Narcos",
      year: "2020",
      movieRating: "9.7", 
      cast: [], 
      comments: []),

  MovieModel(
      imageAsset: "assets/images/for_your_image_2.jpeg",
      movieName: "Shazam!",
      year: "2021",
      movieRating: "7.5", 
      comments: [], 
      cast: []),
  MovieModel(
      imageAsset: "assets/images/for_your_image_3.jpeg",
      movieName: "Stranger Things",
      year: "2021",
      movieRating: "9.2", 
      cast: [],
       comments: []),
]; 


final legendaryImages = [
  MovieModel(
      imageAsset: "assets/images/legendary_movie_1.jpeg",
      movieName: "Alien",
      year: "1979",
      movieRating: "7.3", 
      cast: [], 
      comments: []),
  MovieModel(
      imageAsset: "assets/images/legendary_movie_2.jpeg",
      movieName: "300",
      year: "2006",
      movieRating: "9.4", 
      cast: [], comments: []),
  MovieModel(
      imageAsset: "assets/images/popular_image_3.jpeg",
      movieName: "Narcos",
      year: "2020",
      movieRating: "8.7",
       cast: [],
       comments: []),
  MovieModel(
      imageAsset: "assets/images/for_your_image_2.jpeg",
      movieName: "Shazam!",
      year: "2021",
      movieRating: "7.5", cast: [], comments: []),
  MovieModel(
      imageAsset: "assets/images/for_your_image_1.jpeg",
      movieName: "Cruella",
      year: "2021",
      movieRating: "9.2", cast: [], comments: []),
];

final genresList = [
  MovieModel(movieName: "Horror",
   imageAsset: "assets/images/genres_1.png", 
   movieRating: '', 
   year: '', 
   cast: [], 
   comments: [], 
   ),
  MovieModel(
    movieName: "Fantasy", 
    imageAsset: "assets/images/genres_2.jpeg", 
    movieRating: '', 
    year: '', 
    cast: [], 
    comments: []),
  MovieModel(
    movieName: "History",
     imageAsset: "assets/images/genres_3.jpeg", 
     movieRating: '', 
     year: '', 
     cast: [],
     comments: []),
  MovieModel(
    movieName: "Detective", 
    imageAsset: "assets/images/genres_4.jpeg", 
    movieRating: '', 
    year: '', 
    cast: [], comments: []),
  MovieModel(
    movieName: "Action", 
    imageAsset: "assets/images/genres_5.jpeg", movieRating: '', year: '', cast: [], comments: []),
];