# XOR_Base64_String
A PowerShell module for performing XOR operations followed by Base64 encoding.

This module is ideal for integrating into scripts where there's a need to obscure certain terms from being detected, enhancing the security posture of your code.

> Note: The base64 was selected to handle the characters that the terminal can't display fully. 

## Usage
```powershell
$string = "hello, This is a test"
$key = "Th1s1sMyK3y"

# XOR the string and encode to Base64
$base64XoredString = XOR_String -string $string -key $key


# Decode from Base64, XOR the string and encode back to Base64
$base64XoredString = XOR_String -string $base64XoredString -key $key
# Store the result in a variable, include the xor_base64_string function in your script
$base64XoredString
```

## Encode/Decode
![image](https://github.com/AssassinUKG/XOR_BASE64_String/assets/5285547/95d3c1f1-4387-4ec9-aff2-66aa3c45dac5)

![image](https://github.com/AssassinUKG/XOR_BASE64_String/assets/5285547/7dcb548b-cd9b-4211-9fad-81bfe55655b9)


