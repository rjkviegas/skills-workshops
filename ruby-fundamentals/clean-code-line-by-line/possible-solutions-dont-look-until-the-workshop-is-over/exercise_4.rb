def count_of_each_value_in_hash(hash)
  hash
    .values
    .each_with_object(Hash.new(0)) { |value, counts|
      counts[value] += 1
    }
end
