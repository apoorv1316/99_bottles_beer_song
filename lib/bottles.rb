class Bottles
    def song
        verses(99,0)
    end
    def verses(first, last)
        first.downto(last).map { |bottles| verse(bottles)}.join("\n")
    end
    def verse(n)
      <<~HEREDOC
      #{num_of_bottles(n).capitalize} of beer on the wall, #{num_of_bottles(n)} of beer.
      #{bottle_pass(n)}, #{num_of_bottles(n-1)} of beer on the wall.
      HEREDOC
    end
    def num_of_bottles(n)
        case n
        when -1
          "99 bottles"
        when 0
          "no more bottles"
        when 1
          "1 bottle"
        else
          "#{n} bottles"
        end
    end
    def bottle_pass(n)
        if n < 1
          "Go to the store and buy some more"
        else
          "Take #{n == 1 ? "it" : "one"} down and pass it around"
        end
      end
end
