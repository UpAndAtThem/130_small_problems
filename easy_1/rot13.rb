class Cryptograph
  KEYS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz '.split("")
  VALUES = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm '.split("")
  
  DECRYPTOR = KEYS.zip(VALUES).to_h
  ENCRYPTOR = VALUES.zip(KEYS).to_h

  def decipher(encoded_message)
    encoded_message.chars.map{ |letter| DECRYPTOR[letter]}.join
  end

  def encrypt(message)
    message.chars.map{ |letter| ENCRYPTOR[letter]}.join
  end
end

cryptograph = Cryptograph.new

cryptograph.encrypt "HELLO WORLD" # => "URYYB JBEYQ"


