n = 4;
r = 10;

t = 0:0.2:((n+1)*10)-0.1;
n_puntos = 50;
x_aux = 0;
y_aux = 0;


 v_X = zeros(1,(n+1)*n_puntos);
 v_Y = zeros(1,(n+1)*n_puntos);

for i = 1:1:n+1
  
   x = (r*cos(i*2*pi/n));
   y = (r*sin(i*2*pi/n));
   trayectoria_x = linspace(x_aux,x,n_puntos);
   trayectoria_y = linspace(y_aux,y,n_puntos);
   for j = 1:1:n_puntos
    v_X(i*n_puntos-n_puntos+j) = trayectoria_x(j);
    v_Y(i*n_puntos-n_puntos+j) = trayectoria_y(j);
   end
   x_aux = x;
   y_aux = y;

end
matrix_x = zeros(2,(n+1)*n_puntos);
matrix_y = zeros(2,(n+1)*n_puntos);

matrix_x(1,:) = t;
matrix_x(2,:) = v_X;
matrix_y(1,:) = t;
matrix_y(2,:) = v_Y;

save('matrix_x.mat','matrix_x');
save('matrix_y.mat','matrix_y');