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






end













