# XOR_Base64_String
A xor and base64 routine for powershell

## Usage
```
$string = "hello, This is a test"
$key = "Th1s1sMyK3y"

# XOR the string and encode to Base64
$base64XoredString = XOR_String -string $string -key $key


# Decode from Base64, XOR the string and encode back to Base64
$base64XoredString = XOR_String -string $base64XoredString -key $key
# Store the result in a variable, include the xor_base64_string function in your script
$base64XoredString
```

```

```
