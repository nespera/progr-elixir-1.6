inner = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, d -> d
end

fizz = fn n -> inner.(rem(n, 5), rem(n, 3), n) end

IO.puts(fizz.(10))
IO.puts(fizz.(11))
IO.puts(fizz.(12))
IO.puts(fizz.(13))
IO.puts(fizz.(14))
IO.puts(fizz.(15))
