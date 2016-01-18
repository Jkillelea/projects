import javax.swing.JFrame;
import java.awt.Rectangle;


public class Main{

  public Main(){
    System.out.println("You're not supposed to create instances of this class!");
  }

  public static void main(String[] args) {

    System.out.println("Running");

    JFrame window = new JFrame(); //create the window
    window.setSize(640,480); //x,y
    window.setTitle(args[0]); //name it whatever we put in for arg 0
    window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    window.setVisible(true);

    Rectangle rectangle = new Rectangle(5, 10, 300, 100); //x, y, width, height



  }



}
