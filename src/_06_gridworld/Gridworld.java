package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import javax.swing.JFrame;
import javax.swing.JPanel;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		World world = new World();
		world.show();
		Bug bug = new Bug();
		Location spot = new Location(3, 5);
		world.add(spot, bug);
		Bug bugTwo = new Bug();
		Location spotTwo = new Location(4, 6);
		world.add(spotTwo, bugTwo);
		bugTwo.setColor(Color.blue);
		bugTwo.turn();
		bugTwo.turn();
		Location right = new Location(3,6);
		Flower flower = new Flower();
		world.add(right, flower);
		Location left = new Location (4,5);
		world.add(left, flower);
		Location moreFlowers = new Location(5,7);
		//need a random x random y for random location which u also need for #3 
	}
	
/*
 *  1. Figure out how to get a World to show.

    2. Figure out how to add a Bug to the world (clue: you will need the Bug and Location objects)

    3. Add another bug at a random location in the world.

    4. Change the color of that bug to blue.

    5. Make the bug face to the right.

    6. Add flowers to the left and right of the bug.

    7. Fill the whole world with flowers!


 */
}
