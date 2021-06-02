namespace Task2OOP
{
    public class Triangle : Shape
    {
        public double Base { get; set; }
        public double Height { get; set; }

        public Triangle(double triangleBase, double height)
        {
            Base = triangleBase;
            Height = height;
        }

        public override double Area() => Base * Height * 0.5;
    }
}
