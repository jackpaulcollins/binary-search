class BinarySearch
    attr_reader :array, :element

    def initialize(array, element)
        @array = array
        @element = element
    end

    def middle_point(arr)
        return (arr.length - 1) / 2
    end

    def search
        if @array.length <= 2
            if @array[0] == @element || @array[1] == @element
                return "found"
            else
                return "not found"
            end
        end

        return "found" if @element == @array[middle_point(@array)]

        if @element > @array[middle_point(@array)]
            @array = @array[middle_point(@array)..-1]
            search
        else
            @array = @array[0..middle_point(@array)]
            search
        end
    end
end
