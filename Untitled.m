[N, input_signal] = Signal09();
M = floor(N/2);

figure
plot(input_signal);

input_signal = input_signal ./ max(max(input_signal));

signal_frequency_domain = fft(input_signal);
signal_frequency_domain = signal_frequency_domain(1:M, 1);

magnitute = abs(signal_frequency_domain);

output = zeros(M, M);
output_original = zeros(M, M);
sintonizada_original = zeros(M, M);

T = zeros(M, N);

for x = 1:N
    for omega = 1:M
        internal_signal_frequency_domain = fft(generateInternalSignal(x, omega, signal_frequency_domain, input_signal));
        output_original(omega, x) = (internal_signal_frequency_domain(omega));
        for c_omega = 1:M
            output(c_omega, omega) = (internal_signal_frequency_domain(c_omega));
        end
    end
    T(:, x) = eig(output);
    x
end

A = abs(T);
figure
imagesc(A);
set(gca,'YDir','normal')
set(gca, 'YTick', 0:pi:125);

A = abs(output_original);
figure
imagesc(A);
set(gca,'YDir','normal')

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

