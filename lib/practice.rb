# numbers = [1, 2, 3, 4, 5]
# new_numbers = []
# numbers.each { |n| new_numbers << n * 10}
# p new_numbers


# numbers = [1, 2, 3, 4, 5]
# new_numbers = numbers.map { |n| n * 10 }
# p new_numbers

# numbers = [1, 2, 3, 4, 5, 6]
# even_numbers = numbers.select { |n| n.even? }
# p even_numbers

# numbers = [1, 2, 3, 4]
# sum = 0
# numbers.each { |n| sum += n }
# p sum

# numbers = [1, 2, 3, 4]
# sum = numbers.inject(0) { |result, n| result + n }
# p sum

# p [1, 2, 3, 4, 5, 6].select { |n| n.odd? }
# p [1, 2, 3, 4, 5, 6].select(&:odd?)


# def to_hex(r, g, b)
#     '#' +
#     r.to_s(16).rjust(2, '0') +
#     g.to_s(16).rjust(2, '0') +
#     b.to_s(16).rjust(2, '0')
# end

def to_hex(r, g, b)
    [r, g, b].inject('#') do |hex, n|
        hex + n.to_s(16).rjust(2, '0')
    end
end

def to_ints(hex)
    r = hex[1..2]
    g = hex[3..4]
    b = hex[5..6]
    [r, g, b].map do |s|
        s.hex
    end
end
