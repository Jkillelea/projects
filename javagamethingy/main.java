import javax.swing.JFrame;
import java.awt.Rectangle;


public class main{

  public main(){
    System.out.println("You're not supposed to create instances of this class!");
  }

  public static void main(String[] args) {

    System.out.println("Running");

    JFrame window = new JFrame(); //create the window
    window.setSize(640,480); //x,y
    window.setTitle("window"); //name it whatever we put in for arg 0
    window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    window.setVisible(true);

    drawingComponent DC = new drawingComponent(100, 300, 100, 300); //x, y, width, height.
    window.add(DC);

  }



}
