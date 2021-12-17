def test_odd
  assert_equal(false, 4.odd?)
end

def test_downcase
  value = 'XYZ'
  assert_equal('xyz', value.downcase)
end

def test_nil
  assert_nil(value)
end

def test_empty_list
  assert_equal(true, list.empty?)
end

def test_xyz_in_list
  assert_equal(true, list.include?('xyz'))
end

def test_experience_error
  assert_raises(NoExperienceError) { employee.hire }
end

def test_numeric
  assert_instance_of(Numeric, value)
end

def test_not_numeric
  assert_kind_of(Numeric, value)
end

def test_process_list
  assert_same(list, list.process)
end

def test_not_in_list
  refute_includes(list, 'xyz')
end