
$directoryPath = "D:\"

$filePatterns = @(
	"._*",
	"*DS_Store",
	".fseventsd",
	".Trashes",
	".TemporaryItems",
	".Spotlight-V100",
	".DocumentRevisions-V100"
)

Remove-Item -Path $directoryPath -Include $filePatterns -Recurse -Force -WhatIf
Remove-Item -Path $directoryPath -Include $filePatterns -Recurse -Force -Verbose