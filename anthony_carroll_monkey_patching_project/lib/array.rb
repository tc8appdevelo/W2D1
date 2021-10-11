# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return 0 if length == 1
        return nil if self == []
        self.max - self.min
    end

    def average
        return nil if self == []
        self.sum / (self.length * 1.0)
    end

    def median
        if self == []
            return nil
        end
        if self.length.odd?
            mid_idx = (self.length/2.0).ceil - 1
            sorted = self.sort
            return sorted[mid_idx]
        else
            m1 = (self.length/2) - 1
            m2 = self.length/2
            sorted = self.sort
            return (sorted[m1] + sorted[m2])/2.0
        end
    end

    def counts
        hash = Hash.new(0)
        self.each { |ele| hash[ele] += 1 }
        hash
    end
    
    def my_count(val)
        if !self.include?(val)
            return 0
        end
        hash = Hash.new(0)
        self.each { |ele| hash[ele] += 1 }

        return hash[val]
    end

    def my_index(val)
        self.each_with_index { |ele, i| return i if ele == val }
        nil
    end

    def my_uniq
        new_arr = []
        self.each do |ele|
            if !new_arr.include?(ele)
                new_arr << ele
            end
        end
        new_arr
    end

    def my_transpose
        tra = Array.new(self.length) {Array.new(self.length)}
        self.each_with_index do |ele_1, idx_1|
            self.each_with_index do |ele_2, idx_2|
                tra[idx_2][idx_1] = ele_1[idx_2]
            end
        end
        tra
    end

end
