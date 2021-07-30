# Solution given by Instructor John Souza

def two_sum(nums, target)
  memo = {}

  nums.each_with_index do |num, i|
    difference = target - num 

    if memo.include?(difference)
      return [memo[difference], i]
    end

    memo[num] = i 
  end
end

num1 = [2, 4, 3]
target1 = 6

num2 = [4, 8, 7, 2]
target2 = 15

print two_sum(num1, target1)
puts
print two_sum(num2, target2)
