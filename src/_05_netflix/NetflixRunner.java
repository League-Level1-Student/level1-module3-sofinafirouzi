package _05_netflix;

public class NetflixRunner {
public static void main(String[] args) {
	Movie hop = new Movie("Hop", 3);
	Movie bolt = new Movie("bolt", 2);
	Movie hp = new Movie("Harry Potter", 9);
	Movie golf = new Movie("Happy Gilmore", 4);
	Movie happy = new Movie("The pusuit of Happyness", 8);
	golf.getTicketPrice();
	NetflixQueue netflix = new NetflixQueue();
	netflix.addMovie(happy);
	netflix.addMovie(golf);
	netflix.addMovie(hp);
	netflix.addMovie(bolt);
	netflix.addMovie(hop);
	netflix.printMovies();
	System.out.println("the best movie is " + netflix.getMovie(3));
	System.out.println("the second best movie " + netflix.getMovie(2));
	
}
}
/*
1. DONE Instantiate some Movie objects (at least 5).
2. Use the Movie class to get the ticket price of one of your movies.
3. Instantiate a NetflixQueue.
4. Add your movies to the Netflix queue.
5. Print all the movies in your queue.
6. Use your NetflixQueue object to finish the sentence "the best movie is...."
7. Use your NetflixQueue to finish the sentence "the second best movie is...." 

*/