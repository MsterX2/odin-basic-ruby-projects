# mayusculas 65-90
# 97-122
def calculate_cipher_value(assci_value, number,min)
    assci_value -= number
    assci_value += 26 if number < min
    assci_value
end
def caesar_cipher(string, number = 0)
    response = ""
    number = number % 26 if number > 26
    string.each_char do |char|
        assci = char.ord
        new_value = nil
        if assci.between?(65, 90) 
        new_value = assci - number
        new_value += 26 if new_value < 65
        elsif assci.between?(97, 122) 
        new_value = assci - number
        new_value += 26 if new_value < 97
        end
        response.concat(new_value.chr)
    end
    return response
end

p caesar_cipher("hola", 0)