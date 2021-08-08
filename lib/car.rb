# frozen_string_literal: true

def kuruma(car)
  puts car * 2
end

def car(morter, circle)
  puts morter * circle
end

def morter
  6
end

def circle
  1.2
end

(1..5).each do |m|
  puts m
end

def greeting(*names)
  "#{names.join(', ')}、こんにちは！"
end
greeting('前田さん', '朝田さん')

sum = 0
4.times { |n| sum += n }
sum
