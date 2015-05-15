def searchn (a, n, is_l)
   min = 0
   max = a.length - 1
   mid = 0
   count = 0
   index = -1
   while min < max
        if a[max] == n
            if is_l
                return max
            end
        end
        
        if a[min] == n
            if !is_l
               return min 
            end
        end
        
        mid = ((max + min) / 2).floor
        puts (mid.to_s + ' - ' + is_l.to_s)
        
        if a[mid] == n
            index = mid
            if is_l
                min = mid + 1
            else 
                max = mid - 1
            end
        elsif a[mid] > n
            max = mid
            min += 1
        else
            min = mid 
            max -= 1
        end
    end
    index
end
a = [1, 2, 4, 4, 4, 4, 4, 4, 5, 6]
searchn(a, 6, false)

