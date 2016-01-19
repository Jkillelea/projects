import javax.swing.JComponent;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Rectangle;

public class drawingComponent extends JComponent {


  private int x = 0;
  private int y = 0;
  private int width = 0;
  private int height = 0;

  public drawingComponent(right, up, w, h){
    x = right;
    y = up;
    width = w;
    height = h;
  }


  public void paintComponent(Graphics g){
    Graphics2D g2 = (Graphics2D) g; //make g2 by casting g as a member of Graphics2D class

    Rectangle rect1 = new Rectangle(x, y, width, height); //x, y, width, height

    g2.draw(rect1); //draw the Rectangle.
  }
}
