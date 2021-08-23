class Array

    def my_each(&prc)

        i = 0
        while i <= self.length - 1
            prc.call(self[i])
            i += 1
        end
        self
    end

    def my_select(&prc)
        output = []
        self.my_each { |ele| output << ele if prc.call(ele) }
        output
    end

    def my_reject(&prc)
        output = []
        self.my_each {|ele| output << ele if !prc.call(ele)}
        output
    end

    def my_any?(&prc)
        self.my_each {|ele| return true if prc.call(ele)}
        false
    end
    def my_all?(&prc)
        count = 0
        self.my_each {|ele| count += 1 if prc.call(ele)}

        return true if count == self.length
        false
    end

    def my_flatten 
        output = []
        self.my_each do |ele| # [1, 2, 3, [4, [5, 6]], [[[7]], 8]] 
            if !ele.instance_of?(Array)
                output << ele
            else
                output += ele.my_flatten
            end
        end
        output
    end

end













