package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
	Backpack bag = new Backpack();
	Pencil pencil = new Pencil();
	Ruler ruler = new Ruler();
	Textbook book = new Textbook();
	bag.putInBackpack(pencil);
	bag.putInBackpack(ruler);
	bag.putInBackpack(book);
	bag.packAndCheck();
	}
}
