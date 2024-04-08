# demo array
array = [64, 34, 25, 12, 22, 11, 90]

def bubble_sort(array)
  i = 0
  swapped = false

  # iterating over the array
  while (i < array.length - 1)

    swapped = false
    j = 0

    # after each iteration of the previous loop the largest will bubble to the end of the array. 
    # including the i in below in the comparison will make sure that we keep reducing the number of elements to iterate from the right side to the left.
    while (j < array.length - 1 - i)

      # if the first item of the array is larger than the second then they will be swapped with eachother.
      if (array[j] > array[j + 1])
        array[j], array[j + 1] = array[j + 1], array[j]
        swapped = true
      end

      j += 1
    end

    i += 1 

    #if no elements were swapped from the inner loop (if all the elements are sorted in place) then we'll break out of the loop
    if swapped == false
      break
    end
    
  end
  array
end

p bubble_sort(array)