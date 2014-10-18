class Ferret
 
    def set_name=(ferret_name)
        @name = ferret_name
    end
 
    def get_name
        return @name
    end
 
    def set_owner=(owner_name)
        @owner_name = owner_name
    end
 
    def get_owner
        return @owner_name
    end
 
    def squeal
        return "squeeeeee"
    end
 
end
 
class Chinchilla
 
    def set_name=(chinchilla_name)
        @chinchilla_name = chinchilla_name
    end

    def get_name
        return @chinchilla_name
    end
 
    def set_owner=(owner_name)
        @owner_name = owner_name
    end
 
    def get_owner
        return @owner_name
    end
 
    def squeek
        return "eeeep"
    end
 
end
 
class Parrot
 
    def set_name=(parrot_name)
        @parrot_name = parrot_name
    end
 
    def get_name
        return @parrot_name
    end
 
    def set_owner=(owner_name)
        @owner_name = owner_name
    end
 
    def get_owner
        return @owner_name
    end

    def squak
        return "squaaak"
    end
 
end
 
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name
 
my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"
chinchilla_name = my_chinchilla.get_name

my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name

puts "#{ferret_name} says #{my_ferret.squeal}, 
#{chinchilla_name} says #{my_chinchilla.squeek},
and #{parrot_name} says #{my_parrot.squak}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect