package _01_intro_to_static;

import javax.swing.JOptionPane;

public class Athlete {
	public static void main(String[] args) {
		Athlete abby = new Athlete("Abby", 8);
		System.out.println("Athlete " + abby.name);
		System.out.println("Bib Number " + abby.bibNumber);
		System.out.println("The race is located at " + abby.raceLocation);
	System.out.println("The race will start at " + abby.raceStartTime);
		
		Athlete bob = new Athlete("Bob", 7);
		System.out.println("Athlete " +bob.name);
		System.out.println("Bib Number " + bob.bibNumber);
		System.out.println("The race is located at " + bob.raceLocation);
		System.out.println("The race will start at " + bob.raceStartTime);
		
	}
	 static int nextBibNumber;
	    static String raceLocation = "New York";
	    static String raceStartTime = "9.00am";
	    String name;
	    int speed;
	    int bibNumber;
	    
	    Athlete (String name, int speed){
	        this.name = name;
	        this.speed = speed;
	        bibNumber = nextBibNumber;
	        nextBibNumber = nextBibNumber + 1;
}//end 
	/*
	    public void GetraceLocation() {
			System.out.println("The race will take place at " + raceLocation);	 
	    }//end
	    public String SetRaceLocation() {
	    String newRaceLocation = JOptionPane.showInputDialog("Where is the race going to take place?");
	    raceLocation = newRaceLocation;
	    return raceLocation;
	    }//end
	    
	    public void GetraceTime() {
				System.out.println("The race will start at " + raceStartTime);	 
		    }//end
		    public String SetRaceTime() {
		    String newRaceTime= JOptionPane.showInputDialog("What time is the race going to take place?");
		    raceStartTime = newRaceTime;
		    return raceStartTime;
		    }//end
		    public void GetName() {
		    	System.out.println("Athlete " + name);
		    }//end
		  
	    public void getBibNumber(){
	    	bibNumber = 1;	
	    	nextBibNumber = 2;
	    
	    	for(int i = 1; i>0; i++) {
	    	if(bibNumber<nextBibNumber) {
	    		GetBib();
	    		break;
	    	}
	    	else {
	    		changeBib();
	    		GetBib();
	    	}   	
	    	}
	    }//end get bib
	    
	    public int changeBib() {
	    	nextBibNumber = nextBibNumber + 1;
    		return nextBibNumber;
	    }//end change bib
	    public int GetBib() {
	    	System.out.println(name + "'s bib number is " + nextBibNumber);
    		bibNumber = nextBibNumber;
    		return bibNumber;
	    }//end get bib
	    
	    */
	  
	    
}