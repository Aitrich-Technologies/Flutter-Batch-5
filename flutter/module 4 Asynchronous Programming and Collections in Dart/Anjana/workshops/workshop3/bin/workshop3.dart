void main() {
  // Define a list of your favorite animal
  List<String> favoriteAnimals = ['Cat', 'Dog', 'Lion', 'Tiger'];

  // Print the list
  print('My favorite Animals: $favoriteAnimals');

  // Add a new animal to the list
  favoriteAnimals.add("cheetah");
  print("after adding cheetah:$favoriteAnimals");

  // Remove an animal from the list
  favoriteAnimals.remove('Dog');
  print('After removing Dog: $favoriteAnimals');

  // Check if the list contains a specific animal
  if (favoriteAnimals.contains("Cat")) {
    print("does the list contain cat ?true");
  }
  else{
    print("does the list contain cat?false");
  }
  
}