from utils import reverse_string  # replace 'your_module_name' with the actual module name where the function is defined

def test_reverse_string_regular():
    # Test with a regular string
    assert reverse_string("Hello") == "olleH"

def test_reverse_string_empty():
    # Test with an empty string
    assert reverse_string("") == ""

def test_reverse_string_single_character():
    # Test with a single character string
    assert reverse_string("a") == "a"

def test_reverse_string_palindrome():
    # Test with a palindrome (should be the same when reversed)
    assert reverse_string("madam") == "madam"

def test_reverse_string_with_spaces_and_punctuation():
    # Test with spaces and punctuation
    assert reverse_string("Hello, World!") == "!dlroW ,olleH"