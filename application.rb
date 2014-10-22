class Recursion

  def quick_sort(array)
    if array.length <= 1
      return array
    end

    pivot = array.sample
    array.delete_at(array.index(pivot))
    less = []
    greater = []

    array.each do |x|
      if x <= pivot
        less << x
      else
        greater << x
      end
    end

    sorted_array = []
    sorted_array << self.quick_sort(less)
    sorted_array << pivot
    sorted_array << self.quick_sort(greater)
    sorted_array.flatten!
  end


end

array = (1..999).to_a.sample 10

p Recursion.new.quick_sort(array)



