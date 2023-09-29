class ValidatePassword
    def initialize(password)
            @password = password
        end
        
        def perform
            return false unless length_valid?
            return false unless contains_uppercase?
            return false unless contains_lowercase?
            return false unless contains_digit?
            return false unless contains_special_char?
            return false unless max_repeated_chars?
        
            true
        end
        
        private
        
        def length_valid?
            @password.length >= 6 && @password.length <= 24
        end
        
        def contains_uppercase?
            @password =~ /[A-Z]/
        end
        
        def contains_lowercase?
            @password =~ /[a-z]/
        end
        
        def contains_digit?
            @password =~ /\d/
        end
        
        def contains_special_char?
            @password =~ /[!@#$%&*+=:;?<>]/
        end
        
        def max_repeated_chars?
            @password !~ /(.)\1{2,}/
        end
end