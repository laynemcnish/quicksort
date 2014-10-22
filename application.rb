class Recursion

  def quick_sort(array)
    if array.length <= 1
      return array
    end

    pivot = array.sample
    p pivot
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
    p sorted_array
    sorted_array << self.quick_sort(less)
    p sorted_array
    sorted_array << pivot
    sorted_array << self.quick_sort(greater)
    p sorted_array
    sorted_array.flatten!
  end


end

array = [3, 7, 8, 5, 2, 1, 5, 9, 4]

Recursion.new.quick_sort(array)



