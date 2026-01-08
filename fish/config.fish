if status is-interactive
    starship init fish | source
    echo
    fastfetch

    function fish_greeting
        set -l quotes_file ~/.config/fish/quotes.txt
        if test -f $quotes_file
            set -l day (date +%j)
            set -l count (wc -l < $quotes_file)
            set -l line (math $day % $count + 1)
            sed -n "$line"p $quotes_file
        end
    end
end
