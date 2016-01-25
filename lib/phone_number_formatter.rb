# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
    just_numbers = phone_number_str.scan(/\d/)
    just_numbers_str = just_numbers.join("")
    area_code = just_numbers_str[0, 3]
    prefix = just_numbers_str[3, 3]
    last = just_numbers_str[6, 4]
    final_string = "(" + area_code + ")" + " " + prefix + "-" + last
    final_string
end
puts format_phone_number("402-699. 2450")