# Examples inspired by David Foster Wallace's # (2/21/1962 to 9/12/2008) _Infinite Jest_

DON_G = { name:  "Don Gately", occupation: "Live-in Staff" }
JOELLE_VD = { name:  "Joelle van Dyne", occupation: "Radio Personality" }
PAT_M =  { name:  "Pat Monteseian", occupation: "Staff" }
KATE_G = { name:  "Kate Gompert", occupation: "None" }
BRUCE_G = { name:  "Bruce Green", occupation: "Fan of Mildred" }

def assembled_aoh
  # Build an array that contains (or, "nests") the constants into a single
  # Array. Ruby constants are denoted by ALL_CAPS
  nested_ary = [DON_G, JOELLE_VD,PAT_M,KATE_G,BRUCE_G]
  return nested_ary
end

def literal_aoh
  # Using Array literal syntax only, build a nested array that uses the data in
  # held in the constants
  # ----
  # output = []
  # assembled_ary = assembled_aoh()
  # index = 0
  # while index < assembled_ary.count do
  #   output << build_ary(assembled_ary[index])
  #   index += 1
  # end
  # return output
  # ---- 
  return assembled_aoh()
end

def build_ary(hash)
  output = [hash[:name],hash[:occupation]]
  return output
end

def aoh_lookup(aoh, row, key)
  return aoh[row][key]
end

def aoh_update(aoh, row, key, new_value)
  # Update the AoH data at row and key to have the value of new_value
  # Return the updated AoH
  aoh[row][key] = new_value
  return aoh
end
