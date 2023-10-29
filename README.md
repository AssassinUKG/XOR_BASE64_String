# XOR_Base64_String
A PowerShell module for performing XOR operations followed by Base64 encoding.

This module is ideal for integrating into scripts where there's a need to obscure certain terms from being detected, enhancing the security posture of your code.

> Note: The base64 was selected to handle the characters that the terminal can't display fully. 

## Encode/Decode
![image](https://github.com/AssassinUKG/XOR_BASE64_String/assets/5285547/95d3c1f1-4387-4ec9-aff2-66aa3c45dac5)

![image](https://github.com/AssassinUKG/XOR_BASE64_String/assets/5285547/7dcb548b-cd9b-4211-9fad-81bfe55655b9)

## Usage
```powershell
$string = "hello, This is a test"
$key = "Th1s1sMyK3y" # Don't Forget to change the key!

# XOR the string and encode to Base64
$base64XoredString = XOR_String -string $string -key $key

# Decode from Base64, XOR the string and encode back to Base64
$base64XoredString = XOR_String -string $base64XoredString -key $key
# Store the result in a variable, include the xor_base64_string function in your script
$base64XoredString
```

## Amsiutls example
Copy the xor function or include it in your script!

![image](https://github.com/AssassinUKG/XOR_BASE64_String/assets/5285547/86664730-4a3d-42ea-b10f-932110509bbd)

### Before

![image](https://github.com/AssassinUKG/XOR_BASE64_String/assets/5285547/7a517bf5-d56a-4b7d-ac28-67d70eedba2e)

### After

![image](https://github.com/AssassinUKG/XOR_BASE64_String/assets/5285547/3911dc5d-8662-410a-9c81-6506dbf2bfa8)


Decode with CyberChef
![image](https://github.com/AssassinUKG/XOR_BASE64_String/assets/5285547/c98d4d60-1f3f-4df8-aef5-f8f881a5c60f)


