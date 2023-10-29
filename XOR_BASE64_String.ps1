<#
    Script Name: XOR Base64 Encoder
    Author: Richard Jones
    Date Created: 29/10/2023
    Description: A PowerShell function for performing XOR operations followed by Base64 encoding. 
                 Ideal for integrating into scripts to obscure specific terms from detection, 
                 thereby enhancing the security posture of your code.
#>


function XOR_Base64_String {
    param (
        [string]$string,
        [string]$key
    )

    # Function to check if a string is Base64 encoded
    function Is_Base64() {
        param (
            [Parameter(ValueFromPipeline)] 
            [string]$str_input
        )
        try {             
            $pattern = '^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$' 
            if ($str_input -match $pattern) {
                return $true
            }
            else {
                return $false
            }            
        }
        catch { $false }
    }    
    
    $isBase64 = Is_Base64 $string

    # If the string is Base64 encoded, decode it
    if ($isBase64) {
        $bytes = [Convert]::FromBase64String($string)
        $string = [System.Text.Encoding]::UTF8.GetString($bytes)
    }

    $result = @()
    $keyLength = $key.Length

    for ($i = 0; $i -lt $string.Length; $i++) {
        $char = [char]$string[$i]
        $keyChar = [char]$key[$i % $keyLength]
        $xorValue = $char -bxor $keyChar
        $result += [char]$xorValue
    }

    $xoredString = -join $result

    # Encode the result to Base64
    $base64String = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($xoredString))

    return $base64String
}



