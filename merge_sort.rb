#combines the two sub-arrays into a sorted array
def combine(a, b)
  sorted = []
  a += b

  until a.length <= 0
    min = a.min
    sorted.push(min)
    a.delete_at(a.index(min))
  end

  sorted
end

#splits the array in two and calls itself on the halves
def merge_sort(a)
  return a if a.length <= 1

  half_length = a.length / 2
  front = a.take half_length
  back = a.drop half_length

  combine(merge_sort(front), merge_sort(back))
end

a = [3, 5, 7, 2, 3, 1]

puts "Sorted: #{merge_sort(a)}"
