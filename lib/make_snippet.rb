def make_snippet(str)
  str_arr = str.split(" ")
  str_arr.length > 5 ? str_arr[0..4].join(" ") + "..." : str
end