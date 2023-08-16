clear all
close all

% TODO: Alterar os valores para o seu caso
zeta = 1.009
wn = 0.978
R = 1.28;
g = tf(wn^2, [1 2*zeta*wn wn^2]); % Funcao de Transferencia

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Grafico de Bode
figure
bode(g)  
grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Largura de Banda
% TODO: Colocar abaixo o valor de largura de banda para o seu caso. Usar o
% comando bandwidth ou encontrar pelo grafico de bode
wb = bandwidth(g)   % Valor da largura de banda em rad/s
fb = wb*180/(pi*360)   % Valor da largura de banda em em Hz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resposta degrau continua
Fc = 10000;    % Ferquencia de amostragem em Hz  
T = 15; % Tempo final da simula??o
t = 0:1/Fc:T; 
y = R*step(g,t);  % Resposta degrau unitario
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Para 1*fb %%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plotar a resposta degrau unitario contínua
figure
plot(t,y)
title('Resposta degrau do sistema para 1*fb')
xlabel('Tempo (t)')
ylabel('y(t)')
grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resposta degrau discreta
hold on
F0 = 1*fb;    % Frequencia de amostragem in Hz    
T0 = 1/F0;    % Periodo de amostragem em segundos
t2 = 0:T0:T; % Time vector 
y2 = R*step(g,t2);  % Step response
stairs(t2,y2,'r')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analise de Fourier
w0=F0*2*pi; % frequencia de amostragem do sinal discreto em rad/s
plot_fft_discreto(t,y,2*w0)  % t,y sao o vetor de tempo e sa?da da resposta degrau continua

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Para 2*fb %%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plotar a resposta degrau unitario contínua
figure
plot(t,y)
title('Resposta degrau do sistema para 2*fb')
xlabel('Tempo (t)')
ylabel('y(t)')
grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resposta degrau discreta
hold on
F0 = 2*fb;    % Frequencia de amostragem in Hz    
T0 = 1/F0;    % Periodo de amostragem em segundos
t3 = 0:T0:T; % Time vector 
y3 = R*step(g,t3);  % Step response
stairs(t3,y3,'r')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analise de Fourier
w0=F0*2*pi; % frequencia de amostragem do sinal discreto em rad/s
plot_fft_discreto(t,y,2*w0)  % t,y sao o vetor de tempo e sa?da da resposta degrau continua

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% Para 5*fb %%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plotar a resposta degrau unitario contínua
figure
plot(t,y)
title('Resposta degrau do sistema para 5*fb')
xlabel('Tempo (t)')
ylabel('y(t)')
grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resposta degrau discreta
hold on
F0 = 5*fb;    % Frequencia de amostragem in Hz    
T0 = 1/F0;    % Periodo de amostragem em segundos
t4 = 0:T0:T; % Time vector 
y4 = R*step(g,t4);  % Step response
stairs(t4,y4,'r')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analise de Fourier
w0=F0*2*pi; % frequencia de amostragem do sinal discreto em rad/s
plot_fft_discreto(t,y,2*w0)  % t,y sao o vetor de tempo e sa?da da resposta degrau continua

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Para 10*fb %%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plotar a resposta degrau unitario contínua
figure
plot(t,y)
title('Resposta degrau do sistema para 10*fb')
xlabel('Tempo (t)')
ylabel('y(t)')
grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resposta degrau discreta
hold on
F0 = 10*fb;    % Frequencia de amostragem in Hz    
T0 = 1/F0;    % Periodo de amostragem em segundos
t5 = 0:T0:T; % Time vector 
y5 = R*step(g,t5);  % Step response
stairs(t5,y5,'r')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analise de Fourier
w0=F0*2*pi; % frequencia de amostragem do sinal discreto em rad/s
plot_fft_discreto(t,y,2*w0)  % t,y sao o vetor de tempo e sa?da da resposta degrau continua

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Para 35*fb %%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plotar a resposta degrau unitario contínua
figure
plot(t,y)
title('Resposta degrau do sistema para 35*fb')
xlabel('Tempo (t)')
ylabel('y(t)')
grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resposta degrau discreta
hold on
F0 = 35*fb;    % Frequencia de amostragem in Hz    
T0 = 1/F0;    % Periodo de amostragem em segundos
t5 = 0:T0:T; % Time vector 
y5 = R*step(g,t5);  % Step response
stairs(t5,y5,'r')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analise de Fourier
w0=F0*2*pi; % frequencia de amostragem do sinal discreto em rad/s
plot_fft_discreto(t,y,2*w0)  % t,y sao o vetor de tempo e sa?da da resposta degrau continua

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%