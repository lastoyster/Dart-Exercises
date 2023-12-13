abstract class Shape {
  void calculateArea(); // Abstract method

  void display() {
    print('This is a shape.'); // Concrete method
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void calculateArea() {
    double area = 3.14 * radius * radius;
    print('Area of the circle: $area');
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  void calculateArea() {
    double area = length * width;
    print('Area of the rectangle: $area');
  }
}

void main() {
  Circle circle = Circle(5);
  circle.calculateArea(); // Output: Area of the circle: 78.5
  circle.display(); // Output: This is a shape.

  Rectangle rectangle = Rectangle(4, 6);
  rectangle.calculateArea(); // Output: Area of the rectangle: 24
  rectangle.display(); // Output: This is a shape.
}
