
import 'package:paxpass_app/configs/assets.gen.dart';

class Doctor {
  final String name;
  final String specialty;
  final String imagePath;
  final bool liked;
  final int reviews;
  final double rating;
  final int yearsOfExperience;

  Doctor({
    required this.name,
    required this.specialty,
    required this.imagePath,
    required this.liked,
    required this.reviews,
    required this.rating,
    required this.yearsOfExperience,
  });
}

List<Doctor> doctors = [
  Doctor(
    name: 'Clark Mark',
    specialty: 'Dentist',
    imagePath: Assets.images.doc2.path,
    liked: false,
    reviews: 40,
    rating: 4.8,
    yearsOfExperience: 4,
  ),
  Doctor(
    name: 'White Mond',
    specialty: 'Neurologist',
    imagePath: Assets.images.doc3.path,

    liked: true,
    reviews: 440,
    rating: 4.9,
    yearsOfExperience: 50,
  ),
  Doctor(
    name: 'Wilson Herwitz',
    specialty: 'General Practitioner ',
    imagePath: Assets.images.doc4.path,

    liked: false,
    reviews: 440,
    rating: 4.9,
    yearsOfExperience: 10,
  ),
];