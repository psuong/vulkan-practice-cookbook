$mainFiles = Get-ChildItem -Path . -Recurse -Filter "main.cpp"

foreach ($file in $mainFiles) {
    Write-Host("Replacing content in: $($file.FullName)");
    
    $newContent = @"
#include <stdio.h>

int main() {
    printf("TODO!\n");
    return 0;
}
"@;
    
    # Replace the file's content with the new content
    Set-Content -Path $file.FullName -Value $newContent
}

Write-Host("Replacement complete.");
