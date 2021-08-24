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

    def my_zip(*arr)

        new_arr = Array.new(self.length) {Array.new(self.length)}
        
        (0...self.length).each do |index2|
            self.each_with_index do |element, idx|
                if idx != nil && index2 != nil
                  new_arr[idx][index2] = self[idx]
                end
            end
        end

        p new_arr


    #                     end
    #                 end
    #             end
    #         end
        
    #     end
    
    # new_arr

    end

    def my_rotate(num=1)
        if num < 0
            num.abs.times do
               popped = self.pop
               self.unshift(popped)
            end
        elsif num > 0
            num.times do
                shifted = self.shift
                self.push(shifted)
            end
        end
        self
    end


        
        # elsif num < 0
        


        # output = []
        # # (0...self.length)
        # # num.abs.times do
        #     self.each_with_index do |ele, i|
        #         self.each_with_index { |ele2, j| output << ele2 if j == (i - num.abs)}
        #     end      
        #     self.each_with_index do |ele, i|
        #         self.each_with_index do |ele2, j|
        #             output << ele2 if j == (i + num.abs)
        #     end  
                
    def my_join(string='')
        output = []
        self.each
        

    end

    

    




end













