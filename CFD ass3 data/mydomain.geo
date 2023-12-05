// Gmsh project created on Sat Nov 25 23:12:46 2023
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {15, 0, 0, 1.0};
//+
Point(3) = {15, 10, 0, 1.0};
//+
Point(4) = {0, 10, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};

//+
Line(4) = {4, 1};
//+
Point(5) = {3, 5, 0, 0.1};
//+
Point(6) = {4, 5, 0, 0.1};
//+
Point(7) = {4, 6, 0, 0.1};
//+
Point(8) = {4, 4, 0, 0.1};
//+
Point(9) = {5, 5, 0, 0.1};
//+
Line(5) = {7, 9};
//+
Line(6) = {9, 8};
//+
Line(7) = {5, 8};
//+
Line(8) = {5, 7};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Curve Loop(2) = {5, 6, -7, 8};
//+
Plane Surface(1) = {1, 2};
//+
Extrude {0, 0, 1} {
  Surface{1}; 
}
Layers(1);
Recombine;

