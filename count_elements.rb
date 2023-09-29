class CountElements
    def initialize(array)
        @array = array
    end
    
    def perform
        result = Hash.new(0) 
    
        @array.each do |element|
            result[element] += 1 
        end
    
        result 
    end
end
