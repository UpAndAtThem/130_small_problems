class Cryptograph
  KEYS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz '.split("")
  VALUES = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm '.split("")
  
  DECRYPTOR = KEYS.zip(VALUES).to_h
  ENCRYPTOR = VALUES.zip(KEYS).to_h

  def self.decrypt(encrypted_message)
    result = encrypted_message.chars.map do |letter| 
      DECRYPTOR.keys.include?(letter) ? DECRYPTOR[letter] : letter
    end

    result.join
  end

  def self.encrypt(message)
    result = message.chars.map do |letter| 
      ENCRYPTOR.keys.include?(letter) ? ENCRYPTOR[letter] : letter
    end

    result.join
  end

  def self.decrypt_list(list)
    list.map { |message| Cryptograph.decrypt message }
  end
end

programming_greats = ['Nqn Ybirynpr',
                      'Tenpr Ubccre',
                      'Nqryr Tbyqfgvar',
                      'Nyna Ghevat',
                      'Puneyrf Onoontr',
                      'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
                      'Wbua Ngnanfbss',
                      'Ybvf Unvog',
                      'Pynhqr Funaaba',
                      'Fgrir Wbof',
                      'Ovyy Tngrf',
                      'Gvz Orearef-Yrr',
                      'Fgrir Jbmavnx',
                      'Xbaenq Mhfr',
                      'Fve Nagbal Ubner',
                      'Zneiva Zvafxl',
                      'Lhxvuveb Zngfhzbgb',
                      'Unllvz Fybavzfxv',
                      'Tregehqr Oynapu']

puts Cryptograph.decrypt 'Nyna Ghevat' # => "Alan Turing"
puts Cryptograph.decrypt_list(programming_greats) # returns decrypted array

