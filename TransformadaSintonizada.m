[N, input_signal] = Signal09(); %Utilize Signal01() ou um dos sinais até
                                %Signal09() para gerar o sinal a ser
                                %utilizado
                                %N = tamanho do sinal
                                %input_signal = sinal original de tamanho N
                                
M = floor(N/2);                 %Utilizamos apenas metade do sinal pois ele
                                %ele se repete

%PLOT DO SINAL -------------------------------------------
figure
plot(input_signal);
title('Sinal Original')
%---------------------------------------------------------

%Sinal original deve ser normalizado primeiro
input_signal = input_signal ./ max(max(input_signal));

%Obtemos a transformada de Fourier do sinal (Fast Fourier Transform -FFT)
%Em seguida utilizamos somente a metade do sinal no dominio da frequencia
signal_frequency_domain = fft(input_signal);
signal_frequency_domain = signal_frequency_domain(1:M, 1);

%magnitude = abs(signal_frequency_domain);

%Inicializaçao das matrizes-------------------
output = zeros(M, M); % Matriz com as transformadas sintonizadas de (omega,c_Omega)
output_original = zeros(M, M); % Tranformada Sintonizada
%sintonizada_original = zeros(M, M);
T = zeros(M, N); % matriz (:,x) de auto valores para cada x do output
%---------------------------------------------

for x = 1:N
    for omega = 1:M
        %Calcula Transformada Sintonizada, e preenche matriz para todo
        %omega
        internal_signal_frequency_domain = fft(generateInternalSignal(x, omega, signal_frequency_domain, input_signal));
        output_original(omega, x) = (internal_signal_frequency_domain(omega));
        for c_omega = 1:M
            output(c_omega, omega) = (internal_signal_frequency_domain(c_omega));
        end
    end
    %Diagonaliza Matriz T
    T(:, x) = eig(output);
    x
end

%realiza o plot da magnitude dos auto valores em T
A = abs(T);
figure
imagesc(A);
set(gca,'YDir','normal')
set(gca, 'YTick', 0:pi:125);
title('Auto Valores')

%realiza o plot da magnitude da transformada sintonizada
A = abs(output_original);
figure
imagesc(A);
set(gca,'YDir','normal')
title('Transformada Sintonizada')

% Teste : Gera caso em que omega == c_Omega
% for x = 1:N
%     for omega = 1:M
%         internal_signal_frequency_domain = fft(generateSignalB(x, omega, signal_frequency_domain, input_signal));
%         for c_omega = 1:M
%             if (c_omega == omega);
%                 output(c_omega, x) = (internal_signal_frequency_domain(c_omega));
%             end
%         end
%     end
%     x
% end

