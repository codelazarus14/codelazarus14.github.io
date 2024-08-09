# creates a new Markdown file with front matter for a post
Param(
  [Parameter(Mandatory, HelpMessage = "Enter the post title, including spaces and capitalization.")]
  [string]$Title
)

$Date = Get-Date -Format "yyyy-MM-dd"
$FrontMatter = "---`ntitle: $Title`n---`n"
$TitleWords = $Title.Split(" ,", [System.StringSplitOptions]::RemoveEmptyEntries)
$Filename = "$Date-"
$MaxWords = 3
$Index = 0

# append up to first 3 words of title to filename
while (($Index -lt $TitleWords.Count) -and ($Index -lt $MaxWords)) {
  $Filename += $($TitleWords[$Index]).ToLower() + "-"
  $Index++
}
# remove trailing dash and add extension
$Filename = $Filename.Remove($Filename.Length - 1) + ".md"

# create file if it doesn't already exist
if (!(Test-Path (Join-Path -Path $PSScriptRoot -ChildPath $Filename))) {
  New-Item -Path . -Name $Filename -ItemType "file" -Value $FrontMatter
}
else {
  Write-Host "Error: $Filename already exists in this directory!"
}