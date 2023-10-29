# XOR_Base64_String
An xor and base64 routine for PowerShell

Beneficial for incorporation into scripts to obfuscate specific terms from detection


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


