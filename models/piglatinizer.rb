class PigLatinizer

    # @@consonant_blend_list = ['bl','br','ch','ck','cl','cr','dr','fl','fr',
    #                           'gh','gl','gr','ng','ph','pl','pr','qu','sc',
    #                           'sh','sk','sl','sm','sn','sp','st','sw','th',
    #                           'tr','tw','wh','wr']       

    def piglatinize(input)
        input.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
    end


    def vowel?(letter)
        letter.match(/[aAeEiIoOuU]/)
    end


    def piglatinize_word(word)
        # word starts with vowel
        if vowel?(word[0])
            word + "way"
        else
        # word starts with one or more consonants
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end
    end      

end