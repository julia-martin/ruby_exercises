def decrypt(name)
  upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  lower = 'abcdefghijklmnopqrstuvwxyz'
  decrypted = name.chars.map do |char|
    if upper.include?(char)
      idx = (upper.index(char) + 13) % 26
      upper[idx]
    elsif lower.include?(char)
      idx = (lower.index(char) + 13) % 26
      lower[idx]
    else
      char
    end
  end

  puts decrypted.join('')
end

names = %w[
  Nqn Ybirynpr
  Tenpr Ubccre
  Nqryr Tbyqfgvar
  Nyna Ghevat
  Puneyrf Onoontr
  Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
  Wbua Ngnanfbss
  Ybvf Unvog
  Pynhqr Funaaba
  Fgrir Wbof
  Ovyy Tngrf
  Gvz Orearef-Yrr
  Fgrir Jbmavnx
  Xbaenq Mhfr
  Fve Nagbal Ubner
  Zneiva Zvafxl
  Lhxvuveb Zngfhzbgb
  Unllvz Fybavzfxv
  Tregehqr Oynapu
]

names.each { |name| decrypt(name) }