using System;
using System.Collections.Generic;
using System.Text;

namespace Task2OOP
{
    public abstract class Shape : IComparable
    {
        public abstract double Area();

        public int CompareTo(object obj)
        {
            if (obj == null) return 1;

            var shape = obj as Shape;

            if (shape == null) return 1;

            return this.Area().CompareTo(shape.Area());
        }
    }
}
