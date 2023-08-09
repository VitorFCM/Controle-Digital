clear
close all

%%%%%%%%% Figura 1 %%%%%%%%%%%%

figure % Abre uma nova figura

% Plotar uma senoide
t = 0:0.01:12; % gerar um conjunto de pontos no tempo com intervalo de 0.01
T = 4; % periodo da onda
A = 2; % amplitude da onda
y = A*sin(2*pi*t/T); % função y(t)
plot(t,y,'b') % plota o grafico y(t) com cor azul

hold on; % Preserva o grafico anterior na figura para que os proximos sejam mostrados sobrepostos

% Simular um processo de amostragem com periodo de amostragem T0 = T/8
T0 = T/8;
t2 = 0:T0:12; % gerar um conjunto de pontos que começa no tempo em 0, termina em valor menor ou igual a 12, com espaçamento de T0 entre os pontos
y2 = A*sin(2*pi*t2/T); % funcao discreta 
stairs(t2,y2,'r'); % plota o grafico discreto no formato de escadas
grid; % adiciona grid na figura
title('Senoide, $y(t)=sin(2\pi f t)$, periodo de amostragem $T/8$, inicio em $t=0$','interpreter','latex','FontSize',12)
xlabel('$t$','interpreter','latex','FontSize',12)
ylabel('$y(t)$','interpreter','latex','FontSize',12)
axis([0, 12, -2.5,2.5]) % Mostra a figura com eixo x de 0 a 12, e eixo y de -2.5 a 2.5
legend(['continuo';'discreto']);

%%%%%%%%% Figura 2 %%%%%%%%%%%%

figure 
plot(t,y,'b') % plota o grafico y(t) com cor azul
hold on;

% Simular um processo de amostragem com periodo de amostragem T0 = T e t = 0
T0 = T;
t0 = 0;
t3 = t0:T0:12; % gerar um conjunto de pontos que começa no tempo em t0, termina em valor menor ou igual a 12, com espaçamento de T0 entre os pontos
y3 = A*sin(2*pi*t3/T); % funcao discreta 
stairs(t3,y3,'r'); % plota o grafico discreto no formato de escadas
grid; % adiciona grid na figura
title('Senoide, $y(t)=sin(2\pi f t)$, periodo de amostragem $T$, inicio em $t=0$','interpreter','latex','FontSize',12)
xlabel('$t$','interpreter','latex','FontSize',12)
ylabel('$y(t)$','interpreter','latex','FontSize',12)
axis([0, 12, -2.5,2.5]) % Mostra a figura com eixo x de 0 a 12, e eixo y de -2.5 a 2.5
legend(['continuo';'discreto']);

%%%%%%%%% Figura 3 %%%%%%%%%%%%

figure 
plot(t,y,'b') % plota o grafico y(t) com cor azul
hold on;

% Simular um processo de amostragem com periodo de amostragem T0 = T e t = T/8
T0 = T;
t0 = T/8;
t4 = t0:T0:12; % gerar um conjunto de pontos que começa no tempo em t0, termina em valor menor ou igual a 12, com espaçamento de T0 entre os pontos
y4 = A*sin(2*pi*t4/T); % funcao discreta 
stairs(t4,y4,'r'); % plota o grafico discreto no formato de escadas
grid; % adiciona grid na figura
title('Senoide, $y(t)=sin(2\pi f t)$, periodo de amostragem $T$, inicio em $t=T/8$','interpreter','latex','FontSize',12)
xlabel('$t$','interpreter','latex','FontSize',12)
ylabel('$y(t)$','interpreter','latex','FontSize',12)
axis([0, 12, -2.5,2.5]) % Mostra a figura com eixo x de 0 a 12, e eixo y de -2.5 a 2.5
legend(['continuo';'discreto']);

%%%%%%%%% Figura 4 %%%%%%%%%%%%

figure 
plot(t,y,'b') % plota o grafico y(t) com cor azul
hold on;

% Simular um processo de amostragem com periodo de amostragem T0 = T/2 e t = 0
T0 = T/2;
t0 = 0;
t5 = t0:T0:12; % gerar um conjunto de pontos que começa no tempo em t0, termina em valor menor ou igual a 12, com espaçamento de T0 entre os pontos
y5 = A*sin(2*pi*t5/T); % funcao discreta 
stairs(t5,y5,'r'); % plota o grafico discreto no formato de escadas
grid; % adiciona grid na figura
title('Senoide, $y(t)=sin(2\pi f t)$, periodo de amostragem $T/2$, inicio em $t=0$','interpreter','latex','FontSize',12)
xlabel('$t$','interpreter','latex','FontSize',12)
ylabel('$y(t)$','interpreter','latex','FontSize',12)
axis([0, 12, -2.5,2.5]) % Mostra a figura com eixo x de 0 a 12, e eixo y de -2.5 a 2.5
legend(['continuo';'discreto']);

%%%%%%%%% Figura 5 %%%%%%%%%%%%

figure 
plot(t,y,'b') % plota o grafico y(t) com cor azul
hold on;

% Simular um processo de amostragem com periodo de amostragem T0 = T/2 e t = T/4
T0 = T/2;
t0 = T/4;
t6 = t0:T0:12; % gerar um conjunto de pontos que começa no tempo em t0, termina em valor menor ou igual a 12, com espaçamento de T0 entre os pontos
y6 = A*sin(2*pi*t6/T); % funcao discreta 
stairs(t6,y6,'r'); % plota o grafico discreto no formato de escadas
grid; % adiciona grid na figura
title('Senoide, $y(t)=sin(2\pi f t)$, periodo de amostragem $T/2$, inicio em $t=T/4$','interpreter','latex','FontSize',12)
xlabel('$t$','interpreter','latex','FontSize',12)
ylabel('$y(t)$','interpreter','latex','FontSize',12)
axis([0, 12, -2.5,2.5]) % Mostra a figura com eixo x de 0 a 12, e eixo y de -2.5 a 2.5
legend(['continuo';'discreto']);

%%%%%%%%% Figura 6 %%%%%%%%%%%%

figure 
plot(t,y,'b') % plota o grafico y(t) com cor azul
hold on;

% Simular um processo de amostragem com periodo de amostragem T0 = T/2 e t = T/8
T0 = T/2;
t0 = T/8;
t7 = t0:T0:12; % gerar um conjunto de pontos que começa no tempo em t0, termina em valor menor ou igual a 12, com espaçamento de T0 entre os pontos
y7 = A*sin(2*pi*t7/T); % funcao discreta 
stairs(t7,y7,'r'); % plota o grafico discreto no formato de escadas
grid; % adiciona grid na figura
title('Senoide, $y(t)=sin(2\pi f t)$, periodo de amostragem $T/2$, inicio em $t=T/8$','interpreter','latex','FontSize',12)
xlabel('$t$','interpreter','latex','FontSize',12)
ylabel('$y(t)$','interpreter','latex','FontSize',12)
axis([0, 12, -2.5,2.5]) % Mostra a figura com eixo x de 0 a 12, e eixo y de -2.5 a 2.5
legend(['continuo';'discreto']);

%%%%%%%%% Figura 7 %%%%%%%%%%%%

figure 
plot(t,y,'b') % plota o grafico y(t) com cor azul
hold on;

% Simular um processo de amostragem com periodo de amostragem T0 = 0.9T/2 e t = 0
T0 = 0.9*T/2;
t0 = 0;
t8 = t0:T0:12; % gerar um conjunto de pontos que começa no tempo em t0, termina em valor menor ou igual a 12, com espaçamento de T0 entre os pontos
y8 = A*sin(2*pi*t8/T); % funcao discreta 
stairs(t8,y8,'r'); % plota o grafico discreto no formato de escadas
grid; % adiciona grid na figura
title('Senoide, $y(t)=sin(2\pi f t)$, periodo de amostragem $0.9T/2$, inicio em $t=0$','interpreter','latex','FontSize',12)
xlabel('$t$','interpreter','latex','FontSize',12)
ylabel('$y(t)$','interpreter','latex','FontSize',12)
axis([0, 12, -2.5,2.5]) % Mostra a figura com eixo x de 0 a 12, e eixo y de -2.5 a 2.5
legend(['continuo';'discreto']);

%%%%%%%%% Figura 8 %%%%%%%%%%%%

figure 
plot(t,y,'b') % plota o grafico y(t) com cor azul
hold on;

% Simular um processo de amostragem com periodo de amostragem T0 = T/4 e t = 0
T0 = T/4;
t0 = 0;
t9 = t0:T0:12; % gerar um conjunto de pontos que começa no tempo em t0, termina em valor menor ou igual a 12, com espaçamento de T0 entre os pontos
y9 = A*sin(2*pi*t9/T); % funcao discreta 
stairs(t9,y9,'r'); % plota o grafico discreto no formato de escadas
grid; % adiciona grid na figura
title('Senoide, $y(t)=sin(2\pi f t)$, periodo de amostragem $T/4$, inicio em $t=0$','interpreter','latex','FontSize',12)
xlabel('$t$','interpreter','latex','FontSize',12)
ylabel('$y(t)$','interpreter','latex','FontSize',12)
axis([0, 12, -2.5,2.5]) % Mostra a figura com eixo x de 0 a 12, e eixo y de -2.5 a 2.5
legend(['continuo';'discreto']);




