using System;
using System.Linq;
using System.Collections.Generic;


namespace Task1Sudoku
{
    public class SudokuValidator
    {
        public bool IsValid(int[,] array)
        {
            if (!IsSizeValid(array)) return false;
            if (!RowsAreValid(array)) return false;
            if (!ColsAreValid(array)) return false;
            if (!InnerSquaresAreValid(array)) return false;

            return true;
        }

        private bool IsSizeValid(int[,] array)
        {
            if (array.GetLength(0) <= 1)
                return false;

            if (Math.Sqrt(array.GetLength(0)) % 1 != 0
                || Math.Sqrt(array.GetLength(1)) % 1 != 0)
                return false;

            return true;
        }

        private bool RowsAreValid(int[,] array)
        {
            var hs = new HashSet<int>();
            for (int i = 0; i < array.GetLength(0); i++)
            {
                for (int j = 0; j < array.GetLength(1); j++)
                {
                    if (!hs.Add(array[i, j]))
                        return false;
                }
                hs.Clear();
            }
            return true;
        }

        private bool ColsAreValid(int[,] array)
        {
            var hs = new HashSet<int>();
            for (int i = 0; i < array.GetLength(1); i++)
            {
                for (int j = 0; j < array.GetLength(0); j++)
                {
                    if (!hs.Add(array[i, j]))
                        return false;
                }
                hs.Clear();
            }
            return true;
        }

        private bool InnerSquaresAreValid(int[,] array)
        {
            int squareSize = (int)Math.Sqrt(array.GetLength(0));
            var hs = new HashSet<int>();

            for (int n = 0; n < squareSize; n++)
            {
                for (int m = 0; m < squareSize; m++)
                {
                    for (int i = n * squareSize; i < n * squareSize + squareSize; i++)
                    {
                        for (int j = m * squareSize; j < m * squareSize + squareSize; j++)
                        {
   
                            if (!hs.Add(array[i, j]))
                                return false;
                        }
                    }
                    hs.Clear();
                }
            }

            return true;
        }
    }
}
