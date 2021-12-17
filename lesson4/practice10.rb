munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |_, v|
  v['age_group'] =
    if v['age'] <= 17
      'kid'
    elsif v['age'] <= 64
      'adult'
    else
      'senior'
    end
end

puts munsters