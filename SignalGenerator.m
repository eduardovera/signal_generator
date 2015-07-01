function [ signal ] = SignalGenerator( signal_type )

%carrega, plota e retorna um dos 9 sinais 
%(escolhido por signal_type)
% Utilizado apenas para testar os sinais

    if (signal_type == 1)
        [N, signal] = Signal01();
    end
    if (signal_type == 2)
        [N, signal] = Signal02();
    end
    if (signal_type == 3)
        [N, signal] = Signal03();
    end
    if (signal_type == 4)
        [N, signal] = Signal04();
    end
    if (signal_type == 5)
        [N, signal] = Signal05();
    end
    if (signal_type == 6)
        [N, signal] = Signal06();
    end
    if (signal_type == 7)
        [N, signal] = Signal07();
    end
    if (signal_type == 8)
        [N, signal] = Signal08();
    end
    if (signal_type == 9)
        [N, signal] = Signal09();
    end
    
    x = 1:N;
    y = signal(x);
    figure
    plot(x, y);
    title 'Signal'
end

