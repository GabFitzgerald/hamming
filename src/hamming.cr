# Please implement your solution to hamming in this file
class Hamming
    def self.distance(strand1, strand2)
        unless strand1.size == strand2.size 
            raise ArgumentError.new "Strands are not the same size"
        end
        strand1chars = strand1.split("")
        strand2chars = strand2.split("")
        distance = 0
        strand1chars.map_with_index { |char, index| 
            unless char == strand2chars[index]
                distance += 1
            end 
        }
        return distance
    end
end

