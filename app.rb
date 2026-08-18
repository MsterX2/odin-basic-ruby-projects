# mayusculas 65-90
# 97-122
def caesar_cipher(string, number = 0)
    unless number.is_a?(Integer)
      return "solo puede usar numeros enteros"
    end
    response = ""
    if number >= 0
        number = number % 26 if number > 26
    else
        number = (number.abs % 26) * -1 if number.abs > 26
    end
    string.each_char do |char|
        assci = char.ord
        min = nil
        if assci.between?(65, 90)
            min = 65
        elsif assci.between?(97, 122) 
            min = 97
        else
            response.concat(assci.chr)
            next
        end
        assci += number
        assci -= 26 if assci > min + 25
        assci += 26 if assci < min && number < 0
        response.concat(assci.chr)
    end
    return response
end