using System;

namespace Task2OOP
{
    public class Circle : Shape
    {
        public double Radius { get; set; }

        public Circle(double radius)
        {
            Radius = radius;
        }

        public override double Area() => 2 * Math.PI * Radius * Radius;
    }
}
