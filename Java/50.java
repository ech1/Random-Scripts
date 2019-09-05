import java.util.*;
public class CustomObject{
	private String customProperty;

	public CustomObject(String property){
		this.customProperty = property;
	}

	public String getCustomProperty(){
		return this.customProperty;
	}

	public static void main(String[] args){
		ArrayList<Customobject> = list = new ArrayList<>();
		list.add(new CustomObject("Z"));
		list.add(new CustomObject("A"));
		list.add(new CustomObject("B"));
		list.add(new CustomObject("X"));
		list.add(new CustomObject("Aaaa"));

		list.sort((o1,o2) -> o1.getCustomProperty().compareTo(o2.getCustomProperty()));

		for(CustomObject obj: list){
			System.out.println(obj.getCustomProperty());
		}
	}
}

public class Numeric {
	public static void main(String[] args){
		String string = "12345687.2132";
		boolean numeric = true;
		try {
			Double num = Double.parseDouble(string);
		} catch (NumberFormatException e) {
			numeric = false;
		}

		if(numeric)
			System.out.println(string + " is a number");
		else
			System.out.println(string + " is not a number");
	}
}
