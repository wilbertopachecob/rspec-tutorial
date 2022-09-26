class Dog

    def initialize(hungry_level: 0)
        @hungry_level = hungry_level
    end

    def bark
        'Woof!'
    end

    def hungry?
        @hungry_level > 5
    end

    def feed
        @hungry_level = 0
    end
end