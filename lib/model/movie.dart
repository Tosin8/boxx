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