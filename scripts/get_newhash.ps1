$source_folder = "C:\Users\iamma\stable_retro\roms"
$temp_folder = "C:\Windows\Temp"

$file_name = "Contra (USA).zip"
$rom_name = $file_name.Replace('.zip','.nes')

Expand-Archive -Path "$($source_folder)\$($file_name)" -DestinationPath $temp_folder 

Get-FileHash -Path "$($temp_folder)\$($rom_name)" -Algorithm SHA1