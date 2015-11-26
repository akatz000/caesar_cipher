def caesar_cipher(string, shift)
  len = string.length
  arr = Array.new(len)
  for i in 0..len - 1
    arr[i] = string[i].ord
  end
  arr.each_with_index do |char, idx|
    if (char >= 65 && char <= 90)
      arr[idx] = (65 + (char - 65 + shift) % 26).chr
    elsif (char >= 97 && char <= 122)
      arr[idx] = (97 + (char - 97 + shift) % 26).chr
    else
      arr[idx] = char.chr
    end
  end
  arr.join('')
end
