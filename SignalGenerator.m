function [ signal ] = SignalGenerator( signal_type )

    if (signal_type == 1)
        signal = Signal01();
    end
    
    
    
    x = 1:1000;
    y = signal(x);
    figure
    plot(x, y);
    title 'Signal'
end

