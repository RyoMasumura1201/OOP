class Trip
    attr_reader :bicycles, :customers,:vehicle

    # この'mechanic'引数はどんなクラスのものでも良い
    def prepare(mechanic)
        mechanic.prepare_bicycles(bicycles)
    end
end

# このクラスのインスタンスを渡すことになったとしても動作する
class Mechanic
    def prepare_bicycles(bicycles)
        bicycles.each{|bicycle| prepare_bicycle(bicycle)}
    end

    def prepare_bicycle(bicycle)
        #...
    end
end
