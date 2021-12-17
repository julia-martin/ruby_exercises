def staggered_case(str)
  new_str = ''
  upper = true
  str.chars.each do |char|
    if upper
      new_str << char.upcase
    else
      new_str << char.downcase
    end
    upper = !upper if char =~ /[a-zA-Z]/
  end
  new_str
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'