(* ::Package:: *)

$thisDir = DirectoryName @ $InputFileName;
$targetFile = ReplaceAll[
	Cases[$CommandLine, {___, "-targetNotebook", tNB_, ___} :> tNB, {0, Infinity}], 
	{{} -> " ", {s_} :> s, {s_, __} :> s}
];
fileExistsQ = FileExistsQ @ $targetFile;


If[
	fileExistsQ,
	UsingFrontEnd[
		NotebookEvaluate[FileNameJoin[{$thisDir, "RunNotebook.nb"}]];
	],
	Put[$targetFile, FileNameJoin[{$thisDir, "RunNotebook.nb"}]]
]
