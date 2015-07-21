//Maya ASCII 2015 scene
//Name: terrorist.ma
//Last modified: Fri, Jul 17, 2015 06:30:13 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 363.59622192815851 272.31683567004359 363.59622192815857 ;
	setAttr ".r" -type "double3" -27.905266384380916 44.999999999999986 -4.0481852097554499e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 581.85984926802371;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.10000000000001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.10000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.10000000000001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "BdBip";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 78.024452924728394 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 -89.999908447265625 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 99.999992370605469 99.999992370605469 100 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".jo" -type "double3" -90 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.00013113 0 99.999994000000001 0 99.999994000000001 0 -0.00013113 0
		 0 100 0 0 0 99.605452999999997 -4.3037599999999999e-006 1;
	setAttr ".ds" 2;
	setAttr ".radi" 3;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1511;
	setAttr ".fbxID" 2;
createNode joint -n "Bip02FBXASC032Footsteps" -p "BdBip";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 0 -0.78638917207717896 ;
	setAttr -av ".tz";
	setAttr ".ssc" no;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1541;
	setAttr ".fbxID" 3;
createNode joint -n "Bip02FBXASC032Pelvis" -p "BdBip";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.065261967480182648 -0.0052148732356727123 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 7.9454599244879699e-005 -88.043306573928675 -90 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 99.999992370605455 99.999992370605455 100 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.00013867999999999999 100 0 0 0.00026980999999999999 -3.7418900000000002e-010 99.999994000000001 0
		 99.999994000000001 -0.00013867999999999999 -0.00026980999999999999 0 0 99.605452999999997 -4.3037599999999999e-006 1;
	setAttr ".radi" 0.021394934356212619;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1512;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032Spine" -p "Bip02FBXASC032Pelvis";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.10179126262664795 -7.2114169597625732e-005 0.0042659211903810501 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -1.0748715251547358 -3.3703710192333163 17.301510869935022 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000186264477 0.9999999683350268 1.0000000186264477 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 0.99999994039535522 0.99999994039535522 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1.04416e-007 99.999970000000005 0.079631800000000003 0
		 -0.00014622999999999999 -0.079631800000000003 99.999964000000006 0 99.999994000000001 -2.2086100000000001e-007 0.00014622999999999999 0
		 -9.9072999999999987e-009 109.791279 -0.0075548200000000003 1;
	setAttr ".radi" 0.019925425797700888;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1513;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032Spine1" -p "Bip02FBXASC032Spine";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.09488290548324585 -8.0496072769165039e-005 -1.1175870895385742e-008 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.0010419091254256756 -0.94847430160810386 -0.20349073385472721 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001192092896 1.0000001005828418 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000000186264477 0.9999999683350268 1.0000000186264477 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1.04416e-007 99.999970000000005 0.079631800000000003 0
		 -0.00014622999999999999 -0.079631800000000003 99.999964000000006 0 99.999994000000001 -2.2086100000000001e-007 0.00014622999999999999 0
		 -1.0555799999999999e-008 119.279623 -0.0080489900000000007 1;
	setAttr ".radi" 0.02123367972671986;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1514;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032Spine2" -p "Bip02FBXASC032Spine1";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.1011127233505249 -8.0525875091552734e-005 -6.0722231864929199e-007 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.35737249278552208 1.5398404946128044 12.801312751901243 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001378357373 1.0000000372528954 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001192092896 1.0000001005828418 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1.04416e-007 99.999970000000005 0.079631800000000003 0
		 -0.00014622999999999999 -0.079631800000000003 99.999964000000006 0 99.999994000000001 -2.2086100000000001e-007 0.00014622999999999999 0
		 -1.08218e-008 129.389071 -0.0082513699999999992 1;
	setAttr ".radi" 0.021767866685986525;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1515;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032Spine3" -p "Bip02FBXASC032Spine2";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.10365641117095947 -8.5294246673583984e-005 -2.9988586902618408e-007 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.16573825613121615 0.93385669061023835 9.797861285243183 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999998137355228 0.99999999068677614 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001378357373 1.0000000372528954 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1.04416e-007 99.999970000000005 0.079631800000000003 0
		 -0.00014622999999999999 -0.079631800000000003 99.999964000000006 0 99.999994000000001 -2.2086100000000001e-007 0.00014622999999999999 0
		 -1.13425e-008 139.75323399999999 -0.0086479599999999997 1;
	setAttr ".radi" 0.022811873182654381;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1516;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032Neck" -p "Bip02FBXASC032Spine3";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.10862791538238525 -6.4909458160400391e-005 1.4202669262886047e-008 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 3.022391641574257e-008 7.0869881164073809e-009 2.6146815994886524e-006 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001005828418 1.0000001192092896 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999998137355217 0.99999999068677614 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 8.4640600000000004e-005 95.367485000000002 30.083932999999998 0
		 -0.00015925100000000001 -30.083932000000001 95.367480999999998 0 99.999994000000001 -0.00012862799999999999 0.00012641 0
		 -7.6756100000000001e-009 150.61798099999999 -0.0061943900000000001 1;
	setAttr ".radi" 0.017134141847491263;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1532;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032Head" -p "Bip02FBXASC032Neck";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.081591248512268066 -5.9604644775390625e-008 -1.862645149230957e-009 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 8.6442248827557897 0.15493766125226871 -40.098489610385727 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001005828418 1.0000001192092896 1.0000001192092896 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001005828418 1.0000001192092896 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.00013430899999999999 100 0 0 -0.00014622999999999999 1.9638400000000001e-010 99.999994000000001 0
		 99.999994000000001 -0.00013430899999999999 0.00014622999999999999 0 6.8982500000000004e-006 158.39912899999999 2.4483890000000001 1;
	setAttr ".radi" 0.043710511028766635;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1531;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032HeadNub" -p "Bip02FBXASC032Head";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.20814526081085205 -1.1920928955078125e-007 1.862645149230957e-008 ;
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".ssc" no;
	setAttr ".radi" 0.043710511028766635;
	setAttr -k on ".MaxHandle" 1546;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Clavicle" -p "Bip02FBXASC032Neck";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.1920928955078125e-007 6.4849853515625e-005 0.038798496127128601 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 74.560737609791417 -80.775273740287574 105.58608347185363 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000912696179 1 0.99999999068677614 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001005828418 1.0000001192092896 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 99.852656999999994 -5.42638 -0.00013117399999999999 0
		 -0.00013136699999999999 6.4400899999999998e-009 -99.999994000000001 0 5.42638 99.852663000000007 -7.1220699999999996e-006 0
		 3.8798499999999998 150.616038 -2.8077800000000003e-006 1;
	setAttr ".radi" 0.031562013477087023;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1523;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032UpperArm" -p "Bip02FBXASC032LFBXASC032Clavicle";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.15029534697532654 -5.9604644775390625e-008 1.1920928955078125e-007 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -49.18829557342351 28.372322817843433 -63.191469063102645 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000372528954 1.0000001378357373 1.0000002384185791 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000000912696179 1 0.99999999068677614 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 99.976682999999994 -2.1591659999999999 -2.9935100000000001e-006 0
		 -3.0000499999999998e-006 -2.7080099999999999e-007 -99.999994000000001 0 2.1591659999999999 99.976688999999993 -3.3551400000000002e-007 0
		 18.887239999999998 149.800479 -2.2522700000000004e-005 1;
	setAttr ".radi" 0.055800645053386687;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1524;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Forearm" -p "Bip02FBXASC032LFBXASC032UpperArm";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2657172679901123 -2.9802322387695313e-008 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 -76.564331593836414 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000186264477 1.0000000186264477 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000000372528954 1.0000001378357373 1.0000002384185791 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 99.012827999999999 -2.13835 13.852297999999999 0 13.849068000000001 -0.29909400000000003 -99.035912999999994 0
		 2.1591659999999999 99.976688999999993 -3.48704e-007 0 45.452782999999997 149.22674900000001 -2.33181e-005 1;
	setAttr ".radi" 0.055800657570362094;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1525;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Hand" -p "Bip02FBXASC032LFBXASC032Forearm";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.26571741700172424 0 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 155.32643127441406 -2.3196462914346823 6.9528447687625583 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.999999918043606 0.9999999683350268 0.999999918043606 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000000186264477 1.0000000186264477 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 98.259084999999999 -2.1220720000000002 18.456641999999999 0
		 -2.1444719999999999 -99.976974999999996 -0.078259099999999998 0 18.454052000000001 -0.31890099999999999 -98.281961999999993 0
		 71.762209999999996 148.65854999999999 3.6807729999999999 1;
	setAttr ".radi" 0.023250255212187768;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1526;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Finger0" -p "Bip02FBXASC032LFBXASC032Hand";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.11071552336215973 -1.1920928955078125e-007 2.9802322387695313e-008 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.045625631697482467 5.0859571953059025e-008 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001005828418 1.0000000912696179 1.0000001005828418 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.999999918043606 0.9999999683350268 0.999999918043606 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 98.259084999999999 -2.1220720000000002 18.456641999999999 0
		 -2.1591670000000001 -99.976688999999993 4.7061800000000002e-006 0 18.452338000000001 -0.39851399999999998 -98.281992000000002 0
		 82.641017000000005 148.42359999999999 5.7242100000000002 1;
	setAttr ".radi" 0.005812575928866864;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1533;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Finger0Nub" -p "Bip02FBXASC032LFBXASC032Finger0";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.027678966522216797 0 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".ssc" no;
	setAttr ".radi" 0.005812575928866864;
	setAttr -k on ".MaxHandle" 1543;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Clavicle" -p "Bip02FBXASC032Neck";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.1920928955078125e-007 6.5028667449951172e-005 -0.038798511028289795 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -92.587684631347656 69.521682739257813 87.192390441894531 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001005828418 1.0000001005828418 1.0000001005828418 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001005828418 1.0000001192092896 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -99.852656999999994 -5.42638 0.00013070000000000001 0
		 -0.00013089300000000001 6.44008e-009 -99.999994000000001 0 5.42638 -99.852663000000007 -7.1091799999999999e-006 0
		 -3.8798499999999998 150.616038 7.3675300000000006e-006 1;
	setAttr ".radi" 0.031562019735574723;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1527;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032UpperArm" -p "Bip02FBXASC032RFBXASC032Clavicle";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.15029531717300415 5.9604644775390625e-008 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -14.813802590002451 -70.912326929944683 14.054164239549937 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000002384185791 1.0000001192092896 1.0000002197921314 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001005828418 1.0000001005828418 1.0000001005828418 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -99.927252999999993 -3.8135409999999998 0.00013977099999999999 0
		 -0.00013987200000000001 0 -99.999994000000001 0 3.8135409999999998 -99.927257999999995 -5.3340899999999996e-006 0
		 -18.887239999999998 149.800479 2.70111e-005 1;
	setAttr ".radi" 0.055800663828849802;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1528;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Forearm" -p "Bip02FBXASC032RFBXASC032UpperArm";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.26571738719940186 -5.9604644775390625e-008 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 -132.85646033316118 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999068677614 0.9999999683350268 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000002384185791 1.0000001192092896 1.0000002197921314 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -98.963857000000004 -3.7767750000000002 13.852437999999999 0
		 -13.842362 -0.52826300000000004 -99.035894999999996 0 3.8135400000000002 -99.927259000000006 -5.19565e-006 0
		 -45.439646000000003 148.78715299999999 6.4150600000000002e-005 1;
	setAttr ".radi" 0.055800651311874401;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1529;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Hand" -p "Bip02FBXASC032RFBXASC032Forearm";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.26571741700172424 0 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 89.954376220703125 -11.900783080937209 -1.8407197652384726e-007 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000186264477 1.0000000186264477 1.0000001005828418 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999999068677614 0.9999999683350268 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -97.181516999999999 -3.7087539999999999 23.280833999999999 0
		 3.795013 -99.927937999999997 -0.077444200000000005 0 23.266926999999999 0.808249 97.252225999999993 0
		 -71.736068000000003 147.783601 3.680898 1;
	setAttr ".radi" 0.023250261470675472;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1530;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Finger0" -p "Bip02FBXASC032RFBXASC032Hand";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.11071556806564331 2.9802322387695313e-008 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.045625488855869353 -1.6675263368507566e-008 -1.3992631661192611e-006 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001005828418 1 1.0000000912696179 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000000186264477 1.0000000186264477 1.0000001005828418 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -97.181516999999999 -3.7087539999999999 23.280833999999999 0
		 3.8135400000000002 -99.927259000000006 -4.47983e-007 0 23.263898000000001 0.88782300000000003 97.252256000000003 0
		 -82.495570000000001 147.372985 6.2584489999999997 1;
	setAttr ".radi" 0.005812565367668868;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1534;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Finger0Nub" -p "Bip02FBXASC032RFBXASC032Finger0";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.027678906917572021 0 -1.1920928955078125e-007 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".ssc" no;
	setAttr ".radi" 0.005812565367668868;
	setAttr -k on ".MaxHandle" 1542;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Thigh" -p "Bip02FBXASC032Spine";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.090926945209503174 0.028250128030776978 0.091669656336307526 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 1.6934213695044704 -179.24207162292754 -79.817363945472991 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001192092896 1.0000001192092896 1.0000001005828418 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000000186264477 0.9999999683350268 1.0000000186264477 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 3.814476 -99.428004000000001 9.9760790000000004 0 0.00013899299999999999 9.9833499999999997 99.500411999999997 0
		 -99.927216999999999 -3.7954050000000001 0.38095099999999998 0 8.8572439999999997 99.605452999999997 -1.1564399999999999e-005 1;
	setAttr ".radi" 0.093001052141189589;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1517;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Calf" -p "Bip02FBXASC032LFBXASC032Thigh";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.44286221265792847 -1.1920928955078125e-007 -1.4901161193847656e-008 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 -72.502261265969182 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.9999999683350268 1.0000000186264477 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001192092896 1.0000001192092896 1.0000001005828418 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 3.738413 -99.429445999999999 -9.9904620000000008 0
		 0.75795299999999999 -9.9689490000000003 99.498969000000002 0 -99.927216999999999 -3.7954050000000001 0.38094800000000001 0
		 10.546531 55.572550999999997 4.4180169999999999 1;
	setAttr ".radi" 0.093001045882701888;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1518;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Foot" -p "Bip02FBXASC032LFBXASC032Calf";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.44286209344863892 1.3411045074462891e-007 2.2351741790771484e-008 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.21965097374680898 -0.049589646963092246 32.049239837983514 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999988079071045 0.99999996274710445 0.99999984912573725 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.9999999683350268 1.0000000186264477 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 9.4828499999999989e-007 -99.999994000000001 0 0 0.00013113 0 99.999988000000002 0
		 -99.999994000000001 -9.4828499999999989e-007 0.00013113 0 12.202132000000001 11.539 -0.0063814800000000001 1;
	setAttr ".radi" 0.034422962218523034;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1519;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Toe0" -p "Bip02FBXASC032LFBXASC032Foot";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.10185834020376205 0.1284300833940506 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -2.4946199772557664e-006 -2.8139513643338532e-009 90 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.9999999683350268 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999988079071045 0.99999996274710434 0.99999984912573725 ;
	setAttr -av ".is";
	setAttr ".radi" 0.0027900383155792957;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1535;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Toe01" -p "Bip02FBXASC032LFBXASC032Toe0";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.013285905122756958 -1.4901161193847656e-008 -2.2351741790771484e-008 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 -2.8139513643338532e-009 2.6680421389612106e-007 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.9999999683350268 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 0.9999999683350268 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.0027900392934679993;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1536;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Toe02" -p "Bip02FBXASC032LFBXASC032Toe01";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.01328587532043457 7.4505805969238281e-009 1.4901161193847656e-008 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 -2.8139513643338532e-009 2.6680421389612106e-007 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.9999999683350268 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr ".radi" 0.0027900383155792957;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1537;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032LFBXASC032Toe0Nub" -p "Bip02FBXASC032LFBXASC032Toe02";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.013285905122756958 -1.4901161193847656e-008 7.4505805969238281e-009 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".ssc" no;
	setAttr ".radi" 0.0027900383155792957;
	setAttr -k on ".MaxHandle" 1545;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Thigh" -p "Bip02FBXASC032Spine";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.10352921485900879 0.032254427671432495 -0.084981031715869904 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0.83138287795363086 -178.2191115525934 -41.615755065963533 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000001192092896 1.0000002197921314 1.0000000186264477 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000000186264477 0.9999999683350268 1.0000000186264477 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -3.8144480000000001 -99.428004000000001 9.9760899999999992 0
		 0.00013918000000000001 9.9833490000000005 99.500411999999997 0 -99.927216999999999 3.7954050000000001 -0.38067099999999998 0
		 -8.8572439999999997 99.605452999999997 1.1664699999999999e-005 1;
	setAttr ".radi" 0.093001083433628104;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1520;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Calf" -p "Bip02FBXASC032RFBXASC032Thigh";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.44286236166954041 8.9406967163085938e-008 7.4505805969238281e-009 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 -77.686875769482867 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000186264477 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001192092896 1.0000002197921314 1.0000000186264477 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -3.7384409999999999 -99.429445999999999 -9.9904510000000002 0
		 -0.75767499999999999 -9.9689490000000003 99.498969000000002 0 -99.927216999999999 3.7954050000000001 -0.38066899999999998 0
		 -10.546518000000001 55.572550999999997 4.4180450000000002 1;
	setAttr ".radi" 0.093001070916652703;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1521;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Foot" -p "Bip02FBXASC032RFBXASC032Calf";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.44286227226257324 -4.4703483581542969e-008 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.048691607139824469 -0.30953202861454077 53.65998212920897 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000186264477 1.0000001005828418 1.0000001005828418 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1.0000000186264477 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 9.4828499999999989e-007 -99.999994000000001 0 0 0.00013113 0 99.999988000000002 0
		 -99.999994000000001 -9.4828499999999989e-007 0.00013113 0 -12.202132000000001 11.539 -0.0063489000000000002 1;
	setAttr ".radi" 0.034422965347766878;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1522;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Toe0" -p "Bip02FBXASC032RFBXASC032Foot";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.10185832530260086 0.12843009829521179 7.4505805969238281e-009 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -2.5012900550791528e-006 4.356087128354547e-011 90 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000009 1.0000000000000009 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr ".radi" 0.0027900338172912602;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1538;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Toe01" -p "Bip02FBXASC032RFBXASC032Toe0";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.01328587532043457 4.6566128730773926e-010 -7.4505805969238281e-009 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -1.0422039605317229e-009 3.8471991675170138e-011 -0.0033564104777495237 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000186264477 1 1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000000000000002 1.0000000000000009 1.0000000000000009 ;
	setAttr -av ".is";
	setAttr ".radi" 0.0027900338172912602;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1539;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Toe02" -p "Bip02FBXASC032RFBXASC032Toe01";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.013285879045724869 0 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 1.0213601496803688e-008 2.7072875008151786e-011 -0.0033564248982142996 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".ssc" no;
	setAttr ".radi" 0.0027900338172912602;
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1540;
	setAttr ".fbxID" 5;
createNode joint -n "Bip02FBXASC032RFBXASC032Toe0Nub" -p "Bip02FBXASC032RFBXASC032Toe02";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.01328587532043457 0 7.4505805969238281e-009 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".ssc" no;
	setAttr ".radi" 0.0027900338172912602;
	setAttr -k on ".MaxHandle" 1544;
	setAttr ".fbxID" 5;
createNode transform -n "BODYb";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 0.50800001621246338 
		-smx 0.50800001621246338 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -k true -sn "Enabled" -ln "Enabled" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "EffectList" -ln "EffectList" -smn 0 -smx 
		0 -at "long";
	addAttr -is true -ci true -k true -sn "dxStdMat" -ln "dxStdMat" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	setAttr ".t" -type "double3" 2.808452581604115e-007 81.252902746200562 5.181451141834259 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 41.322314739227295 41.322314739227295 41.322314739227295 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 0.50800001621246338;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1761;
createNode mesh -n "BODYbShape" -p "BODYb";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "BODYbShapeOrig" -p "BODYb";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr -s 961 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.85135788 0.76282859 0.83160067
		 0.74378467 0.85794353 0.74329996 0.96367836 0.81742454 0.98698407 0.83641934 0.93987668
		 0.81742454 0.9162814 0.83462918 0.95963401 0.83676779 0.91247153 0.73479557 0.91247153
		 0.75180447 0.90310979 0.74329996 0.95963401 0.75872898 0.99473453 0.74329996 0.99479353
		 0.76361704 0.93987662 0.77530324 0.90310979 0.7696383 0.97280544 0.78000677 0.9477796
		 0.77619064 0.90310979 0.71689355 0.95405531 0.72128093 0.99468237 0.722983 0.97280544
		 0.7474587 0.95963401 0.85300446 0.99468243 0.85300446 0.95963401 0.79808164 0.91628134
		 0.80022001 0.97381246 0.81742454 0.99473453 0.81742454 0.99468237 0.79639208 0.95304823
		 0.78669953 0.94514531 0.7878654 0.99468237 0.70772016 0.94746953 0.70772016 0.9162814
		 0.81742454 0.90969568 0.77949548 0.86452937 0.80090153 0.85135788 0.79082561 0.86452937
		 0.83392596 0.86452937 0.81742465 0.85135788 0.81071877 0.85135788 0.85300446 0.85135788
		 0.83358586 0.85135788 0.82412529 0.85135788 0.7237463 0.85135788 0.70772016 0.85135788
		 0.80124843 0.82501477 0.85300446 0.82501477 0.82638788 0.79867178 0.85300446 0.82501477
		 0.76362753 0.79867178 0.76419878 0.82501477 0.75325418 0.79867178 0.72237241 0.82501477
		 0.80845392 0.79867178 0.82575464 0.82501477 0.79219019 0.79867178 0.79313743 0.79867178
		 0.80908787 0.82501477 0.72294617 0.79867178 0.70772016 0.82501477 0.70772016 0.70074415
		 0.83301926 0.70074415 0.82061696 0.70074415 0.78844237 0.70074415 0.75773084 0.70074415
		 0.80264151 0.70074415 0.70772016 0.70074415 0.85300446 0.99479353 0.7799077 0.94088376
		 0.73380244 0.90969574 0.85300446 0.99468243 0.83845711 0.82501477 0.73374224 0.95304823
		 0.75755513 0.90969568 0.70772016 0.85090214 0.94320607 0.8574878 0.96273458 0.83114499
		 0.96224999 0.97138089 0.88860989 0.93942094 0.88860989 0.9865284 0.8696152 0.91582561
		 0.87140512 0.95917827 0.86926687 0.91201574 0.97123909 0.90265399 0.96273458 0.91201574
		 0.95423007 0.95917827 0.94730544 0.99433786 0.94241762 0.99427885 0.96273458 0.90265399
		 0.93639624 0.93942094 0.93073118 0.9723497 0.92602777 0.94732386 0.92984378 0.90265399
		 0.98914099 0.95359945 0.98475349 0.9723497 0.95857573 0.99422657 0.98305142 0.95917827
		 0.85302997 0.99422657 0.85302997 0.95917827 0.90795279 0.91582561 0.90581453 0.97335666
		 0.88860989 0.99427885 0.88860989 0.95259249 0.91933513 0.99422652 0.90964246 0.94468957
		 0.91816926 0.99422657 0.99831438 0.94701368 0.99831438 0.91582561 0.88860989 0.90923989
		 0.92653894 0.86407363 0.90513277 0.85090214 0.91520894 0.86407357 0.88860989 0.86407357
		 0.87210846 0.85090214 0.89531565 0.85090214 0.87244868 0.85090214 0.85302997 0.85090214
		 0.88190937 0.85090214 0.99831438 0.85090214 0.98228812 0.85090214 0.90478611 0.82455903
		 0.85302997 0.82455903 0.87964654 0.79821593 0.85302997 0.82455903 0.94240689 0.82455903
		 0.95278049 0.79821599 0.94183576 0.79821599 0.98366237 0.82455903 0.89758074 0.79821593
		 0.8802799 0.82455903 0.91384435 0.79821599 0.91289711 0.79821593 0.89694667 0.82455903
		 0.98308849 0.79821599 0.99831438 0.82455903 0.99831438 0.70028841 0.87301517 0.70028841
		 0.88541734 0.70028841 0.91759217 0.70028841 0.94830382 0.70028841 0.90339303 0.70028841
		 0.99831438 0.70028841 0.85302997 0.99433786 0.92612684 0.9404279 0.9722321 0.90923989
		 0.85302997 0.99422657 0.86757731 0.82455903 0.97229218 0.95259249 0.94847929 0.90923989
		 0.99831438 0.029029798 0.34866342 0.039504718 0.39143276 0.06106044 0.40002829 0.085216537
		 0.30347705 0.016265776 0.29659832 0.029467251 0.3359634 0.085418046 0.35382381 0.078871831
		 0.33079606 0.43684566 0.103306 0.45283923 0.103306 0.45843703 0.062708661 0.43284729
		 0.037636507 0.36890778 0.039404076 0.36581308 0.041854013 0.37668359 0.045672115
		 0.36125818 0.039404247 0.36890778 0.039404076 0.42021421 0.069936186 0.39786616 0.038444627
		 0.41605407 0.025100458 0.39589453 0.024569605 0.46978319 0.066059969 0.46125185 0.10495327
		 0.45842835 0.062731929 0.46978319 0.10495327 0.47753501 0.10495327 0.45843703 0.062708661
		 0.43684566 0.103306 0.43284729 0.037636507 0.45283923 0.103306 0.42021421 0.069936186
		 0.42724955 0.103306 0.0907491 0.27193105 0.015182283 0.2646237 0.3892352 0.14056617
		 0.36698833 0.16441204 0.36698833 0.14056617 0.41265178 0.16441204 0.41265178 0.14056617
		 0.41685373 0.043904543 0.42724955 0.103306 0.39786616 0.038444746 0.41685373 0.043904543
		 0.41605407 0.025100622 0.38983628 0.11325939 0.37549278 0.024569605 0.3959617 0.044079553
		 0.058230232 0.21466404 0.029778566 0.22152071 0.082957968 0.22531345 0.023897465
		 0.23365934 0.36848757 0.026679773 0.37549278 0.024569768 0.3959617 0.044079553 0.45763731
		 0.03763644 0.45363891 0.025100458 0.436046 0.025100365 0.46978319 0.02497654 0.46978319
		 0.036642242 0.45842835 0.036642242 0.48054475 0.02497654 0.48054475 0.036642242 0.45363891
		 0.025100622 0.436046 0.025100622 0.45763731 0.037636507 0.36758944 0.11325939 0.37961158
		 0.084181428 0.38863409 0.085478559 0.087964103 0.23857491 0.36159593 0.030837782
		 0.37668359 0.045672115 0.39589453 0.024569605 0.36848757 0.026679773 0.083053797
		 0.39592373 0.45842835 0.02497654 0.48054475 0.062724255 0.3892352 0.16441204 0.41325289
		 0.11325939 0.3958208 0.084829986 0.029029798 0.34866342 0.06106044 0.40002829 0.039504718
		 0.39143276 0.085216537 0.30347705 0.029467251 0.3359634 0.016265776 0.29659832 0.085418046
		 0.35382381 0.078871831 0.33079606 0.43684566 0.103306 0.45843703 0.062708661 0.45283923
		 0.103306 0.43284729 0.037636507 0.36890778 0.039404076 0.37668359 0.045672115 0.36505383
		 0.040261451 0.36890778 0.039404076 0.36125818 0.039404247 0.42021421 0.069936186
		 0.39786616 0.038444627 0.39589453 0.024569605 0.41605407 0.025100458;
	setAttr ".uvst[0].uvsp[250:499]" 0.46978319 0.066059969 0.45842835 0.062731929
		 0.46125185 0.10495327 0.46978319 0.10495327 0.47753501 0.10495327 0.45843703 0.062708661
		 0.43284729 0.037636507 0.43684566 0.103306 0.45283923 0.103306 0.42021421 0.069936186
		 0.42724955 0.103306 0.0907491 0.27193105 0.015182283 0.2646237 0.3892352 0.14056617
		 0.36698833 0.14056617 0.36698833 0.16441204 0.41265178 0.16441204 0.41265178 0.14056617
		 0.41685373 0.043904543 0.42724955 0.103306 0.41685373 0.043904543 0.39786616 0.038444746
		 0.41605407 0.025100622 0.38983628 0.11325939 0.37549278 0.024569605 0.3959617 0.044079553
		 0.058230232 0.21466404 0.082957968 0.22531345 0.029778566 0.22152071 0.023897465
		 0.23365934 0.36848757 0.026679773 0.37549278 0.024569768 0.3959617 0.044079553 0.45363891
		 0.025100458 0.45763731 0.03763644 0.436046 0.025100365 0.46978319 0.02497654 0.45842835
		 0.036642242 0.46978319 0.036642242 0.48054475 0.036642242 0.48054475 0.02497654 0.45363891
		 0.025100622 0.436046 0.025100622 0.45763731 0.037636507 0.36758944 0.11325939 0.38863409
		 0.085478559 0.37961158 0.084181428 0.087964103 0.23857491 0.36159593 0.030837782
		 0.37668359 0.045672115 0.39589453 0.024569605 0.36848757 0.026679773 0.083053797
		 0.39592373 0.45842835 0.02497654 0.48054475 0.062724255 0.3892352 0.16441204 0.41325289
		 0.11325939 0.3958208 0.084829986 0.65612507 0.92132694 0.62842643 0.9021579 0.65612507
		 0.91406524 0.65612507 0.94188523 0.63180453 0.94633311 0.62369752 0.94063717 0.61754632
		 0.93396252 0.65612543 0.93685216 0.60477507 0.91416925 0.60782164 0.92262667 0.58856803
		 0.93998134 0.59241033 0.92339283 0.65612543 0.94633311 0.61643523 0.9082281 0.5818122
		 0.90962702 0.5495851 0.90602767 0.552944 0.89585215 0.57505602 0.90046513 0.52186495
		 0.91558969 0.52186495 0.90976822 0.5299021 0.91196144 0.5299021 0.90535808 0.5495851
		 0.91263115 0.5818122 0.91585666 0.47921294 0.98067838 0.48442096 0.97171837 0.49005431
		 0.98067838 0.50415891 0.97171837 0.5068509 0.98963839 0.5045473 0.98963839 0.50937599
		 0.97171837 0.51588601 0.97171837 0.55300635 0.85697424 0.53768891 0.85834432 0.53982562
		 0.84513539 0.602898 0.84100133 0.602898 0.85892135 0.59425151 0.85892135 0.61944824
		 0.89585215 0.58060873 0.71898985 0.56584245 0.71844739 0.56584245 0.72906238 0.5548929
		 0.91662669 0.53523666 0.71857369 0.56289595 0.9221105 0.57505602 0.91817701 0.5953235
		 0.94633311 0.619048 0.72236729 0.6261664 0.75639272 0.65179294 0.75639272 0.5430271
		 0.94252187 0.54786253 0.94633311 0.52186495 0.94633311 0.58518994 0.90247405 0.58856803
		 0.89585215 0.61264127 0.72236729 0.58060873 0.73091972 0.52186495 0.89585215 0.56841236
		 0.90736711 0.59078252 0.85892135 0.58553827 0.84100133 0.5966779 0.83938986 0.55796236
		 0.83120704 0.55951637 0.84681004 0.55067533 0.837883 0.62663162 0.71066159 0.62663162
		 0.71676224 0.65179253 0.71066159 0.65179276 0.73225147 0.66834015 0.74432212 0.66834015
		 0.73225147 0.57892776 0.92725307 0.5186373 0.72906238 0.53401238 0.73349345 0.5291155
		 0.72906238 0.53331423 0.92211348 0.53673738 0.91662669 0.52186495 0.93337458 0.52186495
		 0.92750078 0.52817953 0.93100411 0.53640658 0.92769718 0.52646792 0.92210656 0.52186495
		 0.91662669 0.53844875 0.9368456 0.5316025 0.93870163 0.57023144 0.93526846 0.56841236
		 0.91397047 0.58772713 0.75639272 0.54503065 0.75639272 0.54565281 0.83696973 0.55339473
		 0.84528762 0.57150519 0.84100133 0.52812356 0.84681004 0.52812356 0.84153664 0.52812356
		 0.85834432 0.48442096 0.98963839 0.53523666 0.72547889 0.5291155 0.72139466 0.51199341
		 0.75639272 0.51199341 0.72906238 0.5186373 0.75639272 0.51588601 0.98963839 0.55951637
		 0.85834432 0.67206538 0.94633311 0.67206538 0.93710393 0.6720652 0.92018622 0.67206538
		 0.92864507 0.65612507 0.90979314 0.6720652 0.90979314 0.66834033 0.75639272 0.65612507
		 0.92132694 0.65612507 0.91406524 0.62842643 0.9021579 0.65612507 0.94188523 0.62369752
		 0.94063717 0.63180453 0.94633311 0.65612543 0.93685216 0.61754632 0.93396252 0.60477507
		 0.91416925 0.60782164 0.92262667 0.59241033 0.92339283 0.58856803 0.93998134 0.65612543
		 0.94633311 0.61643523 0.9082281 0.5818122 0.90962702 0.5495851 0.90602767 0.57505602
		 0.90046513 0.552944 0.89585215 0.52186495 0.91558969 0.5299021 0.91196144 0.52186495
		 0.90976822 0.5495851 0.91263115 0.5299021 0.90535808 0.5818122 0.91585666 0.47921294
		 0.98067838 0.49005431 0.98067838 0.48442096 0.97171837 0.50415891 0.97171837 0.5045473
		 0.98963839 0.5068509 0.98963839 0.51588601 0.97171837 0.50937599 0.97171837 0.55300635
		 0.85697424 0.53982562 0.84513539 0.53768891 0.85834432 0.602898 0.84100133 0.59425151
		 0.85892135 0.602898 0.85892135 0.61944824 0.89585215 0.58060873 0.71898985 0.56584245
		 0.72906238 0.56584245 0.71844739 0.5548929 0.91662669 0.53523666 0.71857369 0.56289595
		 0.9221105 0.57505602 0.91817701 0.5953235 0.94633311 0.619048 0.72236729 0.65179294
		 0.75639272 0.6261664 0.75639272 0.5430271 0.94252187 0.54786253 0.94633311 0.52186495
		 0.94633311 0.58518994 0.90247405 0.58856803 0.89585215 0.58060873 0.73091972 0.61264127
		 0.72236729 0.52186495 0.89585215 0.56841236 0.90736711 0.59078252 0.85892135 0.5966779
		 0.83938986 0.58553827 0.84100133 0.55796236 0.83120704 0.55067533 0.837883 0.55951637
		 0.84681004 0.62663162 0.71066159 0.65179253 0.71066159 0.62663162 0.71676224 0.65179276
		 0.73225147 0.66834015 0.73225147 0.66834015 0.74432212 0.57892776 0.92725307 0.5186373
		 0.72906238 0.5291155 0.72906238 0.53401238 0.73349345 0.53331423 0.92211348 0.53673738
		 0.91662669 0.52186495 0.93337458 0.52817953 0.93100411 0.52186495 0.92750078 0.53640658
		 0.92769718 0.52186495 0.91662669;
	setAttr ".uvst[0].uvsp[500:749]" 0.52646792 0.92210656 0.53844875 0.9368456
		 0.5316025 0.93870163 0.57023144 0.93526846 0.56841236 0.91397047 0.58772713 0.75639272
		 0.54503065 0.75639272 0.54565281 0.83696973 0.55339473 0.84528762 0.57150519 0.84100133
		 0.52812356 0.84681004 0.52812356 0.84153664 0.52812356 0.85834432 0.48442096 0.98963839
		 0.53523666 0.72547889 0.5291155 0.72139466 0.51199341 0.75639272 0.51199341 0.72906238
		 0.5186373 0.75639272 0.51588601 0.98963839 0.55951637 0.85834432 0.67206538 0.94633311
		 0.67206538 0.93710393 0.6720652 0.92018622 0.67206538 0.92864507 0.65612507 0.90979314
		 0.6720652 0.90979314 0.66834033 0.75639272 0.15717733 0.29150718 0.17814162 0.28215086
		 0.23262736 0.29483667 0.29215792 0.29354891 0.31248191 0.2870048 0.33768821 0.28431028
		 0.26109275 0.29043317 0.37586257 0.29885596 0.1860835 0.27835819 0.16094515 0.270632
		 0.23693958 0.28140888 0.21519473 0.28217876 0.20854729 0.29145381 0.31880331 0.28086945
		 0.30082062 0.28086945 0.27093667 0.28048453 0.33384869 0.27971464 0.37331751 0.28201973
		 0.16162419 0.27608907 0.17472288 0.28590721 0.23203555 0.28193057 0.30975941 0.28977132
		 0.3682192 0.2797628 0.37890249 0.31141162 0.19355759 0.28091648 0.24390873 0.28043658
		 0.21821666 0.28091648 0.20887208 0.28264084 0.34192768 0.27928177 0.32011932 0.28043658
		 0.28488562 0.28005165 0.36362767 0.27966669 0.11388224 0.90953839 0.11376407 0.92056823
		 0.087739848 0.92056823 0.38996434 0.83169866 0.36120331 0.79326212 0.38563702 0.7889818
		 0.36120331 0.77632046 0.41555941 0.76170677 0.38765097 0.78051096 0.044578105 0.84508872
		 0.054855883 0.86394781 0.044896424 0.87102014 0.056098074 0.82894778 0.11344296 0.79344875
		 0.11332631 0.8289476 0.042909864 0.75969702 0.10442159 0.7596969 0.42323977 0.86812335
		 0.42774889 0.85118186 0.45086256 0.88082987 0.44939458 0.84271085 0.45899162 0.85541713
		 0.049438685 0.79304153 0.40147042 0.93165338 0.4294734 0.98949772 0.11375552 0.93662733
		 0.093420319 0.93662733 0.38996905 0.93864924 0.061518032 0.90831655 0.11332631 0.86387044
		 0.40048262 0.8469463 0.36120331 0.83428478 0.40168396 0.83847547 0.046613235 0.94669038
		 0.030372767 0.94073766 0.030425031 0.92868316 0.040211171 0.85489684 0.47112069 0.82513231
		 0.41776493 0.77627558 0.46705961 0.76312435 0.45801207 0.93165326 0.41588634 0.8469463
		 0.41096967 0.8414402 0.11375552 0.94477981 0.099993639 0.94948524 0.42514816 0.90094793
		 0.11375552 0.95677423 0.056426305 0.96076816 0.4336521 0.98949772 0.050693352 0.96076816
		 0.3883386 0.92066956 0.36697108 0.89438295 0.4428387 0.89353585 0.10546973 0.95946491
		 0.39798877 0.87024099 0.36120331 0.9357574 0.36120331 0.87028593 0.36514795 0.87235892
		 0.17501734 0.90953839 0.1397882 0.92056823 0.33671564 0.78907162 0.33244219 0.83178842
		 0.30526114 0.83687097 0.19532701 0.7606594 0.17396659 0.79711443 0.16601983 0.75900465
		 0.16923957 0.87400115 0.18677695 0.88968521 0.17129385 0.8442589 0.27232164 0.83210069
		 0.27154401 0.88091969 0.26341483 0.8555069 0.24599585 0.82885605 0.3046416 0.77636534
		 0.29742408 0.98958749 0.32400304 0.93174303 0.33179486 0.93873906 0.2946575 0.85127163
		 0.30652046 0.84703606 0.29916665 0.86821318 0.18089788 0.9466902 0.20624153 0.92623937
		 0.20970383 0.93733209 0.18414742 0.8595193 0.24088955 0.84212786 0.26746151 0.9317432
		 0.29324561 0.98958749 0.35641301 0.84280068 0.13409065 0.93662733 0.29725835 0.90103775
		 0.27956787 0.89362568 0.12751724 0.94948524 0.26328281 0.95751292 0.33713502 0.92075932
		 0.17681767 0.96076816 0.35543546 0.89447272 0.19201748 0.86665773 0.12204125 0.95946491
		 0.32441792 0.87033081 0.015649289 0.85336292 0.30650198 0.76076108 0.41726923 0.76780474
		 0.46219066 0.95742315 0.4171454 0.83678114 0.36120331 0.89188671 0.35725859 0.87244874
		 0.36599356 0.84271085 0.32192409 0.84703606 0.32072255 0.83856523 0.31143689 0.84152997
		 0.30513754 0.76789451 0.33430228 0.78060079 0.017516792 0.83757049 0.016917173 0.76227188
		 0.25918821 0.77183312 0.46872225 0.84532928 0.2104837 0.84570271 0.21115097 0.86165375
		 0.27427343 0.29496652 0.27427343 0.29496652 0.27427343 0.29496652 0.27427343 0.29496652
		 0.28488562 0.28005165 0.011551534 0.75344402 0.36120331 0.7453348 0.41805345 0.74528992
		 0.04346827 0.75046676 0.30573386 0.74745065 0.46203381 0.75101918 0.26392785 0.75020599
		 0.10462493 0.75005937 0.19918695 0.75343114 0.1653749 0.75046676 0.0031398651 0.0062473053
		 0.0026370464 0.0061260513 0.0022123107 0.0064898115 0.0021449584 0.0060074525 0.0021365678
		 0.0060074539 0.0032724496 0.0062473058 0.0031398651 0.0062473053 0.0018508236 0.0063712164
		 0.0041862009 0.0060758041 0.0031094786 0.0064924704 0.0020415483 0.0060758046 0.0019734467
		 0.0060758046 0.0031094786 0.0064924704 0.0026165049 0.0063712164 0.41363257 0.95742315
		 0.41244173 0.93400437 0.4294734 0.98949772 0.40321746 0.95742315 0.39427921 0.93629825
		 0.097250812 0.94125676 0.084408306 0.95611876 0.056426305 0.96076816 0.1027269 0.95123643
		 0.096419312 0.95298409 0.11376407 0.92056823 0.087739848 0.92056823 0.11375552 0.93662733
		 0.3096059 0.95695043 0.29854903 0.98508775 0.315566 0.92724323 0.32110792 0.93648916
		 0.13426687 0.94273561 0.14448653 0.95798945 0.17108466 0.96076816 0.1762552 0.95233113
		 0.12035384 0.94990295 0.1320648 0.95630205 0.3147527 0.95751292 0.33506444 0.36367384
		 0.34011155 0.38964957 0.31145489 0.36367375 0.028653953 0.61446869 0.25577793 0.62485898
		 0.24260563 0.62485898 0.46972954 0.61446869 0.49319389 0.61446869 0.46972954 0.61446869
		 0.028653953 0.61446869 0.020525426 0.61532068 0.013597315 0.64649165 0.2502993 0.62169486
		 0.48690313 0.59368807 0.37465692 0.58849287 0.45134106 0.59368807 0.43613926 0.62485898
		 0.4149439 0.59888321 0.37715212 0.61446869;
	setAttr ".uvst[0].uvsp[750:960]" 0.2611714 0.60927349 0.37465692 0.58849287
		 0.29899219 0.38964966 0.30257314 0.38445446 0.4659546 0.5365414 0.43348685 0.53654134
		 0.34436482 0.54173666 0.34193239 0.61446869 0.33463416 0.54173648 0.37231448 0.54173666
		 0.29445836 0.61187106 0.30740386 0.54173666 0.41061363 0.53654134 0.27974132 0.54173648
		 0.34436482 0.54173666 0.41376248 0.40523517 0.43425849 0.40523508 0.32075945 0.41043019
		 0.3583715 0.41043025 0.33069217 0.41562539 0.30704033 0.41562539 0.28922606 0.41562539
		 0.32075945 0.41043019 0.39579651 0.40523508 0.43425849 0.36367381 0.41376248 0.36367384
		 0.33364019 0.3896496 0.35453478 0.36367375 0.29463303 0.36367384 0.31849951 0.38445446
		 0.33364019 0.3896496 0.39579651 0.36367384 0.3605707 0.3896496 0.36537686 0.36367384
		 0.37586173 0.31548288 0.37100312 0.23417039 0.32859448 0.23936556 0.30780831 0.24858057
		 0.32228947 0.24858057 0.31445271 0.3154828 0.33486831 0.31548283 0.3393375 0.24858057
		 0.34509236 0.23936556 0.40208343 0.3154828 0.4014124 0.22897519 0.41631356 0.2289751
		 0.41772795 0.23819023 0.36829233 0.3154828 0.424362 0.22897519 0.42299396 0.3154828
		 0.44503322 0.31548283 0.36830536 0.2341705 0.36938238 0.24338543 0.37100312 0.23417039
		 0.37699309 0.24338537 0.43446094 0.23819029 0.37586173 0.31548288 0.35453478 0.36367375
		 0.29324108 0.3154828 0.39971027 0.23819029 0.37699309 0.24338537 0.33380437 0.23936565
		 0.14945608 0.3636739 0.1730656 0.36367387 0.14440884 0.38964966 0.028653953 0.61446869
		 0.011480393 0.59368807 0.020525426 0.61532068 0.12372667 0.58849287 0.047042426 0.59368807
		 0.083439715 0.59888321 0.073320121 0.62485886 0.12123146 0.61446863 0.23721215 0.60927343
		 0.12372667 0.58849287 0.028653953 0.61446869 0.24260563 0.62485898 0.18552832 0.38964966
		 0.18194737 0.38445446 0.032428991 0.53654134 0.064896725 0.53654134 0.1540188 0.54173648
		 0.16374949 0.54173648 0.16837908 0.61446863 0.12606914 0.54173648 0.19097979 0.54173648
		 0.20392512 0.611871 0.087769978 0.53654134 0.2186422 0.54173648 0.1540188 0.54173648
		 0.070757993 0.40523508 0.050261974 0.40523508 0.163761 0.41043025 0.12614903 0.41043025
		 0.15382835 0.41562539 0.17748007 0.41562539 0.19529438 0.41562539 0.163761 0.41043025
		 0.088724002 0.40523508 0.050261974 0.36367387 0.070757993 0.3636739 0.15088032 0.38964957
		 0.12998575 0.36367387 0.18988751 0.3636739 0.16602099 0.38445446 0.15088032 0.38964957
		 0.088724002 0.36367387 0.11914366 0.3636739 0.12394976 0.38964966 0.10525078 0.315483
		 0.10442019 0.22931814 0.16996926 0.24501745 0.14721914 0.23451325 0.15703399 0.24501745
		 0.16665982 0.31548288 0.14624418 0.31548288 0.14078598 0.24501745 0.13301913 0.23451325
		 0.079029121 0.31548288 0.064678751 0.23970839 0.1128202 0.31548288 0.036079377 0.31548288
		 0.058118589 0.31548288 0.11010083 0.22931816 0.11152752 0.23982233 0.10442019 0.22931814
		 0.049190678 0.23462716 0.10412937 0.23982233 0.12998575 0.36367387 0.10525078 0.315483
		 0.18787147 0.31548288 0.081996612 0.23462716 0.10412937 0.23982233 0.14352621 0.23451325
		 0.29670909 0.72654694 0.33393851 0.70084727 0.33276021 0.72682315 0.37947345 0.72876203
		 0.43243778 0.70278633 0.43353054 0.72876191 0.37955642 0.70278633 0.4728584 0.72876197
		 0.29820439 0.70245421 0.4728584 0.70278633 0.37966332 0.67161536 0.33978912 0.6456396
		 0.27688131 0.6593526 0.4728584 0.6456396 0.44314817 0.65602988 0.37715212 0.61446869
		 0.42276594 0.66486162 0.20167169 0.72804224 0.16831467 0.72953761 0.16713645 0.70356178
		 0.12657808 0.72876203 0.075928837 0.72876197 0.077021703 0.70278621 0.12649512 0.70278621
		 0.20316982 0.70466948 0.12638818 0.67161536 0.12123146 0.61446863 0.16200237 0.6456396
		 0.22150216 0.65713745 0.24260563 0.62485898 0.066311203 0.65602988 0.086693525 0.66486162
		 0.49319389 0.61446869 0.43613926 0.62485898 0.073320121 0.62485886 0.020525426 0.61532068
		 0.34193239 0.61446869 0.29445836 0.61187106 0.25577793 0.62485898 0.16837908 0.61446863
		 0.20392512 0.611871 0.23721215 0.60927343 0.2611714 0.60927349 0.1041019 0.61114591
		 0.0066692601 0.61532068 0.12182321 0.60782319 0.0066692601 0.61532068 0.0066692601
		 0.61532068 0.013597315 0.72961396 0.013597315 0.70363826 0.013597315 0.72961396 0.013597315
		 0.70363826 0.013597315 0.64649165 0.013597315 0.64649165 0.013597315 0.64649165 0.36120331
		 0.79326212 0.36120331 0.83428478 0.36120331 0.87028593 0.36120331 0.83428478 0.36120331
		 0.9357574 0.36120331 0.77632046 0.36120331 0.7453348 0.36120331 0.87028593 0.36120331
		 0.89188671 0.36120331 0.89188671 0.36120331 0.9357574 0.36120331 0.87028593 0.36120331
		 0.83428478 0.36120331 0.87028593 0.36120331 0.83428478 0.36120331 0.83428478 0.36120331
		 0.79326212 0.36120331 0.79326212 0.36120331 0.7453348 0.36120331 0.77632046 0.36120331
		 0.79326212 0.36120331 0.77632046;
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 872 ".vt";
	setAttr ".vt[0:165]"  1.041388512 0.20168069 1.68254948 1.11758828 0.22130226 1.61835861
		 1.015988111 0.2433842 1.61671281 0.54101086 0.018101573 1.61671782 0.48259115 0.043500751 1.51511621
		 0.71118808 -0.014622405 1.61671424 0.83818746 0.02746813 1.51511371 0.63498759 0.046349064 1.51511419
		 0.77468848 0.25350487 1.57438016 0.77468848 0.25350517 1.65904665 0.88898802 0.22273438 1.61671305
		 0.63499069 0.26049551 1.70815587 0.48259139 0.3229008 1.61671472 0.45719171 0.2721014 1.7691164
		 0.71118903 0.17050248 1.75133419 0.88898849 0.18705931 1.71059155 0.58419108 0.14398204 1.80213785
		 0.68070936 0.1679624 1.7665751 0.8889873 0.1867235 1.52283454 0.60958743 0.2424904 1.4799602
		 0.43179107 0.27210027 1.46431458 0.58419085 0.28379777 1.64211583 0.63498759 0.13947579 1.48971403
		 0.43179131 0.14510015 1.41351485 0.63499022 0.046349153 1.71831679 0.83818865 0.027468726 1.71831369
		 0.53339124 0.0041648299 1.61671782 0.48259115 -0.032698855 1.6167171 0.43179202 0.018101707 1.76911879
		 0.66039014 0.10203724 1.75895596 0.69086933 0.099382423 1.74371505 0.43179131 0.14510015 1.41351485
		 0.63498759 0.13947579 1.48971403 0.83818817 -0.023175985 1.61671376 0.86358833 0.14510266 1.72324896
		 0.99058795 0.050771415 1.69291329 1.041388512 0.09427686 1.71546817 0.99058747 0.050602585 1.54051328
		 0.99058795 0.0041656792 1.61671329 1.041388273 -0.013126642 1.66179132 1.041387796 0.094146565 1.51795781
		 1.041387796 0.040444046 1.53441763 1.041388035 -0.013256669 1.57163501 1.041387796 0.20155087 1.55087614
		 1.041387796 0.094146565 1.51795781 1.041388035 0.040575147 1.69900894 1.1429882 0.085880488 1.51604354
		 1.1429882 -0.02689293 1.54960155 1.24458838 0.077614486 1.5112493 1.14298844 0.19879134 1.68383098
		 1.24458861 0.19590203 1.68367887 1.14298844 0.22130212 1.65267038 1.24458861 0.19575927 1.54975271
		 1.14298844 -0.026756287 1.68383121 1.24458861 -0.040529117 1.54975367 1.14298892 0.086017311 1.71738887
		 1.24458885 0.07775782 1.72218275 1.24458885 -0.040385857 1.68367887 1.1429882 0.19865505 1.5496006
		 1.24458838 0.077614486 1.5112493 1.1429882 0.085880488 1.51604354 1.59764981 0.043398231 1.54067039
		 1.59765029 -0.039302215 1.56601763 1.59764981 0.043448567 1.69283247 1.59764934 0.12619944 1.66740608
		 1.59765077 -0.039202049 1.66740584 1.59764934 0.12609953 1.56601691 1.59764934 0.12609953 1.56601691
		 0.45719194 0.14510193 1.81991863 0.6603899 0.26049495 1.56591463 0.86358786 0.14493392 1.51017761
		 0.43179083 0.018100306 1.4643153 1.1429882 0.22130194 1.58235931 0.66039038 0.25157681 1.69291544
		 0.86358786 0.14493392 1.51017761 -1.041409373 0.20167767 1.68255186 -1.016010404 0.24338078 1.61671519
		 -1.11760914 0.22129928 1.618361 -0.54103041 0.018100426 1.61671853 -0.71121061 -0.014625743 1.61671567
		 -0.48261058 0.043498695 1.51511514 -0.8382107 0.027464867 1.51511574 -0.63501084 0.046345666 1.51511526
		 -0.77471054 0.25350168 1.57438159 -0.88901055 0.22273096 1.61671519 -0.77471054 0.25350189 1.65904832
		 -0.63500988 0.26049405 1.70815706 -0.45720947 0.27210101 1.7691164 -0.4826088 0.32290062 1.61671495
		 -0.88901055 0.18705592 1.71059346 -0.71121037 0.17049977 1.75133586 -0.58421028 0.14398071 1.80213833
		 -0.68073034 0.16796008 1.76657653 -0.88901067 0.18672007 1.52283645 -0.6096108 0.24248692 1.47996128
		 -0.58420968 0.28379691 1.64211679 -0.43180847 0.27210024 1.46431458 -0.63501084 0.13947237 1.4897151
		 -0.43180895 0.1451001 1.41351509 -0.63501048 0.046347186 1.71831799 -0.83821058 0.027465418 1.7183156
		 -0.53340995 0.0041638017 1.61671853 -0.48260927 -0.032699421 1.61671758 -0.6604104 0.10203508 1.75895762
		 -0.4318099 0.018101126 1.76911926 -0.69089031 0.09937986 1.74371648 -0.43180895 0.1451001 1.41351509
		 -0.63501084 0.13947237 1.4897151 -0.83821034 -0.023179248 1.61671567 -0.86361051 0.14509928 1.7232511
		 -0.99061036 0.050768077 1.69291568 -1.041409016 0.094273895 1.71547055 -0.99061036 0.0041623414 1.61671567
		 -0.99061036 0.050599217 1.54051566 -1.041409254 -0.013129637 1.66179347 -1.041409373 0.040441066 1.53442025
		 -1.041409135 0.094143629 1.51796031 -1.041409612 -0.013259664 1.57163739 -1.041409135 0.094143629 1.51796031
		 -1.041410685 0.20154767 1.55087852 -1.041409373 0.040572107 1.69901133 -1.14300883 0.085877821 1.51604629
		 -1.14300716 -0.026895285 1.54960442 -1.24460733 0.077612221 1.5112524 -1.14300883 0.19878861 1.68383408
		 -1.14300919 0.22129938 1.65267324 -1.24460864 0.19589952 1.68368196 -1.24460816 0.19575687 1.54975581
		 -1.1430068 -0.026758641 1.68383408 -1.24460542 -0.040531114 1.54975677 -1.14300907 0.086014539 1.71739197
		 -1.24460852 0.077755347 1.72218585 -1.24460542 -0.040387854 1.6836822 -1.14300895 0.19865236 1.54960346
		 -1.24460733 0.077612221 1.5112524 -1.14300883 0.085877821 1.51604629 -1.59766388 0.043396518 1.54067445
		 -1.5976634 -0.039304033 1.56602216 -1.59766388 0.043446928 1.69283676 -1.59766424 0.1261978 1.66741014
		 -1.59766293 -0.039203599 1.66741037 -1.59766424 0.12609783 1.56602144 -1.59766424 0.12609783 1.56602144
		 -0.45721006 0.14510123 1.81991863 -0.66040945 0.26049364 1.56591582 -0.86361051 0.14493054 1.5101794
		 -0.43180871 0.018100291 1.46431553 -1.14300907 0.22129923 1.58236194 -0.66040993 0.2515749 1.69291663
		 -0.86361051 0.14493054 1.5101794 0.15343094 0.10856569 -1.96469402 0.13793468 0.28568876 -1.96469402
		 0.24705577 0.32073262 -1.96469402 0.44947815 -0.069510624 -1.9646945 0.14330769 -0.096296921 -1.9646945
		 0.15785861 0.05795899 -1.9138937 0.37610054 0.12804641 -1.96469378 0.40836143 0.079874888 -1.9138937
		 0.16784644 0.135324 -1.65988922 0.18739462 0.2848587 -1.65988898 0.13572049 0.31099224 -1.81229043
		 0.15785861 0.05795899 -1.9138937 0.22554016 -0.39506614 -1.86309457 0.32074428 -0.36123997 -1.81229448
		 0.22111273 -0.34445971 -1.83769464 0.32627845 -0.42449814 -1.86309409;
	setAttr ".vt[166:331]" 0.42037582 -0.37802017 -1.86309433 0.19897461 -0.091426149 -1.76149321
		 0.14324307 -0.22378711 -1.88849449 0.14330769 -0.096296921 -1.9646945 0.14324331 -0.22378714 -1.96469474
		 0.24484086 0.34603617 -1.78688884 0.33498335 0.29777098 -1.68528891 0.35838985 0.33047333 -1.81228995
		 0.24926877 0.3157692 -1.65988898 0.18739462 0.2848587 -1.65988898 0.35838985 0.33047333 -1.81228995
		 0.37388587 0.15334982 -1.68528938 0.40836143 0.079874888 -1.9138937 0.33498335 0.29777098 -1.68528891
		 0.39381027 -0.074380234 -1.76149344 0.35712099 0.024397895 -1.68529058 0.4716804 -0.19505264 -1.9646945
		 0.14324331 -0.22378714 -1.96469474 0.28468943 -0.10942407 -1.73609304 0.20953274 0.011485502 -1.65989065
		 0.19897461 -0.091426149 -1.76149321 0.35712099 0.024397895 -1.68529058 0.39381027 -0.074380234 -1.76149344
		 0.14330769 -0.096296415 -1.88849473 0.20953274 0.011485502 -1.65989065 0.4716804 -0.19505264 -1.88849401
		 0.44947791 -0.069510117 -1.88849449 0.44947815 -0.069510624 -1.9646945 0.30493093 -0.26063538 -1.81229448
		 0.19327903 -0.3468948 -1.9646945 0.21225762 -0.24324633 -1.83769464 0.32627845 -0.42449844 -1.9392941
		 0.22554016 -0.3933844 -1.94945455 0.42037582 -0.37633848 -1.94945431 0.19327903 -0.3468948 -1.9646945
		 0.42037582 -0.37633848 -1.94945431 0.44378209 -0.32497865 -1.96469402 0.40709329 -0.22620015 -1.83769464
		 0.13572097 0.31099212 -1.91389394 0.13793468 0.28568876 -1.96469402 0.15343094 0.10856569 -1.96469402
		 0.24705577 0.32073262 -1.96469402 0.24484181 0.34603596 -1.91389298 0.35839009 0.33047318 -1.91389298
		 0.13793468 0.28568876 -1.96469402 0.13572097 0.31099212 -1.91389394 0.36060405 0.30516976 -1.96469402
		 0.37610054 0.12804641 -1.96469378 0.35839009 0.33047318 -1.91389298 0.21225762 -0.24324633 -1.83769464
		 0.22111273 -0.34445971 -1.83769464 0.32074428 -0.36123997 -1.81229448 0.44378209 -0.32497865 -1.96469402
		 0.32627845 -0.42449844 -1.9392941 0.41594839 -0.32741374 -1.83769464 0.4716804 -0.19505264 -1.9646945
		 0.22554016 -0.3933844 -1.94945455 0.36060405 0.30516976 -1.96469402 0.36060405 0.30516976 -1.96469402
		 0.13572049 0.31099224 -1.81229043 0.27583385 -0.0082106143 -1.65989065 0.40709329 -0.22620015 -1.83769464
		 0.41594839 -0.32741374 -1.83769464 -0.15344882 0.10856558 -1.96469402 -0.24707341 0.32073253 -1.96469402
		 -0.13795257 0.28568858 -1.9646945 -0.44949579 -0.069510922 -1.96469402 -0.15787625 0.057959124 -1.91389346
		 -0.14332533 -0.096297219 -1.9646945 -0.37611818 0.12804633 -1.96469331 -0.40837932 0.079875007 -1.91389346
		 -0.17994714 0.13417459 -1.57260561 -0.13573742 0.31099364 -1.81229043 -0.18741131 0.28486085 -1.65988851
		 -0.15787625 0.057959124 -1.91389346 -0.22555757 -0.3950662 -1.86309433 -0.22113013 -0.34445983 -1.83769464
		 -0.32076192 -0.36124027 -1.81229448 -0.42039347 -0.37802052 -1.86309433 -0.32629609 -0.42449844 -1.86309409
		 -0.19899201 -0.09142603 -1.76149321 -0.14326048 -0.22378744 -1.88849401 -0.14326048 -0.22378744 -1.9646945
		 -0.14332533 -0.096297219 -1.9646945 -0.24485826 0.3460381 -1.78688884 -0.35840654 0.330475 -1.81228948
		 -0.33500028 0.29777315 -1.68528867 -0.24928546 0.32684842 -1.65988827 -0.18741131 0.28486085 -1.65988851
		 -0.35840654 0.330475 -1.81228948 -0.40837932 0.079875007 -1.91389346 -0.3739028 0.15335169 -1.68528938
		 -0.33500028 0.29777315 -1.68528867 -0.39382768 -0.074380025 -1.76149321 -0.35713816 0.02439931 -1.68528962
		 -0.47169793 -0.19505297 -1.9646945 -0.14326048 -0.22378744 -1.9646945 -0.28470707 -0.10942389 -1.73609281
		 -0.19899201 -0.09142603 -1.76149321 -0.20954943 0.011486903 -1.65989041 -0.35713816 0.02439931 -1.68528962
		 -0.39382768 -0.074380025 -1.76149321 -0.14332509 -0.096296653 -1.88849449 -0.20954943 0.011486903 -1.65989041
		 -0.44949567 -0.069510326 -1.88849425 -0.47169793 -0.19505297 -1.88849401 -0.44949579 -0.069510922 -1.96469402
		 -0.30494857 -0.26063573 -1.81229401 -0.19329643 -0.3468951 -1.9646945 -0.21227503 -0.24324663 -1.83769464
		 -0.32629609 -0.42449868 -1.93929434 -0.42039347 -0.37633884 -1.94945431 -0.2255578 -0.39338475 -1.94945455
		 -0.19329643 -0.3468951 -1.9646945 -0.42039347 -0.37633884 -1.94945431 -0.44379961 -0.32497901 -1.96469402
		 -0.40711093 -0.22620048 -1.83769464 -0.13795257 0.28568858 -1.9646945 -0.13573861 0.31099224 -1.91389346
		 -0.15344882 0.10856558 -1.96469402 -0.24707341 0.32073253 -1.96469402 -0.3584075 0.33047348 -1.91389298
		 -0.24485946 0.34603631 -1.91389227 -0.13573861 0.31099224 -1.91389346 -0.13795257 0.28568858 -1.9646945
		 -0.36062169 0.30516964 -1.96469355 -0.37611818 0.12804633 -1.96469331 -0.3584075 0.33047348 -1.91389298
		 -0.21227503 -0.24324663 -1.83769464 -0.32076192 -0.36124027 -1.81229448 -0.22113013 -0.34445983 -1.83769464
		 -0.44379961 -0.32497901 -1.96469402 -0.32629609 -0.42449868 -1.93929434 -0.4159658 -0.32741386 -1.83769393
		 -0.47169793 -0.19505297 -1.9646945 -0.2255578 -0.39338475 -1.94945455 -0.36062169 0.30516964 -1.96469355
		 -0.36062169 0.30516964 -1.96469355 -0.13573742 0.31099364 -1.81229043 -0.27585077 -0.0082092434 -1.65989041
		 -0.40711093 -0.22620048 -1.83769464 -0.4159658 -0.32741386 -1.83769393 -1.70941925 -0.0072991848 1.68021631
		 -1.81351972 -0.10462676 1.60353303 -1.70942032 -0.032699451 1.61671638 -1.70942056 0.11594912 1.61671567
		 -1.80089366 0.13248241 1.59174705 -1.86438048 0.13992456 1.63465667 -1.87356043 0.12365576 1.66295314
		 -1.70941925 0.094300807 1.68021607 -1.93797302 -0.038104072 1.67932081 -1.89099467 0.014116168 1.69164848
		 -1.96344125 0.12887263 1.62230587 -1.94561017 0.013978392 1.67388701 -1.70942092 0.11594896 1.56591582
		 -1.83637011 -0.076651677 1.65415049 -1.98877299 -0.057442859 1.66168904 -2.054845095 -0.055379406 1.56517434
		 -2.0167377 -0.066253647 1.57793665 -2.014187813 -0.068770275 1.61097407 -2.017205477 -0.022797897 1.51413822
		 -2.028420687 -0.042090133 1.50157332 -2.039631844 -0.028342903 1.50656319 -2.039623499 -0.055774376 1.50675082
		 -2.054853439 -0.027947992 1.56498694 -1.98878443 -0.019038901 1.66142654;
	setAttr ".vt[332:497]" -1.93798566 -0.14058752 1.55047846 -1.93544066 -0.13792534 1.56823993
		 -1.92529273 -0.11263354 1.55187058 -1.89226949 -0.089549497 1.58313537 -1.87450457 -0.087299839 1.53993297
		 -1.89228678 -0.089914277 1.5297966 -1.87448883 -0.08696942 1.58819199 -1.84909153 -0.063287273 1.60326195
		 -1.85162222 -0.11237092 1.58708811 -1.89479876 -0.13022403 1.57833409 -1.89481115 -0.13048442 1.54023504
		 -1.81351972 -0.10462676 1.60353303 -1.84909153 -0.063287273 1.60326195 -1.87448883 -0.08696942 1.58819199
		 -1.84909153 -0.063287273 1.60326195 -1.96339273 -0.055091605 1.60324335 -2.0167377 -0.066253647 1.57793665
		 -2.016752958 -0.016877264 1.57759905 -2.016752958 -0.016877264 1.57759905 -2.017194033 -0.061201856 1.5144006
		 -2.02437973 0.013306975 1.57883573 -2.014203787 -0.013907596 1.61059856 -1.93805349 0.13055734 1.58672523
		 -1.82625389 -0.063732103 1.53721595 -1.80089366 0.13248241 1.59174705 -1.70942092 0.11594896 1.56591582
		 -1.9736346 0.12817487 1.52071166 -1.95584869 0.12278073 1.53344297 -1.9228375 0.11562078 1.50046039
		 -1.97607887 -0.068602607 1.63382077 -1.96339273 -0.055091605 1.60324335 -1.84909153 -0.063287273 1.60326195
		 -1.96340513 -0.013944551 1.60296202 -2.017194033 -0.061201856 1.5144006 -2.044667482 -0.054994091 1.62104988
		 -1.89226949 -0.089549497 1.58313537 -1.89479876 -0.13022403 1.57833409 -1.85162222 -0.11237092 1.58708811
		 -1.82625389 -0.063732103 1.53721595 -1.81353807 -0.10500903 1.54765439 -1.87450457 -0.087299839 1.53993297
		 -1.81351972 -0.10462676 1.60353303 -1.81353807 -0.10500903 1.54765439 -1.70942032 -0.032699451 1.61671638
		 -1.70942068 -0.03269963 1.56591654 -1.59766388 0.043396518 1.54067445 -1.5976634 -0.039304033 1.56602216
		 -2.0078799725 0.042468205 1.57863283 -1.93295598 -0.008908689 1.49115491 -1.97867942 -0.00085870922 1.51143539
		 -1.98883867 -0.014646888 1.50137269 -2.010436296 0.012726218 1.4910326 -1.98883867 -0.014646888 1.50137269
		 -1.92537403 0.081278056 1.48037553 -1.93043292 0.031830087 1.47563517 -1.96212268 0.064720601 1.47542071
		 -2.0027492046 0.041904092 1.49591064 -1.96980286 0.012564018 1.47069967 -1.93295598 -0.008908689 1.49115491
		 -1.98633456 0.1102012 1.50559855 -1.95205069 0.10871855 1.4852767 -1.98885095 0.11208647 1.57824087
		 -2.044675112 -0.027562872 1.62086248 -1.93805349 0.13055734 1.58672523 -1.95584869 0.12278073 1.53344297
		 -1.89228678 -0.089914277 1.5297966 -1.85163546 -0.11264877 1.54644895 -1.93544066 -0.13792534 1.56823993
		 -1.93798566 -0.14058752 1.55047846 -1.93545222 -0.13816841 1.53268075 -1.93544066 -0.13792534 1.56823993
		 -1.93545222 -0.13816841 1.53268075 -2.017205477 -0.022797897 1.51413822 -2.028420687 -0.042090133 1.50157332
		 -1.92537403 0.081278056 1.48037553 -1.93043292 0.031830087 1.47563517 -1.9228375 0.11562078 1.50046039
		 -1.82625389 -0.063732103 1.53721595 -1.81351972 -0.10462676 1.60353303 -1.59766424 0.12609783 1.56602144
		 -1.59766424 0.1261978 1.66741014 -1.59766293 -0.039203599 1.66741037 -1.59766388 0.043446928 1.69283676
		 -1.70942068 -0.03269963 1.56591654 -1.5976634 -0.039304033 1.56602216 -1.59766424 0.12609783 1.56602144
		 1.70941424 -0.0072968453 1.68021178 1.70941424 -0.032697096 1.61671185 1.81351733 -0.10462372 1.60352778
		 1.70941234 0.11595148 1.61671185 1.86437917 0.13992779 1.6346519 1.80088925 0.1324854 1.59174252
		 1.70941424 0.094303131 1.68021178 1.87355924 0.12365897 1.66294813 1.93797231 -0.038100705 1.67931533
		 1.89099383 0.014119431 1.69164324 1.94560933 0.013981879 1.67388153 1.9634397 0.12887633 1.62230062
		 1.70941234 0.11595142 1.56591177 1.8363688 -0.076648608 1.65414524 1.98877215 -0.057439014 1.66168356
		 2.054844618 -0.055374995 1.56516862 2.014187098 -0.06876637 1.61096811 2.016737223 -0.066249475 1.57793093
		 2.017204523 -0.02279368 1.5141325 2.039630651 -0.028338596 1.5065577 2.028419733 -0.042085692 1.50156784
		 2.054852724 -0.027943745 1.56498122 2.039622068 -0.055769965 1.50674522 1.9887836 -0.019035161 1.6614213
		 1.93798518 -0.14058386 1.55047274 1.92529225 -0.11262991 1.55186534 1.9354403 -0.13792168 1.56823421
		 1.89226842 -0.089545861 1.58312964 1.89228606 -0.089910641 1.52979112 1.8745029 -0.087296501 1.53992772
		 1.84908891 -0.063283995 1.6032567 1.87448716 -0.086966053 1.5881865 1.85162091 -0.11236756 1.58708286
		 1.89481044 -0.13048078 1.54022956 1.89479804 -0.13022043 1.57832885 1.81351733 -0.10462372 1.60352778
		 1.87448716 -0.086966053 1.5881865 1.84908891 -0.063283995 1.6032567 1.84908891 -0.063283995 1.6032567
		 1.96339202 -0.05508773 1.60323787 2.016752005 -0.016873181 1.57759333 2.016737223 -0.066249475 1.57793093
		 2.016752005 -0.016873181 1.57759333 2.017193079 -0.061197683 1.51439524 2.024378538 0.013311088 1.57883048
		 2.01420331 -0.013903618 1.61059308 1.93805194 0.13056102 1.58672047 1.82624936 -0.063728884 1.5372107
		 1.70941234 0.11595142 1.56591177 1.80088925 0.1324854 1.59174252 1.97363305 0.12817889 1.52070677
		 1.95584702 0.12278461 1.53343797 1.92283607 0.11562465 1.50045538 1.97607827 -0.068598732 1.63381529
		 1.96339202 -0.05508773 1.60323787 1.96340442 -0.013940796 1.60295653 1.84908891 -0.063283995 1.6032567
		 2.017193079 -0.061197683 1.51439524 2.044666529 -0.054990157 1.62104416 1.89226842 -0.089545861 1.58312964
		 1.85162091 -0.11236756 1.58708286 1.89479804 -0.13022043 1.57832885 1.82624936 -0.063728884 1.5372107
		 1.8745029 -0.087296501 1.53992772 1.81353545 -0.10500576 1.54764915 1.81351733 -0.10462372 1.60352778
		 1.70941424 -0.032697096 1.61671185 1.81353545 -0.10500576 1.54764915 1.70941281 -0.032697156 1.56591177
		 1.59765029 -0.039302215 1.56601763 1.59764981 0.043398231 1.54067039 2.0078785419 0.042472214 1.57862759
		 1.93295455 -0.00890477 1.4911499 1.98883748 -0.014642745 1.50136733 1.97867799 -0.0008546561 1.51143026
		 2.010434866 0.012730479 1.49102712 1.98883748 -0.014642745 1.50136733 1.92537236 0.08128196 1.48037052
		 1.96212125 0.064724699 1.47541547 1.9304316 0.031834036 1.47563004;
	setAttr ".vt[498:663]" 2.0027477741 0.041908279 1.4959054 1.93295455 -0.00890477 1.4911499
		 1.96980119 0.012568146 1.47069442 1.98633313 0.1102053 1.5055933 1.95204902 0.10872254 1.48527169
		 1.9888494 0.1120904 1.57823563 2.044674635 -0.027558789 1.62085676 1.93805194 0.13056102 1.58672047
		 1.95584702 0.12278461 1.53343797 1.89228606 -0.089910641 1.52979112 1.85163426 -0.11264519 1.54644346
		 1.9354403 -0.13792168 1.56823421 1.93798518 -0.14058386 1.55047274 1.93545175 -0.13816451 1.53267503
		 1.9354403 -0.13792168 1.56823421 1.93545175 -0.13816451 1.53267503 2.017204523 -0.02279368 1.5141325
		 2.028419733 -0.042085692 1.50156784 1.92537236 0.08128196 1.48037052 1.9304316 0.031834036 1.47563004
		 1.92283607 0.11562465 1.50045538 1.82624936 -0.063728884 1.5372107 1.81351733 -0.10462372 1.60352778
		 1.59764934 0.12609953 1.56601691 1.59764934 0.12619944 1.66740608 1.59765077 -0.039202049 1.66740584
		 1.59764981 0.043448567 1.69283247 1.70941281 -0.032697156 1.56591177 1.59765029 -0.039302215 1.56601763
		 1.59764934 0.12609953 1.56601691 0.38099003 -0.058103696 -0.79628545 0.38784814 -0.032703593 -0.6692856
		 0.25398993 -0.10890369 -0.79628581 -0.0050885677 0.11969838 0.21971083 0.025391102 -0.20034133 0.27051058
		 -0.02540803 -0.20034169 0.27050853 0.0050711632 0.11969843 0.21971112 0.025390863 0.39909902 0.21971095
		 0.0050711632 0.11969843 0.21971112 -0.0050885677 0.11969838 0.21971083 -0.02540803 0.39909858 0.21970868
		 -9.059906e-006 0.42449874 0.37211096 -9.059906e-006 -0.21050139 0.42291081 0.040292501 0.34829974 0.11811453
		 0.019972801 0.1069995 0.092713594 0.17778945 0.36099976 0.11811438 0.33018947 0.34829965 0.27051449
		 0.34509206 0.29749972 0.14351454 0.40638947 0.11969952 0.21971449 0.04029417 -0.1597013 0.19431001
		 0.019972801 0.1069995 0.092713594 0.12013197 -0.032703623 -0.66928524 0.20319009 -0.10890369 -0.69468552
		 0.086842775 0.29749978 -0.16128528 0.23808956 0.32289979 -0.16128552 0.031855345 0.094299719 -0.13588524
		 0.3450923 -0.1089005 0.21971452 0.39418268 -0.10890035 -0.13588572 0.4329164 0.094299704 -0.13588524
		 0.17778945 -0.17240052 0.20701429 0.23808956 -0.15970035 -0.13588536 0.39418268 0.29749981 -0.16128552
		 0.086842537 -0.10890035 -0.13588572 0.031855345 0.094299719 -0.13588524 0.25398946 0.27209842 -0.59308535
		 0.1269896 0.24669838 -0.59308547 0.076189756 0.056197062 -0.56768554 0.43178964 0.056198388 -0.56768554
		 0.38098979 -0.083502576 -0.5422855 0.2539897 -0.13430257 -0.5422855 0.12698984 -0.083502904 -0.5422855
		 0.076189756 0.056197062 -0.56768554 0.38098955 0.24669839 -0.59308547 0.12699008 0.24669656 -0.79628545
		 0.25398993 0.27209678 -0.79628545 0.08378458 0.068896517 -0.66928548 0.076189995 0.094296649 -0.79628581
		 0.12699008 -0.058103696 -0.79628545 0.30478954 -0.1089014 -0.69468552 0.08378458 0.068896517 -0.66928548
		 0.38098979 0.24669713 -0.79628545 0.42419529 0.068896919 -0.66928548 0.43179011 0.094296589 -0.79628545
		 0.10436392 0.11992055 -1.20268488 0.16937423 0.11757437 -1.60023928 0.18673897 0.012468472 -1.57484055
		 0.15513396 -0.031513169 -1.52978659 0.27709365 -0.061950848 -1.52978706 0.2793901 -0.10348411 -1.20268559
		 0.42371321 -0.067191824 -1.20268536 0.39905381 -0.031512961 -1.5297873 0.35245061 0.012468651 -1.57484031
		 0.42371321 0.31245655 -1.20268559 0.35245037 0.27425855 -1.6256392 0.27939105 0.31056002 -1.6256392
		 0.27709317 0.31649625 -1.58058453 0.45441651 0.11992006 -1.20268559 0.18673849 0.27425858 -1.6256392
		 0.27939057 0.34874883 -1.20268559 0.13506722 0.31245655 -1.20268536 0.36981487 0.1175741 -1.60023904
		 0.42480373 0.12488215 -1.55518532 0.16937423 0.11757437 -1.60023928 0.12938261 0.12488254 -1.55518484
		 0.15513325 0.2860584 -1.58058476 0.10436392 0.11992055 -1.20268488 0.076189995 0.094296649 -0.79628581
		 0.20953274 0.011485502 -1.65989065 0.16784644 0.135324 -1.65988922 0.35712099 0.024397895 -1.68529058
		 0.27583385 -0.0082106143 -1.65989065 0.26959467 -0.0080567449 -1.57484031 0.24926877 0.3157692 -1.65988898
		 0.33498335 0.29777098 -1.68528891 0.37388587 0.15334982 -1.68528938 0.18739462 0.2848587 -1.65988898
		 0.16784644 0.135324 -1.65988922 0.13506722 -0.067191795 -1.20268559 0.39905334 0.28605837 -1.580585
		 0.12938261 0.12488254 -1.55518484 -0.38100672 -0.058101401 -0.7962907 -0.25400662 -0.10890137 -0.79629093
		 -0.38786507 -0.032701418 -0.66929156 -0.0050885677 0.11969838 0.21971083 -0.040310383 0.34829831 0.11810684
		 -0.02540803 0.39909858 0.21970868 -0.019990683 0.10699823 0.092707276 -0.17780685 0.36099803 0.11810538
		 -0.34511018 0.29749802 0.1435056 -0.33020711 0.34829807 0.27050677 -0.40640712 0.11969798 0.21970659
		 -0.040310621 -0.15970184 0.19430709 -0.019990683 0.10699823 0.092707276 -0.0050885677 0.11969838 0.21971083
		 -0.02540803 -0.20034169 0.27050853 -0.12014866 -0.032701388 -0.66929132 -0.20320678 -0.10890152 -0.69469172
		 -0.086860418 0.29749805 -0.16129476 -0.23810697 0.32289806 -0.16129476 -0.031872988 0.09429802 -0.1358946
		 -0.39420033 -0.10890208 -0.13589495 -0.34511018 -0.10890208 0.219706 -0.43293405 0.094297975 -0.13589472
		 -0.23810673 -0.15970208 -0.13589472 -0.17780709 -0.17240207 0.20700571 -0.39420033 0.29749808 -0.16129476
		 -0.08686018 -0.10890208 -0.13589495 -0.031872988 0.09429802 -0.1358946 -0.25400686 0.2720986 -0.59309155
		 -0.12700677 0.24669862 -0.59309143 -0.076206923 0.056198359 -0.56769234 -0.43180704 0.056198359 -0.56769258
		 -0.38100696 -0.083501771 -0.54229289 -0.25400686 -0.13430174 -0.54229289 -0.12700701 -0.083501711 -0.54229277
		 -0.076206923 0.056198359 -0.56769234 -0.38100672 0.24669857 -0.59309155 -0.12700677 0.24669951 -0.79628688
		 -0.25400639 0.27209949 -0.79628688 -0.08380127 0.068898842 -0.66929156 -0.076206684 0.094299838 -0.79628664
		 -0.12700677 -0.058101341 -0.79629093 -0.30480671 -0.10890155 -0.69469196 -0.08380127 0.068898842 -0.66929156
		 -0.38100648 0.24669935 -0.7962876 -0.4318068 0.094298691 -0.7962907;
	setAttr ".vt[664:829]" -0.42421222 0.068898529 -0.66929179 -0.10438037 0.11992403 -1.20268488
		 -0.17185783 0.13009439 -1.62396312 -0.15722895 -0.021988109 -1.54720783 -0.18895411 0.026613936 -1.59856439
		 -0.27213335 -0.050665215 -1.54720807 -0.27940679 -0.1034805 -1.20268559 -0.42372966 -0.067188218 -1.20268536
		 -0.38703799 -0.021988153 -1.54720783 -0.35210228 0.02661401 -1.59856415 -0.42372966 0.31246012 -1.20268559
		 -0.3521018 0.25724018 -1.6493628 -0.2721324 0.30588976 -1.57316208 -0.27052784 0.32012457 -1.6742065
		 -0.45443273 0.11992354 -1.20268559 -0.1889534 0.25724018 -1.6742065 -0.13508368 0.31246012 -1.20268536
		 -0.27940679 0.34875238 -1.20268559 -0.36919761 0.13009399 -1.62396336 -0.41129804 0.12536024 -1.57260633
		 -0.17185783 0.13009439 -1.62396312 -0.15722847 0.27721247 -1.59800553 -0.13296771 0.12536061 -1.57260633
		 -0.076206684 0.094299838 -0.79628664 -0.10438037 0.11992403 -1.20268488 -0.20954943 0.011486903 -1.65989041
		 -0.17994714 0.13417459 -1.57260561 -0.35713816 0.02439931 -1.68528962 -0.27585077 -0.0082092434 -1.65989041
		 -0.27052784 0.0064063668 -1.59856391 -0.24928546 0.32684842 -1.65988827 -0.33500028 0.29777315 -1.68528867
		 -0.3739028 0.15335169 -1.68528938 -0.18741131 0.28486085 -1.65988851 -0.17994714 0.13417459 -1.57260561
		 -0.13508368 -0.067188218 -1.20268559 -0.38703704 0.27721241 -1.59800577 -0.13296771 0.12536061 -1.57260633
		 -8.5830688e-006 -0.21050198 0.77850586 0.28777313 -0.15970175 0.65150726 0.27939105 -0.15970178 0.77850676
		 0.3555913 0.094298244 0.77850509 0.28777289 0.29749826 0.65150785 0.27939153 0.29749817 0.77850056
		 0.3662591 0.094298258 0.65150779 -8.5830688e-006 0.33559835 0.77850282 -8.5830688e-006 0.37370104 1.74371409
		 -8.5830688e-006 0.33560127 1.80721474 0.16509175 0.32290131 1.80721545 -8.8214874e-006 -0.2105016 0.65150774
		 -8.8214874e-006 0.3482984 0.65150821 0.1523912 -0.22066019 1.32207584 -8.8214874e-006 -0.25114077 1.15951443
		 0.13767791 -0.23844071 1.13410378 -8.3446503e-006 -0.240981 1.057897687 0.28222466 -0.18002121 0.97052813
		 0.13570952 -0.21050097 1.083298445 0.40451789 0.29750004 1.38811433 0.41458297 0.3737005 1.56591415
		 0.48259139 0.3229008 1.61671472 0.35852313 0.34829992 1.33731437 -8.5830688e-006 0.37369913 1.08329916
		 -8.8214874e-006 0.39909992 1.33731413 0.30809355 0.31019872 0.93089849 -8.5830688e-006 0.33051842 0.85470206
		 0.34670138 -0.17747946 1.5405159 0.35559154 -0.15080972 1.43891549 0.48259115 -0.032698855 1.6167171
		 0.40004134 -0.032699928 1.38811541 0.43179083 0.018100306 1.4643153 0.33679557 0.3228991 1.083300114
		 0.15239286 0.10446201 1.83770132 0.15239263 0.018101752 1.74372029 0.2539928 0.14510196 1.81992054
		 -8.5830688e-006 0.2975015 1.87071609 0.13500094 0.29750153 1.87071586 0.12953162 0.10533337 1.88622785
		 0.076191425 -0.007298857 1.77927542 0.35762334 0.34830096 1.71831441 -8.5830688e-006 0.40926057 1.56591415
		 0.22859144 -0.24351995 1.41351593 -8.3446503e-006 -0.24098025 1.33731592 0.22859144 -0.23208998 1.36271584
		 0.33019185 0.24670163 1.84531713 0.45719194 0.14510193 1.81991863 0.45719171 0.2721014 1.7691164
		 0.43179107 0.27210027 1.46431458 0.41909122 0.14509985 1.31191468 0.3085897 -0.18764074 1.057898045
		 0.34961534 0.1196987 0.92219812 0.43179202 0.018101707 1.76911879 0.30479145 -0.19875248 1.41351593
		 0.27939153 -0.21303998 1.38049591 -8.5830688e-006 0.27972162 1.92151546 0.12699223 0.24670178 1.92151761
		 0.30479217 -0.058098689 1.73736787 -8.5830688e-006 0.2644816 1.96469498 0.15239286 0.10446201 1.83770132
		 0.2539928 0.14510196 1.81992054 0.27939248 0.1705019 1.84531951 0.27939248 0.1705019 1.84531951
		 0.076192141 -0.032698557 1.71831846 0.025391579 -0.089848891 1.69799638 0.40639138 -0.075878993 1.69291687
		 0.10819578 0.23908176 1.94945669 0.12953162 0.10533337 1.88622785 0.1860466 -0.20287944 1.55321598
		 -9.2983246e-006 -0.032698736 1.76911783 -8.5830688e-006 -0.19017945 1.55321598 0.02539134 -0.20287944 1.56591582
		 0.38099003 0.094299063 0.49911433 0.31748962 -0.13430075 0.37211448 -9.059906e-006 -0.21050139 0.42291081
		 -9.059906e-006 0.42449874 0.37211096 0.30478954 0.37369937 0.42291451 0.40638947 0.11969952 0.21971449
		 0.33018994 0.27209917 0.46609452 -8.5830688e-006 -0.21050198 0.77850586 -0.27940845 -0.15970199 0.77850568
		 -0.2877903 -0.15970199 0.65150583 -0.35560846 0.094298124 0.77850461 -0.27940869 0.29749811 0.77850449
		 -0.2877903 0.29749799 0.65150642 -0.36627626 0.09429799 0.6515063 -0.35764074 0.34830099 1.71831465
		 -0.16510916 0.32290128 1.80721545 -8.8214874e-006 -0.2105016 0.65150774 -0.38100767 0.09429799 0.49910846
		 -0.40640712 0.11969798 0.21970659 -0.31750751 -0.13430209 0.37210745 -0.1379807 -0.23844074 1.13410378
		 -0.15240884 -0.22066019 1.32207584 -0.29210877 -0.17748024 1.35255527 -8.8214874e-006 -0.25114077 1.15951443
		 -8.3446503e-006 -0.24098025 1.33731592 -0.34963179 0.1196987 0.92219818 -0.33681226 0.32289913 1.083300114
		 -0.30811048 0.31019866 0.93089849 -0.41460013 0.37370059 1.56591439 -0.4826088 0.32290062 1.61671495
		 -0.35854101 0.34830001 1.33731437 -0.40005851 -0.032699957 1.38811564 -0.48260927 -0.032699421 1.61671758
		 -0.43180871 0.018100291 1.46431553 -0.41910911 0.14509985 1.31191492 -0.30860639 -0.18764074 1.057898045
		 -0.15241075 0.10446163 1.83770084 -0.25401044 0.14510161 1.81992078 -0.15241027 0.018101349 1.74372029
		 -0.076208591 -0.0072988272 1.77927542 -0.35560846 -0.15080999 1.43891585 -0.30480862 -0.19875298 1.41351593
		 -0.34671855 -0.17747973 1.5405159 -0.33020926 0.2467016 1.84531713 -0.45720947 0.27210101 1.7691164
		 -0.45721006 0.14510123 1.81991863 -0.40453529 0.29750007 1.38811469 -0.43180895 0.1451001 1.41351509
		 -0.4318099 0.018101126 1.76911926 -0.27941012 0.17050162 1.84531951 -8.5830688e-006 -0.19017945 1.55321598
		 -0.012708664 -0.23843996 1.38811588 -0.13501835 0.29750144 1.87071633 -0.30480933 -0.058099076 1.73736787
		 -0.40640926 -0.075879142 1.69291735 -0.12700963 0.24670163 1.92151761;
	setAttr ".vt[830:871]" -0.15241075 0.10446163 1.83770084 -0.25401044 0.14510161 1.81992078
		 -0.45721006 0.14510123 1.81991863 -0.076209307 -0.032698825 1.71831846 -0.27941012 0.17050162 1.84531951
		 -0.025408745 -0.089848891 1.69799638 -0.43180847 0.27210024 1.46431458 -0.10821247 0.23908153 1.94945502
		 -0.12954831 0.10533338 1.88622808 -0.12954831 0.10533338 1.88622808 -8.5830688e-006 -0.032698557 1.76911926
		 -0.18606353 -0.20287944 1.55321598 -9.059906e-006 -0.21050139 0.42291081 -0.02540803 -0.20034169 0.27050853
		 -0.30480742 0.373698 0.42290744 -0.33020759 0.27209798 0.46608844 0.025390863 0.39909902 0.21971095
		 0.33018947 0.34829965 0.27051449 -0.33020711 0.34829807 0.27050677 -0.02540803 0.39909858 0.21970868
		 0.3450923 -0.1089005 0.21971452 0.17778945 -0.17240052 0.20701429 0.025391102 -0.20034133 0.27051058
		 -0.34511018 -0.10890208 0.219706 -0.17780709 -0.17240207 0.20700571 -0.040310621 -0.15970184 0.19430709
		 0.04029417 -0.1597013 0.19431001 0.43179131 0.14510015 1.41351485 -0.28224158 -0.18002124 0.97052813
		 0.29591441 -0.180021 1.0070974827 0.45719194 0.14510193 1.81991863 0.29209089 -0.17747997 1.35255563
		 -8.3446503e-006 -0.240981 1.057897687 -8.5830688e-006 -0.067624107 1.6827569 -8.5830688e-006 -0.067624107 1.6827569
		 -0.025408506 -0.20287944 1.56591582 0.012691259 -0.23843996 1.38811588 -0.22860861 -0.24351992 1.41351616
		 -0.22860861 -0.23208998 1.3627162 -0.27940869 -0.21304096 1.38049579 -0.29593039 -0.180021 1.0070974827
		 -0.1379807 -0.2105007 1.083298445;
	setAttr -s 2065 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 0 1 3 4 1 4 5 1 5 3 1 6 5 1 5 7 1 7 6 1
		 8 9 1 9 10 1 10 8 1 11 12 1 12 13 0 13 11 1 9 14 1 14 15 1 15 9 1 16 17 1 17 13 1
		 13 16 1 10 18 1 18 8 1 19 20 1 20 21 1 21 19 1 7 22 1 22 6 1 7 23 1 23 22 0 24 5 1
		 5 25 1 25 24 1 26 24 1 24 27 1 27 26 1 16 28 1 28 29 1 29 16 1 25 30 1 30 24 1 31 19 1
		 19 32 1 32 31 0 31 20 0 33 5 1 6 33 1 33 25 1 14 25 1 25 34 1 34 14 1 35 36 1 36 25 1
		 25 35 1 6 37 1 37 38 1 38 6 1 38 33 1 15 0 1 2 15 1 2 10 1 10 15 1 38 25 1 39 35 1
		 35 38 1 38 39 1 37 40 1 40 41 1 41 37 1 42 38 1 37 42 1 18 43 1 43 44 1 44 18 1 6 40 1
		 36 34 1 15 36 1 36 0 1 35 45 1 45 36 1 2 18 1 2 43 1 42 39 1 46 47 1 47 42 1 42 46 1
		 46 48 0 48 47 1 49 50 1 50 51 1 51 49 1 52 51 1 50 52 1 47 39 1 53 47 1 47 54 1 54 53 1
		 55 49 1 49 0 1 0 55 1 49 56 1 56 50 1 45 53 1 53 36 1 56 55 1 55 57 1 57 56 1 43 58 1
		 58 44 1 59 60 0 60 52 1 52 59 1 48 61 1 61 54 1 54 48 1 62 54 1 61 62 0 56 63 1 63 50 1
		 64 50 1 63 64 0 57 65 1 65 56 1 65 63 0 62 57 1 57 54 1 62 65 0 64 52 1 66 52 1 64 66 0
		 66 59 0 48 67 0 67 61 0 17 11 1 68 28 0 16 68 1 24 29 1 28 24 1 28 27 0 13 68 0 21 69 1
		 69 19 1 11 21 1 21 12 1 20 12 0 69 8 1 8 19 1 6 70 1 70 40 0 22 70 0 4 26 1 26 71 1
		 71 4 1 7 4 1 4 23 1 24 3 1 27 71 0 55 53 1 53 57 1 36 55 1 53 39 1 49 1 1 58 60 1
		 60 44 0 72 58 1 58 1 1;
	setAttr ".ed[166:331]" 1 72 1 58 52 1 40 46 0 46 41 1 43 1 1 1 51 1 51 72 1
		 52 72 1 14 30 1 29 17 1 18 19 1 21 73 1 73 69 1 11 73 1 14 73 1 11 14 1 73 9 1 9 69 1
		 18 32 1 39 45 1 42 41 1 15 34 1 18 74 1 74 32 0 44 74 0 71 23 0 26 3 1 14 29 1 29 30 1
		 14 17 1 75 76 1 76 77 1 77 75 1 78 79 1 79 80 1 80 78 1 81 82 1 82 79 1 79 81 1 83 84 1
		 84 85 1 85 83 1 86 87 1 87 88 0 88 86 1 85 89 1 89 90 1 90 85 1 91 87 1 87 92 1 92 91 1
		 83 93 1 93 84 1 94 95 1 95 96 1 96 94 1 81 97 1 97 82 1 97 98 0 98 82 1 99 100 1
		 100 79 1 79 99 1 101 102 1 102 99 1 99 101 1 91 103 1 103 104 1 104 91 1 99 105 1
		 105 100 1 106 107 0 107 94 1 94 106 1 96 106 0 108 81 1 79 108 1 100 108 1 90 109 1
		 109 100 1 100 90 1 110 100 1 100 111 1 111 110 1 81 112 1 112 113 1 113 81 1 108 112 1
		 89 76 1 75 89 1 89 84 1 84 76 1 100 112 1 114 112 1 112 110 1 110 114 1 113 115 1
		 115 116 1 116 113 1 117 113 1 112 117 1 93 118 1 118 119 1 119 93 1 116 81 1 109 111 1
		 75 111 1 111 89 1 111 120 1 120 110 1 93 76 1 119 76 1 114 117 1 121 117 1 117 122 1
		 122 121 1 122 123 1 123 121 0 124 125 1 125 126 1 126 124 1 127 126 1 125 127 1 114 122 1
		 128 129 1 129 122 1 122 128 1 130 75 1 75 124 1 124 130 1 126 131 1 131 124 1 111 128 1
		 128 120 1 131 132 1 132 130 1 130 131 1 118 133 1 133 119 1 134 127 1 127 135 1 135 134 0
		 123 129 1 129 136 1 136 123 1 137 136 0 129 137 1 126 138 1 138 131 1 139 138 0 126 139 1
		 131 140 1 140 132 1 138 140 0 129 132 1 132 137 1 140 137 0 127 139 1 141 139 0 127 141 1
		 134 141 0 136 142 0 142 123 0 86 92 1 143 91 1 104 143 0;
	setAttr ".ed[332:497]" 99 104 1 103 99 1 102 104 0 143 87 0 94 144 1 144 95 1
		 88 95 1 95 86 1 88 96 0 94 83 1 83 144 1 116 145 0 145 81 1 145 97 0 80 146 1 146 101 1
		 101 80 1 98 80 1 80 82 1 78 99 1 146 102 0 132 128 1 128 130 1 130 111 1 114 128 1
		 77 124 1 118 135 0 135 133 1 147 77 1 77 133 1 133 147 1 127 133 1 115 121 1 121 116 0
		 77 119 1 147 125 1 125 77 1 147 127 1 105 90 1 92 103 1 94 93 1 144 148 1 148 95 1
		 148 86 1 90 86 1 148 90 1 144 85 1 85 148 1 107 93 1 120 114 1 115 117 1 109 89 1
		 107 149 0 149 93 1 149 118 0 98 146 0 78 101 1 105 103 1 103 90 1 92 90 1 150 151 0
		 151 152 0 152 150 1 153 154 1 154 155 0 155 153 1 156 150 1 152 156 1 155 157 1 157 153 0
		 158 159 0 159 160 0 160 158 1 160 161 1 161 158 1 162 163 1 163 164 0 164 162 1 163 165 1
		 165 166 1 166 163 1 167 158 1 161 167 1 168 169 1 169 170 0 170 168 1 171 172 1 172 173 0
		 173 171 1 174 171 1 171 175 1 175 174 0 176 177 1 177 178 1 178 176 1 176 179 0 179 177 0
		 180 178 1 177 180 1 181 180 0 177 181 0 153 182 0 182 154 1 182 183 1 183 154 0 184 185 1
		 185 186 0 186 184 1 187 184 1 184 188 1 188 187 0 168 189 1 189 169 1 167 190 0 190 158 0
		 180 191 1 191 192 1 192 180 1 191 193 1 193 192 1 184 194 1 194 188 1 162 168 1 168 195 1
		 195 162 1 168 164 1 164 196 0 196 168 1 197 198 0 198 199 1 199 197 0 198 200 0 200 199 1
		 201 202 0 202 166 1 166 201 1 180 203 0 203 191 1 161 204 1 204 205 0 205 161 1 205 206 0
		 206 161 0 155 150 0 150 157 1 156 157 0 207 208 1 208 209 1 209 207 1 207 210 0 210 211 0
		 211 207 1 212 178 1 178 213 0 213 212 0 212 214 0 214 178 1 215 216 0 216 217 0 217 215 1
		 162 165 1 218 199 0 200 218 1 219 201 0 166 219 1 166 191 1;
	setAttr ".ed[498:663]" 191 220 1 220 166 1 220 163 0 202 191 1 221 193 0 191 221 1
		 219 162 1 162 222 1 222 219 0 168 167 1 167 189 1 195 222 0 219 165 1 211 171 1 171 208 1
		 208 211 1 152 223 0 223 156 0 171 209 1 209 224 0 224 207 0 214 176 0 173 209 0 171 225 1
		 225 175 0 160 204 0 211 225 0 174 172 0 184 226 1 226 185 0 186 194 1 187 226 0 194 227 1
		 227 188 0 202 221 0 182 218 0 218 183 1 200 183 0 170 195 0 178 192 1 193 178 0 161 189 1
		 161 169 0 227 217 1 217 228 0 228 227 0 203 220 0 186 215 0 215 194 1 194 217 1 196 167 0
		 229 230 1 230 231 0 231 229 0 232 233 1 233 234 0 234 232 1 235 230 1 229 235 1 232 236 0
		 236 233 1 237 238 1 238 239 0 239 237 0 237 240 1 240 238 1 241 242 1 242 243 0 243 241 1
		 243 244 1 244 245 1 245 243 1 246 240 1 237 246 1 247 248 1 248 249 0 249 247 1 250 251 1
		 251 252 0 252 250 1 253 254 0 254 250 1 250 253 1 255 256 1 256 257 1 257 255 1 257 258 0
		 258 255 0 259 257 1 256 259 1 260 257 0 259 260 0 234 261 1 261 232 0 234 262 0 262 261 1
		 263 264 1 264 265 0 265 263 1 266 267 0 267 263 1 263 266 1 249 268 1 268 247 1 237 269 0
		 269 246 0 259 270 1 270 271 1 271 259 1 270 272 1 272 271 1 267 273 1 273 263 1 241 274 1
		 274 247 1 247 241 1 247 275 1 275 242 0 242 247 1 276 277 0 277 278 1 278 276 0 277 279 1
		 279 278 0 280 244 1 244 281 1 281 280 0 271 282 1 282 259 0 240 283 1 283 284 0 284 240 1
		 240 285 0 285 283 0 236 229 1 229 233 0 236 235 0 286 287 1 287 288 1 288 286 1 286 289 1
		 289 290 0 290 286 0 291 292 0 292 256 0 256 291 1 256 293 1 293 291 0 294 295 1 295 296 0
		 296 294 0 245 241 1 297 279 1 277 297 0 298 244 1 280 298 0 244 299 1 299 271 1 271 244 1
		 243 299 0 271 281 1 300 271 1 272 300 0 298 301 0 301 241 1 241 298 1;
	setAttr ".ed[664:829]" 268 246 1 246 247 1 301 274 0 245 298 1 289 288 1 288 250 1
		 250 289 1 235 302 0 302 230 0 287 250 1 286 303 0 303 287 0 255 293 0 287 251 0 254 304 0
		 304 250 1 284 238 0 304 289 0 252 253 0 265 305 0 305 263 1 273 264 1 305 266 0 267 306 0
		 306 273 1 300 281 0 262 297 1 297 261 0 262 279 0 274 248 0 256 272 0 270 256 1 268 240 1
		 249 240 0 306 307 0 307 295 0 295 306 1 299 282 0 273 294 1 294 264 0 295 273 1 246 275 0
		 308 309 1 309 310 0 310 308 1 311 312 1 312 313 1 313 311 1 313 314 1 314 315 1 315 313 1
		 316 308 1 308 317 1 317 316 1 308 315 1 315 317 1 314 318 1 318 319 1 319 314 1 320 312 0
		 311 320 1 308 321 1 321 309 1 322 321 1 321 316 1 316 322 1 323 324 1 324 325 1 325 323 1
		 326 327 0 327 328 1 328 326 1 328 329 1 329 330 1 330 328 1 316 331 1 331 322 1 332 333 0
		 333 334 1 334 332 1 335 336 1 336 337 0 337 335 1 336 338 1 338 339 0 339 336 1 340 341 0
		 341 342 1 342 340 1 343 344 0 344 345 0 345 343 1 346 309 0 321 346 1 347 348 0 348 349 1
		 349 347 1 330 350 1 350 328 1 351 349 1 348 351 0 352 353 1 353 319 1 319 352 1 354 313 1
		 312 354 0 355 356 1 356 357 0 357 355 1 358 354 1 354 359 0 359 358 1 360 358 1 359 360 0
		 361 362 1 362 346 0 346 361 1 356 363 1 363 364 1 364 356 1 361 325 1 325 362 1 347 364 1
		 363 347 0 329 365 1 365 324 0 324 329 1 322 366 1 366 325 1 325 322 1 367 368 1 368 369 0
		 369 367 1 370 371 0 371 372 1 372 370 0 355 363 0 373 374 0 374 375 1 375 373 0 357 376 1
		 376 355 1 376 377 1 377 378 0 378 376 0 379 319 1 318 379 1 316 319 1 319 331 1 380 381 1
		 381 382 1 382 380 0 383 384 1 384 350 0 350 383 1 385 386 0 386 387 1 387 385 1 379 352 1
		 388 352 1 379 388 1 388 383 1 383 352 1 350 352 1 364 349 1 349 382 0;
	setAttr ".ed[830:995]" 382 364 1 384 389 1 389 390 1 390 384 0 383 389 1 388 389 1
		 388 386 1 386 389 1 386 390 0 379 391 1 391 388 1 387 388 1 391 387 1 392 391 1 391 358 1
		 358 392 1 360 392 1 393 391 1 379 393 1 393 358 1 358 318 1 318 354 1 392 385 1 385 391 1
		 353 350 1 330 353 1 327 329 1 322 394 1 394 366 1 329 323 1 323 330 1 317 319 1 331 394 1
		 353 331 1 353 394 1 364 395 1 395 356 0 364 396 1 396 395 0 393 318 1 364 381 1 381 396 1
		 374 355 0 376 374 1 397 398 1 398 342 1 342 397 1 398 340 1 367 399 0 399 368 0 400 401 0
		 401 342 1 342 400 1 400 341 1 341 402 0 402 400 0 403 334 1 334 337 1 337 403 0 401 397 0
		 327 365 0 404 351 1 351 405 0 405 404 0 406 380 1 380 407 0 407 406 0 380 396 1 380 408 1
		 408 396 0 360 385 0 406 408 0 324 362 0 394 323 1 323 366 1 350 326 0 404 349 0 330 394 1
		 321 361 1 361 322 1 403 332 0 376 375 0 315 311 1 345 369 1 369 343 0 335 338 0 372 398 1
		 397 372 0 339 409 0 409 336 0 345 367 0 410 340 0 398 410 1 398 371 1 371 410 0 317 314 1
		 313 318 1 334 335 1 333 335 0 411 311 1 311 412 1 412 411 0 413 308 1 310 413 1 308 414 1
		 414 315 1 415 416 0 416 310 1 310 415 0 413 414 0 416 413 0 315 412 1 411 320 0 357 417 0
		 417 377 0 377 357 1 414 412 0 418 419 1 419 420 0 420 418 1 421 422 1 422 423 1 423 421 1
		 422 424 1 424 425 1 425 422 1 426 427 1 427 418 1 418 426 1 427 424 1 424 418 1 425 428 1
		 428 429 1 429 425 1 430 421 1 423 430 0 420 431 1 431 418 1 432 426 1 426 431 1 431 432 1
		 433 434 1 434 435 1 435 433 1 436 437 1 437 438 1 438 436 0 437 439 1 439 440 1 440 437 1
		 432 441 1 441 426 1 442 443 1 443 444 1 444 442 0 445 446 1 446 447 0 447 445 1 447 448 1
		 448 449 0 449 447 1 450 451 1 451 452 1 452 450 0 453 454 1 454 455 0;
	setAttr ".ed[996:1161]" 455 453 0 456 431 1 420 456 0 457 458 1 458 459 1 459 457 0
		 437 460 1 460 439 1 461 459 0 458 461 1 462 428 1 428 463 1 463 462 1 464 423 0 422 464 1
		 465 466 1 466 467 0 467 465 1 468 469 1 469 464 0 464 468 1 470 469 0 468 470 1 471 456 1
		 456 472 0 472 471 1 467 473 1 473 474 1 474 467 1 472 434 1 434 471 1 457 474 0 473 457 1
		 440 435 1 435 475 0 475 440 1 432 434 1 434 476 1 476 432 1 477 478 1 478 479 0 479 477 1
		 480 481 0 481 482 1 482 480 0 474 465 0 483 484 0 484 485 1 485 483 0 465 486 1 486 466 1
		 486 487 0 487 488 0 488 486 1 489 429 1 428 489 1 441 428 1 428 426 1 490 491 0 491 492 1
		 492 490 1 493 460 1 460 494 0 494 493 1 495 496 1 496 497 1 497 495 0 462 489 1 498 489 1
		 462 498 1 462 493 1 493 498 1 462 460 1 473 491 1 491 458 0 458 473 1 494 499 0 499 500 1
		 500 494 1 500 493 1 500 498 1 500 497 1 497 498 1 499 497 0 498 501 1 501 489 1 496 501 1
		 498 496 1 502 468 1 468 501 1 501 502 1 502 470 1 503 489 1 501 503 1 468 503 1 464 429 1
		 429 468 1 501 495 1 495 502 1 463 439 1 460 463 1 440 438 1 476 504 1 504 432 1 439 433 1
		 433 440 1 428 427 1 504 441 1 441 463 1 504 463 1 467 505 0 505 473 1 505 506 0 506 473 1
		 429 503 1 506 492 1 492 473 1 485 486 1 465 485 0 507 451 1 451 508 1 508 507 1 450 508 1
		 479 509 0 509 477 0 510 451 1 451 511 1 511 510 0 510 512 0 512 452 0 452 510 1 513 446 0
		 446 443 1 443 513 1 507 511 0 475 438 0 514 515 0 515 461 0 461 514 1 516 517 0 517 490 0
		 490 516 1 506 490 1 506 518 0 518 490 1 495 470 0 518 516 0 472 435 0 476 433 1 433 504 1
		 436 460 0 458 514 0 504 439 1 471 431 1 432 471 1 442 513 0 484 486 0 421 424 1 453 478 0
		 478 454 1 449 445 0 481 507 0 508 481 1 447 519 0 519 448 0 477 454 0;
	setAttr ".ed[1162:1327]" 520 508 1 450 520 0 520 482 0 482 508 1 425 427 1 429 422 1
		 445 443 1 445 444 0 521 522 0 522 421 1 421 521 1 523 419 1 418 523 1 424 524 1 524 418 1
		 525 419 0 419 526 1 526 525 0 524 523 0 523 526 0 522 424 1 430 521 0 466 488 1 488 527 0
		 527 466 0 522 524 0 528 529 1 529 530 1 530 528 1 531 532 1 532 533 1 533 531 0 531 534 0
		 534 532 1 535 536 1 536 537 0 537 535 1 538 539 0 539 535 0 535 538 0 537 538 0 532 540 0
		 540 533 0 535 541 1 541 536 1 541 542 1 542 536 0 543 544 1 544 545 1 545 543 1 543 541 1
		 535 543 1 546 545 1 544 546 0 547 534 1 534 548 0 548 547 1 547 532 0 549 530 1 530 550 1
		 550 549 1 535 544 0 551 543 1 543 552 1 552 551 1 551 541 1 551 542 1 551 553 1 553 542 0
		 546 554 0 554 555 1 555 546 1 555 556 1 556 546 1 555 557 1 557 558 1 558 555 1 554 557 0
		 545 559 1 559 543 1 559 552 1 559 546 1 556 559 1 560 548 1 548 561 0 561 560 1 560 547 1
		 557 560 1 560 558 1 557 547 0 562 551 1 552 562 1 562 563 1 563 551 1 564 551 1 563 564 1
		 564 553 0 565 555 1 555 566 1 566 565 1 565 556 1 555 567 1 567 566 1 558 567 1 560 567 1
		 560 568 1 568 567 1 561 569 0 569 560 1 569 568 1 559 562 1 559 570 1 570 562 1 565 559 1
		 565 570 1 571 563 1 563 572 1 572 571 1 562 572 1 573 563 1 571 573 1 574 575 1 575 549 1
		 549 574 1 529 566 1 567 529 1 529 565 1 576 567 1 567 550 1 550 576 1 576 529 1 568 549 1
		 549 567 1 530 576 1 549 569 1 569 577 0 577 549 1 575 530 1 572 570 1 570 578 1 578 572 1
		 578 579 1 579 580 1 580 578 1 565 579 1 579 570 1 579 529 1 529 580 1 573 564 0 574 581 0
		 581 575 1 582 583 0 583 584 1 584 582 1 585 586 1 586 584 1 584 585 1 530 586 1 586 587 1
		 587 530 1 583 585 1 588 585 1 585 589 1 589 588 1 578 590 1 590 572 1;
	setAttr ".ed[1328:1493]" 591 592 0 592 593 1 593 591 1 580 594 1 594 578 1 594 590 1
		 595 593 1 592 595 0 572 596 1 596 597 1 597 572 1 598 599 1 599 588 1 588 598 1 528 594 1
		 580 528 1 600 601 0 601 602 1 602 600 1 571 603 1 603 604 0 604 571 1 605 582 1 582 606 0
		 606 605 0 605 583 1 607 589 1 589 608 1 608 607 0 609 608 1 589 609 0 608 583 1 605 608 0
		 609 583 0 610 591 1 591 611 1 611 610 0 610 592 1 611 598 1 598 612 1 612 611 0 591 598 0
		 598 589 0 607 598 1 607 612 0 610 595 1 610 613 0 613 595 1 600 595 0 613 600 1 613 614 0
		 614 600 0 586 588 1 588 587 1 530 615 1 615 586 1 528 587 1 587 594 1 616 599 1 598 616 1
		 602 597 1 596 602 1 590 596 1 601 597 1 597 571 1 591 616 1 593 616 1 599 587 1 575 615 1
		 581 615 1 597 603 1 584 617 1 617 582 0 604 573 0 577 574 0 609 585 1 615 584 1 615 617 1
		 594 599 1 599 590 1 590 616 1 616 596 1 581 617 0 601 603 0 593 602 1 596 593 1 602 595 1
		 618 619 1 619 620 1 620 618 1 621 622 1 622 623 1 623 621 0 621 624 0 624 622 1 625 626 1
		 626 627 1 627 625 1 625 623 1 622 625 1 628 627 0 626 628 1 629 630 1 630 631 0 631 629 1
		 631 632 0 632 629 0 633 634 1 634 619 1 619 633 1 627 623 0 635 636 1 636 625 1 625 635 1
		 622 635 1 624 635 1 624 637 0 637 635 1 628 638 1 638 639 1 639 628 0 628 640 1 640 638 1
		 638 641 1 641 642 1 642 638 1 642 639 0 625 643 1 643 626 1 636 643 1 643 640 1 628 643 1
		 644 645 1 645 630 0 630 644 1 629 644 1 641 644 1 644 642 1 629 642 0 646 636 1 635 646 1
		 635 647 1 647 646 1 648 647 1 635 648 1 637 648 0 649 650 1 650 638 1 638 649 1 640 649 1
		 650 651 1 651 638 1 651 641 1 651 644 1 651 652 1 652 644 1 644 653 1 653 645 0 652 653 1
		 646 643 1 646 654 1 654 643 1 643 649 1 654 649 1 655 656 1 656 647 1;
	setAttr ".ed[1494:1659]" 647 655 1 656 646 1 657 655 1 647 657 1 658 633 1 633 659 1
		 659 658 1 620 651 1 650 620 1 649 620 1 660 634 1 634 651 1 651 660 1 620 660 1 651 633 1
		 633 652 1 660 619 1 633 661 1 661 653 0 653 633 1 619 659 1 656 662 1 662 654 1 654 656 1
		 662 663 1 663 664 1 664 662 1 654 664 1 664 649 1 663 620 1 620 664 1 648 657 0 659 665 1
		 665 658 0 666 667 1 667 668 1 668 666 0 669 667 1 667 670 1 670 669 1 619 671 1 671 670 1
		 670 619 1 669 668 1 672 673 1 673 669 1 669 672 1 656 674 1 674 662 1 675 676 1 676 677 1
		 677 675 0 662 678 1 678 663 1 674 678 1 679 677 0 676 679 1 656 680 1 680 681 1 681 656 1
		 682 672 1 672 683 1 683 682 1 618 663 1 678 618 1 684 685 1 685 686 1 686 684 0 655 687 1
		 687 688 0 688 655 1 689 690 0 690 666 0 666 689 1 668 689 1 691 692 0 692 673 1 673 691 1
		 693 673 0 692 693 1 692 689 0 668 692 1 668 693 0 694 695 0 695 675 1 675 694 1 677 694 1
		 695 696 0 696 682 1 682 695 1 682 675 0 682 691 1 673 682 0 696 691 0 679 694 1 679 697 1
		 697 694 0 684 697 1 679 684 0 684 698 0 698 697 0 671 672 1 672 670 1 670 699 1 699 619 1
		 678 671 1 671 618 1 700 682 1 683 700 1 685 681 1 680 685 1 681 674 1 680 686 1 655 680 1
		 700 675 1 700 676 1 671 683 1 699 659 1 699 665 1 688 680 1 666 701 0 701 667 1 657 687 0
		 658 661 0 669 693 1 667 699 1 701 699 1 674 683 1 683 678 1 681 700 1 700 674 1 701 665 0
		 688 686 0 676 681 1 685 676 1 679 685 1 702 703 1 703 704 1 704 702 1 705 706 1 706 707 1
		 707 705 1 708 705 1 705 703 1 703 708 1 709 707 1 706 709 1 710 711 1 711 712 1 712 710 1
		 702 713 0 713 703 1 714 709 1 706 714 1 705 704 1 708 706 1 715 716 1 716 717 1 717 715 1
		 718 719 1 719 720 1 720 718 1 721 722 1 722 723 1 723 721 1 724 725 1;
	setAttr ".ed[1660:1825]" 725 726 1 726 724 1 727 728 1 728 725 1 725 727 1 729 730 1
		 730 731 1 731 729 1 731 732 1 732 733 1 733 731 0 734 724 1 724 721 1 721 734 1 735 736 1
		 736 737 1 737 735 0 712 738 1 738 739 1 739 712 1 740 741 0 741 735 1 735 740 0 726 722 1
		 722 724 1 742 722 1 722 743 1 743 742 1 744 745 1 745 746 1 746 744 1 747 748 1 748 749 0
		 749 747 1 750 721 1 723 750 0 751 752 1 752 753 1 753 751 1 736 754 1 754 737 1 755 744 1
		 744 756 1 756 755 1 730 732 1 723 742 1 742 749 1 749 723 0 739 757 1 757 758 1 758 739 1
		 736 759 1 759 754 1 760 758 1 757 760 1 738 757 1 761 762 0 762 758 1 758 761 1 747 712 1
		 739 747 1 763 737 0 754 763 1 741 736 1 747 758 1 758 764 1 764 747 1 762 764 0 759 765 1
		 765 766 1 766 759 1 767 731 1 731 754 0 754 767 1 751 721 1 750 751 1 760 768 0 768 758 1
		 768 769 0 769 758 1 769 761 0 765 736 1 741 765 1 770 729 1 729 759 1 759 770 1 771 766 1
		 766 741 1 741 771 0 767 729 1 766 772 1 772 773 1 773 766 1 774 708 1 703 774 1 703 775 1
		 775 774 1 776 775 1 703 776 1 777 706 1 706 778 1 778 777 1 777 714 1 779 780 1 780 774 1
		 774 779 1 708 780 1 780 706 1 781 782 1 782 783 1 783 781 1 784 785 1 785 786 1 786 784 1
		 787 783 1 783 784 1 784 787 1 709 786 1 785 709 1 710 788 1 788 789 1 789 710 1 783 790 1
		 790 781 0 714 786 1 782 784 1 786 787 1 791 792 1 792 793 1 793 791 1 794 795 1 795 796 1
		 796 794 1 795 797 1 797 798 0 798 795 1 799 800 1 800 801 1 801 799 1 802 803 1 803 788 1
		 788 802 1 804 726 1 725 804 1 725 801 1 800 725 1 805 806 1 806 807 0 807 805 1 808 809 1
		 809 805 1 805 808 1 796 805 1 809 796 1 801 784 1 784 799 1 810 811 0 811 812 1 812 810 1
		 813 810 1 812 813 1 743 802 1 788 743 1 743 726 1 726 802 1 814 815 1;
	setAttr ".ed[1826:1991]" 815 816 1 816 814 1 817 818 1 818 819 0 819 817 1 820 803 1
		 802 820 1 807 821 0 821 808 1 808 807 1 822 811 1 811 823 0 823 822 1 824 825 1 825 798 1
		 798 824 0 814 806 1 805 814 1 803 818 0 818 788 1 738 826 1 826 757 1 827 822 1 822 828 1
		 828 827 1 757 829 1 829 760 1 826 829 1 830 829 1 829 831 1 831 830 0 789 817 1 817 826 1
		 826 789 1 823 832 0 832 822 0 812 833 1 833 813 1 829 817 1 817 834 1 834 829 1 833 827 1
		 827 835 1 835 833 1 822 806 0 806 828 1 821 836 0 836 808 1 829 837 1 837 760 0 838 829 1
		 830 838 0 838 837 0 813 839 0 839 810 0 812 827 1 840 813 0 813 835 1 835 840 1 841 835 1
		 827 841 1 806 816 1 816 828 1 793 783 1 783 791 1 783 842 1 842 790 0 843 842 0 842 793 1
		 793 843 1 777 786 1 844 786 1 777 844 1 786 845 1 845 787 1 844 845 1 775 779 1 846 777 0
		 778 846 1 778 847 1 847 846 0 847 780 1 779 847 0 778 780 1 791 787 1 845 791 1 845 792 1
		 848 844 1 844 849 1 849 848 0 777 849 0 848 845 1 848 792 0 710 743 1 710 742 1 804 802 1
		 804 820 1 742 747 1 712 742 1 738 789 1 789 711 1 713 776 0 775 850 1 850 779 0 775 851 1
		 851 850 0 852 851 1 775 852 1 792 853 0 853 793 1 854 793 1 853 854 0 854 855 0 855 843 0
		 843 854 1 776 852 0 852 856 0 856 851 0 738 711 1 788 817 1 819 834 0 857 751 1 750 857 0
		 733 751 1 857 733 0 799 808 1 808 800 1 858 799 1 784 858 1 719 704 1 705 719 1 859 753 1
		 752 859 1 732 751 1 836 820 1 820 808 1 836 803 0 734 753 1 753 727 1 727 734 1 753 705 1
		 705 727 1 816 841 1 827 816 1 822 812 1 834 831 0 754 860 0 860 763 0 764 748 0 734 751 1
		 732 752 1 861 752 1 732 861 1 717 861 1 861 715 1 707 728 1 727 707 1 799 809 1 820 800 1
		 782 858 1 804 800 1 734 725 1 785 728 1 728 709 1 858 781 1 781 862 0;
	setAttr ".ed[1992:2064]" 862 858 1 719 702 1 863 835 1 835 824 1 824 863 0 864 772 0
		 766 864 1 771 864 0 863 840 0 767 759 1 865 824 1 835 865 1 773 770 1 770 766 1 772 866 1
		 866 773 1 825 867 1 867 798 1 867 841 1 816 867 1 770 744 1 744 729 1 866 744 1 744 773 1
		 756 746 1 746 861 1 861 756 1 868 867 1 867 869 1 869 868 1 815 867 1 865 825 1 865 867 1
		 772 745 0 745 866 1 796 814 1 796 869 1 869 815 1 815 796 1 861 755 1 730 861 1 796 868 1
		 809 794 1 745 715 1 715 746 1 745 716 0 729 755 1 755 730 1 798 868 1 868 795 1 865 841 1
		 794 797 1 799 870 1 870 809 1 859 719 1 719 753 1 752 717 1 717 859 1 794 871 1 871 797 1
		 858 870 1 720 859 1 717 720 1 718 702 0 871 862 1 862 797 0 870 794 1 871 870 1 858 871 1
		 716 720 1 716 718 0 785 801 1 801 728 1;
	setAttr -s 3648 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[166:331]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[332:497]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[498:663]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[664:829]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[830:995]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[996:1161]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1162:1327]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1328:1493]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1494:1659]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1660:1825]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1826:1991]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1992:2157]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[2158:2323]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[2324:2489]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[2490:2655]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[2656:2821]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[2822:2987]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[2988:3153]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[3154:3319]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[3320:3485]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[3486:3647]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 1216 -ch 3648 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 5
		mu 0 3 3 4 5
		f 3 6 7 8
		mu 0 3 6 5 7
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 13 14
		mu 0 3 11 12 13
		f 3 15 16 17
		mu 0 3 9 14 15
		f 3 18 19 20
		mu 0 3 16 17 13
		f 3 -12 21 22
		mu 0 3 8 10 18
		f 3 23 24 25
		mu 0 3 19 20 21
		f 3 26 27 -9
		mu 0 3 7 22 6
		f 3 -27 28 29
		mu 0 3 22 7 23
		f 3 30 31 32
		mu 0 3 24 5 25
		f 3 33 34 35
		mu 0 3 26 24 27
		f 3 36 37 38
		mu 0 3 16 28 29
		f 3 39 40 -33
		mu 0 3 25 30 24
		f 3 41 42 43
		mu 0 3 31 19 32
		f 3 -42 44 -24
		mu 0 3 19 31 20
		f 3 45 -7 46
		mu 0 3 33 5 6
		f 3 -46 47 -32
		mu 0 3 5 33 25
		f 3 48 49 50
		mu 0 3 14 25 34
		f 3 51 52 53
		mu 0 3 35 36 25
		f 3 54 55 56
		mu 0 3 6 37 38
		f 3 57 -47 -57
		mu 0 3 38 33 6
		f 3 58 -3 59
		mu 0 3 15 0 2
		f 3 60 61 -60
		mu 0 3 2 10 15
		f 3 -58 62 -48
		mu 0 3 33 38 25
		f 3 63 64 65
		mu 0 3 39 35 38
		f 3 66 67 68
		mu 0 3 37 40 41
		f 3 69 -56 70
		mu 0 3 42 38 37
		f 3 71 72 73
		mu 0 3 18 43 44
		f 3 -67 -55 74
		mu 0 3 40 37 6
		f 3 -53 75 -50
		mu 0 3 25 36 34
		f 3 -59 76 77
		mu 0 3 0 15 36
		f 3 -63 -65 -54
		mu 0 3 25 38 35
		f 3 -52 78 79
		mu 0 3 36 35 45
		f 3 -61 80 -22
		mu 0 3 10 2 18
		f 3 -72 -81 81
		mu 0 3 43 18 2
		f 3 -66 -70 82
		mu 0 3 39 38 42
		f 3 83 84 85
		mu 0 3 46 47 42
		f 3 -84 86 87
		mu 0 3 47 46 48
		f 3 88 89 90
		mu 0 3 49 50 51
		f 3 91 -90 92
		mu 0 3 52 51 50
		f 3 -85 93 -83
		mu 0 3 42 47 39
		f 3 94 95 96
		mu 0 3 53 47 54
		f 3 97 98 99
		mu 0 3 55 49 0
		f 3 -89 100 101
		mu 0 3 50 49 56
		f 3 102 103 -80
		mu 0 3 45 53 36
		f 3 104 105 106
		mu 0 3 56 55 57
		f 3 107 108 -73
		mu 0 3 43 58 44
		f 3 109 110 111
		mu 0 3 59 60 52
		f 3 112 113 114
		mu 0 3 48 61 54
		f 3 115 -114 116
		mu 0 3 62 54 61
		f 3 117 118 -102
		mu 0 3 56 63 50
		f 3 119 -119 120
		mu 0 3 64 50 63
		f 3 121 122 -107
		mu 0 3 57 65 56
		f 3 -118 -123 123
		mu 0 3 63 56 65
		f 3 -116 124 125
		mu 0 3 54 62 57
		f 3 -122 -125 126
		mu 0 3 65 57 62
		f 3 -120 127 -93
		mu 0 3 50 64 52
		f 3 128 -128 129
		mu 0 3 66 52 64
		f 3 -129 130 -112
		mu 0 3 52 66 59
		f 3 -113 131 132
		mu 0 3 61 48 67
		f 3 -15 -20 133
		mu 0 3 11 13 17
		f 3 134 -37 135
		mu 0 3 68 28 16
		f 3 136 -38 137
		mu 0 3 24 29 28
		f 3 -138 138 -35
		mu 0 3 24 28 27
		f 3 -136 -21 139
		mu 0 3 68 16 13
		f 3 -62 -11 -18
		mu 0 3 15 10 9
		f 3 -26 140 141
		mu 0 3 19 21 69
		f 3 -13 142 143
		mu 0 3 12 11 21
		f 3 -25 144 -144
		mu 0 3 21 20 12
		f 3 145 146 -142
		mu 0 3 69 8 19
		f 3 147 148 -75
		mu 0 3 6 70 40
		f 3 149 -148 -28
		mu 0 3 22 70 6
		f 3 150 151 152
		mu 0 3 4 26 71
		f 3 153 154 -29
		mu 0 3 7 4 23
		f 3 155 -6 -31
		mu 0 3 24 3 5
		f 3 156 -152 -36
		mu 0 3 27 71 26
		f 3 157 158 -106
		mu 0 3 55 53 57
		f 3 159 -100 -78
		mu 0 3 36 55 0
		f 3 -158 -160 -104
		mu 0 3 53 55 36
		f 3 -159 -97 -126
		mu 0 3 57 53 54
		f 3 -95 160 -94
		mu 0 3 47 53 39
		f 3 -96 -88 -115
		mu 0 3 54 47 48
		f 3 -98 -105 -101
		mu 0 3 49 55 56
		f 3 -99 161 -1
		mu 0 3 0 49 1
		f 3 162 163 -109
		mu 0 3 58 60 44
		f 3 164 165 166
		mu 0 3 72 58 1
		f 3 -163 167 -111
		mu 0 3 60 58 52
		f 3 168 169 -68
		mu 0 3 40 46 41
		f 3 -166 -108 170
		mu 0 3 1 58 43
		f 3 -2 -171 -82
		mu 0 3 2 1 43
		f 3 -167 171 172
		mu 0 3 72 1 51
		f 3 -91 -172 -162
		mu 0 3 49 51 1
		f 3 173 -173 -92
		mu 0 3 52 72 51
		f 3 -168 -165 -174
		mu 0 3 52 58 72
		f 3 -49 174 -40
		mu 0 3 25 14 30
		f 3 -39 175 -19
		mu 0 3 16 29 17
		f 3 176 -147 -23
		mu 0 3 18 19 8
		f 3 177 178 -141
		mu 0 3 21 73 69
		f 3 -143 179 -178
		mu 0 3 21 11 73
		f 3 180 -180 181
		mu 0 3 14 73 11
		f 3 -179 182 183
		mu 0 3 69 73 9
		f 3 -16 -183 -181
		mu 0 3 14 9 73
		f 3 -43 -177 184
		mu 0 3 32 19 18
		f 3 -184 -10 -146
		mu 0 3 69 9 8
		f 3 -79 -64 185
		mu 0 3 45 35 39
		f 3 -161 -103 -186
		mu 0 3 39 53 45
		f 3 -170 -86 186
		mu 0 3 41 46 42
		f 3 -69 -187 -71
		mu 0 3 37 41 42
		f 3 -76 -77 187
		mu 0 3 34 36 15
		f 3 -51 -188 -17
		mu 0 3 14 34 15
		f 3 -185 188 189
		mu 0 3 32 18 74
		f 3 -189 -74 190
		mu 0 3 74 18 44
		f 3 -155 -153 191
		mu 0 3 23 4 71
		f 3 -154 -8 -5
		mu 0 3 4 7 5
		f 3 -34 192 -156
		mu 0 3 24 26 3
		f 3 -151 -4 -193
		mu 0 3 26 4 3
		f 3 -175 193 194
		mu 0 3 30 14 29
		f 3 -195 -137 -41
		mu 0 3 30 29 24
		f 3 -176 -194 195
		mu 0 3 17 29 14
		f 3 -134 -196 -182
		mu 0 3 11 17 14
		f 3 196 197 198
		mu 0 3 75 76 77
		f 3 199 200 201
		mu 0 3 78 79 80
		f 3 202 203 204
		mu 0 3 81 82 79
		f 3 205 206 207
		mu 0 3 83 84 85
		f 3 208 209 210
		mu 0 3 86 87 88
		f 3 211 212 213
		mu 0 3 85 89 90
		f 3 214 215 216
		mu 0 3 91 87 92
		f 3 217 218 -206
		mu 0 3 83 93 84
		f 3 219 220 221
		mu 0 3 94 95 96
		f 3 -203 222 223
		mu 0 3 82 81 97
		f 3 224 225 -224
		mu 0 3 97 98 82
		f 3 226 227 228
		mu 0 3 99 100 79
		f 3 229 230 231
		mu 0 3 101 102 99
		f 3 232 233 234
		mu 0 3 91 103 104
		f 3 -227 235 236
		mu 0 3 100 99 105
		f 3 237 238 239
		mu 0 3 106 107 94
		f 3 -222 240 -240
		mu 0 3 94 96 106
		f 3 241 -205 242
		mu 0 3 108 81 79
		f 3 -228 243 -243
		mu 0 3 79 100 108
		f 3 244 245 246
		mu 0 3 90 109 100
		f 3 247 248 249
		mu 0 3 110 100 111
		f 3 250 251 252
		mu 0 3 81 112 113
		f 3 -251 -242 253
		mu 0 3 112 81 108
		f 3 254 -197 255
		mu 0 3 89 76 75
		f 3 -255 256 257
		mu 0 3 76 89 84
		f 3 -244 258 -254
		mu 0 3 108 100 112
		f 3 259 260 261
		mu 0 3 114 112 110
		f 3 262 263 264
		mu 0 3 113 115 116
		f 3 265 -252 266
		mu 0 3 117 113 112
		f 3 267 268 269
		mu 0 3 93 118 119
		f 3 270 -253 -265
		mu 0 3 116 81 113
		f 3 -246 271 -249
		mu 0 3 100 109 111
		f 3 272 273 -256
		mu 0 3 75 111 89
		f 3 -248 -261 -259
		mu 0 3 100 110 112
		f 3 274 275 -250
		mu 0 3 111 120 110
		f 3 -219 276 -258
		mu 0 3 84 93 76
		f 3 277 -277 -270
		mu 0 3 119 76 93
		f 3 278 -267 -260
		mu 0 3 114 117 112
		f 3 279 280 281
		mu 0 3 121 117 122
		f 3 282 283 -282
		mu 0 3 122 123 121
		f 3 284 285 286
		mu 0 3 124 125 126
		f 3 287 -286 288
		mu 0 3 127 126 125
		f 3 -279 289 -281
		mu 0 3 117 114 122
		f 3 290 291 292
		mu 0 3 128 129 122
		f 3 293 294 295
		mu 0 3 130 75 124
		f 3 296 297 -287
		mu 0 3 126 131 124
		f 3 -275 298 299
		mu 0 3 120 111 128
		f 3 300 301 302
		mu 0 3 131 132 130
		f 3 -269 303 304
		mu 0 3 119 118 133
		f 3 305 306 307
		mu 0 3 134 127 135
		f 3 308 309 310
		mu 0 3 123 129 136
		f 3 311 -310 312
		mu 0 3 137 136 129
		f 3 -297 313 314
		mu 0 3 131 126 138
		f 3 315 -314 316
		mu 0 3 139 138 126
		f 3 -301 317 318
		mu 0 3 132 131 140
		f 3 319 -318 -315
		mu 0 3 138 140 131
		f 3 320 321 -313
		mu 0 3 129 132 137
		f 3 322 -322 -319
		mu 0 3 140 137 132
		f 3 -288 323 -317
		mu 0 3 126 127 139
		f 3 324 -324 325
		mu 0 3 141 139 127
		f 3 -306 326 -326
		mu 0 3 127 134 141
		f 3 327 328 -311
		mu 0 3 136 142 123
		f 3 329 -216 -209
		mu 0 3 86 92 87
		f 3 330 -235 331
		mu 0 3 143 91 104
		f 3 332 -234 333
		mu 0 3 99 104 103
		f 3 -231 334 -333
		mu 0 3 99 102 104
		f 3 335 -215 -331
		mu 0 3 143 87 91
		f 3 -212 -207 -257
		mu 0 3 89 85 84
		f 3 336 337 -220
		mu 0 3 94 144 95
		f 3 338 339 -211
		mu 0 3 88 95 86
		f 3 -339 340 -221
		mu 0 3 95 88 96
		f 3 -337 341 342
		mu 0 3 144 94 83
		f 3 -271 343 344
		mu 0 3 81 116 145
		f 3 -223 -345 345
		mu 0 3 97 81 145
		f 3 346 347 348
		mu 0 3 80 146 101
		f 3 -226 349 350
		mu 0 3 82 98 80
		f 3 -229 -200 351
		mu 0 3 99 79 78
		f 3 -230 -348 352
		mu 0 3 102 101 146
		f 3 -302 353 354
		mu 0 3 130 132 128
		f 3 -273 -294 355
		mu 0 3 111 75 130
		f 3 -299 -356 -355
		mu 0 3 128 111 130
		f 3 -321 -291 -354
		mu 0 3 132 129 128
		f 3 -290 356 -293
		mu 0 3 122 114 128
		f 3 -309 -283 -292
		mu 0 3 129 123 122
		f 3 -298 -303 -296
		mu 0 3 124 131 130
		f 3 -199 357 -295
		mu 0 3 75 77 124
		f 3 -304 358 359
		mu 0 3 133 118 135
		f 3 360 361 362
		mu 0 3 147 77 133
		f 3 -307 363 -360
		mu 0 3 135 127 133
		f 3 -264 364 365
		mu 0 3 116 115 121
		f 3 366 -305 -362
		mu 0 3 77 119 133
		f 3 -278 -367 -198
		mu 0 3 76 119 77
		f 3 367 368 -361
		mu 0 3 147 125 77
		f 3 -358 -369 -285
		mu 0 3 124 77 125
		f 3 -289 -368 369
		mu 0 3 127 125 147
		f 3 -370 -363 -364
		mu 0 3 127 147 133
		f 3 -237 370 -247
		mu 0 3 100 105 90
		f 3 -217 371 -233
		mu 0 3 91 92 103
		f 3 -218 -342 372
		mu 0 3 93 83 94
		f 3 -338 373 374
		mu 0 3 95 144 148
		f 3 -375 375 -340
		mu 0 3 95 148 86
		f 3 376 -376 377
		mu 0 3 90 86 148
		f 3 378 379 -374
		mu 0 3 144 85 148
		f 3 -378 -380 -214
		mu 0 3 90 148 85
		f 3 380 -373 -239
		mu 0 3 107 93 94
		f 3 -343 -208 -379
		mu 0 3 144 83 85
		f 3 381 -262 -276
		mu 0 3 120 114 110
		f 3 -382 -300 -357
		mu 0 3 114 120 128
		f 3 382 -280 -365
		mu 0 3 115 117 121
		f 3 -266 -383 -263
		mu 0 3 113 117 115
		f 3 383 -274 -272
		mu 0 3 109 89 111
		f 3 -213 -384 -245
		mu 0 3 90 89 109
		f 3 384 385 -381
		mu 0 3 107 149 93
		f 3 386 -268 -386
		mu 0 3 149 118 93
		f 3 387 -347 -350
		mu 0 3 98 146 80
		f 3 -201 -204 -351
		mu 0 3 80 79 82
		f 3 -352 388 -232
		mu 0 3 99 78 101
		f 3 -389 -202 -349
		mu 0 3 101 78 80
		f 3 389 390 -371
		mu 0 3 105 103 90
		f 3 -236 -334 -390
		mu 0 3 105 99 103
		f 3 391 -391 -372
		mu 0 3 92 90 103
		f 3 -377 -392 -330
		mu 0 3 86 90 92
		f 3 392 393 394
		mu 0 3 150 151 152
		f 3 395 396 397
		mu 0 3 153 154 155
		f 3 398 -395 399
		mu 0 3 156 150 152
		f 3 -398 400 401
		mu 0 3 153 155 157
		f 3 402 403 404
		mu 0 3 158 159 160
		f 3 405 406 -405
		mu 0 3 160 161 158
		f 3 407 408 409
		mu 0 3 162 163 164
		f 3 410 411 412
		mu 0 3 163 165 166
		f 3 413 -407 414
		mu 0 3 167 158 161
		f 3 415 416 417
		mu 0 3 168 169 170
		f 3 418 419 420
		mu 0 3 171 172 173
		f 3 421 422 423
		mu 0 3 174 171 175
		f 3 424 425 426
		mu 0 3 176 177 178
		f 3 -425 427 428
		mu 0 3 177 176 179
		f 3 429 -426 430
		mu 0 3 180 178 177
		f 3 431 -431 432
		mu 0 3 181 180 177
		f 3 -396 433 434
		mu 0 3 154 153 182
		f 3 435 436 -435
		mu 0 3 182 183 154
		f 3 437 438 439
		mu 0 3 184 185 186
		f 3 440 441 442
		mu 0 3 187 184 188
		f 3 443 444 -416
		mu 0 3 168 189 169
		f 3 -414 445 446
		mu 0 3 158 167 190
		f 3 447 448 449
		mu 0 3 180 191 192
		f 3 -449 450 451
		mu 0 3 192 191 193
		f 3 452 453 -442
		mu 0 3 184 194 188
		f 3 454 455 456
		mu 0 3 162 168 195
		f 3 457 458 459
		mu 0 3 168 164 196
		f 3 460 461 462
		mu 0 3 197 198 199
		f 3 -462 463 464
		mu 0 3 199 198 200
		f 3 465 466 467
		mu 0 3 201 202 166
		f 3 468 469 -448
		mu 0 3 180 203 191
		f 3 470 471 472
		mu 0 3 161 204 205
		f 3 473 474 -473
		mu 0 3 205 206 161
		f 3 -401 475 476
		mu 0 3 157 155 150
		f 3 -399 477 -477
		mu 0 3 150 156 157
		f 3 478 479 480
		mu 0 3 207 208 209
		f 3 481 482 483
		mu 0 3 207 210 211
		f 3 484 485 486
		mu 0 3 212 178 213
		f 3 -485 487 488
		mu 0 3 178 212 214
		f 3 489 490 491
		mu 0 3 215 216 217
		f 3 -411 -408 492
		mu 0 3 165 163 162
		f 3 493 -465 494
		mu 0 3 218 199 200
		f 3 495 -468 496
		mu 0 3 219 201 166
		f 3 497 498 499
		mu 0 3 166 191 220
		f 3 -413 -500 500
		mu 0 3 163 166 220
		f 3 -498 -467 501
		mu 0 3 191 166 202
		f 3 502 -451 503
		mu 0 3 221 193 191
		f 3 -455 -410 -458
		mu 0 3 168 162 164
		f 3 504 505 506
		mu 0 3 219 162 222
		f 3 -444 507 508
		mu 0 3 189 168 167
		f 3 -457 509 -506
		mu 0 3 162 195 222
		f 3 510 -493 -505
		mu 0 3 219 165 162
		f 3 -511 -497 -412
		mu 0 3 165 219 166
		f 3 511 512 513
		mu 0 3 211 171 208
		f 3 -479 -484 -514
		mu 0 3 208 207 211
		f 3 -400 514 515
		mu 0 3 156 152 223
		f 3 -513 516 -480
		mu 0 3 208 171 209
		f 3 -481 517 518
		mu 0 3 207 209 224
		f 3 -489 519 -427
		mu 0 3 178 214 176
		f 3 -421 520 -517
		mu 0 3 171 173 209
		f 3 -423 521 522
		mu 0 3 175 171 225
		f 3 -406 523 -471
		mu 0 3 161 160 204
		f 3 524 -522 -512
		mu 0 3 211 225 171
		f 3 -422 525 -419
		mu 0 3 171 174 172
		f 3 526 527 -438
		mu 0 3 184 226 185
		f 3 -440 528 -453
		mu 0 3 184 186 194
		f 3 -527 -441 529
		mu 0 3 226 184 187
		f 3 -454 530 531
		mu 0 3 188 194 227
		f 3 532 -504 -502
		mu 0 3 202 221 191
		f 3 -436 533 534
		mu 0 3 183 182 218
		f 3 -495 535 -535
		mu 0 3 218 200 183
		f 3 -418 536 -456
		mu 0 3 168 170 195
		f 3 537 -452 538
		mu 0 3 178 192 193
		f 3 -450 -538 -430
		mu 0 3 180 192 178
		f 3 539 -509 -415
		mu 0 3 161 189 167
		f 3 -540 540 -445
		mu 0 3 189 161 169
		f 3 541 542 543
		mu 0 3 227 217 228
		f 3 544 -499 -470
		mu 0 3 203 220 191
		f 3 -529 545 546
		mu 0 3 194 186 215
		f 3 547 -542 -531
		mu 0 3 194 217 227
		f 3 -547 -492 -548
		mu 0 3 194 215 217
		f 3 -460 548 -508
		mu 0 3 168 196 167
		f 3 549 550 551
		mu 0 3 229 230 231
		f 3 552 553 554
		mu 0 3 232 233 234
		f 3 555 -550 556
		mu 0 3 235 230 229
		f 3 557 558 -553
		mu 0 3 232 236 233
		f 3 559 560 561
		mu 0 3 237 238 239
		f 3 -560 562 563
		mu 0 3 238 237 240
		f 3 564 565 566
		mu 0 3 241 242 243
		f 3 567 568 569
		mu 0 3 243 244 245
		f 3 570 -563 571
		mu 0 3 246 240 237
		f 3 572 573 574
		mu 0 3 247 248 249
		f 3 575 576 577
		mu 0 3 250 251 252
		f 3 578 579 580
		mu 0 3 253 254 250
		f 3 581 582 583
		mu 0 3 255 256 257
		f 3 584 585 -584
		mu 0 3 257 258 255
		f 3 586 -583 587
		mu 0 3 259 257 256
		f 3 588 -587 589
		mu 0 3 260 257 259
		f 3 590 591 -555
		mu 0 3 234 261 232
		f 3 -591 592 593
		mu 0 3 261 234 262
		f 3 594 595 596
		mu 0 3 263 264 265
		f 3 597 598 599
		mu 0 3 266 267 263
		f 3 -575 600 601
		mu 0 3 247 249 268
		f 3 602 603 -572
		mu 0 3 237 269 246
		f 3 604 605 606
		mu 0 3 259 270 271
		f 3 607 608 -606
		mu 0 3 270 272 271
		f 3 -599 609 610
		mu 0 3 263 267 273
		f 3 611 612 613
		mu 0 3 241 274 247
		f 3 614 615 616
		mu 0 3 247 275 242
		f 3 617 618 619
		mu 0 3 276 277 278
		f 3 620 621 -619
		mu 0 3 277 279 278
		f 3 622 623 624
		mu 0 3 280 244 281
		f 3 -607 625 626
		mu 0 3 259 271 282
		f 3 627 628 629
		mu 0 3 240 283 284
		f 3 -628 630 631
		mu 0 3 283 240 285
		f 3 632 633 -559
		mu 0 3 236 229 233
		f 3 -633 634 -557
		mu 0 3 229 236 235
		f 3 635 636 637
		mu 0 3 286 287 288
		f 3 638 639 640
		mu 0 3 286 289 290
		f 3 641 642 643
		mu 0 3 291 292 256
		f 3 644 645 -644
		mu 0 3 256 293 291
		f 3 646 647 648
		mu 0 3 294 295 296
		f 3 649 -567 -570
		mu 0 3 245 241 243
		f 3 650 -621 651
		mu 0 3 297 279 277
		f 3 652 -623 653
		mu 0 3 298 244 280
		f 3 654 655 656
		mu 0 3 244 299 271
		f 3 657 -655 -568
		mu 0 3 243 299 244
		f 3 658 -624 -657
		mu 0 3 271 281 244
		f 3 659 -609 660
		mu 0 3 300 271 272
		f 3 -617 -565 -614
		mu 0 3 247 242 241
		f 3 661 662 663
		mu 0 3 298 301 241
		f 3 664 665 -602
		mu 0 3 268 246 247
		f 3 -663 666 -612
		mu 0 3 241 301 274
		f 3 -664 -650 667
		mu 0 3 298 241 245
		f 3 -569 -653 -668
		mu 0 3 245 244 298
		f 3 668 669 670
		mu 0 3 289 288 250
		f 3 -669 -639 -638
		mu 0 3 288 289 286
		f 3 671 672 -556
		mu 0 3 235 302 230
		f 3 -637 673 -670
		mu 0 3 288 287 250
		f 3 674 675 -636
		mu 0 3 286 303 287
		f 3 -582 676 -645
		mu 0 3 256 255 293
		f 3 -674 677 -576
		mu 0 3 250 287 251
		f 3 678 679 -580
		mu 0 3 254 304 250
		f 3 -630 680 -564
		mu 0 3 240 284 238
		f 3 -671 -680 681
		mu 0 3 289 250 304
		f 3 -578 682 -581
		mu 0 3 250 252 253
		f 3 -597 683 684
		mu 0 3 263 265 305
		f 3 -611 685 -595
		mu 0 3 263 273 264
		f 3 686 -600 -685
		mu 0 3 305 266 263
		f 3 687 688 -610
		mu 0 3 267 306 273
		f 3 -659 -660 689
		mu 0 3 281 271 300
		f 3 690 691 -594
		mu 0 3 262 297 261
		f 3 -691 692 -651
		mu 0 3 297 262 279
		f 3 -613 693 -573
		mu 0 3 247 274 248
		f 3 694 -608 695
		mu 0 3 256 272 270
		f 3 -588 -696 -605
		mu 0 3 259 256 270
		f 3 -571 -665 696
		mu 0 3 240 246 268
		f 3 -601 697 -697
		mu 0 3 268 249 240
		f 3 698 699 700
		mu 0 3 306 307 295
		f 3 -626 -656 701
		mu 0 3 282 271 299
		f 3 702 703 -686
		mu 0 3 273 294 264
		f 3 -689 -701 704
		mu 0 3 273 306 295
		f 3 -705 -647 -703
		mu 0 3 273 295 294
		f 3 -666 705 -615
		mu 0 3 247 246 275
		f 3 706 707 708
		mu 0 3 308 309 310
		f 3 709 710 711
		mu 0 3 311 312 313
		f 3 712 713 714
		mu 0 3 313 314 315
		f 3 715 716 717
		mu 0 3 316 308 317
		f 3 -717 718 719
		mu 0 3 317 308 315
		f 3 720 721 722
		mu 0 3 314 318 319
		f 3 723 -710 724
		mu 0 3 320 312 311
		f 3 -707 725 726
		mu 0 3 309 308 321
		f 3 727 728 729
		mu 0 3 322 321 316
		f 3 730 731 732
		mu 0 3 323 324 325
		f 3 733 734 735
		mu 0 3 326 327 328
		f 3 736 737 738
		mu 0 3 328 329 330
		f 3 739 740 -730
		mu 0 3 316 331 322
		f 3 741 742 743
		mu 0 3 332 333 334
		f 3 744 745 746
		mu 0 3 335 336 337
		f 3 747 748 749
		mu 0 3 336 338 339
		f 3 750 751 752
		mu 0 3 340 341 342
		f 3 753 754 755
		mu 0 3 343 344 345
		f 3 756 -727 757
		mu 0 3 346 309 321
		f 3 758 759 760
		mu 0 3 347 348 349
		f 3 761 762 -739
		mu 0 3 330 350 328
		f 3 763 -760 764
		mu 0 3 351 349 348
		f 3 765 766 767
		mu 0 3 352 353 319
		f 3 768 -711 769
		mu 0 3 354 313 312
		f 3 770 771 772
		mu 0 3 355 356 357
		f 3 773 774 775
		mu 0 3 358 354 359
		f 3 776 -776 777
		mu 0 3 360 358 359
		f 3 778 779 780
		mu 0 3 361 362 346
		f 3 781 782 783
		mu 0 3 356 363 364
		f 3 -779 784 785
		mu 0 3 362 361 325
		f 3 786 -783 787
		mu 0 3 347 364 363
		f 3 788 789 790
		mu 0 3 329 365 324
		f 3 791 792 793
		mu 0 3 322 366 325
		f 3 794 795 796
		mu 0 3 367 368 369
		f 3 797 798 799
		mu 0 3 370 371 372
		f 3 -782 -771 800
		mu 0 3 363 356 355
		f 3 801 802 803
		mu 0 3 373 374 375
		f 3 804 805 -773
		mu 0 3 357 376 355
		f 3 806 807 808
		mu 0 3 376 377 378
		f 3 809 -722 810
		mu 0 3 379 319 318
		f 3 -740 811 812
		mu 0 3 331 316 319
		f 3 813 814 815
		mu 0 3 380 381 382
		f 3 816 817 818
		mu 0 3 383 384 350
		f 3 819 820 821
		mu 0 3 385 386 387
		f 3 822 -768 -810
		mu 0 3 379 352 319
		f 3 823 -823 824
		mu 0 3 388 352 379
		f 3 -824 825 826
		mu 0 3 352 388 383
		f 3 -827 -819 827
		mu 0 3 352 383 350
		f 3 828 829 830
		mu 0 3 364 349 382
		f 3 831 832 833
		mu 0 3 384 389 390
		f 3 -832 -817 834
		mu 0 3 389 384 383
		f 3 -835 -826 835
		mu 0 3 389 383 388
		f 3 836 837 -836
		mu 0 3 388 386 389
		f 3 -833 -838 838
		mu 0 3 390 389 386
		f 3 839 840 -825
		mu 0 3 379 391 388
		f 3 841 -841 842
		mu 0 3 387 388 391
		f 3 843 844 845
		mu 0 3 392 391 358
		f 3 -777 846 -846
		mu 0 3 358 360 392
		f 3 847 -840 848
		mu 0 3 393 391 379
		f 3 -848 849 -845
		mu 0 3 391 393 358
		f 3 -774 850 851
		mu 0 3 354 358 318
		f 3 -844 852 853
		mu 0 3 391 392 385
		f 3 854 -762 855
		mu 0 3 353 350 330
		f 3 -735 856 -737
		mu 0 3 328 327 329
		f 3 -792 857 858
		mu 0 3 366 322 394
		f 3 -738 859 860
		mu 0 3 330 329 323
		f 3 -812 -718 861
		mu 0 3 319 316 317
		f 3 -741 862 -858
		mu 0 3 322 331 394
		f 3 -767 863 -813
		mu 0 3 319 353 331
		f 3 -864 864 -863
		mu 0 3 331 353 394
		f 3 -784 865 866
		mu 0 3 356 364 395
		f 3 -866 867 868
		mu 0 3 395 364 396
		f 3 869 -851 -850
		mu 0 3 393 318 358
		f 3 870 871 -868
		mu 0 3 364 381 396
		f 3 -815 -871 -831
		mu 0 3 382 381 364
		f 3 872 -806 873
		mu 0 3 374 355 376
		f 3 874 875 876
		mu 0 3 397 398 342
		f 3 -753 -876 877
		mu 0 3 340 342 398
		f 3 878 879 -795
		mu 0 3 367 399 368
		f 3 880 881 882
		mu 0 3 400 401 342
		f 3 883 884 885
		mu 0 3 400 341 402
		f 3 886 887 888
		mu 0 3 403 334 337
		f 3 -877 -882 889
		mu 0 3 397 342 401
		f 3 890 -789 -857
		mu 0 3 327 365 329
		f 3 891 892 893
		mu 0 3 404 351 405
		f 3 894 895 896
		mu 0 3 406 380 407
		f 3 -837 -842 -821
		mu 0 3 386 388 387
		f 3 -854 -822 -843
		mu 0 3 391 385 387
		f 3 -814 897 -872
		mu 0 3 381 380 396
		f 3 898 899 -898
		mu 0 3 380 408 396
		f 3 900 -853 -847
		mu 0 3 360 385 392
		f 3 -899 -895 901
		mu 0 3 408 380 406;
	setAttr ".fc[500:999]"
		f 3 -791 -731 -860
		mu 0 3 329 324 323
		f 3 -786 -732 902
		mu 0 3 362 325 324
		f 3 903 904 -859
		mu 0 3 394 323 366
		f 3 -905 -733 -793
		mu 0 3 366 323 325
		f 3 905 -736 -763
		mu 0 3 350 326 328
		f 3 -892 906 -764
		mu 0 3 351 404 349
		f 3 -865 -856 907
		mu 0 3 394 353 330
		f 3 -861 -904 -908
		mu 0 3 330 323 394
		f 3 -781 -758 908
		mu 0 3 361 346 321
		f 3 909 -794 -785
		mu 0 3 361 322 325
		f 3 -761 -829 -787
		mu 0 3 347 349 364
		f 3 -828 -855 -766
		mu 0 3 352 350 353
		f 3 -752 -884 -883
		mu 0 3 342 341 400
		f 3 910 -744 -887
		mu 0 3 403 332 334
		f 3 -803 -874 911
		mu 0 3 375 374 376
		f 3 912 -712 -715
		mu 0 3 315 311 313
		f 3 -756 913 914
		mu 0 3 343 345 369
		f 3 -745 915 -748
		mu 0 3 336 335 338
		f 3 916 -875 917
		mu 0 3 372 398 397
		f 3 918 919 -750
		mu 0 3 339 409 336
		f 3 -797 -914 920
		mu 0 3 367 369 345
		f 3 921 -878 922
		mu 0 3 410 340 398
		f 3 -923 923 924
		mu 0 3 410 398 371
		f 3 -799 -924 -917
		mu 0 3 372 371 398
		f 3 -811 -870 -849
		mu 0 3 379 318 393
		f 3 -723 -862 925
		mu 0 3 314 319 317
		f 3 -910 -909 -728
		mu 0 3 322 361 321
		f 3 -729 -726 -716
		mu 0 3 316 321 308
		f 3 -926 -720 -714
		mu 0 3 314 317 315
		f 3 926 -721 -713
		mu 0 3 313 318 314
		f 3 -852 -927 -769
		mu 0 3 354 318 313
		f 3 -888 927 -747
		mu 0 3 337 334 335
		f 3 928 -928 -743
		mu 0 3 333 335 334
		f 3 929 930 931
		mu 0 3 411 311 412
		f 3 932 -709 933
		mu 0 3 413 308 310
		f 3 934 935 -719
		mu 0 3 308 414 315
		f 3 936 937 938
		mu 0 3 415 416 310
		f 3 939 -935 -933
		mu 0 3 413 414 308
		f 3 940 -934 -938
		mu 0 3 416 413 310
		f 3 -931 -913 941
		mu 0 3 412 311 315
		f 3 942 -725 -930
		mu 0 3 411 320 311
		f 3 943 944 945
		mu 0 3 357 417 377
		f 3 946 -942 -936
		mu 0 3 414 412 315
		f 3 -946 -807 -805
		mu 0 3 357 377 376
		f 3 947 948 949
		mu 0 3 418 419 420
		f 3 950 951 952
		mu 0 3 421 422 423
		f 3 953 954 955
		mu 0 3 422 424 425
		f 3 956 957 958
		mu 0 3 426 427 418
		f 3 959 960 -958
		mu 0 3 427 424 418
		f 3 961 962 963
		mu 0 3 425 428 429
		f 3 964 -953 965
		mu 0 3 430 421 423
		f 3 966 967 -950
		mu 0 3 420 431 418
		f 3 968 969 970
		mu 0 3 432 426 431
		f 3 971 972 973
		mu 0 3 433 434 435
		f 3 974 975 976
		mu 0 3 436 437 438
		f 3 977 978 979
		mu 0 3 437 439 440
		f 3 -969 980 981
		mu 0 3 426 432 441
		f 3 982 983 984
		mu 0 3 442 443 444
		f 3 985 986 987
		mu 0 3 445 446 447
		f 3 988 989 990
		mu 0 3 447 448 449
		f 3 991 992 993
		mu 0 3 450 451 452
		f 3 994 995 996
		mu 0 3 453 454 455
		f 3 997 -967 998
		mu 0 3 456 431 420
		f 3 999 1000 1001
		mu 0 3 457 458 459
		f 3 -978 1002 1003
		mu 0 3 439 437 460
		f 3 1004 -1001 1005
		mu 0 3 461 459 458
		f 3 1006 1007 1008
		mu 0 3 462 428 463
		f 3 1009 -952 1010
		mu 0 3 464 423 422
		f 3 1011 1012 1013
		mu 0 3 465 466 467
		f 3 1014 1015 1016
		mu 0 3 468 469 464
		f 3 1017 -1015 1018
		mu 0 3 470 469 468
		f 3 1019 1020 1021
		mu 0 3 471 456 472
		f 3 1022 1023 1024
		mu 0 3 467 473 474
		f 3 1025 1026 -1022
		mu 0 3 472 434 471
		f 3 1027 -1024 1028
		mu 0 3 457 474 473
		f 3 1029 1030 1031
		mu 0 3 440 435 475
		f 3 1032 1033 1034
		mu 0 3 432 434 476
		f 3 1035 1036 1037
		mu 0 3 477 478 479
		f 3 1038 1039 1040
		mu 0 3 480 481 482
		f 3 1041 -1014 -1025
		mu 0 3 474 465 467
		f 3 1042 1043 1044
		mu 0 3 483 484 485
		f 3 -1012 1045 1046
		mu 0 3 466 465 486
		f 3 1047 1048 1049
		mu 0 3 486 487 488
		f 3 1050 -963 1051
		mu 0 3 489 429 428
		f 3 1052 1053 -982
		mu 0 3 441 428 426
		f 3 1054 1055 1056
		mu 0 3 490 491 492
		f 3 1057 1058 1059
		mu 0 3 493 460 494
		f 3 1060 1061 1062
		mu 0 3 495 496 497
		f 3 -1052 -1007 1063
		mu 0 3 489 428 462
		f 3 1064 -1064 1065
		mu 0 3 498 489 462
		f 3 1066 1067 -1066
		mu 0 3 462 493 498
		f 3 1068 -1058 -1067
		mu 0 3 462 460 493
		f 3 1069 1070 1071
		mu 0 3 473 491 458
		f 3 1072 1073 1074
		mu 0 3 494 499 500
		f 3 1075 -1060 -1075
		mu 0 3 500 493 494
		f 3 1076 -1068 -1076
		mu 0 3 500 498 493
		f 3 -1077 1077 1078
		mu 0 3 498 500 497
		f 3 1079 -1078 -1074
		mu 0 3 499 497 500
		f 3 -1065 1080 1081
		mu 0 3 489 498 501
		f 3 1082 -1081 1083
		mu 0 3 496 501 498
		f 3 1084 1085 1086
		mu 0 3 502 468 501
		f 3 -1085 1087 -1019
		mu 0 3 468 502 470
		f 3 1088 -1082 1089
		mu 0 3 503 489 501
		f 3 -1086 1090 -1090
		mu 0 3 501 468 503
		f 3 1091 1092 -1017
		mu 0 3 464 429 468
		f 3 1093 1094 -1087
		mu 0 3 501 495 502
		f 3 1095 -1004 1096
		mu 0 3 463 439 460
		f 3 -980 1097 -976
		mu 0 3 437 440 438
		f 3 1098 1099 -1035
		mu 0 3 476 504 432
		f 3 1100 1101 -979
		mu 0 3 439 433 440
		f 3 1102 -957 -1054
		mu 0 3 428 427 426
		f 3 -1100 1103 -981
		mu 0 3 432 504 441
		f 3 -1053 1104 -1008
		mu 0 3 428 441 463
		f 3 -1104 1105 -1105
		mu 0 3 441 504 463
		f 3 1106 1107 -1023
		mu 0 3 467 505 473
		f 3 1108 1109 -1108
		mu 0 3 505 506 473
		f 3 -1091 -1093 1110
		mu 0 3 503 468 429
		f 3 -1110 1111 1112
		mu 0 3 473 506 492
		f 3 -1070 -1113 -1056
		mu 0 3 491 473 492
		f 3 1113 -1046 1114
		mu 0 3 485 486 465
		f 3 1115 1116 1117
		mu 0 3 507 451 508
		f 3 1118 -1117 -992
		mu 0 3 450 508 451
		f 3 -1038 1119 1120
		mu 0 3 477 479 509
		f 3 1121 1122 1123
		mu 0 3 510 451 511
		f 3 1124 1125 1126
		mu 0 3 510 512 452
		f 3 1127 1128 1129
		mu 0 3 513 446 443
		f 3 1130 -1123 -1116
		mu 0 3 507 511 451
		f 3 -1098 -1032 1131
		mu 0 3 438 440 475
		f 3 1132 1133 1134
		mu 0 3 514 515 461
		f 3 1135 1136 1137
		mu 0 3 516 517 490
		f 3 -1062 -1084 -1079
		mu 0 3 497 496 498
		f 3 -1083 -1061 -1094
		mu 0 3 501 496 495
		f 3 -1112 1138 -1057
		mu 0 3 492 506 490
		f 3 -1139 1139 1140
		mu 0 3 490 506 518
		f 3 -1088 -1095 1141
		mu 0 3 470 502 495
		f 3 1142 -1138 -1141
		mu 0 3 518 516 490
		f 3 -1102 -974 -1030
		mu 0 3 440 433 435
		f 3 1143 -973 -1026
		mu 0 3 472 435 434
		f 3 -1099 1144 1145
		mu 0 3 504 476 433
		f 3 -1034 -972 -1145
		mu 0 3 476 434 433
		f 3 -1003 -975 1146
		mu 0 3 460 437 436
		f 3 -1006 1147 -1135
		mu 0 3 461 458 514
		f 3 1148 -1096 -1106
		mu 0 3 504 439 463
		f 3 -1149 -1146 -1101
		mu 0 3 439 504 433
		f 3 1149 -998 -1020
		mu 0 3 471 431 456
		f 3 -1027 -1033 1150
		mu 0 3 471 434 432
		f 3 -1029 -1072 -1000
		mu 0 3 457 473 458
		f 3 -1009 -1097 -1069
		mu 0 3 462 463 460
		f 3 -1122 -1127 -993
		mu 0 3 451 510 452
		f 3 -1130 -983 1151
		mu 0 3 513 443 442
		f 3 1152 -1114 -1044
		mu 0 3 484 486 485
		f 3 -954 -951 1153
		mu 0 3 424 422 421
		f 3 1154 1155 -995
		mu 0 3 453 478 454
		f 3 -991 1156 -988
		mu 0 3 447 449 445
		f 3 1157 -1118 1158
		mu 0 3 481 507 508
		f 3 -989 1159 1160
		mu 0 3 448 447 519
		f 3 1161 -1156 -1036
		mu 0 3 477 454 478
		f 3 1162 -1119 1163
		mu 0 3 520 508 450
		f 3 1164 1165 -1163
		mu 0 3 520 482 508
		f 3 -1159 -1166 -1040
		mu 0 3 481 508 482
		f 3 -1089 -1111 -1051
		mu 0 3 489 503 429
		f 3 1166 -1103 -962
		mu 0 3 425 427 428
		f 3 -971 -1150 -1151
		mu 0 3 432 431 471
		f 3 -959 -968 -970
		mu 0 3 426 418 431
		f 3 -955 -960 -1167
		mu 0 3 425 424 427
		f 3 -956 -964 1167
		mu 0 3 422 425 429
		f 3 -1011 -1168 -1092
		mu 0 3 464 422 429
		f 3 -986 1168 -1129
		mu 0 3 446 445 443
		f 3 -984 -1169 1169
		mu 0 3 444 443 445
		f 3 1170 1171 1172
		mu 0 3 521 522 421
		f 3 1173 -948 1174
		mu 0 3 523 419 418
		f 3 -961 1175 1176
		mu 0 3 418 424 524
		f 3 1177 1178 1179
		mu 0 3 525 419 526
		f 3 -1175 -1177 1180
		mu 0 3 523 418 524
		f 3 -1179 -1174 1181
		mu 0 3 526 419 523
		f 3 1182 -1154 -1172
		mu 0 3 522 424 421
		f 3 -1173 -965 1183
		mu 0 3 521 421 430
		f 3 1184 1185 1186
		mu 0 3 466 488 527
		f 3 -1176 -1183 1187
		mu 0 3 524 424 522
		f 3 -1047 -1050 -1185
		mu 0 3 466 486 488
		f 3 1188 1189 1190
		mu 0 3 731 732 733
		f 3 1191 1192 1193
		mu 0 3 734 735 736
		f 3 1194 1195 -1192
		mu 0 3 734 927 735
		f 3 1196 1197 1198
		mu 0 3 928 929 740
		f 3 1199 1200 1201
		mu 0 3 741 742 930
		f 3 1202 -1202 -1199
		mu 0 3 740 741 931
		f 3 1203 1204 -1193
		mu 0 3 735 743 736
		f 3 -1197 1205 1206
		mu 0 3 739 738 744
		f 3 1207 1208 -1207
		mu 0 3 744 745 739
		f 3 1209 1210 1211
		mu 0 3 746 747 748
		f 3 1212 -1206 1213
		mu 0 3 746 744 738
		f 3 1214 -1211 1215
		mu 0 3 749 748 747
		f 3 1216 1217 1218
		mu 0 3 750 737 751
		f 3 -1217 1219 -1196
		mu 0 3 737 750 735
		f 3 1220 1221 1222
		mu 0 3 752 733 753
		f 3 -1210 -1214 1223
		mu 0 3 747 746 738
		f 3 1224 1225 1226
		mu 0 3 754 746 755
		f 3 -1225 1227 -1213
		mu 0 3 746 754 744
		f 3 -1208 -1228 1228
		mu 0 3 745 744 754
		f 3 1229 1230 -1229
		mu 0 3 754 756 745
		f 3 1231 1232 1233
		mu 0 3 749 757 758
		f 3 1234 1235 -1234
		mu 0 3 758 759 749
		f 3 1236 1237 1238
		mu 0 3 758 760 761
		f 3 -1237 -1233 1239
		mu 0 3 760 758 757
		f 3 -1212 1240 1241
		mu 0 3 746 748 762
		f 3 1242 -1226 -1242
		mu 0 3 762 755 746
		f 3 1243 -1236 1244
		mu 0 3 762 749 759
		f 3 -1244 -1241 -1215
		mu 0 3 749 762 748
		f 3 1245 1246 1247
		mu 0 3 763 751 764
		f 3 -1246 1248 -1219
		mu 0 3 751 763 750
		f 3 -1238 1249 1250
		mu 0 3 761 760 763
		f 3 -1249 -1250 1251
		mu 0 3 750 763 760
		f 3 1252 -1227 1253
		mu 0 3 765 754 755
		f 3 -1253 1254 1255
		mu 0 3 754 765 766
		f 3 1256 -1256 1257
		mu 0 3 767 754 766
		f 3 -1257 1258 -1230
		mu 0 3 754 767 756
		f 3 1259 1260 1261
		mu 0 3 768 758 769
		f 3 -1260 1262 -1235
		mu 0 3 758 768 759
		f 3 -1261 1263 1264
		mu 0 3 769 758 770
		f 3 1265 -1264 -1239
		mu 0 3 761 770 758
		f 3 -1266 -1251 1266
		mu 0 3 770 761 763
		f 3 1267 1268 -1267
		mu 0 3 763 771 770
		f 3 -1248 1269 1270
		mu 0 3 763 764 772
		f 3 1271 -1268 -1271
		mu 0 3 772 771 763
		f 3 -1254 -1243 1272
		mu 0 3 765 755 762
		f 3 1273 1274 -1273
		mu 0 3 762 773 765
		f 3 -1245 -1263 1275
		mu 0 3 762 759 768
		f 3 1276 -1274 -1276
		mu 0 3 768 773 762
		f 3 1277 1278 1279
		mu 0 3 774 766 775
		f 3 1280 -1279 -1255
		mu 0 3 765 775 766
		f 3 1281 -1278 1282
		mu 0 3 776 766 774
		f 3 1283 1284 1285
		mu 0 3 777 778 752
		f 3 1286 -1265 1287
		mu 0 3 732 769 770
		f 3 -1287 1288 -1262
		mu 0 3 769 732 768
		f 3 1289 1290 1291
		mu 0 3 779 770 753
		f 3 -1290 1292 -1288
		mu 0 3 770 779 732
		f 3 -1269 1293 1294
		mu 0 3 770 771 752
		f 3 -1222 1295 -1292
		mu 0 3 753 733 779
		f 3 1296 1297 1298
		mu 0 3 752 772 780
		f 3 1299 -1221 -1285
		mu 0 3 778 733 752
		f 3 1300 1301 1302
		mu 0 3 775 773 781
		f 3 -1301 -1281 -1275
		mu 0 3 773 775 765
		f 3 1303 1304 1305
		mu 0 3 781 782 783
		f 3 1306 1307 -1277
		mu 0 3 768 782 773
		f 3 -1305 1308 1309
		mu 0 3 783 782 732
		f 3 -1282 1310 -1258
		mu 0 3 766 776 767
		f 3 -1284 1311 1312
		mu 0 3 778 777 784
		f 3 1313 1314 1315
		mu 0 3 785 786 787
		f 3 1316 1317 1318
		mu 0 3 788 789 787
		f 3 1319 1320 1321
		mu 0 3 733 789 790
		f 3 -1319 -1315 1322
		mu 0 3 788 787 786
		f 3 1323 1324 1325
		mu 0 3 791 788 792
		f 3 -1303 1326 1327
		mu 0 3 775 781 793
		f 3 1328 1329 1330
		mu 0 3 794 795 796
		f 3 -1306 1331 1332
		mu 0 3 781 783 797
		f 3 1333 -1327 -1333
		mu 0 3 797 793 781
		f 3 1334 -1330 1335
		mu 0 3 798 796 795
		f 3 1336 1337 1338
		mu 0 3 775 799 800
		f 3 1339 1340 1341
		mu 0 3 801 802 791
		f 3 1342 -1332 1343
		mu 0 3 731 797 783
		f 3 1344 1345 1346
		mu 0 3 803 804 805
		f 3 1347 1348 1349
		mu 0 3 774 806 807
		f 3 1350 1351 1352
		mu 0 3 536 528 537
		f 3 -1351 1353 -1314
		mu 0 3 528 536 529
		f 3 1354 1355 1356
		mu 0 3 538 530 539
		f 3 1357 -1356 1358
		mu 0 3 540 539 530
		f 3 1359 -1354 1360
		mu 0 3 539 529 536
		f 3 -1360 -1358 1361
		mu 0 3 529 539 540
		f 3 1362 1363 1364
		mu 0 3 541 531 542
		f 3 -1363 1365 -1329
		mu 0 3 531 541 532
		f 3 1366 1367 1368
		mu 0 3 542 534 543
		f 3 -1367 -1364 1369
		mu 0 3 534 542 531
		f 3 1370 -1355 1371
		mu 0 3 534 530 538
		f 3 1372 -1368 -1372
		mu 0 3 538 543 534
		f 3 -1336 -1366 1373
		mu 0 3 533 532 541
		f 3 1374 1375 -1374
		mu 0 3 541 544 533
		f 3 1376 -1376 1377
		mu 0 3 535 533 544
		f 3 1378 1379 -1378
		mu 0 3 544 545 535
		f 3 -1321 1380 1381
		mu 0 3 790 789 791
		f 3 -1320 1382 1383
		mu 0 3 789 733 808
		f 3 1384 1385 -1343
		mu 0 3 731 790 797
		f 3 1386 -1340 1387
		mu 0 3 809 802 801
		f 3 1388 -1338 1389
		mu 0 3 805 800 799
		f 3 1390 -1337 -1328
		mu 0 3 793 799 775
		f 3 -1346 1391 -1389
		mu 0 3 805 804 800
		f 3 -1339 1392 -1280
		mu 0 3 775 800 774
		f 3 -1370 1393 -1388
		mu 0 3 801 794 809
		f 3 1394 -1394 -1331
		mu 0 3 796 809 794
		f 3 -1341 1395 -1382
		mu 0 3 791 802 790
		f 3 -1322 -1385 -1191
		mu 0 3 733 790 731
		f 3 -1300 1396 -1383
		mu 0 3 733 778 808
		f 3 1397 -1397 -1313
		mu 0 3 784 808 778
		f 3 -1393 1398 -1348
		mu 0 3 774 800 806
		f 3 1399 1400 -1316
		mu 0 3 787 810 785
		f 3 -1223 -1291 -1295
		mu 0 3 752 753 770
		f 3 -1272 -1297 -1294
		mu 0 3 771 772 752
		f 3 -1190 -1293 -1296
		mu 0 3 733 732 779
		f 3 -1189 -1344 -1310
		mu 0 3 732 731 783
		f 3 -1302 -1308 -1304
		mu 0 3 781 773 782
		f 3 -1307 -1289 -1309
		mu 0 3 782 768 732
		f 3 -1350 1401 -1283
		mu 0 3 774 807 776
		f 3 -1299 1402 -1286
		mu 0 3 752 780 777
		f 3 1403 -1323 -1362
		mu 0 3 811 788 786
		f 3 -1404 -1359 -1325
		mu 0 3 788 811 792
		f 3 -1384 1404 -1318
		mu 0 3 789 808 787
		f 3 -1400 -1405 1405
		mu 0 3 810 787 808
		f 3 -1381 -1317 -1324
		mu 0 3 791 789 788
		f 3 -1342 -1326 -1371
		mu 0 3 801 791 792
		f 3 -1334 1406 1407
		mu 0 3 793 797 802
		f 3 -1407 -1386 -1396
		mu 0 3 802 797 790
		f 3 -1391 1408 1409
		mu 0 3 799 793 809
		f 3 -1387 -1409 -1408
		mu 0 3 802 809 793
		f 3 -1398 1410 -1406
		mu 0 3 808 784 810
		f 3 1411 -1399 -1392
		mu 0 3 804 806 800
		f 3 1412 -1390 1413
		mu 0 3 796 805 799
		f 3 -1347 1414 -1377
		mu 0 3 803 805 798
		f 3 -1415 -1413 -1335
		mu 0 3 798 805 796
		f 3 -1395 -1414 -1410
		mu 0 3 809 796 799
		f 3 1415 1416 1417
		mu 0 3 812 813 814
		f 3 1418 1419 1420
		mu 0 3 815 816 817
		f 3 -1419 1421 1422
		mu 0 3 816 815 818
		f 3 1423 1424 1425
		mu 0 3 819 820 821
		f 3 1426 -1420 1427
		mu 0 3 819 817 816
		f 3 1428 -1425 1429
		mu 0 3 822 821 820
		f 3 1430 1431 1432
		mu 0 3 823 824 825
		f 3 1433 1434 -1433
		mu 0 3 825 826 823
		f 3 1435 1436 1437
		mu 0 3 827 828 813
		f 3 1438 -1427 -1426
		mu 0 3 821 817 819
		f 3 1439 1440 1441
		mu 0 3 829 830 819
		f 3 -1428 1442 -1442
		mu 0 3 819 816 829
		f 3 1443 -1443 -1423
		mu 0 3 818 829 816
		f 3 -1444 1444 1445
		mu 0 3 829 818 831
		f 3 1446 1447 1448
		mu 0 3 822 832 833
		f 3 -1447 1449 1450
		mu 0 3 832 822 834
		f 3 1451 1452 1453
		mu 0 3 832 835 836
		f 3 1454 -1448 -1454
		mu 0 3 836 833 832
		f 3 1455 1456 -1424
		mu 0 3 819 837 820
		f 3 -1456 -1441 1457
		mu 0 3 837 819 830
		f 3 1458 -1450 1459
		mu 0 3 837 834 822
		f 3 -1430 -1457 -1460
		mu 0 3 822 820 837
		f 3 1460 1461 1462
		mu 0 3 838 839 824
		f 3 -1431 1463 -1463
		mu 0 3 824 823 838
		f 3 1464 1465 -1453
		mu 0 3 835 838 836
		f 3 1466 -1466 -1464
		mu 0 3 823 836 838
		f 3 1467 -1440 1468
		mu 0 3 840 830 829
		f 3 1469 1470 -1469
		mu 0 3 829 841 840
		f 3 1471 -1470 1472
		mu 0 3 842 841 829
		f 3 -1446 1473 -1473
		mu 0 3 829 831 842
		f 3 1474 1475 1476
		mu 0 3 843 844 832
		f 3 -1451 1477 -1477
		mu 0 3 832 834 843
		f 3 1478 1479 -1476
		mu 0 3 844 845 832
		f 3 -1452 -1480 1480
		mu 0 3 835 832 845
		f 3 1481 -1465 -1481
		mu 0 3 845 838 835
		f 3 -1482 1482 1483
		mu 0 3 838 845 846
		f 3 1484 1485 -1461
		mu 0 3 838 847 839
		f 3 -1485 -1484 1486
		mu 0 3 847 838 846
		f 3 1487 -1458 -1468
		mu 0 3 840 837 830
		f 3 -1488 1488 1489
		mu 0 3 837 840 848
		f 3 1490 -1478 -1459
		mu 0 3 837 843 834
		f 3 -1491 -1490 1491
		mu 0 3 843 837 848
		f 3 1492 1493 1494
		mu 0 3 849 850 841
		f 3 -1471 -1494 1495
		mu 0 3 840 841 850
		f 3 1496 -1495 1497
		mu 0 3 851 849 841
		f 3 1498 1499 1500
		mu 0 3 852 827 853
		f 3 1501 -1479 1502
		mu 0 3 814 845 844
		f 3 -1475 1503 -1503
		mu 0 3 844 843 814
		f 3 1504 1505 1506
		mu 0 3 854 828 845
		f 3 -1502 1507 -1507
		mu 0 3 845 814 854
		f 3 1508 1509 -1483
		mu 0 3 845 827 846
		f 3 -1505 1510 -1437
		mu 0 3 828 854 813
		f 3 1511 1512 1513
		mu 0 3 827 855 847
		f 3 -1500 -1438 1514
		mu 0 3 853 827 813
		f 3 1515 1516 1517
		mu 0 3 850 856 848
		f 3 -1489 -1496 -1518
		mu 0 3 848 840 850
		f 3 1518 1519 1520
		mu 0 3 856 857 858
		f 3 -1492 1521 1522
		mu 0 3 843 848 858
		f 3 1523 1524 -1520
		mu 0 3 857 814 858
		f 3 -1472 1525 -1498
		mu 0 3 841 842 851
		f 3 1526 1527 -1501
		mu 0 3 853 859 852
		f 3 1528 1529 1530
		mu 0 3 860 861 862
		f 3 1531 1532 1533
		mu 0 3 863 861 864
		f 3 1534 1535 1536
		mu 0 3 813 865 864
		f 3 1537 -1530 -1532
		mu 0 3 863 862 861
		f 3 1538 1539 1540
		mu 0 3 866 867 863
		f 3 1541 1542 -1516
		mu 0 3 850 868 856
		f 3 1543 1544 1545
		mu 0 3 694 695 696
		f 3 1546 1547 -1519
		mu 0 3 856 870 857
		f 3 -1547 -1543 1548
		mu 0 3 870 856 868
		f 3 1549 -1545 1550
		mu 0 3 697 696 695
		f 3 1551 1552 1553
		mu 0 3 850 871 872
		f 3 1554 1555 1556
		mu 0 3 873 866 874
		f 3 1557 -1548 1558
		mu 0 3 812 857 870
		f 3 1559 1560 1561
		mu 0 3 875 876 877
		f 3 1562 1563 1564
		mu 0 3 849 878 879
		f 3 1565 1566 1567
		mu 0 3 701 702 693
		f 3 -1531 1568 -1568
		mu 0 3 546 547 552
		f 3 1569 1570 1571
		mu 0 3 553 554 548
		f 3 1572 -1571 1573
		mu 0 3 555 548 554
		f 3 1574 -1569 1575
		mu 0 3 554 552 547
		f 3 1576 -1574 -1576
		mu 0 3 547 555 554
		f 3 1577 1578 1579
		mu 0 3 556 557 549
		f 3 -1546 1580 -1580
		mu 0 3 694 696 703
		f 3 1581 1582 1583
		mu 0 3 557 558 678
		f 3 1584 -1579 -1584
		mu 0 3 679 549 557
		f 3 1585 -1572 1586
		mu 0 3 680 553 548
		f 3 -1586 -1583 1587
		mu 0 3 553 681 682
		f 3 1588 -1581 -1550
		mu 0 3 697 703 696
		f 3 -1589 1589 1590
		mu 0 3 703 697 704
		f 3 1591 -1590 1592
		mu 0 3 551 559 550
		f 3 -1592 1593 1594
		mu 0 3 704 699 705
		f 3 1595 1596 -1536
		mu 0 3 865 866 864
		f 3 1597 1598 -1537
		mu 0 3 864 880 813
		f 3 -1559 1599 1600
		mu 0 3 812 870 865
		f 3 1601 -1557 1602
		mu 0 3 881 873 874
		f 3 1603 -1553 1604
		mu 0 3 876 872 871
		f 3 -1542 -1554 1605
		mu 0 3 868 850 872
		f 3 -1605 1606 -1561
		mu 0 3 876 871 877
		f 3 -1493 1607 -1552
		mu 0 3 850 849 871
		f 3 -1602 1608 -1585
		mu 0 3 698 706 694
		f 3 -1544 -1609 1609
		mu 0 3 695 694 706
		f 3 -1596 1610 -1556
		mu 0 3 866 865 874
		f 3 -1416 -1601 -1535
		mu 0 3 813 812 865
		f 3 -1599 1611 -1515
		mu 0 3 813 880 853
		f 3 -1527 -1612 1612
		mu 0 3 859 853 880
		f 3 -1565 1613 -1608
		mu 0 3 849 879 871
		f 3 -1529 1614 1615
		mu 0 3 861 860 882
		f 3 -1509 -1506 -1436
		mu 0 3 827 845 828
		f 3 -1510 -1514 -1487
		mu 0 3 846 827 847
		f 3 -1511 -1508 -1417
		mu 0 3 813 854 814
		f 3 -1524 -1558 -1418
		mu 0 3 814 857 812
		f 3 -1521 -1522 -1517
		mu 0 3 856 858 848
		f 3 -1525 -1504 -1523
		mu 0 3 858 814 843
		f 3 -1497 1616 -1563
		mu 0 3 849 851 878
		f 3 -1499 1617 -1512
		mu 0 3 827 852 855
		f 3 -1577 -1538 1618
		mu 0 3 883 862 863
		f 3 -1540 -1573 -1619
		mu 0 3 863 867 883
		f 3 -1533 1619 -1598
		mu 0 3 864 861 880
		f 3 1620 -1620 -1616
		mu 0 3 882 880 861
		f 3 -1541 -1534 -1597
		mu 0 3 866 863 864
		f 3 -1587 -1539 -1555
		mu 0 3 873 867 866
		f 3 1621 1622 -1549
		mu 0 3 868 874 870
		f 3 -1611 -1600 -1623
		mu 0 3 874 865 870
		f 3 1623 1624 -1606
		mu 0 3 872 881 868
		f 3 -1622 -1625 -1603
		mu 0 3 874 868 881
		f 3 -1621 1625 -1613
		mu 0 3 880 882 859
		f 3 -1607 -1614 1626
		mu 0 3 877 871 879
		f 3 1627 -1604 1628
		mu 0 3 869 872 876
		f 3 -1593 1629 -1560
		mu 0 3 699 697 700
		f 3 -1551 -1629 -1630
		mu 0 3 697 695 700
		f 3 -1624 -1628 -1610
		mu 0 3 881 872 869
		f 3 1630 1631 1632
		mu 0 3 884 885 886
		f 3 1633 1634 1635
		mu 0 3 887 888 889
		f 3 1636 1637 1638
		mu 0 3 890 887 885
		f 3 1639 -1635 1640
		mu 0 3 891 889 888
		f 3 1641 1642 1643
		mu 0 3 560 561 562
		f 3 1644 1645 -1631
		mu 0 3 884 892 885
		f 3 1646 -1641 1647
		mu 0 3 893 891 888
		f 3 1648 -1632 -1638
		mu 0 3 887 886 885
		f 3 -1637 1649 -1634
		mu 0 3 887 890 888
		f 3 1650 1651 1652
		mu 0 3 563 564 565
		f 3 1653 1654 1655
		mu 0 3 566 567 568
		f 3 1656 1657 1658
		mu 0 3 569 570 571
		f 3 1659 1660 1661
		mu 0 3 572 573 574
		f 3 1662 1663 1664
		mu 0 3 575 576 573
		f 3 1665 1666 1667
		mu 0 3 577 578 579
		f 3 1668 1669 1670
		mu 0 3 579 580 581
		f 3 1671 1672 1673
		mu 0 3 582 572 569
		f 3 1674 1675 1676
		mu 0 3 707 708 709
		f 3 1677 1678 1679
		mu 0 3 562 585 586
		f 3 1680 1681 1682
		mu 0 3 710 711 707
		f 3 1683 1684 -1662
		mu 0 3 574 570 572
		f 3 1685 1686 1687
		mu 0 3 588 570 589
		f 3 1688 1689 1690
		mu 0 3 590 591 592
		f 3 1691 1692 1693
		mu 0 3 593 594 595
		f 3 1694 -1659 1695
		mu 0 3 596 569 571
		f 3 1696 1697 1698
		mu 0 3 597 598 599
		f 3 -1676 1699 1700
		mu 0 3 584 583 600
		f 3 1701 1702 1703
		mu 0 3 601 590 602
		f 3 -1667 1704 -1669
		mu 0 3 579 578 580
		f 3 1705 1706 1707
		mu 0 3 571 588 595
		f 3 1708 1709 1710
		mu 0 3 586 603 604
		f 3 1711 1712 -1700
		mu 0 3 583 605 600
		f 3 1713 -1710 1714
		mu 0 3 606 604 603
		f 3 -1679 1715 -1709
		mu 0 3 586 585 603
		f 3 1716 1717 1718
		mu 0 3 713 714 712
		f 3 1719 -1680 1720
		mu 0 3 593 562 586
		f 3 1721 -1701 1722
		mu 0 3 608 584 600
		f 3 -1675 -1682 1723
		mu 0 3 708 707 711
		f 3 1724 1725 1726
		mu 0 3 593 604 609
		f 3 -1718 1727 -1726
		mu 0 3 604 607 609
		f 3 1728 1729 1730
		mu 0 3 605 610 611
		f 3 1731 1732 1733
		mu 0 3 612 579 600
		f 3 1734 -1695 1735
		mu 0 3 672 569 596
		f 3 1736 1737 -1714
		mu 0 3 606 613 604
		f 3 1738 1739 -1738
		mu 0 3 715 716 712
		f 3 1740 -1719 -1740
		mu 0 3 716 713 712
		f 3 1741 -1724 1742
		mu 0 3 610 583 587
		f 3 1743 1744 1745
		mu 0 3 614 577 605
		f 3 1746 1747 1748
		mu 0 3 615 611 587
		f 3 -1743 -1748 -1730
		mu 0 3 610 587 611;
	setAttr ".fc[1000:1215]"
		f 3 1749 -1668 -1732
		mu 0 3 612 577 579
		f 3 1750 1751 1752
		mu 0 3 611 616 617
		f 3 1753 -1639 1754
		mu 0 3 894 890 885
		f 3 1755 1756 -1755
		mu 0 3 885 895 894
		f 3 1757 -1756 1758
		mu 0 3 896 895 885
		f 3 1759 1760 1761
		mu 0 3 897 888 898
		f 3 -1760 1762 -1648
		mu 0 3 888 897 893
		f 3 1763 1764 1765
		mu 0 3 899 900 894
		f 3 1766 1767 -1650
		mu 0 3 890 900 888
		f 3 1768 1769 1770
		mu 0 3 901 902 903
		f 3 1771 1772 1773
		mu 0 3 904 905 906
		f 3 1774 1775 1776
		mu 0 3 907 903 904
		f 3 1777 -1773 1778
		mu 0 3 932 906 905
		f 3 1779 1780 1781
		mu 0 3 560 618 619
		f 3 -1771 1782 1783
		mu 0 3 901 903 908
		f 3 1784 -1778 -1647
		mu 0 3 933 906 934
		f 3 -1776 -1770 1785
		mu 0 3 904 903 902
		f 3 -1774 1786 -1777
		mu 0 3 904 906 907
		f 3 1787 1788 1789
		mu 0 3 909 910 911
		f 3 1790 1791 1792
		mu 0 3 620 621 622
		f 3 1793 1794 1795
		mu 0 3 621 939 940
		f 3 1796 1797 1798
		mu 0 3 623 624 625
		f 3 1799 1800 1801
		mu 0 3 626 627 618
		f 3 1802 -1661 1803
		mu 0 3 628 574 573
		f 3 1804 -1798 1805
		mu 0 3 573 625 624
		f 3 1806 1807 1808
		mu 0 3 629 630 631
		f 3 1809 1810 1811
		mu 0 3 632 633 629
		f 3 1812 -1811 1813
		mu 0 3 622 629 633
		f 3 1814 1815 -1799
		mu 0 3 625 691 623
		f 3 1816 1817 1818
		mu 0 3 720 721 722
		f 3 1819 -1819 1820
		mu 0 3 723 720 722
		f 3 1821 -1802 1822
		mu 0 3 589 626 618
		f 3 -1822 1823 1824
		mu 0 3 626 589 574
		f 3 1825 1826 1827
		mu 0 3 637 638 639
		f 3 1828 1829 1830
		mu 0 3 640 641 642
		f 3 1831 -1800 1832
		mu 0 3 643 627 626
		f 3 1833 1834 1835
		mu 0 3 631 644 632
		f 3 1836 1837 1838
		mu 0 3 645 634 646
		f 3 1839 1840 1841
		mu 0 3 941 647 942
		f 3 1842 -1807 1843
		mu 0 3 637 630 629
		f 3 1844 1845 -1801
		mu 0 3 627 641 618
		f 3 1846 1847 -1716
		mu 0 3 585 648 603
		f 3 1848 1849 1850
		mu 0 3 649 645 650
		f 3 -1715 1851 1852
		mu 0 3 606 603 651
		f 3 1853 -1852 -1848
		mu 0 3 648 651 603
		f 3 1854 1855 1856
		mu 0 3 725 724 726
		f 3 1857 1858 1859
		mu 0 3 619 640 648
		f 3 1860 1861 -1839
		mu 0 3 646 652 645
		f 3 1862 1863 -1821
		mu 0 3 635 653 636
		f 3 1864 1865 1866
		mu 0 3 651 640 654
		f 3 -1854 -1859 -1865
		mu 0 3 651 648 640
		f 3 1867 1868 1869
		mu 0 3 653 649 655
		f 3 -1850 1870 1871
		mu 0 3 650 645 630
		f 3 1872 1873 -1835
		mu 0 3 677 656 676
		f 3 -1853 1874 1875
		mu 0 3 606 651 657
		f 3 1876 -1855 1877
		mu 0 3 729 724 725
		f 3 1878 -1875 -1877
		mu 0 3 729 728 724
		f 3 -1820 1879 1880
		mu 0 3 720 723 730
		f 3 -1868 -1863 1881
		mu 0 3 649 653 635
		f 3 1882 1883 1884
		mu 0 3 943 636 655
		f 3 -1870 -1884 -1864
		mu 0 3 653 655 636
		f 3 1885 -1869 1886
		mu 0 3 658 655 649
		f 3 -1872 1887 1888
		mu 0 3 650 630 639
		f 3 1889 1890 -1790
		mu 0 3 911 903 909
		f 3 1891 1892 -1783
		mu 0 3 903 912 908
		f 3 1893 1894 1895
		mu 0 3 913 912 911
		f 3 -1763 1896 -1785
		mu 0 3 935 936 906
		f 3 1897 -1897 1898
		mu 0 3 914 906 937
		f 3 1899 1900 -1787
		mu 0 3 906 915 907
		f 3 -1900 -1898 1901
		mu 0 3 915 906 914
		f 3 1902 -1766 -1757
		mu 0 3 895 899 894
		f 3 1903 -1762 1904
		mu 0 3 916 897 898
		f 3 1905 1906 -1905
		mu 0 3 898 917 916
		f 3 1907 -1764 1908
		mu 0 3 917 900 899
		f 3 -1908 -1906 1909
		mu 0 3 900 917 898
		f 3 1910 -1901 1911
		mu 0 3 909 907 915
		f 3 1912 -1788 -1912
		mu 0 3 915 910 909
		f 3 1913 1914 1915
		mu 0 3 918 914 919
		f 3 1916 -1915 -1899
		mu 0 3 938 919 914
		f 3 -1768 -1910 -1761
		mu 0 3 888 900 898
		f 3 -1767 -1754 -1765
		mu 0 3 900 890 894
		f 3 -1914 1917 -1902
		mu 0 3 914 918 915
		f 3 -1913 -1918 1918
		mu 0 3 910 915 918
		f 3 -1780 1919 -1823
		mu 0 3 618 560 589
		f 3 -1688 -1920 1920
		mu 0 3 588 589 560
		f 3 -1803 1921 -1825
		mu 0 3 574 628 626
		f 3 1922 -1833 -1922
		mu 0 3 628 643 626
		f 3 -1824 -1687 -1684
		mu 0 3 574 589 570
		f 3 -1686 -1706 -1658
		mu 0 3 570 588 571
		f 3 -1707 1923 -1694
		mu 0 3 595 588 593
		f 3 -1644 1924 -1921
		mu 0 3 560 562 588
		f 3 -1860 -1847 1925
		mu 0 3 619 648 585
		f 3 -1782 1926 -1642
		mu 0 3 560 619 561
		f 3 1927 -1759 -1646
		mu 0 3 892 896 885
		f 3 -1903 1928 1929
		mu 0 3 899 895 920
		f 3 -1929 1930 1931
		mu 0 3 920 895 921
		f 3 1932 -1931 1933
		mu 0 3 922 921 895
		f 3 1934 1935 -1789
		mu 0 3 910 923 911
		f 3 1936 -1936 1937
		mu 0 3 924 911 923
		f 3 1938 1939 1940
		mu 0 3 924 925 913
		f 3 1941 -1934 -1758
		mu 0 3 896 922 895
		f 3 -1890 -1895 -1892
		mu 0 3 903 911 912
		f 3 -1911 -1891 -1775
		mu 0 3 907 909 903
		f 3 -1937 -1941 -1896
		mu 0 3 911 924 913
		f 3 -1933 1942 1943
		mu 0 3 921 922 926
		f 3 -1927 -1926 1944
		mu 0 3 561 619 585
		f 3 -1945 -1678 -1643
		mu 0 3 717 719 718
		f 3 -1711 -1725 -1721
		mu 0 3 586 604 593
		f 3 -1925 -1720 -1924
		mu 0 3 588 562 593
		f 3 -1781 1945 -1858
		mu 0 3 619 618 640
		f 3 -1846 -1829 -1946
		mu 0 3 618 641 640
		f 3 -1866 -1831 1946
		mu 0 3 654 640 642
		f 3 1947 -1736 1948
		mu 0 3 659 672 596
		f 3 1949 -1948 1950
		mu 0 3 581 597 675
		f 3 1951 1952 -1797
		mu 0 3 623 676 624
		f 3 1953 -1816 1954
		mu 0 3 660 674 689
		f 3 1955 -1649 1956
		mu 0 3 567 685 688
		f 3 1957 -1698 1958
		mu 0 3 661 599 598
		f 3 -1670 1959 -1950
		mu 0 3 581 580 597
		f 3 -1828 -1888 -1843
		mu 0 3 637 639 630
		f 3 -1836 -1812 -1809
		mu 0 3 631 632 629
		f 3 -1874 1960 1961
		mu 0 3 676 656 643
		f 3 -1961 1962 -1832
		mu 0 3 643 656 627
		f 3 1963 1964 1965
		mu 0 3 582 673 575
		f 3 -1965 1966 1967
		mu 0 3 575 673 683
		f 3 -1673 -1685 -1657
		mu 0 3 569 572 570
		f 3 1968 -1887 1969
		mu 0 3 639 658 649
		f 3 -1729 -1712 -1742
		mu 0 3 610 605 583
		f 3 -1818 -1837 1970
		mu 0 3 635 634 645
		f 3 -1867 1971 -1856
		mu 0 3 724 727 726
		f 3 -1723 1972 1973
		mu 0 3 608 600 662
		f 3 -1727 1974 -1692
		mu 0 3 593 609 594
		f 3 -1699 -1964 1975
		mu 0 3 672 673 582
		f 3 1976 -1697 -1960
		mu 0 3 580 598 597
		f 3 1977 -1977 1978
		mu 0 3 663 598 580
		f 3 -1653 1979 1980
		mu 0 3 563 565 663
		f 3 -1976 -1674 -1735
		mu 0 3 672 582 569
		f 3 1981 -1663 1982
		mu 0 3 686 576 575
		f 3 -1810 -1952 1983
		mu 0 3 633 632 674
		f 3 -1962 1984 -1953
		mu 0 3 676 643 624
		f 3 -1786 1985 -1955
		mu 0 3 689 687 660
		f 3 -1985 -1923 1986
		mu 0 3 624 643 628
		f 3 -1806 -1987 -1804
		mu 0 3 573 624 628
		f 3 -1672 1987 -1660
		mu 0 3 572 582 573
		f 3 1988 1989 -1779
		mu 0 3 692 576 690
		f 3 1990 1991 1992
		mu 0 3 660 684 944
		f 3 -1956 1993 -1633
		mu 0 3 685 567 945
		f 3 -1991 -1986 -1769
		mu 0 3 684 660 687
		f 3 1994 1995 1996
		mu 0 3 664 655 946
		f 3 1997 -1751 1998
		mu 0 3 947 616 611
		f 3 1999 -1999 -1747
		mu 0 3 615 948 611
		f 3 -1885 -1995 2000
		mu 0 3 949 655 664
		f 3 -1745 -1750 2001
		mu 0 3 605 577 612
		f 3 -2002 -1734 -1713
		mu 0 3 605 612 600
		f 3 -1971 -1849 -1882
		mu 0 3 635 645 649
		f 3 -1970 -1851 -1889
		mu 0 3 639 649 650
		f 3 2002 -1996 2003
		mu 0 3 665 950 655
		f 3 -1753 2004 2005
		mu 0 3 611 617 614
		f 3 2006 2007 -1752
		mu 0 3 616 666 617
		f 3 -1841 2008 2009
		mu 0 3 951 647 667
		f 3 2010 -1969 2011
		mu 0 3 667 658 639
		f 3 -1744 2012 2013
		mu 0 3 577 614 590
		f 3 -2008 2014 2015
		mu 0 3 617 666 590
		f 3 2016 2017 2018
		mu 0 3 602 592 663
		f 3 2019 2020 2021
		mu 0 3 668 667 669
		f 3 2022 -2012 -1827
		mu 0 3 638 667 639
		f 3 -2003 2023 -1840
		mu 0 3 952 665 647
		f 3 -2024 2024 -2009
		mu 0 3 647 665 667
		f 3 2025 2026 -2007
		mu 0 3 616 591 666
		f 3 -2027 -1689 -2015
		mu 0 3 666 591 590
		f 3 2027 -1844 -1813
		mu 0 3 622 637 629
		f 3 2028 2029 2030
		mu 0 3 622 669 638
		f 3 -1704 -2019 2031
		mu 0 3 601 602 663
		f 3 2032 -1979 -1705
		mu 0 3 578 663 580
		f 3 -2022 -2029 2033
		mu 0 3 668 669 622
		f 3 -1793 -1814 2034
		mu 0 3 620 622 633
		f 3 -1690 2035 2036
		mu 0 3 592 591 563
		f 3 2037 -1651 -2036
		mu 0 3 591 564 563
		f 3 -1691 -2017 -1703
		mu 0 3 590 592 602
		f 3 -2037 -1981 -2018
		mu 0 3 592 563 663
		f 3 2038 2039 -1666
		mu 0 3 577 601 578
		f 3 -2014 -1702 -2039
		mu 0 3 577 590 601
		f 3 -2040 -2032 -2033
		mu 0 3 578 601 663
		f 3 -2021 -2023 -2030
		mu 0 3 669 667 638
		f 3 -2031 -1826 -2028
		mu 0 3 622 638 637
		f 3 2040 2041 -1796
		mu 0 3 953 668 621
		f 3 -2010 -2020 -2041
		mu 0 3 954 667 668
		f 3 -2042 -2034 -1792
		mu 0 3 621 668 622
		f 3 -2025 2042 -2011
		mu 0 3 667 665 658
		f 3 -2043 -2004 -1886
		mu 0 3 658 665 655
		f 3 -2006 -1746 -1731
		mu 0 3 611 614 605
		f 3 -2005 -2016 -2013
		mu 0 3 614 617 590
		f 3 -1794 -1791 2043
		mu 0 3 955 621 620
		f 3 2044 2045 -1984
		mu 0 3 674 670 633
		f 3 -1958 2046 2047
		mu 0 3 599 661 567
		f 3 -1959 2048 2049
		mu 0 3 661 598 565
		f 3 -2044 2050 2051
		mu 0 3 956 620 671
		f 3 -1954 2052 -2045
		mu 0 3 674 660 670
		f 3 -2048 -1957 -1967
		mu 0 3 599 567 688
		f 3 2053 -2050 2054
		mu 0 3 568 661 565
		f 3 -1994 -1654 2055
		mu 0 3 957 567 566
		f 3 2056 2057 -2052
		mu 0 3 671 958 959
		f 3 -2035 -2046 2058
		mu 0 3 620 633 670
		f 3 2059 -2053 2060
		mu 0 3 671 670 660
		f 3 -2051 -2059 -2060
		mu 0 3 671 620 670
		f 3 -1993 -2057 -2061
		mu 0 3 660 960 671
		f 3 -2049 -1978 -1980
		mu 0 3 565 598 663
		f 3 -2047 -2054 -1655
		mu 0 3 567 661 568
		f 3 -2055 -1652 2061
		mu 0 3 568 565 564
		f 3 -1656 -2062 2062
		mu 0 3 566 568 564
		f 3 -1968 -1636 -1983
		mu 0 3 575 683 686
		f 3 -1990 -1982 -1640
		mu 0 3 690 576 686
		f 3 -1989 2063 2064
		mu 0 3 576 692 625
		f 3 -1815 -2064 -1772
		mu 0 3 691 625 692
		f 3 -1805 -1664 -2065
		mu 0 3 625 573 576
		f 3 -1665 -1988 -1966
		mu 0 3 575 573 582;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "HEADb";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 0.50800001621246338 
		-smx 0.50800001621246338 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	setAttr ".t" -type "double3" 2.4590784963862689e-007 166.11325740814209 4.3821763247251511 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 41.322314739227295 41.322314739227295 41.322314739227295 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 0.50800001621246338;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1762;
createNode mesh -n "HEADbShape" -p "HEADb";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "HEADbShapeOrig" -p "HEADb";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr -s 199 ".uvst[0].uvsp[0:198]" -type "float2" 0.022073001 0.011224155
		 0.021845642 0.011339882 0.022630658 0.011506418 0.95469481 0.45300123 0.96619827
		 0.48002341 0.94164276 0.41808662 1.000042200089 0.16343562 0.93598127 0.43256304
		 0.98301482 0.10735904 0.97556883 0.172167 0.97451103 0.443351 0.97254884 0.42464307
		 0.97409457 0.43498638 0.96863431 0.080697909 0.53060788 0.48578173 0.54294974 0.45428878
		 0.58510643 0.43661332 0.57644212 0.42146367 0.99989253 0.16334495 0.93191481 0.12815665
		 0.98232347 0.10664775 0.52014065 0.45671445 0.51676577 0.42747116 0.54310137 0.42572021
		 0.97540277 0.45257685 0.51505774 0.4428699 0.93203133 0.12829646 0.55186844 0.41231507
		 0.94555259 0.091529086 0.97557974 0.17224269 0.93167472 0.10476257 0.93157709 0.10477215
		 0.94521862 0.091535851 0.96839929 0.081605107 0.86372966 0.083331801 0.94759995 0.15337381
		 0.92220104 0.2440488 0.84227681 0.20885269 0.78645521 0.39265856 0.82528061 0.38600284
		 0.84032738 0.42654607 0.76396757 0.36470565 0.85750592 0.36287969 0.88027769 0.36522436
		 0.86236107 0.40164164 0.84825063 0.30941448 0.89258116 0.34484833 0.76852626 0.38258219
		 0.78565079 0.33533931 0.78380501 0.36372066 0.76843023 0.33293509 0.83832681 0.3640705
		 0.93556219 0.37622041 0.84604377 0.29211253 0.91047901 0.25763798 0.93727881 0.29926229
		 0.79537594 0.38131317 0.81799811 0.37698662 0.79470479 0.35581335 0.82156479 0.3556335
		 0.83151478 0.33936697 0.94102544 0.34225529 0.86325806 0.29626632 0.80383903 0.3649511
		 0.79310292 0.3641308 0.77396011 0.28860718 0.76605427 0.30748385 0.78037673 0.22781874
		 0.82669562 0.24814293 0.78197598 0.23927939 0.78028226 0.26999107 0.79243279 0.30162844
		 0.78191704 0.24732868 0.78058344 0.25361353 0.86372966 0.083331801 0.87123734 0.19695283
		 0.78546709 0.20457034 0.77853227 0.18549596 0.75013369 0.36712009 0.75013971 0.33582485
		 0.75011981 0.18631443 0.75090694 0.43420908 0.79004306 0.42251846 0.75134182 0.082510263
		 0.75347722 0.40846393 0.75013787 0.38408548 0.75007784 0.20448048 0.74939346 0.2923221
		 0.75013375 0.30773872 0.74999213 0.27074453 0.75013775 0.26308081 0.78226662 0.26020184
		 0.75004697 0.24078274 0.75010008 0.24770533 0.75005668 0.23064137 0.74995381 0.25493854
		 0.75005251 0.22239472 0.6315304 0.20183435 0.65167862 0.097890578 0.56725073 0.26419878
		 0.64163905 0.23279668 0.70883137 0.39390713 0.66850513 0.42738605 0.67184466 0.38531336
		 0.73275131 0.30720359 0.72875226 0.2869004 0.72174293 0.18673724 0.7131902 0.20541486
		 0.73731565 0.36515823 0.72053587 0.22698677 0.68673748 0.25283235 0.62129921 0.36219019
		 0.608729 0.34287503 0.64642513 0.36429629 0.72118491 0.26744393 0.70023376 0.48020649
		 0.63446593 0.32041624 0.73458612 0.38138673 0.63809383 0.47773233 0.63844007 0.40020055
		 0.71557021 0.33203477 0.72283489 0.36563745 0.75014228 0.17819497 0.7336058 0.33177266
		 0.70926118 0.29162475 0.54228812 0.3762325 0.66350019 0.36151671 0.71616316 0.42176342
		 0.54691881 0.34477985 0.71806455 0.23866235 0.71727026 0.24372904 0.64590502 0.30048373
		 0.71954876 0.25109065 0.55516392 0.29909474 0.55088842 0.3185434 0.74980164 0.1544112
		 0.56794888 0.18909411 0.70590293 0.38097769 0.68520731 0.37310237 0.70831597 0.3537986
		 0.66232723 0.33531585 0.63585842 0.29329067 0.69730979 0.36057255 0.7206462 0.25802237
		 0.68270659 0.35264778 0.71056801 0.36425462 0.71497732 0.54439831 0.71116048 0.57839489
		 0.57096326 0.64023286 0.59537846 0.54396075 0.64318317 0.64487016 0.67242211 0.54618961
		 0.6859234 0.60291916 0.65424776 0.612333 0.59025967 0.69530845 0.53123051 0.62944239
		 0.62023401 0.49285832 0.59840697 0.50160593 0.59898192 0.52333939 0.60790181 0.68128771
		 0.5449962 0.66337395 0.75874871 0.56900012 0.75703436 0.54131997 0.79074925 0.54518676
		 0.76102531 0.61776727 0.76044714 0.59589142 0.80942637 0.57237446 0.94136482 0.63450086
		 0.94387627 0.68429375 0.88041246 0.63577569 0.80523944 0.48218259 0.85268301 0.55100596
		 0.82958668 0.59415615 0.87251627 0.59285945 0.75979161 0.64742422 0.93099481 0.51495141
		 0.91683263 0.53712994 0.75301665 0.49317625 0.9292109 0.48176041 0.75755721 0.69729996
		 0.75892347 0.67005867 0.9192645 0.55377352 0.8661986 0.48526698 0.97120595 0.64379323
		 0.58061618 0.14612891 0.61677486 0.1080396 0.6376242 0.14676921 0.7611441 0.073226877
		 0.75722653 0.10769949 0.57782912 0.1892432 0.95223618 0.16708291 0.92214829 0.19362745
		 0.85304278 0.13055936 0.88890457 0.12878561 0.92220104 0.2440488 0.87123734 0.19695283
		 0.86372966 0.083331801 0.78546709 0.20457034 0.77853227 0.18549596;
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 152 ".vt[0:151]"  0.073655128 -0.040228948 -0.32677031 0.1279707 0.074462593 -0.21786225
		 0.12263727 0.024008751 -0.082886577 0.10624433 0.21065609 -0.15347922 0.10271907 0.15049963 -0.027063251
		 -0.0039379597 0.23652056 -0.13796067 -0.0080971718 0.20479067 -0.075869322 0.094185829 -0.11682385 -0.13912928
		 0.091831446 -0.042654306 -0.13171053 0.037581682 -0.20335403 0.12596786 0.10650659 -0.18653929 0.12423873
		 0.10650659 -0.18014258 0.15265334 -0.0015182495 -0.26301408 -0.0080966949 -0.0015182495 -0.23682773 -0.020458341
		 0.030223846 -0.20321155 -0.014351487 0.052792311 -0.19087908 -0.15412903 0.036121845 -0.16896144 -0.17868602
		 -0.0041587353 0.011582285 0.33711612 -0.0041587353 -0.11842871 0.30393124 0.1037724 0.025953695 0.30954337
		 -0.0041587353 0.20134877 0.27039528 -0.0041587353 0.12221439 0.31994402 0.098632813 0.11726975 0.30016541
		 -0.0015182495 -0.21408227 0.0982126 -0.0015182495 -0.24691126 0.04960382 0.02093482 -0.19346479 0.093268037
		 0.022959709 -0.20335454 -0.10199499 0.080058336 -0.17844856 -0.074849248 0.048638821 -0.2090449 -0.0847857
		 0.14662147 0.054455876 0.010567427 0.1401372 0.16990489 0.0536865 0.1246767 -0.143278 0.083428025
		 0.14120841 -0.097987533 0.094482899 0.13240695 -0.14553025 0.1452359 -0.0015182495 -0.2204757 -0.15907276
		 0.04516387 -0.20829889 -0.042709112 0.05340457 -0.18944854 0.0034373999 -0.0015182495 -0.27043089 0.016626477
		 0.033793211 -0.2436918 0.010356307 0.099208117 -0.14517161 0.24665451 0.1272912 -0.15143567 0.0084147453
		 0.15523577 -0.089733064 0.063649297 0.15399575 0.024243444 0.22860312 0.018793344 -0.20475128 0.12349594
		 -0.0056796074 -0.19051218 0.25407159 -0.0056796074 -0.21064901 0.19384277 0.10848451 -0.16283602 0.18163025
		 0.15463877 0.16150816 0.20637751 0.15329242 0.17852458 0.14938724 -0.0041587353 0.25077403 0.14652479
		 0.15150523 0.017608166 -0.00063097477 0.047094107 -0.18685472 0.053760648 0.030376673 -0.16849813 0.098212004
		 -0.0015182495 -0.1871067 -0.1836307 -0.0015182495 -0.24375024 -0.040236235 0.031764269 -0.21898571 0.041797757
		 0.14744997 0.019423977 0.1157583 0.15433478 0.042011738 0.12709439 0.1059587 -0.15753269 0.098212004
		 -0.0041587353 0.23841217 0.049643517 0.15580821 0.07597772 0.10894608 0.021741629 -0.20981026 0.15265334
		 0.15691209 0.018516093 0.064161658 0.17614412 0.06442409 0.0082952976 0.19947863 0.098314695 0.095749259
		 0.17441678 0.047834575 0.14274502 0.19001603 0.08603736 0.12998486 0.040953875 -0.20829889 -0.055021524
		 0.11947465 -0.14541942 -0.017231345 -0.0016007423 -0.23756966 -0.081028819 0.051877022 -0.20657271 -0.072327256
		 -0.0015182495 -0.22891638 -0.067382336 0.13955784 -0.026689678 -0.064960241 -0.0015182495 -0.10530123 -0.17868435
		 -0.0054590702 -0.081766248 -0.33711588 0.052964926 -0.16893753 0.11440587 0.087468147 -0.17487377 0.10967147
		 0.047624111 -0.16800332 0.086502194 0.088915586 -0.16507116 0.085144639 0.10788655 -0.16220579 0.053760648
		 -0.0015182495 -0.22891665 -0.097050071 -0.0056796074 -0.22795531 0.15265346 0.12851977 -0.11890462 -0.010127783
		 0.070138216 -0.17898908 0.09918642 -0.093346834 -0.058327124 -0.13171041 -0.081531048 -0.040228918 -0.32677031
		 -0.1400075 0.070478544 -0.21786225 -0.12679291 0.0056532174 -0.082886457 -0.11103606 0.1504996 -0.027063251
		 -0.095701456 -0.13249671 -0.13912892 -0.039097309 -0.21902689 0.12596798 -0.11634493 -0.19581544 0.15265346
		 -0.11634517 -0.20221215 0.12423885 -0.035308838 -0.25936466 0.010356426 -0.031997681 -0.21873122 -0.014235854
		 -0.037637472 -0.1846343 -0.1786859 -0.054307938 -0.20655194 -0.15412867 -0.11208987 0.011582226 0.30954337
		 -0.10695028 0.11726975 0.30016541 -0.022450447 -0.20913765 0.093268156 -0.024475336 -0.2190274 -0.10199487
		 -0.081573963 -0.19412142 -0.074849129 -0.1182816 0.20667204 -0.15347922 -0.15493917 0.054455876 0.010567427
		 -0.16412568 0.075977698 0.10894608 -0.14845467 0.16990481 0.053686142 -0.15077829 -0.089459509 0.096986532
		 -0.16355324 -0.089733064 0.063649774 -0.13451505 -0.15895087 0.083428144 -0.046546936 -0.22397175 -0.042708993
		 -0.10904646 -0.16084448 0.24665463 -0.13144732 -0.15541974 0.0084149837 -0.16231322 0.009871915 0.22860312
		 -0.020307541 -0.22042415 0.12349594 -0.0015182495 -0.22182164 0.12102377 -0.11832285 -0.17850912 0.18163073
		 -0.162956 0.16150819 0.20637751 -0.16161013 0.17852458 0.14938724 -0.1598227 0.0032366812 -0.003103137
		 -0.14224529 -0.16120312 0.14523602 -0.048609972 -0.20252758 0.053761005 -0.0318923 -0.18417099 0.098212123
		 -0.033279896 -0.23465857 0.041797876 -0.054920197 -0.2051214 0.0034375191 -0.15576744 0.0050525069 0.1157583
		 -0.10747433 -0.17320555 0.098212123 -0.15956235 0.042011708 0.12709439 -0.031579971 -0.22548312 0.15265298
		 -0.19947886 0.098314673 0.095749617 -0.16522956 0.0041445792 0.062925458 -0.1761446 0.06442409 0.0082956553
		 -0.19046998 0.08875823 0.12695777 -0.17441726 0.047834575 0.14274514 -0.050319195 -0.22471777 -0.084785581
		 -0.050708532 -0.22224557 -0.072327137 -0.11991143 -0.14591905 -0.015101552 -0.0015182495 -0.22949144 -0.13166261
		 -0.040943861 -0.21531874 -0.063674212 -0.0015182495 -0.24127805 -0.057493567 -0.14787531 -0.026689649 -0.064960241
		 -0.0584867 -0.18474197 0.11382627 -0.088983774 -0.19054663 0.10967159 -0.048833132 -0.16796371 0.085130095
		 -0.10788131 -0.16220579 0.053760052 -0.13273144 -0.12240455 -0.010403633 -0.06997776 -0.17917249 0.10050297
		 0.039428234 -0.19964588 -0.063674331 -0.043930054 -0.22397175 -0.055021405 -0.088910341 -0.16507116 0.085144639
		 -0.0015182495 -0.2190274 -0.10199487 0.045306444 -0.16838306 0.099112391 -0.04758215 -0.16840386 0.10084832;
	setAttr -s 445 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 2 0 1 1 3 0 3 4 1 4 1 1 4 5 1 5 6 1 6 4 1
		 2 7 1 7 8 1 8 2 1 9 10 0 10 11 1 11 9 1 12 13 1 13 14 0 14 12 1 7 15 1 15 16 1 16 7 1
		 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1 26 27 0 27 28 1
		 28 26 1 3 5 0 29 4 1 4 30 1 30 29 1 31 32 1 32 33 1 33 31 1 34 16 1 15 34 1 35 36 1
		 36 14 0 14 35 1 37 38 0 38 24 1 24 37 1 18 39 1 39 19 1 40 41 1 41 31 1 31 40 1 39 42 1
		 42 19 1 9 43 1 43 25 1 25 9 0 12 38 1 37 12 1 43 23 1 44 45 1 45 39 1 39 44 1 45 46 1
		 46 39 1 22 47 1 47 20 1 47 48 1 48 49 1 49 47 1 29 50 0 50 2 1 2 29 1 46 11 1 11 33 1
		 33 46 1 10 33 1 51 52 1 52 25 0 25 51 1 53 16 1 34 53 1 35 13 1 13 54 1 54 35 1 55 36 1
		 36 51 1 51 55 1 24 55 1 55 25 1 38 55 1 42 56 1 56 57 0 57 42 1 22 42 1 42 47 1 52 9 0
		 58 31 1 31 10 1 10 58 1 19 22 1 22 17 1 18 44 1 49 20 1 42 48 1 21 17 1 33 56 1 42 33 1
		 30 49 1 48 30 1 6 59 1 59 4 1 57 60 0 60 48 1 48 57 1 38 36 0 38 14 1 61 43 1 9 61 1
		 46 42 1 11 61 1 60 30 1 2 4 1 62 50 1 50 63 0 63 62 1 29 63 0 64 63 0 29 64 1 65 66 0
		 66 60 1 60 65 1 29 60 0 60 64 1 65 56 0 56 66 1 57 65 1 62 64 1 64 56 1 56 62 1 41 32 1
		 27 35 1 35 67 1 67 27 1 27 36 1 27 68 1 68 36 1 69 70 1 70 71 1 71 69 1 54 67 1 72 50 1
		 50 41 1 41 72 1 73 74 1 74 8 1 8 73 1 8 0 1 52 75 1 75 9 1 10 76 1 76 58 1 77 51 1
		 51 78 1 78 77 1;
	setAttr ".ed[166:331]" 79 31 1 58 79 1 75 10 0 78 79 1 58 78 1 80 28 1 28 69 1
		 69 80 1 7 27 1 27 15 1 16 73 1 73 7 1 45 81 1 81 61 1 61 45 1 61 46 1 62 41 1 40 82 1
		 82 41 1 72 7 1 2 72 1 7 68 1 7 82 1 82 68 1 78 83 1 83 77 1 58 83 1 53 73 1 51 79 1
		 36 40 1 40 79 1 79 36 1 74 84 1 84 85 1 85 74 0 86 87 1 87 88 1 88 86 1 88 6 1 5 88 1
		 87 84 1 84 89 1 89 87 1 90 91 1 91 92 1 92 90 0 12 93 1 93 94 1 94 12 1 89 95 1 95 96 1
		 96 89 1 17 97 1 97 18 1 20 98 1 98 21 1 23 99 1 99 24 1 96 100 1 100 101 0 101 96 1
		 102 88 1 5 102 0 103 104 0 104 105 1 105 103 1 106 107 1 107 108 1 108 106 1 34 96 1
		 95 34 1 109 54 1 13 109 1 24 93 1 93 37 0 97 110 1 110 18 1 111 108 1 107 111 1 97 112 1
		 112 110 1 113 99 1 23 113 1 114 113 1 23 114 1 44 110 1 110 45 1 110 115 1 115 45 1
		 20 116 1 116 98 1 116 49 1 49 117 1 117 116 1 103 87 1 87 118 1 118 103 0 115 119 1
		 119 91 1 91 115 1 119 92 1 120 99 1 99 121 0 121 120 1 95 53 1 94 109 1 13 94 0 122 120 1
		 120 123 1 123 122 1 99 122 1 122 24 1 122 93 1 119 112 1 112 124 1 124 119 1 116 112 1
		 112 98 1 99 90 0 90 121 0 125 92 1 92 108 1 108 125 1 98 17 1 117 112 1 98 97 1 112 126 1
		 126 124 0 59 105 1 105 49 1 49 59 1 88 59 1 126 117 1 117 104 1 104 126 0 123 93 0
		 81 113 1 114 81 1 112 115 1 113 127 1 127 90 1 90 113 1 105 88 1 88 103 1 124 128 1
		 128 129 1 129 124 1 118 130 0 130 103 0 128 103 1 130 128 0 131 104 1 104 128 1 128 131 0
		 124 131 1 132 126 1 104 132 1 132 124 0 130 129 1 119 108 1 107 124 1 129 107 1 101 133 1
		 133 134 1 134 101 1 135 123 1;
	setAttr ".ed[332:444]" 123 111 1 111 135 1 101 109 1 109 123 1 123 101 1 34 136 1
		 136 96 1 137 71 0 71 138 1 138 137 1 133 69 1 69 134 1 139 107 1 107 118 1 118 139 1
		 102 86 0 73 84 1 85 87 1 86 85 0 92 140 0 140 90 0 125 141 1 141 92 1 121 142 1 142 120 1
		 111 143 1 143 108 1 141 140 1 133 80 1 101 89 1 89 73 1 73 95 1 115 127 1 127 45 1
		 91 127 1 119 106 1 135 101 1 139 87 1 89 139 1 139 144 1 144 107 1 89 144 1 141 145 1
		 145 140 0 125 145 1 123 143 1 120 143 1 30 59 1 117 105 1 71 146 0 146 138 1 27 70 1
		 70 28 1 147 54 1 109 147 1 101 147 1 146 67 1 67 138 1 147 138 1 138 54 1 101 137 0
		 137 147 1 146 27 0 71 134 1 137 134 1 146 70 1 100 80 1 133 100 1 80 26 1 148 125 1
		 125 143 1 143 148 1 120 148 1 81 127 1 114 43 1 43 81 1 136 26 1 26 149 0 149 136 1
		 80 149 1 15 26 1 136 15 1 100 149 0 100 136 1 118 129 1 56 41 1 74 0 0 148 145 1
		 142 148 1 76 83 1 150 83 1 83 75 1 75 150 1 132 131 0 64 66 0 121 140 0 140 151 0
		 151 121 1 76 75 1 145 151 1 142 145 1 52 150 1 77 52 1 142 151 1 77 150 1 124 106 1
		 56 32 1 144 135 1 111 144 1 89 135 1 72 82 1 40 68 1 123 94 0;
	setAttr -s 882 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[166:331]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[332:497]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[498:663]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[664:829]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[830:881]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 294 -ch 882 ".fc[0:293]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 34 35 36
		f 3 3 4 5
		mu 0 3 184 185 186
		f 3 6 7 8
		mu 0 3 186 187 188
		f 3 9 10 11
		mu 0 3 36 37 75
		f 3 12 13 14
		mu 0 3 38 39 40
		f 3 15 16 17
		mu 0 3 87 89 65
		f 3 18 19 20
		mu 0 3 37 76 77
		f 3 21 22 23
		mu 0 3 161 162 163
		f 3 24 25 26
		mu 0 3 164 165 166
		f 3 27 28 29
		mu 0 3 78 79 41
		f 3 30 31 32
		mu 0 3 67 68 69
		f 3 33 -7 -5
		mu 0 3 185 187 186
		f 3 34 35 36
		mu 0 3 167 168 169
		f 3 37 38 39
		mu 0 3 42 43 44
		f 3 40 -20 41
		mu 0 3 80 77 76
		f 3 42 43 44
		mu 0 3 70 71 65
		f 3 45 46 47
		mu 0 3 88 66 79
		f 3 48 49 -23
		mu 0 3 162 170 163
		f 3 50 51 52
		mu 0 3 45 46 42
		f 3 53 54 -50
		mu 0 3 170 171 163
		f 3 55 56 57
		mu 0 3 38 47 41
		f 3 58 -46 59
		mu 0 3 87 66 88
		f 3 60 -30 -57
		mu 0 3 47 78 41
		f 3 61 62 63
		mu 0 3 177 81 170
		f 3 -63 64 65
		mu 0 3 170 81 182
		f 3 -27 66 67
		mu 0 3 164 166 172
		f 3 68 69 70
		mu 0 3 172 173 174
		f 3 71 72 73
		mu 0 3 194 195 196
		f 3 74 75 76
		mu 0 3 182 40 44
		f 3 -14 77 -76
		mu 0 3 40 39 44
		f 3 78 79 80
		mu 0 3 48 49 41
		f 3 81 -41 82
		mu 0 3 122 77 80
		f 3 83 84 85
		mu 0 3 70 89 90
		f 3 86 87 88
		mu 0 3 50 71 48
		f 3 89 90 -29
		mu 0 3 79 50 41
		f 3 91 -90 -47
		mu 0 3 66 50 79
		f 3 -81 -91 -89
		mu 0 3 48 41 50
		f 3 92 93 94
		mu 0 3 171 175 176
		f 3 -67 95 96
		mu 0 3 172 166 171
		f 3 -80 97 -58
		mu 0 3 41 49 38
		f 3 98 99 100
		mu 0 3 51 42 39
		f 3 -24 101 102
		mu 0 3 161 163 166
		f 3 -64 -49 103
		mu 0 3 177 170 162
		f 3 -68 -71 104
		mu 0 3 164 172 174
		f 3 -97 105 -69
		mu 0 3 172 171 173
		f 3 106 -103 -26
		mu 0 3 165 161 166
		f 3 -96 -102 -55
		mu 0 3 171 166 163
		f 3 107 -93 108
		mu 0 3 178 175 171
		f 3 109 -70 110
		mu 0 3 169 174 173
		f 3 111 112 -9
		mu 0 3 179 180 168
		f 3 113 114 115
		mu 0 3 176 181 173
		f 3 -87 -92 116
		mu 0 3 71 50 66
		f 3 -44 -117 117
		mu 0 3 65 71 66
		f 3 118 -56 119
		mu 0 3 82 47 38
		f 3 -66 120 -54
		mu 0 3 170 182 171
		f 3 -120 -15 121
		mu 0 3 82 38 40
		f 3 122 -111 -115
		mu 0 3 181 169 173
		f 3 -74 123 -35
		mu 0 3 167 183 168
		f 3 124 125 126
		mu 0 3 8 6 9
		f 3 -72 127 -126
		mu 0 3 4 3 24
		f 3 128 -128 129
		mu 0 3 10 24 3
		f 3 130 131 132
		mu 0 3 11 12 7
		f 3 -130 133 134
		mu 0 3 10 3 7
		f 3 -131 135 136
		mu 0 3 30 28 13
		f 3 -133 -114 137
		mu 0 3 11 7 5
		f 3 -94 -136 -138
		mu 0 3 1 0 2
		f 3 138 139 140
		mu 0 3 8 26 13
		f 3 -116 -106 -95
		mu 0 3 176 173 171
		f 3 -40 -78 -100
		mu 0 3 42 44 39
		f 3 -38 -52 141
		mu 0 3 43 42 46
		f 3 142 143 144
		mu 0 3 68 70 91
		f 3 -143 145 -43
		mu 0 3 70 68 71
		f 3 146 147 -146
		mu 0 3 68 53 71
		f 3 148 149 150
		mu 0 3 92 72 93
		f 3 -144 -86 151
		mu 0 3 91 70 90
		f 3 152 153 154
		mu 0 3 54 55 46
		f 3 -2 -6 -124
		mu 0 3 189 184 186
		f 3 155 156 157
		mu 0 3 135 83 75
		f 3 158 -3 -12
		mu 0 3 75 34 36
		f 3 -98 159 160
		mu 0 3 38 49 56
		f 3 -101 161 162
		mu 0 3 51 39 57
		f 3 163 164 165
		mu 0 3 58 48 59
		f 3 166 -99 167
		mu 0 3 60 42 51
		f 3 168 -13 -161
		mu 0 3 56 39 38
		f 3 169 -168 170
		mu 0 3 59 60 51
		f 3 171 172 173
		mu 0 3 94 69 92
		f 3 174 175 -19
		mu 0 3 37 68 76
		f 3 -21 176 177
		mu 0 3 37 197 198
		f 3 -178 -158 -11
		mu 0 3 37 135 75
		f 3 178 179 180
		mu 0 3 81 84 82
		f 3 -181 181 -65
		mu 0 3 81 82 182
		f 3 -77 -109 -121
		mu 0 3 182 178 171
		f 3 -154 -125 182
		mu 0 3 46 55 61
		f 3 -51 183 184
		mu 0 3 46 45 62
		f 3 185 -10 186
		mu 0 3 54 37 36
		f 3 -187 -73 -153
		mu 0 3 54 36 55
		f 3 187 -147 -175
		mu 0 3 37 53 68
		f 3 188 189 -188
		mu 0 3 37 62 53
		f 3 -166 190 191
		mu 0 3 58 59 63
		f 3 -171 192 -191
		mu 0 3 59 51 63
		f 3 193 -177 -82
		mu 0 3 122 135 77
		f 3 194 -170 -165
		mu 0 3 48 60 59
		f 3 195 196 197
		mu 0 3 71 45 60
		f 3 198 199 200
		mu 0 3 83 97 98
		f 3 201 202 203
		mu 0 3 190 191 192
		f 3 204 -8 205
		mu 0 3 192 188 187
		f 3 206 207 208
		mu 0 3 99 97 100
		f 3 209 210 211
		mu 0 3 101 102 103
		f 3 212 213 214
		mu 0 3 87 104 105
		f 3 215 216 217
		mu 0 3 100 106 107
		f 3 218 219 -22
		mu 0 3 161 146 162
		f 3 220 221 -25
		mu 0 3 164 147 165
		f 3 222 223 -28
		mu 0 3 78 108 79
		f 3 224 225 226
		mu 0 3 107 109 110
		f 3 227 -206 228
		mu 0 3 193 192 187
		f 3 229 230 231
		mu 0 3 148 149 150
		f 3 232 233 234
		mu 0 3 111 112 113
		f 3 235 -217 236
		mu 0 3 80 107 106
		f 3 237 -85 238
		mu 0 3 114 90 89
		f 3 -48 239 240
		mu 0 3 88 79 104
		f 3 -220 241 242
		mu 0 3 162 146 115
		f 3 243 -234 244
		mu 0 3 116 113 112
		f 3 -242 245 246
		mu 0 3 115 146 151
		f 3 247 -223 248
		mu 0 3 117 108 78
		f 3 -60 -241 -213
		mu 0 3 87 88 104
		f 3 249 -249 250
		mu 0 3 85 117 78
		f 3 251 252 -62
		mu 0 3 177 115 81
		f 3 253 254 -253
		mu 0 3 115 118 81
		f 3 255 256 -221
		mu 0 3 164 152 147
		f 3 257 258 259
		mu 0 3 152 174 153
		f 3 260 261 262
		mu 0 3 148 154 155
		f 3 263 264 265
		mu 0 3 118 119 102
		f 3 -265 266 -211
		mu 0 3 102 119 103
		f 3 267 268 269
		mu 0 3 120 108 121
		f 3 -83 -237 270
		mu 0 3 122 80 106
		f 3 271 -239 272
		mu 0 3 105 114 89
		f 3 273 274 275
		mu 0 3 123 120 124
		f 3 -224 276 277
		mu 0 3 79 108 123
		f 3 -240 -278 278
		mu 0 3 104 79 123
		f 3 -274 -277 -268
		mu 0 3 120 123 108
		f 3 279 280 281
		mu 0 3 156 151 157
		f 3 282 283 -257
		mu 0 3 152 151 147
		f 3 284 285 -269
		mu 0 3 108 101 121
		f 3 286 287 288
		mu 0 3 126 103 113
		f 3 -107 -222 289
		mu 0 3 161 165 147
		f 3 -104 -243 -252
		mu 0 3 177 162 115
		f 3 -105 -258 -256
		mu 0 3 164 174 152
		f 3 -260 290 -283
		mu 0 3 152 153 151
		f 3 -290 291 -219
		mu 0 3 161 147 146
		f 3 -246 -292 -284
		mu 0 3 151 146 147
		f 3 -281 292 293
		mu 0 3 157 151 158
		f 3 294 295 296
		mu 0 3 180 150 174
		f 3 -205 297 -112
		mu 0 3 179 159 180
		f 3 298 299 300
		mu 0 3 158 153 149
		f 3 301 -279 -276
		mu 0 3 124 104 123
		f 3 -16 -215 -273
		mu 0 3 89 87 105
		f 3 302 -250 303
		mu 0 3 84 117 85
		f 3 -247 304 -254
		mu 0 3 115 151 118
		f 3 305 306 307
		mu 0 3 117 127 101
		f 3 -232 308 309
		mu 0 3 148 150 159
		f 3 -310 -203 -261
		mu 0 3 148 159 154
		f 3 310 311 312
		mu 0 3 33 19 20
		f 3 313 314 -263
		mu 0 3 14 21 15
		f 3 315 -315 316
		mu 0 3 25 15 21
		f 3 317 318 319
		mu 0 3 22 16 25
		f 3 -319 -230 -316
		mu 0 3 25 16 15
		f 3 -311 320 -320
		mu 0 3 19 33 31
		f 3 321 -301 322
		mu 0 3 23 17 16
		f 3 -322 323 -294
		mu 0 3 17 23 27
		f 3 324 -312 -317
		mu 0 3 29 20 19
		f 3 -293 -291 -299
		mu 0 3 158 151 153
		f 3 -288 -267 325
		mu 0 3 113 103 119
		f 3 326 -313 327
		mu 0 3 112 125 128
		f 3 328 329 330
		mu 0 3 110 129 130
		f 3 331 332 333
		mu 0 3 131 124 116
		f 3 334 335 336
		mu 0 3 110 114 124
		f 3 -236 337 338
		mu 0 3 107 80 86
		f 3 339 340 341
		mu 0 3 132 93 95
		f 3 342 343 -330
		mu 0 3 129 92 130
		f 3 344 345 346
		mu 0 3 133 112 134
		f 3 -204 -228 347
		mu 0 3 190 192 193
		f 3 348 -199 -156
		mu 0 3 135 97 83
		f 3 349 -202 350
		mu 0 3 98 99 136
		f 3 -212 351 352
		mu 0 3 101 103 137
		f 3 353 354 -287
		mu 0 3 126 138 103
		f 3 355 356 -270
		mu 0 3 121 139 120
		f 3 357 358 -244
		mu 0 3 116 140 113
		f 3 359 -352 -355
		mu 0 3 138 137 103
		f 3 -174 -343 360
		mu 0 3 94 92 129
		f 3 -218 -227 361
		mu 0 3 100 107 110
		f 3 362 363 -216
		mu 0 3 100 135 106
		f 3 -208 -349 -363
		mu 0 3 100 97 135
		f 3 -255 364 365
		mu 0 3 81 118 127
		f 3 -365 -266 366
		mu 0 3 127 118 102
		f 3 -305 -280 -264
		mu 0 3 118 151 156
		f 3 -235 -326 367
		mu 0 3 111 113 119
		f 3 -337 -332 368
		mu 0 3 110 124 131
		f 3 369 -209 370
		mu 0 3 133 99 100
		f 3 -347 -262 -370
		mu 0 3 160 155 154
		f 3 -345 371 372
		mu 0 3 112 133 141
		f 3 -371 373 -372
		mu 0 3 133 100 141
		f 3 -360 374 375
		mu 0 3 137 138 142
		f 3 -375 -354 376
		mu 0 3 142 138 126
		f 3 -271 -364 -194
		mu 0 3 122 106 135
		f 3 377 -358 -333
		mu 0 3 124 140 116
		f 3 -275 378 -378
		mu 0 3 124 120 140
		f 3 -298 -309 -295
		mu 0 3 180 159 150
		f 3 -297 -110 379
		mu 0 3 180 174 169
		f 3 -134 -37 -123
		mu 0 3 181 167 169
		f 3 -113 -380 -36
		mu 0 3 168 180 169
		f 3 -300 380 -231
		mu 0 3 149 153 150
		f 3 -381 -259 -296
		mu 0 3 150 153 174
		f 3 381 382 -341
		mu 0 3 93 73 95
		f 3 383 384 -32
		mu 0 3 68 72 69
		f 3 385 -238 386
		mu 0 3 143 90 114
		f 3 387 -387 -335
		mu 0 3 110 143 114
		f 3 -383 388 389
		mu 0 3 95 73 91
		f 3 390 391 -386
		mu 0 3 143 95 90
		f 3 392 393 -388
		mu 0 3 110 132 143
		f 3 -342 -391 -394
		mu 0 3 132 95 143
		f 3 -390 -152 -392
		mu 0 3 95 91 90
		f 3 -145 -389 394
		mu 0 3 68 91 73
		f 3 -385 -149 -173
		mu 0 3 69 72 92
		f 3 -344 -151 395
		mu 0 3 130 92 93
		f 3 -396 -340 396
		mu 0 3 130 93 132
		f 3 -331 -397 -393
		mu 0 3 110 130 132
		f 3 -395 397 -384
		mu 0 3 68 73 72
		f 3 -398 -382 -150
		mu 0 3 72 73 93
		f 3 398 -361 399
		mu 0 3 109 94 129
		f 3 -33 -172 400
		mu 0 3 67 69 94
		f 3 401 402 403
		mu 0 3 144 126 140
		f 3 -403 -289 -359
		mu 0 3 140 126 113
		f 3 404 -404 -379
		mu 0 3 120 144 140
		f 3 -88 -198 -195
		mu 0 3 48 71 60
		f 3 -53 -167 -197
		mu 0 3 45 42 60
		f 3 405 -306 -303
		mu 0 3 84 127 117
		f 3 -308 -285 -248
		mu 0 3 117 101 108
		f 3 -304 406 407
		mu 0 3 84 85 47
		f 3 -251 -61 -407
		mu 0 3 85 78 47
		f 3 -406 -179 -366
		mu 0 3 127 84 81
		f 3 -367 -210 -307
		mu 0 3 127 102 101
		f 3 -182 -122 -75
		mu 0 3 182 82 40
		f 3 -408 -119 -180
		mu 0 3 84 47 82
		f 3 -400 -329 -226
		mu 0 3 109 129 110
		f 3 408 409 410
		mu 0 3 86 67 96
		f 3 -410 -401 411
		mu 0 3 96 67 94
		f 3 412 -409 413
		mu 0 3 76 67 86
		f 3 -176 -31 -413
		mu 0 3 76 68 67
		f 3 414 -412 -399
		mu 0 3 109 96 94
		f 3 -411 -415 415
		mu 0 3 86 96 109
		f 3 -339 -416 -225
		mu 0 3 107 86 109
		f 3 -42 -414 -338
		mu 0 3 80 76 86
		f 3 -325 -314 416
		mu 0 3 20 29 18
		f 3 -328 -417 -346
		mu 0 3 112 128 134
		f 3 -139 -127 -129
		mu 0 3 26 8 9
		f 3 -183 -141 417
		mu 0 3 46 61 52
		f 3 -200 -207 -350
		mu 0 3 98 97 99
		f 3 418 -159 -157
		mu 0 3 83 74 75
		f 3 419 -377 -402
		mu 0 3 144 142 126
		f 3 -357 420 -405
		mu 0 3 120 139 144
		f 3 -193 -163 421
		mu 0 3 63 51 57
		f 3 422 423 424
		mu 0 3 64 63 56
		f 3 -321 -324 425
		mu 0 3 31 33 32
		f 3 -323 -318 -426
		mu 0 3 23 16 22
		f 3 426 -137 -140
		mu 0 3 26 30 13
		f 3 -427 -135 -132
		mu 0 3 12 10 7
		f 3 427 428 429
		mu 0 3 121 137 145
		f 3 -353 -428 -286
		mu 0 3 101 137 121
		f 3 -424 -422 430
		mu 0 3 56 63 57
		f 3 -169 -431 -162
		mu 0 3 39 56 57
		f 3 -429 -376 431
		mu 0 3 145 137 142
		f 3 432 -420 -421
		mu 0 3 139 142 144
		f 3 433 -425 -160
		mu 0 3 49 64 56
		f 3 -79 -164 434
		mu 0 3 49 48 58
		f 3 435 -432 -433
		mu 0 3 139 145 142
		f 3 -430 -436 -356
		mu 0 3 121 145 139
		f 3 -435 436 -434
		mu 0 3 49 58 64
		f 3 -192 -423 -437
		mu 0 3 58 63 64
		f 3 437 -368 -282
		mu 0 3 125 111 119
		f 3 -327 -233 -438
		mu 0 3 125 112 111
		f 3 438 -142 -418
		mu 0 3 52 43 46
		f 3 -439 -108 -39
		mu 0 3 43 52 44
		f 3 439 -334 440
		mu 0 3 141 131 116
		f 3 -373 -441 -245
		mu 0 3 112 141 116
		f 3 -374 441 -440
		mu 0 3 141 100 131
		f 3 -369 -442 -362
		mu 0 3 110 131 100
		f 3 -186 442 -189
		mu 0 3 37 54 62
		f 3 -185 -443 -155
		mu 0 3 46 62 54
		f 3 -190 -184 443
		mu 0 3 53 62 45
		f 3 -444 -196 -148
		mu 0 3 53 45 71
		f 3 -214 -302 444
		mu 0 3 105 104 124
		f 3 -336 -272 -445
		mu 0 3 124 114 105
		f 3 -18 -118 -59
		mu 0 3 87 65 66
		f 3 -45 -17 -84
		mu 0 3 70 65 89;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ak47";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		-ln "mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" 
		-ln "mrFBXASC032displacementFBXASC032viewFBXASC032dependent" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032method" -ln "mrFBXASC032displacementFBXASC032method" 
		-smn 6 -smx 6 -at "long";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" 
		-ln "mrFBXASC032displacementFBXASC032smoothingFBXASC032on" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032edgeFBXASC032length" 
		-ln "mrFBXASC032displacementFBXASC032edgeFBXASC032length" -smn 2 -smx 2 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032maxFBXASC032displace" 
		-ln "mrFBXASC032displacementFBXASC032maxFBXASC032displace" -smn 20 -smx 20 -at "double";
	addAttr -is true -ci true -k true -sn "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-ln "mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		-smn 5 -smx 5 -at "long";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	setAttr ".t" -type "double3" -76.695364713668823 147.56112098693848 3.7617325782775879 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90.000005008956094 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 121.97685241699219 121.97685241699267 67.091923952102917 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".mrFBXASC032displacementFBXASC032useFBXASC032globalFBXASC032settings" 
		yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032viewFBXASC032dependent" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032method" 6;
	setAttr -k on ".mrFBXASC032displacementFBXASC032smoothingFBXASC032on" yes;
	setAttr -k on ".mrFBXASC032displacementFBXASC032edgeFBXASC032length" 2;
	setAttr -k on ".mrFBXASC032displacementFBXASC032maxFBXASC032displace" 20;
	setAttr -k on ".mrFBXASC032displacementFBXASC032parametricFBXASC032subdivisionFBXASC032level" 
		5;
	setAttr -k on ".MaxHandle" 1765;
createNode mesh -n "Ak47Shape" -p "Ak47";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "Ak47ShapeOrig" -p "Ak47";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr -s 282 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.43160856 0.85151547 0.56678826
		 0.84789079 0.73261356 0.84146339 0.43160856 0.95945007 0.56678826 0.95945007 0.69371009
		 0.95945001 0.43160856 0.85151547 0.56678826 0.84789079 0.73261356 0.84146339 0.4317171
		 0.91193259 0.56678826 0.90465391 0.72939986 0.90465385 0.43160856 0.95945007 0.56678826
		 0.95945007 0.69371009 0.95945001 0.77968335 0.80259264 0.77968335 0.80259264 0.80532885
		 0.7868104 0.80532885 0.7868104 0.97634512 0.69500405 0.97634512 0.69500405 0.64697796
		 0.84789073 0.64697796 0.84789073 0.58622092 0.84789079 0.58622092 0.84789079 0.69647568
		 0.83300704 0.69647568 0.83300704 0.64697796 0.78953695 0.64697796 0.78953695 0.69871908
		 0.79373604 0.66215503 0.78390151 0.66215503 0.78390151 0.74104977 0.6899904 0.74104977
		 0.6899904 0.69994044 0.66791934 0.69994044 0.66791934 0.56437802 0.79181391 0.56437802
		 0.79181391 0.57899016 0.79101044 0.57899016 0.79101044 0.49153399 0.84825873 0.49153399
		 0.84825873 0.55460751 0.80326766 0.49087831 0.80796731 0.53110415 0.69894922 0.47357827
		 0.73105341 0.49371722 0.60552537 0.43613884 0.66291314 0.43162417 0.52041578 0.43162417
		 0.52041578 0.39909154 0.60926175 0.39909154 0.60926175 0.38974747 0.86712992 0.3897475
		 0.95946503 0.38974747 0.86712992 0.38985601 0.91194755 0.3897475 0.95946503 0.25678775
		 0.86717588 0.25678775 0.95951098 0.25678775 0.86717588 0.24940671 0.92085147 0.25678775
		 0.95951098 0.013922821 0.90447432 0.013922821 0.90447432 0.013922821 0.89211863 0.013922821
		 0.87976295 0.026916768 0.90447432 0.026916768 0.90447432 0.054950081 0.90447432 0.054950081
		 0.90447432 0.23666209 0.89211857 0.23666324 0.87976289 0.23666324 0.90447426 0.23666324
		 0.90447426 0.041656964 0.8679893 0.041656964 0.8679893 0.25443745 0.86717588 0.25443745
		 0.86717588 0.026916794 0.98486024 0.026916794 0.98486024 0.038950704 0.98486024 0.038950704
		 0.98486024 0.40608919 0.84549594 0.40608919 0.84549594 0.17029929 0.90447432 0.17029929
		 0.90447432 0.14330932 0.90447432 0.14330932 0.90447432 0.17077492 0.93211806 0.17077492
		 0.93211806 0.15615539 0.93211806 0.18235061 0.95293069 0.18235061 0.95293069 0.16371398
		 0.95293069 0.16371398 0.95293069 0.23650177 0.93236792 0.23650177 0.93211806 0.25443745
		 0.95293069 0.25443745 0.95293069 0.64697796 0.799707 0.57899016 0.79970706 0.57899016
		 0.79970706 0.57899016 0.79970706 0.57899016 0.79970706 0.59415442 0.76906741 0.59415442
		 0.76906741 0.59415442 0.77776396 0.59415442 0.77776396 0.59415442 0.77776396 0.62954193
		 0.76935279 0.62954193 0.76935279 0.62954193 0.77952284 0.62954193 0.77952284 0.57675117
		 0.35105389 0.57664263 0.41960412 0.43501881 0.41321781 0.43501881 0.3488135 0.51147449
		 0.3510541 0.27708766 0.41321778 0.27240723 0.3422609 0.35202077 0.3488135 0.57675117
		 0.46346235 0.4359549 0.46439841 0.3090331 0.46439841 0.20219231 0.39364403 0.20419796
		 0.30081865 0.18416898 0.40761489 0.17855246 0.28291196 0.010449487 0.3851288 0.016066015
		 0.19038486 0.42026654 0.3488135 0.29569033 0.32372203 0.35202077 0.28686813 0.35202077
		 0.29840723 0.29023319 0.29557285 0.33965206 0.28047404 0.25364915 0.19691654 0.2930263
		 0.17362401 0.42026654 0.29840723 0.42026654 0.28853992 0.43501881 0.28853992 0.44719955
		 0.29818344 0.51213014 0.30533886 0.47084299 0.18211555 0.52836883 0.22309937 0.50608498
		 0.091837339 0.56178379 0.15345117 0.56267935 0.016707109 0.60083592 0.10240862 0.62048441
		 0.35847336 0.6175676 0.41494066 0.61861223 0.46347928 0.74327981 0.41887891 0.74421591
		 0.46259528 0.74421591 0.35478115 0.98974901 0.38027322 0.99068511 0.39242002 0.97849458
		 0.39242002 0.94790351 0.39242002 0.75410807 0.38027322 0.98974901 0.36625424 0.7540549
		 0.36625424 0.82788128 0.39242002 0.75499099 0.39241999 0.75499099 0.35571724 0.97053266
		 0.35272458 0.97568631 0.47300687 0.96109462 0.47300687 0.59733218 0.33754888 0.86692256
		 0.39242002 0.84785199 0.41880205 0.82788128 0.41880205 0.84410763 0.44670439 0.82788128
		 0.44670439 0.75218272 0.44670439 0.75218272 0.4190855 0.42026654 0.29840723 0.40524244
		 0.28627226 0.40524244 0.27640501 0.36985493 0.27672881 0.36985493 0.28826791 0.73596883
		 0.90670431 0.73392117 0.8261373 0.78986138 0.79336816 0.79011893 0.87993491 0.81376696
		 0.7784788 0.81444955 0.89623743 0.97681308 0.68155867 0.98090833 0.87040877 0.27872214
		 0.34973842 0.32320562 0.35224503 0.31191051 0.43097746 0.27513382 0.41171607 0.21409976
		 0.38396874 0.22338532 0.33130774 0.18758011 0.39026082 0.200617 0.31632498 0.01240721
		 0.3826074 0.018993044 0.21869493 0.18497288 0.39986181 0.01455147 0.38760248 0.022939676
		 0.20553282 0.20932522 0.3089776 0.061838306 0.33693826 0.075660355 0.28535372 0.092265643
		 0.28980309 0.078443594 0.34138763 0.094546057 0.29041415 0.080724008 0.3419987 0.19847909
		 0.38679647 0.21448925 0.32704574 0.20240548 0.3238079 0.18639535 0.38355863 0.44819403
		 0.3260538 0.51287854 0.35376275 0.50895321 0.296143 0.45258343 0.2684713 0.51183999
		 0.35979068 0.44905472 0.34031203 0.45209229 0.27873456 0.51099443 0.30450702 0.52826548
		 0.21721573 0.46493167 0.1920764 0.46554217 0.18706371 0.52887595 0.21220304 0.55999923
		 0.16113816 0.49223375 0.11700597 0.49403623 0.11536832 0.56180167 0.15570194 0.59681225
		 0.1036541 0.55247134 0.022802386 0.55150002 0.021979995 0.60090572 0.10283171 0.48475087
		 0.85920006 0.48475096 0.93639535 0.52884871 0.9549163 0.56955695 0.91753411 0.56955695
		 0.87779921 0.55451912 0.87779921 0.55451912 0.91753411 0.60111952 0.87779921 0.60111952
		 0.91753411 0.67813814 0.90887648 0.67813814 0.88645679 0.55348033 0.96048588 0.61299068
		 0.96048588 0.58533835 0.93740165 0.56955701 0.91753417 0.61299068 0.83510923 0.55348027
		 0.83510923;
	setAttr ".uvst[0].uvsp[250:281]" 0.56955701 0.87779921 0.58533829 0.85793179
		 0.60111964 0.87779921 0.60111964 0.91753417 0.55348033 0.91460681 0.55348027 0.87452513
		 0.60111964 0.87779921 0.60111964 0.91753411 0.61711919 0.91753417 0.61711919 0.87779921
		 0.64852917 0.91753417 0.64852917 0.87779921 0.61743838 0.8779844 0.61711919 0.91753417
		 0.65693396 0.85762554 0.64852917 0.87779921 0.65693396 0.93796951 0.64852917 0.91753417
		 0.52884865 0.84067911 0.47364321 0.93093973 0.47364321 0.86465561 0.45998281 0.88195193
		 0.45998281 0.91753197 0.47333702 0.87488204 0.47333702 0.92071337 0.11640217 0.64550263
		 0.053994432 0.5851602 0.11640214 0.52505565 0.053994447 0.70560718 0.11640217 0.76594949
		 0.1788099 0.70584494 0.1788099 0.58539802;
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 138 ".vt[0:137]"  -0.17997815 0.037434876 -0.020723958 -0.080250368 0.035351679 -0.020723958
		 0.039715096 0.035351679 -0.020723958 -0.1798981 0.072158903 -0.020723958 -0.080250368 0.067975573 -0.020723958
		 0.039715096 0.067975573 -0.020723958 -0.17997815 0.092952684 -0.013280373 -0.080250368 0.092952684 -0.013280373
		 0.013385221 0.092952684 -0.013280373 -0.17997815 0.037434876 0.020723864 -0.080250368 0.035351679 0.020723864
		 0.039715096 0.035351679 0.020723864 -0.1798981 0.072158903 0.020723864 -0.080250368 0.067975573 0.020723864
		 0.039715096 0.067975573 0.020723864 -0.17997815 0.092952684 0.01328028 -0.080250368 0.092952684 0.01328028
		 0.013385221 0.092952684 0.01328028 0.080367684 0.015781723 -0.0087805288 0.081156731 0.056163825 -0.0087805307
		 0.080367684 0.015781723 0.0087804459 0.081156731 0.056163821 0.0087804459 0.09928745 0.0067110881 -0.012327804
		 0.09928745 0.061344065 -0.012327808 0.09928745 0.0067110881 0.012327723 0.09928745 0.061344061 0.012327723
		 0.22468533 -0.037313312 -0.021185748 0.22468533 0.05422131 -0.027024575 0.22468533 -0.037313312 0.021185663
		 0.22468533 0.054221306 0.027024489 -0.021090984 0.035351679 -0.020723958 -0.021090984 0.035351679 0.020723864
		 -0.065914035 0.035351679 0.020723864 -0.065914035 0.035351679 -0.02106793 0.02253817 0.022641629 -0.012024737
		 0.02253817 0.022641629 0.012024648 -0.021090984 0.0096634105 -0.012024736 -0.021090984 0.0096634105 0.012024645
		 0.026564114 0.0083827004 -0.012024736 0.026564114 0.0083827004 0.012024645 -0.0098942444 0.0064245164 -0.012024737
		 -0.0098942444 0.0064245164 0.012024645 0.051481962 -0.034953058 -0.013928333 0.051481962 -0.034953058 0.013928246
		 0.017597631 -0.04532934 -0.013928332 0.017597631 -0.04532934 0.013928246 -0.080250368 0.010510273 -0.012024737
		 -0.080250368 0.010510273 0.012024645 -0.065914035 0.010510273 0.012024645 -0.065914035 0.010510273 -0.012024737
		 -0.13458318 0.036486626 -0.020723958 -0.13458318 0.036486626 0.020723864 -0.089236602 0.0097050816 -0.012884119
		 -0.089236602 0.0097050816 0.012624167 -0.1350669 0.01332964 -0.01288412 -0.1350669 0.01332964 0.012624167
		 -0.11013232 -0.040553793 -0.012884118 -0.11013232 -0.040553793 0.012624171 -0.15257159 -0.01979351 -0.012884119
		 -0.15257159 -0.01979351 0.012624171 -0.13475065 -0.073007211 -0.013658291 -0.13475065 -0.073007211 0.011849996
		 -0.17307967 -0.044641875 -0.013658291 -0.17307967 -0.044641875 0.011849996 -0.17166857 -0.10252918 -0.013837481
		 -0.17166857 -0.10252918 0.011670809 -0.1998183 -0.066704005 -0.013837479 -0.1998183 -0.066704005 0.011670809
		 -0.21086083 0.0464091 -0.022744775 -0.21078078 0.072167471 -0.022744777 -0.21086083 0.092961259 -0.014575355
		 -0.21086083 0.0464091 0.022744693 -0.21078078 0.072167471 0.022744693 -0.21086083 0.092961259 0.014575269
		 -0.30835819 0.046435498 -0.022744777 -0.30835819 0.073214054 -0.022744777 -0.30835819 0.092987657 -0.014575354
		 -0.30835819 0.046435498 0.022744697 -0.30835819 0.073214054 0.022744697 -0.30835819 0.092987657 0.014575269
		 -0.48397362 0.060771003 -4.7508627e-005 -0.48397362 0.060771003 -0.014464245 -0.48397362 0.067872293 -0.0072558774
		 -0.48397362 0.067872293 0.0071608592 -0.48397362 0.060771003 0.014369227 -0.48397362 0.053669713 0.0071608592
		 -0.48397362 0.053669713 -0.0072558783 -0.47313905 0.067872293 -0.0072558774 -0.47528309 0.067872293 0.0071608592
		 -0.31013128 0.060771003 -0.014464253 -0.4426713 0.067872293 -0.0072558802 -0.44481528 0.067872293 0.0071608573
		 -0.31013125 0.060771003 0.01436922 -0.31009209 0.053669713 0.0071608517 -0.31009209 0.053669713 -0.0072558848
		 -0.31009209 0.067872293 -0.0072558839 -0.31009209 0.067872293 0.0071608536 -0.46766198 0.046902955 0.0071608573
		 -0.46766198 0.046902955 -0.0072558792 -0.31009209 0.046435498 0.006098723 -0.31009209 0.046435498 -0.0084438287
		 -0.47313905 0.10252918 -0.0041147135 -0.47528309 0.10252917 0.0040196925 -0.45447469 0.10252918 -0.0041147135
		 -0.45661873 0.10252918 0.0040196907 -0.20413932 0.036284037 -0.022744777 -0.20413932 0.036284037 0.022744693
		 -0.36386633 0.067872301 -0.007255883 -0.36386633 0.067872301 0.0071608536 -0.39266872 0.067872293 0.0071608555
		 -0.39266872 0.067872293 -0.007255882 -0.36386633 0.075071804 -0.007255883 -0.36386633 0.075071804 0.0071608555
		 -0.37399614 0.075071797 0.0071608629 -0.37399614 0.075071797 -0.0072558783 -0.36386633 0.089205697 -0.007255882
		 -0.36386633 0.089205697 0.0071608536 -0.37399614 0.089205682 0.007160861 -0.37399614 0.089205682 -0.0072558783
		 -0.31009209 0.075215399 -0.0071886983 -0.31009209 0.075071804 0.0071608573 -0.31009209 0.089205697 -0.0072558802
		 -0.31009209 0.089205697 0.0071608555 -0.021090984 0.015508518 -0.014004156 -0.021090984 0.015508518 0.014004063
		 -0.065914035 0.015508518 0.01377498 -0.065914035 0.015508518 0.01377498 -0.065914035 0.015508518 -0.013844283
		 -0.065914035 0.015508518 -0.013844283 -0.058283061 0.0043633506 0.0071599931 -0.058283061 0.0043633506 -0.0057492368
		 -0.058283061 0.0093615949 0.0080995373 -0.058283061 0.0093615949 0.0080995373 -0.058283061 0.0093615949 -0.0067259315
		 -0.032176197 0.0045273677 -0.0071391659 -0.032176197 0.0045273677 0.0071390793 -0.032176197 0.010372475 -0.008314359
		 -0.032176197 0.010372475 0.0083142705;
	setAttr -s 424 ".ed";
	setAttr ".ed[0:165]"  0 3 0 3 4 1 4 0 1 4 1 1 1 50 0 50 4 1 4 5 1 5 1 1 5 2 0
		 2 30 0 30 5 1 3 6 0 6 7 0 7 3 1 7 4 1 7 8 0 8 4 1 8 5 0 9 51 0 51 13 1 13 9 1 13 12 1
		 12 9 0 10 32 0 32 14 1 14 10 1 14 13 1 13 10 1 13 16 1 16 12 1 16 15 0 15 12 0 14 17 0
		 17 13 1 17 16 0 0 50 0 50 51 0 51 0 1 65 67 0 67 66 0 66 65 1 26 27 0 27 29 0 29 26 1
		 29 28 0 28 26 0 8 17 0 17 5 1 14 5 0 7 16 1 16 8 1 6 15 0 15 7 1 5 19 0 19 2 0 19 18 0
		 18 2 0 14 11 0 11 20 0 20 14 0 20 21 0 21 14 0 11 2 0 18 11 1 18 20 0 21 5 1 21 19 0
		 19 23 0 23 18 0 23 22 0 22 18 0 21 25 0 25 19 1 25 23 0 20 24 0 24 21 0 24 25 0 22 20 1
		 22 24 0 23 27 0 27 22 0 26 22 0 25 29 0 29 23 1 24 28 0 28 25 0 26 24 1 30 33 0 33 5 1
		 31 11 0 14 31 1 45 44 0 44 43 1 43 45 0 44 42 0 42 43 0 31 32 0 32 33 0 33 31 1 30 31 0
		 33 1 0 49 48 0 48 46 1 46 49 0 48 47 0 47 46 0 2 34 0 34 30 0 34 36 0 36 123 0 123 34 1
		 31 124 0 124 11 1 37 35 0 35 11 0 11 37 0 35 2 1 35 34 0 123 124 0 31 123 1 37 41 0
		 41 35 1 41 39 0 39 35 0 37 36 0 36 40 0 40 37 1 40 41 0 34 38 0 38 36 1 38 40 0 39 34 1
		 39 38 0 41 45 0 45 39 0 43 39 0 40 44 0 44 41 1 38 42 0 42 40 0 43 38 1 10 47 0 47 32 1
		 48 125 0 125 47 0 10 1 0 1 46 0 46 10 1 33 128 0 128 1 0 1 49 0 126 128 0 33 126 1
		 51 10 0 66 64 0 64 65 0 9 0 0 1 52 0 52 50 0 52 54 0 54 50 0 54 51 1 54 55 0 55 51 0
		 55 10 0 55 53 0;
	setAttr ".ed[166:331]" 53 10 0 53 1 1 53 52 0 55 59 0 59 53 1 59 57 0 57 53 0
		 54 58 0 58 55 1 58 59 0 52 56 0 56 54 1 56 58 0 57 52 1 57 56 0 59 63 0 63 57 0 63 61 0
		 61 57 0 58 62 0 62 59 1 62 63 0 56 60 0 60 58 0 60 62 0 61 56 1 61 60 0 63 67 0 67 61 0
		 65 61 0 62 66 0 66 63 1 60 64 0 64 62 0 65 60 1 0 68 0 68 3 0 68 69 0 69 3 0 69 6 0
		 69 70 0 70 6 0 12 72 0 72 9 0 72 71 0 71 9 0 15 73 0 73 12 0 73 72 0 70 15 1 70 73 0
		 9 106 0 106 0 1 106 105 0 105 0 0 69 75 0 75 70 0 75 76 0 76 70 0 73 79 0 79 72 0
		 79 78 0 78 72 0 76 73 1 76 79 0 68 74 0 74 69 1 74 75 0 68 71 0 71 77 0 77 68 0 77 99 0
		 99 68 0 78 71 1 78 77 0 80 82 1 82 81 0 81 80 1 80 83 1 83 82 0 80 84 1 84 83 0 80 85 1
		 85 84 0 80 86 1 86 85 0 81 86 0 82 87 1 87 81 1 82 88 1 88 87 0 83 88 1 84 88 1 81 90 1
		 90 89 1 89 81 1 87 90 0 101 104 1 104 103 0 103 101 0 101 102 0 102 104 0 88 92 1
		 92 91 1 91 88 0 84 92 1 84 93 1 93 92 1 85 93 0 97 98 0 98 100 0 100 97 1 99 97 0
		 100 99 0 86 89 1 89 94 1 94 86 0 89 107 1 107 95 1 95 89 1 107 96 1 96 95 1 109 92 1
		 92 108 1 108 109 0 86 98 0 98 85 1 97 85 0 97 93 0 99 93 0 94 100 0 100 86 0 88 102 0
		 102 87 0 101 87 0 101 90 1 103 90 0 91 90 0 103 91 0 104 91 0 104 88 1 78 92 1 92 77 1
		 93 77 0 100 74 0 74 99 1 74 94 0 94 75 1 89 75 1 95 75 1 78 75 0 95 78 1 96 78 1
		 96 92 1 68 100 0 105 68 0 71 106 0 105 71 1 108 96 1 107 108 0 110 91 1 91 109 1
		 109 110 0 110 90 1 118 117 0 117 115 1;
	setAttr ".ed[332:423]" 115 118 0 117 116 0 116 115 0 110 89 1 110 107 0 108 112 0
		 112 109 0 112 113 0 113 109 0 107 111 0 111 108 1 111 112 0 113 110 1 113 114 0 114 110 0
		 114 107 1 114 111 1 113 117 0 117 114 1 118 114 0 118 111 1 115 111 1 112 116 1 116 113 1
		 116 122 0 122 115 1 122 121 0 121 115 0 111 119 0 119 112 0 119 120 0 120 112 0 121 111 0
		 121 119 0 120 116 1 120 122 0 75 119 0 119 78 0 120 78 0 76 121 0 121 75 0 79 122 0
		 122 76 1 120 79 0 121 79 1 120 75 0 119 76 0 122 78 0 123 30 0 124 37 0 47 126 0
		 126 32 0 1 127 0 127 49 0 49 130 0 130 48 1 130 129 0 129 48 0 129 125 0 129 131 0
		 131 125 0 126 125 0 131 126 1 131 132 0 132 126 0 127 133 0 133 49 0 133 130 0 127 126 0
		 132 127 1 132 133 0 36 134 0 134 123 0 134 136 0 136 123 0 136 124 1 136 137 0 137 124 0
		 37 135 0 135 36 1 135 134 0 137 37 0 137 135 0 137 132 0 132 135 0 132 129 0 129 135 0
		 136 133 0 133 137 1 129 134 1 130 134 0 130 136 0;
	setAttr -s 858 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[166:331]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[332:497]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[498:663]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[664:829]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[830:857]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 286 -ch 858 ".fc[0:285]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 113 114 115
		f 3 3 4 5
		mu 0 3 115 116 117
		f 3 -4 6 7
		mu 0 3 116 115 118
		f 3 8 9 10
		mu 0 3 118 119 120
		f 3 11 12 13
		mu 0 3 114 121 122
		f 3 14 -2 -14
		mu 0 3 122 115 114
		f 3 -15 15 16
		mu 0 3 115 122 123
		f 3 17 -7 -17
		mu 0 3 123 118 115
		f 3 18 19 20
		mu 0 3 6 41 10
		f 3 21 22 -21
		mu 0 3 10 9 6
		f 3 23 24 25
		mu 0 3 7 23 11
		f 3 26 27 -26
		mu 0 3 11 10 7
		f 3 -22 28 29
		mu 0 3 9 10 13
		f 3 30 31 -30
		mu 0 3 13 12 9
		f 3 -27 32 33
		mu 0 3 10 11 14
		f 3 34 -29 -34
		mu 0 3 14 13 10
		f 3 35 36 37
		mu 0 3 0 40 41
		f 3 38 39 40
		mu 0 3 49 51 50
		f 3 41 42 43
		mu 0 3 199 200 201
		f 3 44 45 -44
		mu 0 3 201 202 199
		f 3 -18 46 47
		mu 0 3 189 190 191
		f 3 -33 48 -48
		mu 0 3 191 192 189
		f 3 -16 49 50
		mu 0 3 5 4 13
		f 3 -35 -47 -51
		mu 0 3 13 14 5
		f 3 -13 51 52
		mu 0 3 4 3 12
		f 3 -31 -50 -53
		mu 0 3 12 13 4
		f 3 -9 53 54
		mu 0 3 119 118 124
		f 3 55 56 -55
		mu 0 3 124 125 119
		f 3 57 58 59
		mu 0 3 181 182 183
		f 3 60 61 -60
		mu 0 3 183 184 181
		f 3 62 -57 63
		mu 0 3 8 2 15
		f 3 64 -59 -64
		mu 0 3 15 16 8
		f 3 -49 -62 65
		mu 0 3 189 192 193
		f 3 66 -54 -66
		mu 0 3 193 194 189
		f 3 -56 67 68
		mu 0 3 125 124 126
		f 3 69 70 -69
		mu 0 3 126 127 125
		f 3 -67 71 72
		mu 0 3 194 193 195
		f 3 73 -68 -73
		mu 0 3 195 196 194
		f 3 -61 74 75
		mu 0 3 184 183 185
		f 3 76 -72 -76
		mu 0 3 185 186 184
		f 3 -65 -71 77
		mu 0 3 16 15 17
		f 3 78 -75 -78
		mu 0 3 17 18 16
		f 3 -70 79 80
		mu 0 3 127 126 128
		f 3 -42 81 -81
		mu 0 3 128 129 127
		f 3 -74 82 83
		mu 0 3 196 195 197
		f 3 -43 -80 -84
		mu 0 3 197 198 196
		f 3 -77 84 85
		mu 0 3 186 185 187
		f 3 -45 -83 -86
		mu 0 3 187 188 186
		f 3 -79 -82 86
		mu 0 3 18 17 19
		f 3 -46 -85 -87
		mu 0 3 19 20 18
		f 3 -11 87 88
		mu 0 3 118 120 130
		f 3 89 -58 90
		mu 0 3 22 8 11
		f 3 91 92 93
		mu 0 3 35 34 33
		f 3 94 95 -93
		mu 0 3 34 32 33
		f 3 96 97 98
		mu 0 3 22 23 24
		f 3 -97 -91 -25
		mu 0 3 23 22 11
		f 3 -88 99 -99
		mu 0 3 24 21 22
		f 3 -89 100 -8
		mu 0 3 118 130 116
		f 3 101 102 103
		mu 0 3 39 38 36
		f 3 104 105 -103
		mu 0 3 38 37 36
		f 3 -10 106 107
		mu 0 3 120 119 131
		f 3 108 109 110
		mu 0 3 131 132 133
		f 3 -90 111 112
		mu 0 3 8 22 99
		f 3 113 114 115
		mu 0 3 28 26 8
		f 3 -63 -115 116
		mu 0 3 2 8 26
		f 3 117 -107 -117
		mu 0 3 26 25 2
		f 3 118 -112 119
		mu 0 3 233 234 235
		f 3 -114 120 121
		mu 0 3 26 28 31
		f 3 122 123 -122
		mu 0 3 31 29 26
		f 3 124 125 126
		mu 0 3 28 27 30
		f 3 127 -121 -127
		mu 0 3 30 31 28
		f 3 -109 128 129
		mu 0 3 132 131 134
		f 3 130 -126 -130
		mu 0 3 134 135 132
		f 3 -118 -124 131
		mu 0 3 203 204 205
		f 3 132 -129 -132
		mu 0 3 205 206 203
		f 3 -123 133 134
		mu 0 3 29 31 35
		f 3 -94 135 -135
		mu 0 3 35 33 29
		f 3 -128 136 137
		mu 0 3 207 208 209
		f 3 -92 -134 -138
		mu 0 3 209 210 207
		f 3 -131 138 139
		mu 0 3 135 134 136
		f 3 -95 -137 -140
		mu 0 3 136 137 135
		f 3 -133 -136 140
		mu 0 3 206 205 211
		f 3 -96 -139 -141
		mu 0 3 211 212 206
		f 3 -24 141 142
		mu 0 3 23 7 37
		f 3 -105 143 144
		mu 0 3 37 38 100
		f 3 145 146 147
		mu 0 3 7 1 36
		f 3 -106 -142 -148
		mu 0 3 36 37 7
		f 3 -101 148 149
		mu 0 3 116 130 138
		f 3 -104 -147 150
		mu 0 3 139 140 116
		f 3 151 -149 152
		mu 0 3 101 103 24
		f 3 -6 -36 -3
		mu 0 3 115 117 113
		f 3 153 -28 -20
		mu 0 3 41 7 10
		f 3 154 155 -41
		mu 0 3 50 48 49
		f 3 -19 156 -38
		mu 0 3 41 6 0
		f 3 -5 157 158
		mu 0 3 117 116 141
		f 3 159 160 -159
		mu 0 3 141 142 117
		f 3 -37 -161 161
		mu 0 3 213 214 215
		f 3 162 163 -162
		mu 0 3 215 216 213
		f 3 -154 -164 164
		mu 0 3 7 41 43
		f 3 165 166 -165
		mu 0 3 43 42 7
		f 3 -146 -167 167
		mu 0 3 217 218 219
		f 3 168 -158 -168
		mu 0 3 219 220 217
		f 3 -166 169 170
		mu 0 3 42 43 45
		f 3 171 172 -171
		mu 0 3 45 44 42
		f 3 -163 173 174
		mu 0 3 216 215 221
		f 3 175 -170 -175
		mu 0 3 221 222 216
		f 3 -160 176 177
		mu 0 3 142 141 143
		f 3 178 -174 -178
		mu 0 3 143 144 142
		f 3 -169 -173 179
		mu 0 3 220 219 223
		f 3 180 -177 -180
		mu 0 3 223 224 220
		f 3 -172 181 182
		mu 0 3 44 45 47
		f 3 183 184 -183
		mu 0 3 47 46 44
		f 3 -176 185 186
		mu 0 3 222 221 225
		f 3 187 -182 -187
		mu 0 3 225 226 222
		f 3 -179 188 189
		mu 0 3 144 143 145
		f 3 190 -186 -190
		mu 0 3 145 146 144
		f 3 -181 -185 191
		mu 0 3 224 223 227
		f 3 192 -189 -192
		mu 0 3 227 228 224
		f 3 -184 193 194
		mu 0 3 46 47 51
		f 3 -39 195 -195
		mu 0 3 51 49 46
		f 3 -188 196 197
		mu 0 3 226 225 229
		f 3 -40 -194 -198
		mu 0 3 229 230 226
		f 3 -191 198 199
		mu 0 3 146 145 147
		f 3 -155 -197 -200
		mu 0 3 147 148 146
		f 3 -193 -196 200
		mu 0 3 228 227 231
		f 3 -156 -199 -201
		mu 0 3 231 232 228
		f 3 -1 201 202
		mu 0 3 114 113 149
		f 3 203 204 -203
		mu 0 3 149 150 114
		f 3 -12 -205 205
		mu 0 3 121 114 150
		f 3 206 207 -206
		mu 0 3 150 151 121
		f 3 -23 208 209
		mu 0 3 6 9 55
		f 3 210 211 -210
		mu 0 3 55 54 6
		f 3 -32 212 213
		mu 0 3 9 12 56
		f 3 214 -209 -214
		mu 0 3 56 55 9
		f 3 -52 -208 215
		mu 0 3 12 3 53
		f 3 216 -213 -216
		mu 0 3 53 56 12
		f 3 -157 217 218
		mu 0 3 0 6 83
		f 3 219 220 -219
		mu 0 3 83 82 0
		f 3 -207 221 222
		mu 0 3 151 150 152
		f 3 223 224 -223
		mu 0 3 152 153 151
		f 3 -215 225 226
		mu 0 3 55 56 61
		f 3 227 228 -227
		mu 0 3 61 60 55
		f 3 -217 -225 229
		mu 0 3 56 53 58
		f 3 230 -226 -230
		mu 0 3 58 61 56
		f 3 -204 231 232
		mu 0 3 150 149 154
		f 3 233 -222 -233
		mu 0 3 154 152 150
		f 3 234 235 236
		mu 0 3 52 54 59
		f 3 237 238 -237
		mu 0 3 59 76 52
		f 3 -211 -229 239
		mu 0 3 54 55 60
		f 3 240 -236 -240
		mu 0 3 60 59 54
		f 3 241 242 243
		mu 0 3 275 276 277
		f 3 244 245 -242
		mu 0 3 275 278 276
		f 3 246 247 -245
		mu 0 3 275 279 278
		f 3 248 249 -247
		mu 0 3 275 280 279
		f 3 250 251 -249
		mu 0 3 275 281 280
		f 3 -244 252 -251
		mu 0 3 275 277 281
		f 3 -243 253 254
		mu 0 3 155 156 157
		f 3 255 256 -254
		mu 0 3 62 67 66
		f 3 -246 257 -256
		mu 0 3 62 63 67
		f 3 -248 258 -258
		mu 0 3 63 64 67
		f 3 259 260 261
		mu 0 3 155 158 159
		f 3 -255 262 -260
		mu 0 3 155 157 158
		f 3 263 264 265
		mu 0 3 78 81 80
		f 3 266 267 -264
		mu 0 3 78 79 81
		f 3 268 269 270
		mu 0 3 67 70 69
		f 3 -259 271 -269
		mu 0 3 67 64 70
		f 3 272 273 -272
		mu 0 3 64 71 70
		f 3 -250 274 -273
		mu 0 3 64 65 71
		f 3 275 276 277
		mu 0 3 74 75 77
		f 3 278 -278 279
		mu 0 3 76 74 77
		f 3 280 281 282
		mu 0 3 160 159 161
		f 3 -253 -262 -281
		mu 0 3 160 155 159
		f 3 283 284 285
		mu 0 3 159 162 163
		f 3 286 287 -285
		mu 0 3 84 73 72
		f 3 288 289 290
		mu 0 3 86 70 85
		f 3 -252 291 292
		mu 0 3 236 237 238
		f 3 -276 293 -293
		mu 0 3 238 239 236
		f 3 -275 -294 294
		mu 0 3 71 65 74
		f 3 -279 295 -295
		mu 0 3 74 76 71
		f 3 -283 296 297
		mu 0 3 160 161 164
		f 3 -277 -292 -298
		mu 0 3 164 165 160
		f 3 -257 298 299
		mu 0 3 240 241 242
		f 3 -267 300 -300
		mu 0 3 242 243 240
		f 3 -263 -301 301
		mu 0 3 158 157 166
		f 3 -266 302 -302
		mu 0 3 166 167 158
		f 3 303 -303 304
		mu 0 3 69 68 80
		f 3 -265 305 -305
		mu 0 3 80 81 69
		f 3 -271 -306 306
		mu 0 3 67 69 81
		f 3 -268 -299 -307
		mu 0 3 81 79 67
		f 3 -241 307 308
		mu 0 3 244 245 246
		f 3 -274 309 -309
		mu 0 3 246 247 244
		f 3 -280 310 311
		mu 0 3 76 77 57
		f 3 -234 312 313
		mu 0 3 248 249 250
		f 3 -282 314 -314
		mu 0 3 161 159 152
		f 3 -286 315 -315
		mu 0 3 251 252 248
		f 3 316 -316 317
		mu 0 3 245 248 252
		f 3 -288 318 -318
		mu 0 3 252 253 245
		f 3 319 -308 -319
		mu 0 3 253 246 245
		f 3 -296 -238 -310
		mu 0 3 247 254 244
		f 3 -297 -313 -311
		mu 0 3 255 250 249
		f 3 -311 279 -312
		mu 0 3 57 77 76
		f 3 310 -232 320
		mu 0 3 77 57 52
		f 3 -280 -321 -239
		mu 0 3 76 77 52
		f 3 -221 321 -202
		mu 0 3 113 168 149
		f 3 -212 322 -218
		mu 0 3 6 54 83
		f 3 -235 -322 323
		mu 0 3 54 52 82
		f 3 -220 -323 -324
		mu 0 3 82 83 54
		f 3 324 -287 325
		mu 0 3 85 73 84
		f 3 -290 -320 -325
		mu 0 3 85 70 73
		f 3 326 327 328
		mu 0 3 87 69 86
		f 3 -304 -327 329
		mu 0 3 68 69 87
		f 3 -270 -289 -328
		mu 0 3 69 70 86
		f 3 330 331 332
		mu 0 3 94 93 91
		f 3 333 334 -332
		mu 0 3 93 92 91
		f 3 -261 -330 335
		mu 0 3 159 158 169
		f 3 -336 336 -284
		mu 0 3 159 169 162
		f 3 -291 337 338
		mu 0 3 86 85 89
		f 3 339 340 -339
		mu 0 3 89 90 86
		f 3 -326 341 342
		mu 0 3 85 84 88
		f 3 343 -338 -343
		mu 0 3 88 89 85
		f 3 -329 -341 344
		mu 0 3 256 257 258
		f 3 345 346 -345
		mu 0 3 258 259 256
		f 3 -337 -347 347
		mu 0 3 162 169 170
		f 3 348 -342 -348
		mu 0 3 170 171 162
		f 3 -346 349 350
		mu 0 3 259 258 260
		f 3 -331 351 -351
		mu 0 3 260 261 259
		f 3 -349 -352 352
		mu 0 3 171 170 172
		f 3 -333 353 -353
		mu 0 3 172 173 171
		f 3 -340 354 355
		mu 0 3 90 89 92
		f 3 -334 -350 -356
		mu 0 3 92 93 90
		f 3 -335 356 357
		mu 0 3 91 92 98
		f 3 358 359 -358
		mu 0 3 98 97 91
		f 3 -344 360 361
		mu 0 3 89 88 95
		f 3 362 363 -362
		mu 0 3 95 96 89
		f 3 -354 -360 364
		mu 0 3 171 173 174
		f 3 365 -361 -365
		mu 0 3 174 175 171
		f 3 -355 -364 366
		mu 0 3 92 89 96
		f 3 367 -357 -367
		mu 0 3 96 98 92
		f 3 316 368 369
		mu 0 3 245 248 262
		f 3 362 370 -370
		mu 0 3 262 263 245
		f 3 223 371 372
		mu 0 3 248 264 265
		f 3 365 -369 -373
		mu 0 3 265 262 248
		f 3 230 373 374
		mu 0 3 264 266 267
		f 3 358 -372 -375
		mu 0 3 267 265 264
		f 3 227 -371 375
		mu 0 3 266 245 263
		f 3 367 -374 -376
		mu 0 3 263 267 266
		f 3 -231 371 376
		mu 0 3 266 264 265
		f 3 -359 -374 -377
		mu 0 3 265 267 266
		f 3 -317 -371 377
		mu 0 3 248 245 263
		f 3 -363 -369 -378
		mu 0 3 263 262 248
		f 3 -224 368 378
		mu 0 3 264 248 262
		f 3 -366 -372 -379
		mu 0 3 262 265 264
		f 3 -228 373 379
		mu 0 3 245 266 267
		f 3 -368 370 -380
		mu 0 3 267 263 245
		f 3 -111 380 -108
		mu 0 3 131 133 120
		f 3 -113 381 -116
		mu 0 3 8 99 28
		f 3 -100 -381 -120
		mu 0 3 235 268 233
		f 3 382 383 -143
		mu 0 3 37 101 23
		f 3 384 385 -151
		mu 0 3 116 176 139
		f 3 -98 -384 -153
		mu 0 3 24 23 101
		f 3 -102 386 387
		mu 0 3 269 270 271
		f 3 388 389 -388
		mu 0 3 271 272 269
		f 3 -144 -390 390
		mu 0 3 100 38 104
		f 3 391 392 -391
		mu 0 3 104 106 100
		f 3 393 -393 394
		mu 0 3 101 100 106
		f 3 395 396 -395
		mu 0 3 106 107 101
		f 3 -386 397 398
		mu 0 3 139 176 177
		f 3 399 -387 -399
		mu 0 3 177 178 139
		f 3 400 -397 401
		mu 0 3 102 101 107
		f 3 402 -398 -402
		mu 0 3 107 108 102
		f 3 -110 403 404
		mu 0 3 133 132 179
		f 3 405 406 -405
		mu 0 3 179 180 133
		f 3 -119 -407 407
		mu 0 3 234 233 273
		f 3 408 409 -408
		mu 0 3 273 274 234
		f 3 -125 410 411
		mu 0 3 27 28 110
		f 3 412 -404 -412
		mu 0 3 110 109 27
		f 3 -382 -410 413
		mu 0 3 28 99 112
		f 3 414 -411 -414
		mu 0 3 112 110 28
		f 3 -415 415 416
		mu 0 3 110 112 107
		f 3 417 418 -417
		mu 0 3 107 104 110
		f 3 -409 419 420
		mu 0 3 112 111 108
		f 3 -403 -416 -421
		mu 0 3 108 107 112
		f 3 -413 -419 421
		mu 0 3 109 110 104
		f 3 -389 422 -422
		mu 0 3 104 105 109
		f 3 -406 -423 423
		mu 0 3 180 179 178
		f 3 -400 -420 -424
		mu 0 3 178 177 180;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cal3D_data";
	addAttr -is true -ci true -k true -sn "UDP3DSMAX" -ln "UDP3DSMAX" -dt "string";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 0 
		-smx 0 -at "long";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr -k on ".UDP3DSMAX" -type "string" "[general]&cr;&lf;name=cal3D&cr;&lf;version=1.0&cr;&lf;exportDir=C:dtArtRepositoryDelta3DAssetLibraryOpenCharactersTerroristGameReady&cr;&lf;generateCFG=true&cr;&lf;LaunchPreview=false&cr;&lf;MaxBones=4&cr;&lf;MinThreshold=0.001&cr;&lf;[export]&cr;&lf;meshSet=BadGuy&cr;&lf;ReIndexMat=true&cr;&lf;LOD=false&cr;&lf;Springs=false&cr;&lf;springSet=SkeletonBG&cr;&lf;skelSet=SkeletonBG&cr;&lf;anmNumber=1&cr;&lf;[anim1]&cr;&lf;Name=Unnamed&cr;&lf;Start=0&cr;&lf;End=31&cr;&lf;useBonesSet=false&cr;&lf;";
	setAttr -k on ".MaxHandle" 1766;
createNode locator -n "cal3D_dataShape" -p "cal3D_data";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode phong -n "bodyFBXASC032FBXASC0911FBXASC093";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.19607845 0.19607845 0.19607845 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "BODYbSG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "MapFBXASC032FBXASC0353";
	setAttr ".ftn" -type "string" "C:/Users/William/Desktop/UAV Model/NotReady/Characters/Terrorist/Source/Terrorist_textures/JPEG/bad_guy.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode blindDataTemplate -n "blindDataTemplate1";
	addAttr -ci true -sn "MaxVisibility" -ln "MaxVisibility" -min 0 -max 1 -at "bool";
	setAttr ".tid" 16180;
createNode phong -n "FBXASC0482FBXASC032FBXASC045FBXASC032DefaultFBXASC032FBXASC0912FBXASC093";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "Ak47SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "MapFBXASC032FBXASC0355";
	setAttr ".ftn" -type "string" "C:/Users/William/Desktop/UAV Model/NotReady/Characters/Terrorist/Source/Terrorist_textures/JPEG/ak-47.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode animCurveTL -n "BdBip_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0
		 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 0
		 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTL -n "BdBip_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 78.024452209472656 0.8 76.873863220214844
		 1.6 75.71600341796875 2.4 74.682685852050781 3.2 73.905731201171875 4 73.425811767578125
		 4.8 73.215988159179687 5.6 73.306648254394531 6.4 73.728195190429687 7.2 74.58709716796875
		 8 75.817192077636719 8.8 77.189826965332031 9.6 78.476402282714844 10.4 79.44830322265625
		 11.2 79.876876831054688 12 79.492446899414063 12.8 78.416267395019531 13.6 77.006248474121094
		 14.4 75.6202392578125 15.2 74.616119384765625 16 74.106613159179687 16.8 73.995185852050781
		 17.6 74.3258056640625 18.4 75.107780456542969 19.2 76.192764282226562 20 77.388267517089844
		 20.8 78.501777648925781 21.6 79.3408203125 22.4 79.712882995605469 23.2 79.524772644042969
		 24 78.911849975585938 24.8 78.024452209472656;
createNode animCurveTL -n "BdBip_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0
		 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 0
		 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTU -n "BdBip_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 99.999992370605469 0.8 99.999992370605469
		 1.6 99.999992370605469 2.4 99.999992370605469 3.2 99.999992370605469 4 99.999992370605469
		 4.8 99.999992370605469 5.6 99.999992370605469 6.4 99.999992370605469 7.2 99.999992370605469
		 8 99.999992370605469 8.8 99.999992370605469 9.6 99.999992370605469 10.4 99.999992370605469
		 11.2 99.999992370605469 12 99.999992370605469 12.8 99.999992370605469 13.6 99.999992370605469
		 14.4 99.999992370605469 15.2 99.999992370605469 16 99.999992370605469 16.8 99.999992370605469
		 17.6 99.999992370605469 18.4 99.999992370605469 19.2 99.999992370605469 20 99.999992370605469
		 20.8 99.999992370605469 21.6 99.999992370605469 22.4 99.999992370605469 23.2 99.999992370605469
		 24 99.999992370605469 24.8 99.999992370605469;
createNode animCurveTU -n "BdBip_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 99.999992370605469 0.8 99.999992370605469
		 1.6 99.999992370605469 2.4 99.999992370605469 3.2 99.999992370605469 4 99.999992370605469
		 4.8 99.999992370605469 5.6 99.999992370605469 6.4 99.999992370605469 7.2 99.999992370605469
		 8 99.999992370605469 8.8 99.999992370605469 9.6 99.999992370605469 10.4 99.999992370605469
		 11.2 99.999992370605469 12 99.999992370605469 12.8 99.999992370605469 13.6 99.999992370605469
		 14.4 99.999992370605469 15.2 99.999992370605469 16 99.999992370605469 16.8 99.999992370605469
		 17.6 99.999992370605469 18.4 99.999992370605469 19.2 99.999992370605469 20 99.999992370605469
		 20.8 99.999992370605469 21.6 99.999992370605469 22.4 99.999992370605469 23.2 99.999992370605469
		 24 99.999992370605469 24.8 99.999992370605469;
createNode animCurveTU -n "BdBip_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 100 0.8 100 1.6 100 2.4 100 3.2 100 4 100
		 4.8 100 5.6 100 6.4 100 7.2 100 8 100 8.8 100 9.6 100 10.4 100 11.2 100 12 100 12.8 100
		 13.6 100 14.4 100 15.2 100 16 100 16.8 100 17.6 100 18.4 100 19.2 100 20 100 20.8 100
		 21.6 100 22.4 100 23.2 100 24 100 24.8 100;
createNode animCurveTA -n "BdBip_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0
		 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 0
		 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTA -n "BdBip_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0
		 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 0
		 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTA -n "BdBip_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -89.999908447265625 0.8 -89.999908447265625
		 1.6 -89.999908447265625 2.4 -89.999908447265625 3.2 -89.999908447265625 4 -89.999908447265625
		 4.8 -89.999908447265625 5.6 -89.999908447265625 6.4 -89.999908447265625 7.2 -89.999908447265625
		 8 -89.999908447265625 8.8 -89.999908447265625 9.6 -89.999908447265625 10.4 -89.999908447265625
		 11.2 -89.999908447265625 12 -89.999908447265625 12.8 -89.999908447265625 13.6 -89.999908447265625
		 14.4 -89.999908447265625 15.2 -89.999908447265625 16 -89.999908447265625 16.8 -89.999908447265625
		 17.6 -89.999908447265625 18.4 -89.999908447265625 19.2 -89.999908447265625 20 -89.999908447265625
		 20.8 -89.999908447265625 21.6 -89.999908447265625 22.4 -89.999908447265625 23.2 -89.999908447265625
		 24 -89.999908447265625 24.8 -89.999908447265625;
createNode animCurveTL -n "Bip02FBXASC032Footsteps_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0
		 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 0
		 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032Footsteps_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0
		 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 0
		 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032Footsteps_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.78638917207717896 0.8 -0.77588564157485962
		 1.6 -0.76342546939849854 2.4 -0.75645768642425537 3.2 -0.74947273731231689 4 -0.73696547746658325
		 4.8 -0.72565227746963501 5.6 -0.72853422164916992 6.4 -0.7351030707359314 7.2 -0.7473752498626709
		 8 -0.76046216487884521 8.8 -0.77183890342712402 9.6 -0.78450906276702881 10.4 -0.79597002267837524
		 11.2 -0.79908448457717896 12 -0.79107779264450073 12.8 -0.77913284301757813 13.6 -0.76702648401260376
		 14.4 -0.75563699007034302 15.2 -0.74324440956115723 16 -0.73508089780807495 16.8 -0.73967111110687256
		 17.6 -0.74702411890029907 18.4 -0.75706899166107178 19.2 -0.77121102809906006 20 -0.78556305170059204
		 20.8 -0.79645931720733643 21.6 -0.80494332313537598 22.4 -0.81048554182052612 23.2 -0.80935019254684448
		 24 -0.8015056848526001 24.8 -0.78984779119491577;
createNode animCurveTU -n "Bip02FBXASC032Footsteps_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 1 4 1 4.8 1 5.6 1
		 6.4 1 7.2 1 8 1 8.8 1 9.6 1 10.4 1 11.2 1 12 1 12.8 1 13.6 1 14.4 1 15.2 1 16 1 16.8 1
		 17.6 1 18.4 1 19.2 1 20 1 20.8 1 21.6 1 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032Footsteps_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 1 4 1 4.8 1 5.6 1
		 6.4 1 7.2 1 8 1 8.8 1 9.6 1 10.4 1 11.2 1 12 1 12.8 1 13.6 1 14.4 1 15.2 1 16 1 16.8 1
		 17.6 1 18.4 1 19.2 1 20 1 20.8 1 21.6 1 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032Footsteps_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 1 4 1 4.8 1 5.6 1
		 6.4 1 7.2 1 8 1 8.8 1 9.6 1 10.4 1 11.2 1 12 1 12.8 1 13.6 1 14.4 1 15.2 1 16 1 16.8 1
		 17.6 1 18.4 1 19.2 1 20 1 20.8 1 21.6 1 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032Footsteps_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0
		 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 0
		 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032Footsteps_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0
		 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 0
		 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032Footsteps_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 89.999908447265625 0.8 89.999908447265625
		 1.6 89.999908447265625 2.4 89.999908447265625 3.2 89.999908447265625 4 89.999908447265625
		 4.8 89.999908447265625 5.6 89.999908447265625 6.4 89.999908447265625 7.2 89.999908447265625
		 8 89.999908447265625 8.8 89.999908447265625 9.6 89.999908447265625 10.4 89.999908447265625
		 11.2 89.999908447265625 12 89.999908447265625 12.8 89.999908447265625 13.6 89.999908447265625
		 14.4 89.999908447265625 15.2 89.999908447265625 16 89.999908447265625 16.8 89.999908447265625
		 17.6 89.999908447265625 18.4 89.999908447265625 19.2 89.999908447265625 20 89.999908447265625
		 20.8 89.999908447265625 21.6 89.999908447265625 22.4 89.999908447265625 23.2 89.999908447265625
		 24 89.999908447265625 24.8 89.999908447265625;
createNode animCurveTL -n "Bip02FBXASC032Pelvis_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.065261967480182648 0.8 -0.065334327518939972
		 1.6 -0.065437681972980499 2.4 -0.065547116100788116 3.2 -0.065665006637573242 4 -0.065796256065368652
		 4.8 -0.065935850143432617 5.6 -0.066070437431335449 6.4 -0.066200137138366699 7.2 -0.06632494181394577
		 8 -0.066431991755962372 8.8 -0.06652175635099411 9.6 -0.066594116389751434 10.4 -0.066635720431804657
		 11.2 -0.066642157733440399 12 -0.066617958247661591 12.8 -0.066562525928020477 13.6 -0.066469542682170868
		 14.4 -0.0663447305560112 15.2 -0.066206455230712891 16 -0.066054224967956543 16.8 -0.065888166427612305
		 17.6 -0.065727710723876953 18.4 -0.065572984516620636 19.2 -0.065424211323261261
		 20 -0.065301425755023956 20.8 -0.065207965672016144 21.6 -0.065141089260578156 22.4 -0.065111882984638214
		 23.2 -0.065136797726154327 24 -0.065199501812458038 24.8 -0.065261967480182648;
createNode animCurveTL -n "Bip02FBXASC032Pelvis_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.0052148732356727123 0.8 -0.0045758816413581371
		 1.6 -0.0037291077896952629 2.4 -0.0028401641175150871 3.2 -0.0018978740554302931
		 4 -0.00086719030514359474 4.8 0.00021655645105056465 5.6 0.0012590568512678146 6.4 0.00226029590703547
		 7.2 0.0032202734146267176 8 0.0040450231172144413 8.8 0.004738344345241785 9.6 0.0052968403324484825
		 10.4 0.0056160977110266685 11.2 0.0056658824905753136 12 0.005476667545735836 12.8 0.0050351610407233238
		 13.6 0.0042871818877756596 14.4 0.0032861963845789433 15.2 0.0021804703865200281
		 16 0.00096745596965774894 16.8 -0.00035052222665399313 17.6 -0.0016171211609616876
		 18.4 -0.0028321472927927971 19.2 -0.0039954064413905144 20 -0.0049502733163535595
		 20.8 -0.0056730094365775585 21.6 -0.0061871442012488842 22.4 -0.0064069661311805248
		 23.2 -0.0062058004550635815 24 -0.005710321944206953 24.8 -0.0052148732356727123;
createNode animCurveTL -n "Bip02FBXASC032Pelvis_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0
		 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 0
		 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032Pelvis_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 1 4 1 4.8 1 5.6 0.99999994039535522
		 6.4 1 7.2 1 8 1 8.8 1 9.6 1 10.4 0.99999994039535522 11.2 1 12 1 12.8 1 13.6 1 14.4 1
		 15.2 0.99999994039535522 16 0.99999994039535522 16.8 1 17.6 1 18.4 1 19.2 1 20 1
		 20.8 1 21.6 1 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032Pelvis_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 0.99999994039535522
		 1.6 0.99999994039535522 2.4 0.99999994039535522 3.2 0.99999994039535522 4 0.99999994039535522
		 4.8 0.99999994039535522 5.6 0.99999994039535522 6.4 0.99999994039535522 7.2 0.99999994039535522
		 8 0.99999994039535522 8.8 0.99999994039535522 9.6 0.99999994039535522 10.4 0.99999994039535522
		 11.2 0.99999994039535522 12 0.99999994039535522 12.8 0.99999994039535522 13.6 0.99999994039535522
		 14.4 0.99999994039535522 15.2 0.99999994039535522 16 0.99999994039535522 16.8 0.99999994039535522
		 17.6 0.99999994039535522 18.4 0.99999994039535522 19.2 0.99999994039535522 20 0.99999994039535522
		 20.8 0.99999994039535522 21.6 0.99999994039535522 22.4 0.99999994039535522 23.2 0.99999994039535522
		 24 0.99999994039535522 24.8 0.99999994039535522;
createNode animCurveTU -n "Bip02FBXASC032Pelvis_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 0.99999994039535522
		 1.6 0.99999994039535522 2.4 1 3.2 0.99999994039535522 4 0.99999994039535522 4.8 0.99999994039535522
		 5.6 0.99999988079071045 6.4 0.99999994039535522 7.2 0.99999994039535522 8 0.99999994039535522
		 8.8 0.99999994039535522 9.6 0.99999994039535522 10.4 0.99999988079071045 11.2 0.99999994039535522
		 12 0.99999994039535522 12.8 0.99999994039535522 13.6 0.99999994039535522 14.4 0.99999994039535522
		 15.2 0.99999988079071045 16 0.99999988079071045 16.8 0.99999994039535522 17.6 0.99999994039535522
		 18.4 0.99999994039535522 19.2 0.99999994039535522 20 0.99999994039535522 20.8 1 21.6 0.99999994039535522
		 22.4 0.99999994039535522 23.2 0.99999994039535522 24 0.99999994039535522 24.8 0.99999994039535522;
createNode animCurveTA -n "Bip02FBXASC032Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 7.9455166996922344e-005 0.8 7.9454723163507879e-005
		 1.6 7.9453930084127933e-005 2.4 7.9452503996435553e-005 3.2 7.9449186159763485e-005
		 4 7.9431782069150358e-005 4.8 7.62939453125e-005 5.6 7.62939453125e-005 6.4 7.62939453125e-005
		 7.2 7.62939453125e-005 8 7.62939453125e-005 8.8 7.62939453125e-005 9.6 7.62939453125e-005
		 10.4 7.62939453125e-005 11.2 7.62939453125e-005 12 7.62939453125e-005 12.8 7.62939453125e-005
		 13.6 7.62939453125e-005 14.4 7.62939453125e-005 15.2 7.62939453125e-005 16 7.62939453125e-005
		 16.8 7.9392528277821839e-005 17.6 7.9448807809967548e-005 18.4 7.9452867794316262e-005
		 19.2 7.945435936562717e-005 20 7.9455043305642903e-005 20.8 7.9455399827565998e-005
		 21.6 7.9455603554379195e-005 22.4 7.9455676313955337e-005 23.2 7.9455603554379195e-005
		 24 7.9455407103523612e-005 24.8 7.9455166996922344e-005;
createNode animCurveTA -n "Bip02FBXASC032Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -87.600662231445313 0.8 -87.943359375
		 1.6 -88.367630004882813 2.4 -88.808319091796875 3.2 -89.26690673828125 4 -89.757316589355469
		 4.8 -90.265647888183594 5.6 -90.7515869140625 6.4 -91.21514892578125 7.2 -91.656333923339844
		 8 -92.034843444824219 8.8 -92.353164672851562 9.6 -92.608810424804688 10.4 -92.754096984863281
		 11.2 -92.776756286621094 12 -92.689048767089844 12.8 -92.480049133300781 13.6 -92.122398376464844
		 14.4 -91.643447875976563 15.2 -91.114387512207031 16 -90.533882141113281 16.8 -89.903266906738281
		 17.6 -89.297706604003906 18.4 -88.717208862304688 19.2 -88.161758422851562 20 -87.706535339355469
		 20.8 -87.362884521484375 21.6 -87.119453430175781 22.4 -87.01739501953125 23.2 -87.117568969726563
		 24 -87.359115600585938 24.8 -87.600662231445313;
createNode animCurveTA -n "Bip02FBXASC032Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -90 0.8 -90 1.6 -90 2.4 -90 3.2 -90 4 -90
		 4.8 -90 5.6 -90 6.4 -90 7.2 -90 8 -90 8.8 -90 9.6 -90 10.4 -90 11.2 -90 12 -90 12.8 -90
		 13.6 -90 14.4 -90 15.2 -90 16 -90 16.8 -90 17.6 -90 18.4 -90 19.2 -90 20 -90 20.8 -90
		 21.6 -90 22.4 -90 23.2 -90 24 -90 24.8 -90;
createNode animCurveTL -n "Bip02FBXASC032Spine_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.10179126262664795 0.8 0.10181498527526855
		 1.6 0.10183936357498169 2.4 0.10185867547988892 3.2 0.10187238454818726 4 0.10187989473342896
		 4.8 0.1018797755241394 5.6 0.10187214612960815 6.4 0.10185807943344116 7.2 0.10183835029602051
		 8 0.10181677341461182 8.8 0.10179519653320312 9.6 0.1017754077911377 10.4 0.10176348686218262
		 11.2 0.10176146030426025 12 0.10176879167556763 12.8 0.10178560018539429 13.6 0.10181111097335815
		 14.4 0.10183906555175781 15.2 0.10186171531677246 16 0.10187649726867676 16.8 0.10188072919845581
		 17.6 0.10187309980392456 18.4 0.10185527801513672 19.2 0.10182821750640869 20 0.10179895162582397
		 20.8 0.10177254676818848 21.6 0.10175186395645142 22.4 0.1017424464225769 23.2 0.10175168514251709
		 24 0.10177236795425415 24.8 0.10179126262664795;
createNode animCurveTL -n "Bip02FBXASC032Spine_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -7.2114169597625732e-005 0.8 -7.2233378887176514e-005
		 1.6 -7.2114169597625732e-005 2.4 -7.2121620178222656e-005 3.2 -7.2121620178222656e-005
		 4 -7.2002410888671875e-005 4.8 -7.2121620178222656e-005 5.6 -7.2002410888671875e-005
		 6.4 -7.2002410888671875e-005 7.2 -7.212907075881958e-005 8 -7.212907075881958e-005
		 8.8 -7.212907075881958e-005 9.6 -7.2009861469268799e-005 10.4 -7.2009861469268799e-005
		 11.2 -7.2009861469268799e-005 12 -7.2009861469268799e-005 12.8 -7.2009861469268799e-005
		 13.6 -7.2009861469268799e-005 14.4 -7.212907075881958e-005 15.2 -7.2002410888671875e-005
		 16 -7.2121620178222656e-005 16.8 -7.2002410888671875e-005 17.6 -7.2121620178222656e-005
		 18.4 -7.2114169597625732e-005 19.2 -7.2121620178222656e-005 20 -7.2114169597625732e-005
		 20.8 -7.2233378887176514e-005 21.6 -7.2233378887176514e-005 22.4 -7.2233378887176514e-005
		 23.2 -7.2233378887176514e-005 24 -7.2114169597625732e-005 24.8 -7.2114169597625732e-005;
createNode animCurveTL -n "Bip02FBXASC032Spine_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.0042659211903810501 0.8 0.0036568976938724518
		 1.6 0.0029027611017227173 2.4 0.0021192561835050583 3.2 0.0013038204051554203 4 0.00043165613897144794
		 4.8 -0.00047239591367542744 5.6 -0.0013365847989916801 6.4 -0.0021608928218483925
		 7.2 -0.0029452890157699585 8 -0.003618115559220314 8.8 -0.0041838251054286957 9.6 -0.0046380721032619476
		 10.4 -0.004896160215139389 11.2 -0.0049364343285560608 12 -0.0047806091606616974
		 12.8 -0.0044092927128076553 13.6 -0.0037737376987934113 14.4 -0.002922380343079567
		 15.2 -0.0019817594438791275 16 -0.00094944983720779419 16.8 0.00017206370830535889
		 17.6 0.0012490055523812771 18.4 0.0022812299430370331 19.2 0.0032687149941921234
		 20 0.0040777642279863358 20.8 0.0046883746981620789 21.6 0.0051208026707172394 22.4 0.0053020603954792023
		 23.2 0.005124170333147049 24 0.0046950802206993103 24.8 0.0042659211903810501;
createNode animCurveTU -n "Bip02FBXASC032Spine_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1.0000001192092896 2.4 0.99999994039535522
		 3.2 1 4 1.0000001192092896 4.8 1 5.6 1.0000001192092896 6.4 1 7.2 1 8 1 8.8 1 9.6 1.0000001192092896
		 10.4 1.0000001192092896 11.2 1 12 1 12.8 1.0000001192092896 13.6 1 14.4 1.0000001192092896
		 15.2 1.0000001192092896 16 1.0000001192092896 16.8 0.99999994039535522 17.6 1.0000001192092896
		 18.4 1.0000001192092896 19.2 1 20 1 20.8 1 21.6 1.0000001192092896 22.4 1 23.2 1
		 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032Spine_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 0.99999994039535522 1.6 1.0000001192092896
		 2.4 0.99999994039535522 3.2 1 4 1 4.8 1.0000001192092896 5.6 1.0000001192092896 6.4 0.99999994039535522
		 7.2 0.99999994039535522 8 1.0000001192092896 8.8 1 9.6 1 10.4 1 11.2 1.0000001192092896
		 12 0.99999994039535522 12.8 1 13.6 1 14.4 1 15.2 1.0000001192092896 16 1.0000001192092896
		 16.8 0.99999994039535522 17.6 1.0000001192092896 18.4 1 19.2 1 20 1 20.8 1 21.6 1.0000001192092896
		 22.4 0.99999994039535522 23.2 0.99999994039535522 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032Spine_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1.0000001192092896 2.4 0.99999994039535522
		 3.2 1 4 1 4.8 1 5.6 1.0000001192092896 6.4 0.99999994039535522 7.2 1 8 0.99999994039535522
		 8.8 1 9.6 1 10.4 1.0000001192092896 11.2 1.0000001192092896 12 1 12.8 0.99999994039535522
		 13.6 1 14.4 1 15.2 1 16 1.0000001192092896 16.8 1 17.6 1 18.4 1.0000001192092896
		 19.2 1.0000001192092896 20 1 20.8 0.99999994039535522 21.6 1 22.4 0.99999988079071045
		 23.2 1 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032Spine_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.2986613512039185 0.8 -1.126242995262146
		 1.6 -0.9065299630165099 2.4 -0.67694491147994995 3.2 -0.43566539883613586 4 -0.17441749572753906
		 4.8 0.098987609148025513 5.6 0.36206522583961487 6.4 0.61481571197509766 7.2 0.85721594095230103
		 8 1.0661966800689697 8.8 1.2425875663757324 9.6 1.3849222660064697 10.4 1.4662271738052368
		 11.2 1.4789106845855713 12 1.4302006959915161 12.8 1.3154608011245728 13.6 1.1206393241882324
		 14.4 0.86097830533981323 15.2 0.57556575536727905 16 0.26395824551582336 16.8 -0.072982817888259888
		 17.6 -0.39530476927757263 18.4 -0.70334792137145996 19.2 -0.99740266799926747 20 -1.2381135225296021
		 20.8 -1.4198282957077026 21.6 -1.5486948490142822 22.4 -1.6031622886657715 23.2 -1.5512732267379761
		 24 -1.4249953031539917 24.8 -1.2986613512039185;
createNode animCurveTA -n "Bip02FBXASC032Spine_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -4.0795803070068359 0.8 -3.5330843925476074
		 1.6 -2.837475061416626 2.4 -2.1118113994598389 3.2 -1.3508646488189697 4 -0.52932590246200562
		 4.8 0.32739660143852234 5.6 1.1484969854354858 6.4 1.934006929397583 7.2 2.6839525699615479
		 8 3.327702522277832 8.8 3.8689486980438228 9.6 4.3041906356811523 10.4 4.5521726608276367
		 11.2 4.5908422470092773 12 4.4423470497131348 12.8 4.0917019844055176 13.6 3.4942185878753662
		 14.4 2.6942603588104248 15.2 1.8105257749557495 16 0.84081572294235229 16.8 -0.21284599602222443
		 17.6 -1.2251420021057129 18.4 -2.195997953414917 19.2 -3.1253583431243896 20 -3.8876607418060303
		 20.8 -4.4638705253601074 21.6 -4.8728246688842773 22.4 -5.0457510948181152 23.2 -4.8810343742370605
		 24 -4.4802865982055664 24.8 -4.0795803070068359;
createNode animCurveTA -n "Bip02FBXASC032Spine_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 17.2889404296875 0.8 17.297908782958984
		 1.6 17.314981460571289 2.4 17.336160659790039 3.2 17.362447738647461 4 17.395729064941406
		 4.8 17.435298919677734 5.6 17.47743034362793 6.4 17.521692276000977 7.2 17.567625045776367
		 8 17.609701156616211 8.8 17.646926879882813 9.6 17.678197860717773 10.4 17.696617126464844
		 11.2 17.69952392578125 12 17.688610076904297 12.8 17.663883209228516 13.6 17.623844146728516
		 14.4 17.573526382446289 15.2 17.522216796875 16 17.471038818359375 16.8 17.421411514282227
		 17.6 17.379501342773437 18.4 17.344568252563477 19.2 17.315935134887695 20 17.295883178710938
		 20.8 17.282724380493164 21.6 17.274356842041016 22.4 17.270851135253906 23.2 17.273372650146484
		 24 17.280721664428711 24.8 17.2889404296875;
createNode animCurveTL -n "Bip02FBXASC032Spine1_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.09488290548324585 0.8 0.0948830246925354
		 1.6 0.0948830246925354 2.4 0.0948830246925354 3.2 0.0948830246925354 4 0.094882965087890625
		 4.8 0.0948830246925354 5.6 0.094882965087890625 6.4 0.094883084297180176 7.2 0.094883143901824951
		 8 0.094883084297180176 8.8 0.094883203506469727 9.6 0.094883203506469727 10.4 0.094883143901824951
		 11.2 0.094883084297180176 12 0.094883203506469727 12.8 0.094883263111114502 13.6 0.094883084297180176
		 14.4 0.094883203506469727 15.2 0.094883203506469727 16 0.094883084297180176 16.8 0.094883084297180176
		 17.6 0.094883084297180176 18.4 0.094882965087890625 19.2 0.094882965087890625 20 0.094882965087890625
		 20.8 0.094883084297180176 21.6 0.094883084297180176 22.4 0.094882965087890625 23.2 0.0948830246925354
		 24 0.094883143901824951 24.8 0.09488290548324585;
createNode animCurveTL -n "Bip02FBXASC032Spine1_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -8.0496072769165039e-005 0.8 -8.0496072769165039e-005
		 1.6 -8.0496072769165039e-005 2.4 -8.0525875091552734e-005 3.2 -8.0525875091552734e-005
		 4 -8.0645084381103516e-005 4.8 -8.0406665802001953e-005 5.6 -8.061528205871582e-005
		 6.4 -8.061528205871582e-005 7.2 -8.0436468124389648e-005 8 -8.0376863479614258e-005
		 8.8 -8.0466270446777344e-005 9.6 -8.0585479736328125e-005 10.4 -8.0466270446777344e-005
		 11.2 -8.0496072769165039e-005 12 -8.0466270446777344e-005 12.8 -8.0525875091552734e-005
		 13.6 -8.055567741394043e-005 14.4 -8.0496072769165039e-005 15.2 -8.0466270446777344e-005
		 16 -8.0436468124389648e-005 16.8 -8.055567741394043e-005 17.6 -8.0496072769165039e-005
		 18.4 -8.055567741394043e-005 19.2 -8.055567741394043e-005 20 -8.055567741394043e-005
		 20.8 -8.0406665802001953e-005 21.6 -8.0376863479614258e-005 22.4 -8.0347061157226563e-005
		 23.2 -8.0496072769165039e-005 24 -8.055567741394043e-005 24.8 -8.0496072769165039e-005;
createNode animCurveTL -n "Bip02FBXASC032Spine1_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.1175870895385742e-008 0.8 5.5879354476928711e-009
		 1.6 -1.862645149230957e-009 2.4 7.4505805969238281e-009 3.2 -9.3132257461547852e-009
		 4 7.4505805969238281e-009 4.8 1.0244548320770264e-008 5.6 -3.7252902984619141e-009
		 6.4 -3.7252902984619141e-009 7.2 7.4505805969238281e-009 8 9.3132257461547852e-009
		 8.8 -3.7252902984619141e-009 9.6 1.1175870895385742e-008 10.4 -7.4505805969238281e-009
		 11.2 7.4505805969238281e-009 12 -7.4505805969238281e-009 12.8 3.7252902984619141e-009
		 13.6 0 14.4 -5.5879354476928711e-009 15.2 1.3038516044616699e-008 16 -1.0710209608078003e-008
		 16.8 -9.3132257461547852e-010 17.6 3.7252902984619141e-009 18.4 -5.5879354476928711e-009
		 19.2 -1.862645149230957e-009 20 3.7252902984619141e-009 20.8 0 21.6 7.4505805969238281e-009
		 22.4 3.7252902984619141e-009 23.2 -1.1175870895385742e-008 24 0 24.8 -1.1175870895385742e-008;
createNode animCurveTU -n "Bip02FBXASC032Spine1_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1.0000001192092896 2.4 1 3.2 1.0000001192092896 4 1.0000001192092896 4.8 1 5.6 0.99999994039535522
		 6.4 1.0000001192092896 7.2 1 8 1 8.8 0.99999988079071045 9.6 1.0000001192092896 10.4 0.99999994039535522
		 11.2 1 12 1.0000001192092896 12.8 1 13.6 1.0000001192092896 14.4 1 15.2 1 16 1.0000001192092896
		 16.8 1.0000001192092896 17.6 1.0000001192092896 18.4 1 19.2 0.99999988079071045 20 0.99999994039535522
		 20.8 0.99999994039535522 21.6 1.0000001192092896 22.4 1.0000001192092896 23.2 1 24 0.99999994039535522
		 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032Spine1_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 1.0000001192092896
		 1.6 1 2.4 0.99999994039535522 3.2 1.0000001192092896 4 1.0000001192092896 4.8 1.0000001192092896
		 5.6 1 6.4 1 7.2 1 8 1 8.8 1 9.6 1.0000001192092896 10.4 0.99999994039535522 11.2 0.99999982118606567
		 12 1.0000001192092896 12.8 0.99999994039535522 13.6 1.0000001192092896 14.4 1.0000001192092896
		 15.2 1 16 1.0000001192092896 16.8 1 17.6 1.0000001192092896 18.4 1.0000001192092896
		 19.2 0.99999994039535522 20 0.99999994039535522 20.8 1.0000001192092896 21.6 0.99999994039535522
		 22.4 1 23.2 1 24 0.99999994039535522 24.8 0.99999994039535522;
createNode animCurveTU -n "Bip02FBXASC032Spine1_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1.0000001192092896
		 4 1 4.8 1 5.6 1 6.4 0.99999994039535522 7.2 1.0000001192092896 8 1 8.8 0.99999994039535522
		 9.6 1.0000001192092896 10.4 0.99999988079071045 11.2 0.99999994039535522 12 1 12.8 1.0000001192092896
		 13.6 1.0000001192092896 14.4 1 15.2 1 16 1.0000001192092896 16.8 1 17.6 1.0000001192092896
		 18.4 1 19.2 1 20 1 20.8 0.99999994039535522 21.6 0.99999994039535522 22.4 1.0000001192092896
		 23.2 1.0000001192092896 24 1.0000001192092896 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032Spine1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.0010428735986351967 0.8 -0.0010434673167765141
		 1.6 -0.0010235628578811884 2.4 -0.00097725377418100834 3.2 -0.00089851312804967165
		 4 -0.00077644456177949905 4.8 -0.00060716830193996429 5.6 -0.0004048800328746438
		 6.4 -0.00017388265405315906 7.2 8.2208469393663108e-005 8 0.00032874124008230865
		 8.8 0.00055461493320763111 9.6 0.00074922980275005102 10.4 0.00086533470312133431
		 11.2 0.00088284461526200186 12 0.00081147230230271816 12.8 0.00065469619585201144
		 13.6 0.00040676977369002998 14.4 0.0001061162183759734 15.2 -0.00018482156156096607
		 16 -0.00045488419709727168 16.8 -0.00069048337172716856 17.6 -0.0008604865288361907
		 18.4 -0.00097162340534850955 19.2 -0.0010303822346031666 20 -0.0010439209872856736
		 20.8 -0.0010330365039408207 21.6 -0.001014239969663322 22.4 -0.0010034245206043124
		 23.2 -0.0010134410113096237 24 -0.0010322926100343466 24.8 -0.0010428735986351967;
createNode animCurveTA -n "Bip02FBXASC032Spine1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.1290172338485718 0.8 -0.99086987972259533
		 1.6 -0.80779355764389038 2.4 -0.61556833982467651 3.2 -0.41176092624664307 4 -0.18876183032989502
		 4.8 0.045820288360118866 5.6 0.27158886194229126 6.4 0.48854467272758484 7.2 0.69668889045715332
		 8 0.87562471628189087 8.8 1.0261293649673462 9.6 1.1474267244338989 10.4 1.2167928218841553
		 11.2 1.2276082038879395 12 1.1864933967590332 12.8 1.0905874967575073 13.6 0.9281904697418214
		 14.4 0.71100229024887085 15.2 0.47126364707946777 16 0.20844590663909912 16.8 -0.076924584805965424
		 17.6 -0.35101777315139771 18.4 -0.61383593082427979 19.2 -0.86537998914718628 20 -1.0718204975128174
		 20.8 -1.2280584573745728 21.6 -1.33919358253479 22.4 -1.3867093324661255 23.2 -1.3432252407073975
		 24 -1.2361214160919189 24.8 -1.1290172338485718;
createNode animCurveTA -n "Bip02FBXASC032Spine1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.21023693680763245 0.8 -0.20514850318431854
		 1.6 -0.19785305857658386 2.4 -0.19009207189083099 3.2 -0.18171021342277527 4 -0.17232684791088104
		 4.8 -0.16231118142604828 5.6 -0.15260539948940277 6.4 -0.14321903884410858 7.2 -0.13414642214775085
		 8 -0.12632383406162262 8.8 -0.11975081264972688 9.6 -0.11443209648132324 10.4 -0.11137606203556061
		 11.2 -0.11089998483657837 12 -0.11267965286970139 12.8 -0.11675599217414856 13.6 -0.12358465790748595
		 14.4 -0.13270723819732666 15.2 -0.14276959002017975 16 -0.15378460288047791 16.8 -0.16574344038963318
		 17.6 -0.17722651362419128 18.4 -0.1882409006357193 19.2 -0.19878843426704407 20 -0.20745423436164856
		 20.8 -0.21403096616268158 21.6 -0.21872875094413757 22.4 -0.22077250480651855 23.2 -0.21902462840080261
		 24 -0.21462768316268921 24.8 -0.21023693680763245;
createNode animCurveTL -n "Bip02FBXASC032Spine2_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.1011127233505249 0.8 0.10111266374588013
		 1.6 0.10111266374588013 2.4 0.1011127233505249 3.2 0.1011127233505249 4 0.10111284255981445
		 4.8 0.10111278295516968 5.6 0.10111278295516968 6.4 0.10111284255981445 7.2 0.10111284255981445
		 8 0.101112961769104 8.8 0.1011127233505249 9.6 0.1011127233505249 10.4 0.10111266374588013
		 11.2 0.10111302137374878 12 0.10111284255981445 12.8 0.10111284255981445 13.6 0.10111278295516968
		 14.4 0.10111290216445923 15.2 0.10111266374588013 16 0.1011127233505249 16.8 0.10111278295516968
		 17.6 0.10111266374588013 18.4 0.1011127233505249 19.2 0.10111284255981445 20 0.1011127233505249
		 20.8 0.10111260414123535 21.6 0.10111260414123535 22.4 0.10111260414123535 23.2 0.1011127233505249
		 24 0.10111278295516968 24.8 0.1011127233505249;
createNode animCurveTL -n "Bip02FBXASC032Spine2_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -8.0525875091552734e-005 0.8 -8.0436468124389648e-005
		 1.6 -8.0496072769165039e-005 2.4 -8.0436468124389648e-005 3.2 -8.0525875091552734e-005
		 4 -8.0436468124389648e-005 4.8 -8.0496072769165039e-005 5.6 -8.0436468124389648e-005
		 6.4 -8.0406665802001953e-005 7.2 -8.0436468124389648e-005 8 -8.0406665802001953e-005
		 8.8 -8.0376863479614258e-005 9.6 -8.0317258834838867e-005 10.4 -8.0496072769165039e-005
		 11.2 -8.0496072769165039e-005 12 -8.0406665802001953e-005 12.8 -8.0466270446777344e-005
		 13.6 -8.0436468124389648e-005 14.4 -8.0376863479614258e-005 15.2 -8.055567741394043e-005
		 16 -8.0525875091552734e-005 16.8 -8.0436468124389648e-005 17.6 -8.0436468124389648e-005
		 18.4 -8.0436468124389648e-005 19.2 -8.0436468124389648e-005 20 -8.0376863479614258e-005
		 20.8 -8.0496072769165039e-005 21.6 -8.0496072769165039e-005 22.4 -8.0496072769165039e-005
		 23.2 -8.0317258834838867e-005 24 -8.0525875091552734e-005 24.8 -8.0525875091552734e-005;
createNode animCurveTL -n "Bip02FBXASC032Spine2_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -6.0722231864929199e-007 0.8 -5.4389238357543945e-007
		 1.6 -4.1723251342773438e-007 2.4 -3.2782554626464844e-007 3.2 -2.123415470123291e-007
		 4 -1.0617077350616455e-007 4.8 1.3038516044616699e-008 5.6 1.4994293451309204e-007
		 6.4 2.6077032089233398e-007 7.2 3.7066638469696045e-007 8 4.7311186790466309e-007
		 8.8 5.5879354476928711e-007 9.6 6.1467289924621582e-007 10.4 6.370246410369873e-007
		 11.2 6.5937638282775879e-007 12 6.3329935073852539e-007 12.8 5.8859586715698242e-007
		 13.6 5.029141902923584e-007 14.4 3.9488077163696289e-007 15.2 2.5704503059387207e-007
		 16 1.1082738637924194e-007 16.8 -4.8195943236351013e-008 17.6 -2.0861625671386719e-007
		 18.4 -3.1851232051849365e-007 19.2 -4.76837158203125e-007 20 -5.8114528656005859e-007
		 20.8 -6.4820051193237305e-007 21.6 -7.152557373046875e-007 22.4 -7.4505805969238281e-007
		 23.2 -7.152557373046875e-007 24 -6.7427754402160645e-007 24.8 -5.9232115745544434e-007;
createNode animCurveTU -n "Bip02FBXASC032Spine2_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1.0000002384185791 2.4 1 3.2 1.0000001192092896 4 1 4.8 1 5.6 1 6.4 1.0000001192092896
		 7.2 1.0000001192092896 8 0.99999994039535522 8.8 1 9.6 0.99999994039535522 10.4 1
		 11.2 1 12 1.0000001192092896 12.8 1.0000001192092896 13.6 0.99999994039535522 14.4 1.0000001192092896
		 15.2 1 16 1 16.8 1 17.6 1.0000002384185791 18.4 0.99999988079071045 19.2 1 20 0.99999994039535522
		 20.8 1.0000001192092896 21.6 1 22.4 1.0000001192092896 23.2 1.0000001192092896 24 1.0000001192092896
		 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032Spine2_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1.0000002384185791
		 2.4 0.99999988079071045 3.2 0.99999994039535522 4 1 4.8 1.0000001192092896 5.6 1
		 6.4 1.0000001192092896 7.2 1.0000001192092896 8 1 8.8 1 9.6 1 10.4 1 11.2 1.0000001192092896
		 12 1.0000002384185791 12.8 1 13.6 1 14.4 1.0000001192092896 15.2 0.99999994039535522
		 16 1 16.8 1 17.6 1.0000001192092896 18.4 0.99999988079071045 19.2 1.0000001192092896
		 20 1.0000001192092896 20.8 1.0000001192092896 21.6 1.0000001192092896 22.4 1.0000001192092896
		 23.2 1.0000002384185791 24 1.0000001192092896 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032Spine2_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 0.99999988079071045
		 3.2 0.99999994039535522 4 1 4.8 1 5.6 1 6.4 1 7.2 1.0000001192092896 8 1 8.8 1.0000001192092896
		 9.6 1 10.4 1 11.2 1.0000001192092896 12 1.0000002384185791 12.8 1 13.6 1.0000001192092896
		 14.4 1 15.2 1 16 0.99999994039535522 16.8 1 17.6 0.99999994039535522 18.4 1 19.2 1.0000001192092896
		 20 0.99999994039535522 20.8 1.0000001192092896 21.6 1.0000001192092896 22.4 0.99999994039535522
		 23.2 1 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032Spine2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.4251231849193573 0.8 0.3732837438583374
		 1.6 0.3045680820941925 2.4 0.23239417374134064 3.2 0.15583901107311249 4 0.072028167545795441
		 4.8 -0.016197018325328827 5.6 -0.10117202252149582 6.4 -0.18289743363857269 7.2 -0.26137283444404602
		 8 -0.32889279723167419 8.8 -0.38572782278060913 9.6 -0.43156388401985168 10.4 -0.45778858661651611
		 11.2 -0.46187609434127808 12 -0.44632697105407715 12.8 -0.41007739305496216 13.6 -0.34873992204666138
		 14.4 -0.26677969098091125 15.2 -0.17639969289302826 16 -0.077416837215423584 16.8 0.02995816990733147
		 17.6 0.13300086557865143 18.4 0.2317349761724472 19.2 0.32618099451065063 20 0.40365973114967346
		 20.8 0.46228095889091492 21.6 0.50397336483001709 22.4 0.52179652452468872 23.2 0.50548553466796875
		 24 0.46530652046203613 24.8 0.4251231849193573;
createNode animCurveTA -n "Bip02FBXASC032Spine2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.8330241441726682 0.8 1.608686089515686
		 1.6 1.3113926649093628 2.4 0.9992479681968689 3.2 0.66830736398696899 4 0.30621546506881714
		 4.8 -0.074672773480415344 5.6 -0.441232830286026 6.4 -0.79346966743469238 7.2 -1.1313877105712891
		 8 -1.4218738079071045 8.8 -1.6661970615386963 9.6 -1.863101601600647 10.4 -1.9757027626037598
		 11.2 -1.9932575225830076 12 -1.9265140295028687 12.8 -1.7708292007446289 13.6 -1.5072053670883179
		 14.4 -1.1546205282211304 15.2 -0.7654118537902832 16 -0.33871299028396606 16.8 0.12462981045246126
		 17.6 0.56967771053314209 18.4 0.99643552303314209 19.2 1.404904842376709 20 1.7401412725448608
		 20.8 1.9938600063323972 21.6 2.1743407249450684 22.4 2.2515051364898682 23.2 2.1808884143829346
		 24 2.0069544315338135 24.8 1.8330236673355103;
createNode animCurveTA -n "Bip02FBXASC032Spine2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 12.796558380126953 0.8 12.80008602142334
		 1.6 12.805630683898926 2.4 12.81192684173584 3.2 12.819195747375488 4 12.827859878540039
		 4.8 12.837699890136719 5.6 12.847775459289551 6.4 12.858036994934082 7.2 12.868429183959961
		 8 12.877739906311035 8.8 12.885838508605957 9.6 12.892560958862305 10.4 12.896493911743164
		 11.2 12.897113800048828 12 12.894804000854492 12.8 12.88956356048584 13.6 12.880982398986816
		 14.4 12.869967460632324 15.2 12.858405113220215 16 12.846441268920898 16.8 12.834288597106934
		 17.6 12.823434829711914 18.4 12.81377124786377 19.2 12.805203437805176 20 12.798667907714844
		 20.8 12.794004440307617 21.6 12.790828704833984 22.4 12.789469718933105 23.2 12.790591239929199
		 24 12.793516159057617 24.8 12.796558380126953;
createNode animCurveTL -n "Bip02FBXASC032Spine3_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.10365641117095947 0.8 0.10365653038024902
		 1.6 0.10365641117095947 2.4 0.1036563515663147 3.2 0.1036563515663147 4 0.10365647077560425
		 4.8 0.10365653038024902 5.6 0.1036563515663147 6.4 0.10365641117095947 7.2 0.10365653038024902
		 8 0.10365647077560425 8.8 0.1036563515663147 9.6 0.1036563515663147 10.4 0.10365664958953857
		 11.2 0.1036565899848938 12 0.10365641117095947 12.8 0.1036565899848938 13.6 0.10365670919418335
		 14.4 0.10365647077560425 15.2 0.10365653038024902 16 0.10365647077560425 16.8 0.10365641117095947
		 17.6 0.10365629196166992 18.4 0.1036563515663147 19.2 0.10365647077560425 20 0.10365629196166992
		 20.8 0.10365647077560425 21.6 0.10365641117095947 22.4 0.10365623235702515 23.2 0.10365629196166992
		 24 0.10365629196166992 24.8 0.10365641117095947;
createNode animCurveTL -n "Bip02FBXASC032Spine3_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -8.5294246673583984e-005 0.8 -8.5234642028808594e-005
		 1.6 -8.5353851318359375e-005 2.4 -8.5234642028808594e-005 3.2 -8.5294246673583984e-005
		 4 -8.5234642028808594e-005 4.8 -8.5175037384033203e-005 5.6 -8.5234642028808594e-005
		 6.4 -8.5294246673583984e-005 7.2 -8.5294246673583984e-005 8 -8.5234642028808594e-005
		 8.8 -8.5234642028808594e-005 9.6 -8.5234642028808594e-005 10.4 -8.5353851318359375e-005
		 11.2 -8.5055828094482422e-005 12 -8.5294246673583984e-005 12.8 -8.5294246673583984e-005
		 13.6 -8.5115432739257813e-005 14.4 -8.5234642028808594e-005 15.2 -8.5175037384033203e-005
		 16 -8.5234642028808594e-005 16.8 -8.5473060607910156e-005 17.6 -8.5115432739257813e-005
		 18.4 -8.5353851318359375e-005 19.2 -8.5175037384033203e-005 20 -8.5353851318359375e-005
		 20.8 -8.5234642028808594e-005 21.6 -8.5175037384033203e-005 22.4 -8.5473060607910156e-005
		 23.2 -8.5175037384033203e-005 24 -8.5115432739257813e-005 24.8 -8.5234642028808594e-005;
createNode animCurveTL -n "Bip02FBXASC032Spine3_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.9988586902618408e-007 0.8 -2.4586915969848633e-007
		 1.6 -2.2165477275848389e-007 2.4 -1.648440957069397e-007 3.2 -1.1920928955078125e-007
		 4 -6.3562765717506409e-008 4.8 1.3853423297405243e-008 5.6 5.8673322200775146e-008
		 6.4 1.4062970876693726e-007 7.2 1.8347054719924927e-007 8 2.2165477275848389e-007
		 8.8 2.5704503059387207e-007 9.6 2.9243528842926025e-007 10.4 3.3527612686157227e-007
		 11.2 3.3341348171234131e-007 12 3.1851232051849365e-007 12.8 2.905726432800293e-007
		 13.6 2.6263296604156494e-007 14.4 1.7508864402770996e-007 15.2 1.1688098311424255e-007
		 16 6.4028427004814148e-008 16.8 -1.1990778148174286e-008 17.6 -9.3132257461547852e-008
		 18.4 -1.6763806343078613e-007 19.2 -2.1792948246002197e-007 20 -2.6822090148925781e-007
		 20.8 -3.4086406230926514e-007 21.6 -3.6135315895080566e-007 22.4 -3.5949051380157471e-007
		 23.2 -3.5949051380157471e-007 24 -3.2037496566772461e-007 24.8 -3.1478703022003174e-007;
createNode animCurveTU -n "Bip02FBXASC032Spine3_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 0.99999988079071045
		 2.4 1.0000001192092896 3.2 1 4 1.0000001192092896 4.8 0.99999994039535522 5.6 1 6.4 1
		 7.2 1.0000001192092896 8 1.0000001192092896 8.8 1 9.6 1 10.4 1 11.2 1.0000001192092896
		 12 1 12.8 1 13.6 1.0000001192092896 14.4 1 15.2 1.0000001192092896 16 1 16.8 1 17.6 0.99999994039535522
		 18.4 1.0000001192092896 19.2 0.99999994039535522 20 1 20.8 1.0000001192092896 21.6 1.0000001192092896
		 22.4 1 23.2 0.99999988079071045 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032Spine3_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 0.99999994039535522 2.4 1.0000001192092896
		 3.2 0.99999994039535522 4 1 4.8 0.99999994039535522 5.6 1 6.4 1.0000001192092896
		 7.2 1.0000001192092896 8 1 8.8 1 9.6 0.99999994039535522 10.4 1 11.2 1 12 0.99999994039535522
		 12.8 0.99999988079071045 13.6 1 14.4 1 15.2 1.0000001192092896 16 1.0000001192092896
		 16.8 0.99999994039535522 17.6 0.99999994039535522 18.4 1.0000001192092896 19.2 1.0000001192092896
		 20 1 20.8 1.0000001192092896 21.6 1.0000001192092896 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032Spine3_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1.0000001192092896 3.2 1
		 4 1.0000001192092896 4.8 1 5.6 1.0000001192092896 6.4 1 7.2 1 8 1.0000001192092896
		 8.8 1 9.6 0.99999994039535522 10.4 1 11.2 1.0000001192092896 12 0.99999994039535522
		 12.8 1.0000001192092896 13.6 1 14.4 1 15.2 0.99999994039535522 16 0.99999994039535522
		 16.8 1 17.6 1 18.4 1 19.2 0.99999994039535522 20 1 20.8 1.0000001192092896 21.6 1
		 22.4 0.99999994039535522 23.2 0.99999994039535522 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032Spine3_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.19710113108158112 0.8 0.17310506105422974
		 1.6 0.141286700963974 2.4 0.10785642266273499 3.2 0.072385296225547791 4 0.033540647476911545
		 4.8 -0.0073609789833426476 5.6 -0.046764817088842392 6.4 -0.084668196737766266 7.2 -0.12106799334287645
		 8 -0.15238822996616364 8.8 -0.17875246703624725 9.6 -0.20001450181007385 10.4 -0.21217904984951019
		 11.2 -0.2140749990940094 12 -0.20686239004135132 12.8 -0.19004742801189423 13.6 -0.16159497201442719
		 14.4 -0.12357734888792038 15.2 -0.08165624737739563 16 -0.035750824958086014 16.8 0.014035481028258802
		 17.6 0.061799421906471252 18.4 0.10755002498626709 19.2 0.15129518508911133 20 0.18716667592525482
		 20.8 0.21429677307605743 21.6 0.23358628153800964 22.4 0.2418312877416611 23.2 0.23428595066070557
		 24 0.21569675207138062 24.8 0.19710114598274231;
createNode animCurveTA -n "Bip02FBXASC032Spine3_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.1116541624069214 0.8 0.97560751438140869
		 1.6 0.79531610012054443 2.4 0.60601931810379028 3.2 0.40532204508781433 4 0.18573224544525146
		 4.8 -0.045256778597831726 5.6 -0.26756033301353455 6.4 -0.48118042945861816 7.2 -0.68611758947372437
		 8 -0.86229205131530762 8.8 -1.0104700326919556 9.6 -1.1298898458480835 10.4 -1.1981815099716187
		 11.2 -1.2088291645050049 12 -1.1683510541915894 12.8 -1.073930025100708 13.6 -0.91404414176940929
		 14.4 -0.70020872354507446 15.2 -0.46416348218917852 16 -0.20538541674613953 16.8 0.075608864426612854
		 17.6 0.34550857543945313 18.4 0.60431426763534546 19.2 0.85202580690383911 20 1.0553271770477295
		 20.8 1.2091919183731079 21.6 1.3186417818069458 22.4 1.3654370307922363 23.2 1.3226126432418823
		 24 1.217132568359375 24.8 1.1116542816162109;
createNode animCurveTA -n "Bip02FBXASC032Spine3_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 9.7916727066040039 0.8 9.7963237762451172
		 1.6 9.8031301498413086 2.4 9.8104715347290039 3.2 9.8185396194458008 4 9.8277311325073242
		 4.8 9.8376932144165039 5.6 9.8475046157836914 6.4 9.8571376800537109 7.2 9.8665752410888672
		 8 9.8748159408569336 8.8 9.8818187713623047 9.6 9.8875303268432617 10.4 9.8908367156982422
		 11.2 9.8913478851318359 12 9.8894214630126953 12.8 9.8850164413452148 13.6 9.8776950836181641
		 14.4 9.8680486679077148 15.2 9.8575601577758789 16 9.846278190612793 16.8 9.8342685699462891
		 17.6 9.8229579925537109 18.4 9.8123321533203125 19.2 9.8023405075073242 20 9.7942714691162109
		 20.8 9.7882308959960937 21.6 9.7839584350585937 22.4 9.7821063995361328 23.2 9.7836771011352539
		 24 9.7876548767089844 24.8 9.7916707992553711;
createNode animCurveTL -n "Bip02FBXASC032Neck_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.10862791538238525 0.8 0.10862815380096436
		 1.6 0.10862785577774048 2.4 0.10862785577774048 3.2 0.10862809419631958 4 0.10862791538238525
		 4.8 0.10862791538238525 5.6 0.1086280345916748 6.4 0.1086280345916748 7.2 0.10862797498703003
		 8 0.10862797498703003 8.8 0.10862797498703003 9.6 0.10862791538238525 10.4 0.10862791538238525
		 11.2 0.10862797498703003 12 0.10862797498703003 12.8 0.10862791538238525 13.6 0.10862791538238525
		 14.4 0.1086280345916748 15.2 0.10862791538238525 16 0.1086280345916748 16.8 0.1086277961730957
		 17.6 0.10862791538238525 18.4 0.10862815380096436 19.2 0.10862797498703003 20 0.10862809419631958
		 20.8 0.10862797498703003 21.6 0.10862797498703003 22.4 0.1086280345916748 23.2 0.1086280345916748
		 24 0.10862809419631958 24.8 0.10862797498703003;
createNode animCurveTL -n "Bip02FBXASC032Neck_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -6.4909458160400391e-005 0.8 -6.4790248870849609e-005
		 1.6 -6.4849853515625e-005 2.4 -6.5147876739501953e-005 3.2 -6.4849853515625e-005
		 4 -6.5147876739501953e-005 4.8 -6.4969062805175781e-005 5.6 -6.5028667449951172e-005
		 6.4 -6.5028667449951172e-005 7.2 -6.4849853515625e-005 8 -6.4849853515625e-005 8.8 -6.5147876739501953e-005
		 9.6 -6.5028667449951172e-005 10.4 -6.4969062805175781e-005 11.2 -6.4969062805175781e-005
		 12 -6.4969062805175781e-005 12.8 -6.4969062805175781e-005 13.6 -6.4969062805175781e-005
		 14.4 -6.4909458160400391e-005 15.2 -6.5028667449951172e-005 16 -6.5028667449951172e-005
		 16.8 -6.5088272094726563e-005 17.6 -6.5088272094726563e-005 18.4 -6.4849853515625e-005
		 19.2 -6.4730644226074219e-005 20 -6.5028667449951172e-005 20.8 -6.4969062805175781e-005
		 21.6 -6.4909458160400391e-005 22.4 -6.4849853515625e-005 23.2 -6.4969062805175781e-005
		 24 -6.5028667449951172e-005 24.8 -6.4969062805175781e-005;
createNode animCurveTL -n "Bip02FBXASC032Neck_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.4202669262886047e-008 0.8 9.3132257461547852e-010
		 1.6 -4.4237822294235229e-009 2.4 1.3504177331924438e-008 3.2 -1.3969838619232178e-009
		 4 -4.5984052121639252e-009 4.8 6.5920175984501839e-009 5.6 1.0884832590818405e-008
		 6.4 -3.3760443329811096e-009 7.2 -1.1874362826347351e-008 8 7.9162418842315674e-009
		 8.8 6.0535967350006104e-009 9.6 1.6298145055770874e-009 10.4 3.7252902984619141e-009
		 11.2 -8.3819031715393066e-009 12 -8.3819031715393066e-009 12.8 -1.3969838619232178e-008
		 13.6 -7.4505805969238281e-009 14.4 -1.1175870895385742e-008 15.2 -3.7252902984619141e-009
		 16 -1.5774276107549667e-008 16.8 2.1245796233415604e-009 17.6 -8.149072527885437e-010
		 18.4 1.0477378964424133e-008 19.2 3.4924596548080444e-009 20 -4.6566128730773926e-010
		 20.8 9.3132257461547852e-010 21.6 -2.3283064365386963e-009 22.4 1.862645149230957e-009
		 23.2 3.7252902984619141e-009 24 0 24.8 1.3271346688270569e-008;
createNode animCurveTU -n "Bip02FBXASC032Neck_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1 2.4 1 3.2 1
		 4 1 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 1 8 1.0000001192092896 8.8 1 9.6 1 10.4 1.0000001192092896
		 11.2 1 12 1 12.8 1 13.6 1 14.4 1 15.2 1.0000001192092896 16 1 16.8 0.99999988079071045
		 17.6 1 18.4 1.0000002384185791 19.2 1 20 1 20.8 1.0000001192092896 21.6 1 22.4 1
		 23.2 1.0000001192092896 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032Neck_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1.0000001192092896 2.4 1 3.2 1 4 1 4.8 1 5.6 1.0000001192092896 6.4 1 7.2 1 8 1
		 8.8 1 9.6 1 10.4 1.0000001192092896 11.2 1 12 1 12.8 1.0000001192092896 13.6 0.99999988079071045
		 14.4 1 15.2 1.0000001192092896 16 1 16.8 0.99999988079071045 17.6 1.0000001192092896
		 18.4 1.0000001192092896 19.2 1 20 1.0000001192092896 20.8 1.0000001192092896 21.6 1
		 22.4 1 23.2 1 24 1.0000001192092896 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032Neck_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 1 4 1 4.8 1 5.6 1
		 6.4 1 7.2 0.99999994039535522 8 1 8.8 1 9.6 1 10.4 1.0000001192092896 11.2 0.99999994039535522
		 12 1 12.8 1.0000001192092896 13.6 1 14.4 1 15.2 1.0000001192092896 16 1 16.8 1 17.6 1
		 18.4 1.0000001192092896 19.2 1 20 1 20.8 1 21.6 1 22.4 0.99999994039535522 23.2 1.0000001192092896
		 24 1.0000001192092896 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 6.6701055345674831e-008 0.8 3.3350527672837416e-008
		 1.6 1.3340211602042018e-008 2.4 -6.6701066891994287e-009 3.2 1.0005160255843748e-008
		 4 0 4.8 -4.168816680749643e-010 5.6 -1.3340211602042018e-008 6.4 -3.3350533445997144e-009
		 7.2 -2.6680426756797715e-008 8 1.3340213378398857e-008 8.8 6.003095620599197e-008
		 9.6 2.6680426756797715e-008 10.4 -6.6701055345674831e-008 11.2 -1.3340213378398857e-008
		 12 0 12.8 -1.3340211602042018e-008 13.6 6.6701076661956904e-008 14.4 3.3350534778264773e-008
		 15.2 -6.670105801021009e-009 16 -3.3350533445997144e-009 16.8 -2.5012902860055419e-009
		 17.6 1.6675263836418708e-008 18.4 0 19.2 -2.6680426756797715e-008 20 3.3350527672837416e-008
		 20.8 -5.3360846408168072e-008 21.6 0 22.4 5.336085351359543e-008 23.2 4.0020641023374992e-008
		 24 -2.6680423204084036e-008 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.6680426756797715e-008 0.8 1.3340211602042018e-008
		 1.6 -2.6680426756797715e-008 2.4 0 3.2 0 4 -1.6675266722998572e-009 4.8 1.6675266722998572e-009
		 5.6 6.6701066891994287e-009 6.4 0 7.2 -6.6701066891994287e-009 8 0 8.8 -2.6680426756797715e-008
		 9.6 0 10.4 -2.6680423204084036e-008 11.2 2.6680426756797715e-008 12 1.3340213378398857e-008
		 12.8 0 13.6 0 14.4 6.6701066891994287e-009 15.2 6.670105801021009e-009 16 6.6701066891994287e-009
		 16.8 8.3376344717223095e-010 17.6 0 18.4 -6.6701049128425893e-009 19.2 1.3340213378398857e-008
		 20 -1.3340213378398857e-008 20.8 -4.0020633917947634e-008 21.6 -6.6701069556529546e-008
		 22.4 -1.3340213378398857e-008 23.2 -1.3340211602042018e-008 24 -2.6680423204084036e-008
		 24.8 -4.0020641023374992e-008;
createNode animCurveTA -n "Bip02FBXASC032Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.7075473124350538e-006 0.8 3.4150941701227566e-006
		 1.6 -1.7075473124350538e-006 2.4 5.122642050991999e-006 3.2 -3.4150946248701075e-006
		 4 0 4.8 0 5.6 3.4150946248701075e-006 6.4 0 7.2 1.7075473124350538e-006 8 1.7075470850613783e-006
		 8.8 -3.4150946248701075e-006 9.6 0 10.4 0 11.2 -1.7075473124350538e-006 12 -3.4150946248701075e-006
		 12.8 3.4150946248701075e-006 13.6 -1.7075473124350538e-006 14.4 -1.7075473124350538e-006
		 15.2 -1.7075470850613783e-006 16 -3.4150946248701075e-006 16.8 -3.415095079617458e-006
		 17.6 -1.7075473124350538e-006 18.4 1.7075468576877029e-006 19.2 1.7075473124350538e-006
		 20 1.7075473124350538e-006 20.8 0 21.6 0 22.4 0 23.2 5.1226411414972972e-006 24 1.7075470850613783e-006
		 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032Head_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.081591248512268066 0.8 0.081591129302978516
		 1.6 0.081591248512268066 2.4 0.081591248512268066 3.2 0.08159106969833374 4 0.081591129302978516
		 4.8 0.081591248512268066 5.6 0.081591129302978516 6.4 0.081591129302978516 7.2 0.081591010093688965
		 8 0.081591248512268066 8.8 0.081591129302978516 9.6 0.081591129302978516 10.4 0.081591248512268066
		 11.2 0.081591010093688965 12 0.081591248512268066 12.8 0.081591248512268066 13.6 0.081591129302978516
		 14.4 0.081591010093688965 15.2 0.081591188907623291 16 0.081591188907623291 16.8 0.081591188907623291
		 17.6 0.081591248512268066 18.4 0.081591010093688965 19.2 0.081591129302978516 20 0.081591010093688965
		 20.8 0.081591129302978516 21.6 0.081591129302978516 22.4 0.081591010093688965 23.2 0.081591129302978516
		 24 0.081591010093688965 24.8 0.081591248512268066;
createNode animCurveTL -n "Bip02FBXASC032Head_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -5.9604644775390625e-008 0.8 -5.9604644775390625e-008
		 1.6 0 2.4 1.1920928955078125e-007 3.2 0 4 5.9604644775390625e-008 4.8 5.9604644775390625e-008
		 5.6 1.1920928955078125e-007 6.4 1.1920928955078125e-007 7.2 -5.9604644775390625e-008
		 8 0 8.8 1.1920928955078125e-007 9.6 5.9604644775390625e-008 10.4 5.9604644775390625e-008
		 11.2 -5.9604644775390625e-008 12 0 12.8 5.9604644775390625e-008 13.6 -5.9604644775390625e-008
		 14.4 0 15.2 0 16 0 16.8 1.1920928955078125e-007 17.6 5.9604644775390625e-008 18.4 -1.1920928955078125e-007
		 19.2 -5.9604644775390625e-008 20 -5.9604644775390625e-008 20.8 5.9604644775390625e-008
		 21.6 -1.1920928955078125e-007 22.4 -5.9604644775390625e-008 23.2 5.9604644775390625e-008
		 24 0 24.8 -5.9604644775390625e-008;
createNode animCurveTL -n "Bip02FBXASC032Head_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.862645149230957e-009 0.8 2.3283064365386963e-010
		 1.6 -1.1641532182693481e-009 2.4 -3.4924596548080444e-009 3.2 2.4447217583656311e-009
		 4 9.3132257461547852e-010 4.8 -4.1763996705412865e-009 5.6 -5.8207660913467407e-010
		 6.4 6.0535967350006104e-009 7.2 7.2177499532699585e-009 8 -3.2596290111541748e-009
		 8.8 2.3283064365386963e-010 9.6 2.7939677238464355e-009 10.4 -7.4505805969238281e-009
		 11.2 2.3283064365386963e-009 12 5.1222741603851318e-009 12.8 6.5192580223083496e-009
		 13.6 7.6834112405776978e-009 14.4 7.6834112405776978e-009 15.2 -6.5192580223083496e-009
		 16 6.28642737865448e-009 16.8 4.1618477553129196e-009 17.6 4.6566128730773926e-010
		 18.4 -3.9581209421157837e-009 19.2 -6.9849193096160889e-009 20 -9.3132257461547852e-010
		 20.8 7.9162418842315674e-009 21.6 3.7252902984619141e-009 22.4 -6.9849193096160889e-009
		 23.2 1.862645149230957e-009 24 -4.6566128730773926e-010 24.8 -2.7939677238464355e-009;
createNode animCurveTU -n "Bip02FBXASC032Head_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999988079071045 0.8 1.0000001192092896
		 1.6 1 2.4 1 3.2 0.99999994039535522 4 0.99999988079071045 4.8 1.0000001192092896
		 5.6 1.0000001192092896 6.4 1 7.2 0.99999994039535522 8 1.0000001192092896 8.8 0.99999994039535522
		 9.6 0.99999994039535522 10.4 1.0000001192092896 11.2 0.99999988079071045 12 0.99999994039535522
		 12.8 1.0000001192092896 13.6 0.99999988079071045 14.4 1 15.2 1.0000001192092896 16 0.99999994039535522
		 16.8 0.99999970197677612 17.6 0.99999988079071045 18.4 1.0000001192092896 19.2 1
		 20 0.99999994039535522 20.8 1.0000001192092896 21.6 0.99999988079071045 22.4 0.99999994039535522
		 23.2 0.99999994039535522 24 1.0000001192092896 24.8 0.99999994039535522;
createNode animCurveTU -n "Bip02FBXASC032Head_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1.0000001192092896 2.4 1 3.2 1 4 1.0000001192092896 4.8 1 5.6 1.0000001192092896
		 6.4 1 7.2 0.99999994039535522 8 0.99999994039535522 8.8 0.9999997615814209 9.6 0.99999982118606567
		 10.4 1.0000001192092896 11.2 0.9999997615814209 12 0.99999982118606567 12.8 1 13.6 0.99999994039535522
		 14.4 1.0000001192092896 15.2 1.0000001192092896 16 0.99999982118606567 16.8 0.99999994039535522
		 17.6 1 18.4 1.0000001192092896 19.2 0.99999994039535522 20 1.0000001192092896 20.8 1.0000001192092896
		 21.6 1 22.4 1 23.2 1.0000001192092896 24 1.0000002384185791 24.8 1.0000002384185791;
createNode animCurveTU -n "Bip02FBXASC032Head_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1.0000001192092896
		 2.4 1 3.2 1 4 0.99999994039535522 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 0.99999988079071045
		 8 1 8.8 1 9.6 0.99999994039535522 10.4 1 11.2 1 12 0.99999994039535522 12.8 1.0000001192092896
		 13.6 1.0000001192092896 14.4 1.0000001192092896 15.2 1.0000001192092896 16 0.99999994039535522
		 16.8 0.99999994039535522 17.6 1.0000001192092896 18.4 1 19.2 1 20 1.0000001192092896
		 20.8 1.0000002384185791 21.6 1.0000001192092896 22.4 1.0000001192092896 23.2 1.0000001192092896
		 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 8.3498678207397461 0.8 8.5947341918945312
		 1.6 8.7724428176879883 2.4 8.9355802536010742 3.2 9.071681022644043 4 9.1725606918334961
		 4.8 9.2462072372436523 5.6 9.3045177459716797 6.4 9.348663330078125 7.2 9.3775844573974609
		 8 9.4001197814941406 8.8 9.432011604309082 9.6 9.4577970504760742 10.4 9.4396886825561523
		 11.2 9.3487005233764648 12 9.2139415740966797 12.8 9.0847358703613281 13.6 8.9756402969360352
		 14.4 8.8716640472412109 15.2 8.7778511047363281 16 8.6961050033569336 16.8 8.6241798400878906
		 17.6 8.5613546371459961 18.4 8.5077095031738281 19.2 8.4633302688598633 20 8.4280185699462891
		 20.8 8.4044923782348633 21.6 8.3905487060546875 22.4 8.3788414001464844 23.2 8.3677244186401367
		 24 8.3588533401489258 24.8 8.3498678207397461;
createNode animCurveTA -n "Bip02FBXASC032Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.18299795687198639 0.8 0.16155382990837097
		 1.6 0.1329047828912735 2.4 0.1025705561041832 3.2 0.07012341171503067 4 0.034268759191036224
		 4.8 -0.0038347423542290926 5.6 -0.040847599506378174 6.4 -0.076710447669029236 7.2 -0.11140018701553345
		 8 -0.1414453387260437 8.8 -0.16680194437503815 9.6 -0.18731608986854553 10.4 -0.19923889636993408
		 11.2 -0.2015051543712616 12 -0.1950928270816803 12.8 -0.17934824526309967 13.6 -0.15234626829624176
		 14.4 -0.1163078099489212 15.2 -0.076760895550251007 16 -0.033722244203090668 16.8 0.012584659270942211
		 17.6 0.056626144796609879 18.4 0.098459243774414063 19.2 0.13814017176628113 20 0.17050266265869141
		 20.8 0.19497488439083099 21.6 0.2124917060136795 22.4 0.22031815350055695 23.2 0.21435967087745667
		 24 0.19871994853019714 24.8 0.18299826979637146;
createNode animCurveTA -n "Bip02FBXASC032Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -40.04766845703125 0.8 -40.086093902587891
		 1.6 -40.140388488769531 2.4 -40.197334289550781 3.2 -40.258056640625 4 -40.325054168701172
		 4.8 -40.395481109619141 5.6 -40.462650299072266 6.4 -40.526699066162109 7.2 -40.587715148925781
		 8 -40.639564514160156 8.8 -40.682666778564453 9.6 -40.7171630859375 10.4 -40.736885070800781
		 11.2 -40.739971160888672 12 -40.728553771972656 12.8 -40.702285766601563 13.6 -40.657848358154297
		 14.4 -40.597652435302734 15.2 -40.530136108398438 16 -40.454841613769531 16.8 -40.371551513671875
		 17.6 -40.290008544921875 18.4 -40.210399627685547 19.2 -40.132907867431641 20 -40.068313598632812
		 20.8 -40.018772125244141 21.6 -39.983104705810547 22.4 -39.967517852783203 23.2 -39.980911254882813
		 24 -40.014400482177734 24.8 -40.047664642333984;
createNode animCurveTL -n "Bip02FBXASC032HeadNub_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.20814526081085205 0.8 0.20814526081085205
		 1.6 0.20814526081085205 2.4 0.2081453800201416 3.2 0.2081453800201416 4 0.20814526081085205
		 4.8 0.20814526081085205 5.6 0.20814526081085205 6.4 0.20814526081085205 7.2 0.2081453800201416
		 8 0.20814526081085205 8.8 0.20814526081085205 9.6 0.20814526081085205 10.4 0.2081453800201416
		 11.2 0.20814526081085205 12 0.2081451416015625 12.8 0.20814526081085205 13.6 0.20814526081085205
		 14.4 0.2081453800201416 15.2 0.2081453800201416 16 0.2081453800201416 16.8 0.2081453800201416
		 17.6 0.2081453800201416 18.4 0.20814526081085205 19.2 0.2081453800201416 20 0.20814526081085205
		 20.8 0.2081453800201416 21.6 0.20814526081085205 22.4 0.2081453800201416 23.2 0.20814526081085205
		 24 0.2081453800201416 24.8 0.20814526081085205;
createNode animCurveTL -n "Bip02FBXASC032HeadNub_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.1920928955078125e-007 0.8 1.4901161193847656e-008
		 1.6 5.9604644775390625e-008 2.4 1.1920928955078125e-007 3.2 -5.9604644775390625e-008
		 4 1.4901161193847656e-008 4.8 1.0430812835693359e-007 5.6 -4.4703483581542969e-008
		 6.4 2.9802322387695313e-008 7.2 -1.0430812835693359e-007 8 -2.9802322387695313e-008
		 8.8 2.9802322387695313e-008 9.6 5.9604644775390625e-008 10.4 -1.4901161193847656e-008
		 11.2 7.4505805969238281e-008 12 5.9604644775390625e-008 12.8 5.9604644775390625e-008
		 13.6 4.4703483581542969e-008 14.4 2.9802322387695313e-008 15.2 2.9802322387695313e-008
		 16 -4.4703483581542969e-008 16.8 8.9406967163085938e-008 17.6 -5.9604644775390625e-008
		 18.4 0 19.2 1.4901161193847656e-008 20 2.9802322387695313e-008 20.8 4.4703483581542969e-008
		 21.6 2.9802322387695313e-008 22.4 5.9604644775390625e-008 23.2 -1.0430812835693359e-007
		 24 1.4901161193847656e-008 24.8 -1.1920928955078125e-007;
createNode animCurveTL -n "Bip02FBXASC032HeadNub_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.862645149230957e-008 0.8 3.7252902984619141e-009
		 1.6 -5.5879354476928711e-009 2.4 -2.0489096641540527e-008 3.2 1.3038516044616699e-008
		 4 -1.862645149230957e-009 4.8 -2.2351741790771484e-008 5.6 1.1175870895385742e-008
		 6.4 -9.3132257461547852e-009 7.2 1.862645149230957e-008 8 3.7252902984619141e-009
		 8.8 -3.7252902984619141e-009 9.6 -7.4505805969238281e-009 10.4 -3.7252902984619141e-009
		 11.2 -1.4901161193847656e-008 12 -1.1175870895385742e-008 12.8 -1.4901161193847656e-008
		 13.6 -1.1175870895385742e-008 14.4 -7.4505805969238281e-009 15.2 -9.3132257461547852e-009
		 16 3.7252902984619141e-009 16.8 -1.4901161193847656e-008 17.6 5.5879354476928711e-009
		 18.4 -5.5879354476928711e-009 19.2 1.862645149230957e-009 20 -3.7252902984619141e-009
		 20.8 -5.5879354476928711e-009 21.6 -5.5879354476928711e-009 22.4 0 23.2 1.6763806343078613e-008
		 24 -3.7252902984619141e-009 24.8 1.862645149230957e-008;
createNode animCurveTU -n "Bip02FBXASC032HeadNub_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 0.99999994039535522
		 4 1 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 1.0000001192092896 8 1 8.8 1 9.6 1.0000001192092896
		 10.4 1.0000001192092896 11.2 1.0000001192092896 12 0.99999994039535522 12.8 1 13.6 1
		 14.4 1 15.2 1.0000001192092896 16 1 16.8 1 17.6 1 18.4 1 19.2 1 20 1 20.8 1 21.6 1
		 22.4 1 23.2 1 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032HeadNub_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 1 1.6 1.0000001192092896
		 2.4 1 3.2 1 4 1 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 1.0000001192092896 8 1.0000001192092896
		 8.8 1.0000001192092896 9.6 1.0000001192092896 10.4 1 11.2 1.0000001192092896 12 0.99999994039535522
		 12.8 1 13.6 1 14.4 0.99999994039535522 15.2 1.0000001192092896 16 1 16.8 1 17.6 1
		 18.4 1.0000001192092896 19.2 1 20 0.99999994039535522 20.8 1 21.6 1 22.4 1 23.2 1
		 24 1 24.8 0.99999994039535522;
createNode animCurveTU -n "Bip02FBXASC032HeadNub_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1 2.4 1 3.2 0.99999994039535522
		 4 1 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 1 8 1.0000001192092896 8.8 1 9.6 1 10.4 1
		 11.2 1.0000001192092896 12 1 12.8 1 13.6 1.0000001192092896 14.4 1 15.2 1 16 1.0000001192092896
		 16.8 1 17.6 1 18.4 1 19.2 1 20 1 20.8 1.0000001192092896 21.6 1 22.4 1 23.2 1 24 1
		 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032HeadNub_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 2.9697608283640875e-007 0.8 -2.1938397765097761e-007
		 1.6 6.8795890229012002e-007 2.4 5.822794832965883e-007 3.2 9.6893722911772784e-007
		 4 4.1344239321006171e-007 4.8 -5.2141473361189128e-007 5.6 5.2923127213944099e-007
		 6.4 -6.4319624470954295e-007 7.2 1.594572154317575e-007 8 8.4069387185081723e-007
		 8.8 -7.0479046598848072e-007 9.6 1.8587708439099515e-007 10.4 4.0489631203399767e-008
		 11.2 3.7602720226459496e-007 12 5.3324379223340657e-007 12.8 1.7509029248685692e-007
		 13.6 6.6852186364485533e-007 14.4 6.5122128489747411e-007 15.2 -4.4762664686004427e-008
		 16 2.5153596538984857e-007 16.8 7.2339389589615166e-007 17.6 4.5372357249107154e-007
		 18.4 2.984872367051139e-007 19.2 2.5341194032080239e-007 20 2.4418844191131939e-007
		 20.8 1.9494429182032036e-007 21.6 1.7712260103053268e-007 22.4 3.356418574185227e-007
		 23.2 -7.7904758200020296e-008 24 5.357450731935387e-007 24.8 2.9708030524489004e-007;
createNode animCurveTA -n "Bip02FBXASC032HeadNub_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -6.6701066891994287e-009 0.8 -6.6701066891994287e-009
		 1.6 0 2.4 0 3.2 6.6701071332886386e-009 4 0 4.8 0 5.6 0 6.4 -6.670105801021009e-009
		 7.2 -6.670105801021009e-009 8 0 8.8 0 9.6 0 10.4 6.670105801021009e-009 11.2 0 12 6.6701071332886386e-009
		 12.8 6.6701066891994287e-009 13.6 0 14.4 6.6701066891994287e-009 15.2 -6.670105801021009e-009
		 16 6.6701066891994287e-009 16.8 0 17.6 -6.6701066891994287e-009 18.4 0 19.2 0 20 0
		 20.8 6.6701066891994287e-009 21.6 0 22.4 -6.6701066891994287e-009 23.2 -6.6701066891994287e-009
		 24 6.670105801021009e-009 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032HeadNub_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 2.6680426756797715e-008 0.8 0 1.6 0 2.4 -2.6680426756797715e-008
		 3.2 2.6680428533154554e-008 4 2.6680426756797715e-008 4.8 0 5.6 0 6.4 0 7.2 0 8 0
		 8.8 0 9.6 2.6680423204084036e-008 10.4 0 11.2 -2.6680423204084036e-008 12 0 12.8 0
		 13.6 0 14.4 0 15.2 2.6680423204084036e-008 16 2.6680426756797715e-008 16.8 0 17.6 2.6680426756797715e-008
		 18.4 0 19.2 0 20 0 20.8 2.6680426756797715e-008 21.6 2.6680426756797715e-008 22.4 2.6680426756797715e-008
		 23.2 2.6680426756797715e-008 24 2.6680423204084036e-008 24.8 2.6680426756797715e-008;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Clavicle_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.1920928955078125e-007 0.8 -1.1920928955078125e-007
		 1.6 1.1920928955078125e-007 2.4 1.1920928955078125e-007 3.2 -5.9604644775390625e-008
		 4 -5.9604644775390625e-008 4.8 1.1920928955078125e-007 5.6 0 6.4 -5.9604644775390625e-008
		 7.2 0 8 0 8.8 2.384185791015625e-007 9.6 0 10.4 0 11.2 1.1920928955078125e-007 12 0
		 12.8 1.1920928955078125e-007 13.6 1.1920928955078125e-007 14.4 0 15.2 -5.9604644775390625e-008
		 16 0 16.8 1.7881393432617188e-007 17.6 5.9604644775390625e-008 18.4 0 19.2 0 20 0
		 20.8 1.1920928955078125e-007 21.6 1.1920928955078125e-007 22.4 -1.1920928955078125e-007
		 23.2 -1.1920928955078125e-007 24 -1.1920928955078125e-007 24.8 1.1920928955078125e-007;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Clavicle_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 6.4849853515625e-005 0.8 6.4790248870849609e-005
		 1.6 6.4790248870849609e-005 2.4 6.4909458160400391e-005 3.2 6.4730644226074219e-005
		 4 6.5028667449951172e-005 4.8 6.4909458160400391e-005 5.6 6.4849853515625e-005 6.4 6.4909458160400391e-005
		 7.2 6.4730644226074219e-005 8 6.4790248870849609e-005 8.8 6.5147876739501953e-005
		 9.6 6.4849853515625e-005 10.4 6.4909458160400391e-005 11.2 6.4849853515625e-005 12 6.4790248870849609e-005
		 12.8 6.4909458160400391e-005 13.6 6.4909458160400391e-005 14.4 6.4790248870849609e-005
		 15.2 6.4909458160400391e-005 16 6.4909458160400391e-005 16.8 6.4969062805175781e-005
		 17.6 6.4969062805175781e-005 18.4 6.4730644226074219e-005 19.2 6.4730644226074219e-005
		 20 6.4969062805175781e-005 20.8 6.4909458160400391e-005 21.6 6.4909458160400391e-005
		 22.4 6.4790248870849609e-005 23.2 6.4790248870849609e-005 24 6.4790248870849609e-005
		 24.8 6.4909458160400391e-005;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Clavicle_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.038798496127128601 0.8 0.0387984998524189
		 1.6 0.038798514753580093 2.4 0.038798507302999496 3.2 0.038798514753580093 4 0.0387984998524189
		 4.8 0.038798518478870392 5.6 0.038798514753580093 6.4 0.038798496127128601 7.2 0.038798518478870392
		 8 0.038798511028289795 8.8 0.038798503577709198 9.6 0.038798511028289795 10.4 0.038798496127128601
		 11.2 0.038798511028289795 12 0.038798503577709198 12.8 0.038798514753580093 13.6 0.038798518478870392
		 14.4 0.03879852220416069 15.2 0.038798507302999496 16 0.03879852220416069 16.8 0.038798507302999496
		 17.6 0.038798514753580093 18.4 0.038798477500677109 19.2 0.038798507302999496 20 0.038798488676548004
		 20.8 0.038798518478870392 21.6 0.038798507302999496 22.4 0.038798488676548004 23.2 0.038798492401838303
		 24 0.038798514753580093 24.8 0.0387984998524189;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Clavicle_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 1.0000001192092896
		 1.6 0.99999994039535522 2.4 0.99999994039535522 3.2 1 4 1 4.8 1.0000001192092896
		 5.6 1 6.4 1 7.2 0.99999994039535522 8 1 8.8 1 9.6 1 10.4 1 11.2 0.99999994039535522
		 12 1 12.8 1 13.6 1.0000001192092896 14.4 1 15.2 1.0000001192092896 16 1 16.8 1 17.6 1
		 18.4 1.0000001192092896 19.2 0.99999994039535522 20 1.0000001192092896 20.8 1 21.6 1.0000001192092896
		 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Clavicle_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 0.99999994039535522
		 3.2 1 4 0.99999994039535522 4.8 1 5.6 1 6.4 0.99999994039535522 7.2 0.99999988079071045
		 8 0.99999994039535522 8.8 0.99999988079071045 9.6 0.99999988079071045 10.4 1.0000001192092896
		 11.2 0.99999988079071045 12 0.99999994039535522 12.8 0.99999994039535522 13.6 0.99999988079071045
		 14.4 0.99999994039535522 15.2 1.0000001192092896 16 0.99999994039535522 16.8 0.99999982118606567
		 17.6 1.0000001192092896 18.4 1 19.2 0.99999994039535522 20 1 20.8 1 21.6 0.99999988079071045
		 22.4 0.99999994039535522 23.2 0.99999994039535522 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Clavicle_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999988079071045 0.8 1 1.6 0.99999994039535522
		 2.4 0.99999994039535522 3.2 1 4 0.99999994039535522 4.8 1.0000001192092896 5.6 1.0000001192092896
		 6.4 1.0000001192092896 7.2 0.99999988079071045 8 0.99999994039535522 8.8 0.99999994039535522
		 9.6 0.99999994039535522 10.4 1.0000001192092896 11.2 0.99999994039535522 12 0.99999994039535522
		 12.8 1 13.6 0.99999994039535522 14.4 1 15.2 1.0000001192092896 16 1 16.8 0.99999982118606567
		 17.6 1 18.4 1.0000001192092896 19.2 1 20 1 20.8 1 21.6 1 22.4 1 23.2 1 24 1 24.8 0.99999994039535522;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Clavicle_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 74.557662963867188 0.8 74.560111999511719
		 1.6 74.562637329101563 2.4 74.565177917480469 3.2 74.567718505859375 4 74.570259094238281
		 4.8 74.57281494140625 5.6 74.575294494628906 6.4 74.577728271484375 7.2 74.580101013183594
		 8 74.582344055175781 8.8 74.584449768066406 9.6 74.586433410644531 10.4 74.588348388671875
		 11.2 74.590194702148438 12 74.59197998046875 12.8 74.593696594238281 13.6 74.595542907714844
		 14.4 74.597312927246094 15.2 74.598396301269531 16 74.598648071289063 16.8 74.598213195800781
		 17.6 74.596931457519531 18.4 74.594497680664063 19.2 74.591224670410156 20 74.587837219238281
		 20.8 74.58489990234375 21.6 74.581855773925781 22.4 74.577705383300781 23.2 74.571762084960938
		 24 74.564712524414063 24.8 74.557662963867188;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Clavicle_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -80.775138854980469 0.8 -80.775245666503906
		 1.6 -80.775360107421875 2.4 -80.775474548339844 3.2 -80.775588989257813 4 -80.775703430175781
		 4.8 -80.77581787109375 5.6 -80.775932312011719 6.4 -80.776039123535156 7.2 -80.776145935058594
		 8 -80.7762451171875 8.8 -80.776336669921875 9.6 -80.77642822265625 10.4 -80.776512145996094
		 11.2 -80.776596069335938 12 -80.77667236328125 12.8 -80.776756286621094 13.6 -80.776840209960938
		 14.4 -80.77691650390625 15.2 -80.776962280273438 16 -80.7769775390625 16.8 -80.776954650878906
		 17.6 -80.776893615722656 18.4 -80.776786804199219 19.2 -80.776641845703125 20 -80.7764892578125
		 20.8 -80.776359558105469 21.6 -80.776222229003906 22.4 -80.776039123535156 23.2 -80.775772094726563
		 24 -80.77545166015625 24.8 -80.775138854980469;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Clavicle_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 105.58920288085937 0.8 105.58671569824219
		 1.6 105.58416748046875 2.4 105.58159637451172 3.2 105.57902526855469 4 105.57644653320313
		 4.8 105.57386016845703 5.6 105.57134246826172 6.4 105.56887817382812 7.2 105.56648254394531
		 8 105.56420135498047 8.8 105.56207275390625 9.6 105.56005859375 10.4 105.55812835693359
		 11.2 105.55623626708984 12 105.55443572998047 12.8 105.55271148681641 13.6 105.55083465576172
		 14.4 105.54904174804687 15.2 105.54793548583984 16 105.54769134521484 16.8 105.54812622070312
		 17.6 105.54943084716797 18.4 105.55188751220703 19.2 105.55521392822266 20 105.55863952636719
		 20.8 105.56160736083984 21.6 105.56470489501953 22.4 105.56890869140625 23.2 105.57492828369141
		 24 105.58206176757812 24.8 105.58921051025391;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032UpperArm_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.15029534697532654 0.8 0.15029533207416534
		 1.6 0.15029537677764893 2.4 0.15029534697532654 3.2 0.15029534697532654 4 0.15029534697532654
		 4.8 0.15029533207416534 5.6 0.15029536187648773 6.4 0.15029534697532654 7.2 0.15029537677764893
		 8 0.15029531717300415 8.8 0.15029530227184296 9.6 0.15029534697532654 10.4 0.15029537677764893
		 11.2 0.15029536187648773 12 0.15029536187648773 12.8 0.15029531717300415 13.6 0.15029531717300415
		 14.4 0.15029537677764893 15.2 0.15029537677764893 16 0.15029531717300415 16.8 0.15029534697532654
		 17.6 0.15029533207416534 18.4 0.15029540657997131 19.2 0.15029537677764893 20 0.15029534697532654
		 20.8 0.15029533207416534 21.6 0.15029534697532654 22.4 0.15029536187648773 23.2 0.15029537677764893
		 24 0.15029536187648773 24.8 0.15029534697532654;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032UpperArm_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -5.9604644775390625e-008 0.8 2.384185791015625e-007
		 1.6 -5.9604644775390625e-008 2.4 -5.9604644775390625e-008 3.2 -5.9604644775390625e-008
		 4 -5.9604644775390625e-008 4.8 0 5.6 0 6.4 -1.1920928955078125e-007 7.2 -1.1920928955078125e-007
		 8 5.9604644775390625e-008 8.8 5.9604644775390625e-008 9.6 0 10.4 5.9604644775390625e-008
		 11.2 0 12 0 12.8 5.9604644775390625e-008 13.6 0 14.4 1.1920928955078125e-007 15.2 0
		 16 5.9604644775390625e-008 16.8 1.7881393432617188e-007 17.6 0 18.4 0 19.2 -1.1920928955078125e-007
		 20 5.9604644775390625e-008 20.8 0 21.6 1.1920928955078125e-007 22.4 -5.9604644775390625e-008
		 23.2 -5.9604644775390625e-008 24 -1.1920928955078125e-007 24.8 -5.9604644775390625e-008;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032UpperArm_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.1920928955078125e-007 0.8 -1.1920928955078125e-007
		 1.6 0 2.4 0 3.2 0 4 1.7881393432617188e-007 4.8 0 5.6 5.9604644775390625e-008 6.4 1.7881393432617188e-007
		 7.2 5.9604644775390625e-008 8 0 8.8 -1.1920928955078125e-007 9.6 0 10.4 -1.1920928955078125e-007
		 11.2 -1.1920928955078125e-007 12 -1.1920928955078125e-007 12.8 -1.1920928955078125e-007
		 13.6 1.1920928955078125e-007 14.4 0 15.2 1.7881393432617188e-007 16 -5.9604644775390625e-008
		 16.8 5.9604644775390625e-008 17.6 -5.9604644775390625e-008 18.4 0 19.2 1.1920928955078125e-007
		 20 0 20.8 -1.1920928955078125e-007 21.6 0 22.4 1.1920928955078125e-007 23.2 1.1920928955078125e-007
		 24 1.1920928955078125e-007 24.8 1.1920928955078125e-007;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032UpperArm_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1.0000002384185791
		 2.4 1.0000001192092896 3.2 0.99999994039535522 4 1.0000001192092896 4.8 1.0000001192092896
		 5.6 0.99999994039535522 6.4 1 7.2 1 8 1.0000001192092896 8.8 0.99999988079071045
		 9.6 1.0000001192092896 10.4 1 11.2 1.0000001192092896 12 1 12.8 1.0000001192092896
		 13.6 0.99999988079071045 14.4 0.99999988079071045 15.2 1 16 0.99999994039535522 16.8 0.99999994039535522
		 17.6 0.99999988079071045 18.4 1.0000001192092896 19.2 1.0000001192092896 20 0.99999994039535522
		 20.8 1.0000001192092896 21.6 1.0000001192092896 22.4 1 23.2 1.0000002384185791 24 1
		 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032UpperArm_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000003576278687 0.8 1.0000001192092896
		 1.6 1.0000002384185791 2.4 1.0000001192092896 3.2 0.99999988079071045 4 1.0000001192092896
		 4.8 1 5.6 1 6.4 1 7.2 1 8 1 8.8 0.99999994039535522 9.6 0.99999994039535522 10.4 1.0000001192092896
		 11.2 1 12 0.99999994039535522 12.8 1 13.6 1 14.4 1.0000002384185791 15.2 1.0000002384185791
		 16 0.99999988079071045 16.8 1.0000002384185791 17.6 1 18.4 1.0000001192092896 19.2 1.0000002384185791
		 20 1.0000001192092896 20.8 1 21.6 1.0000001192092896 22.4 1.0000001192092896 23.2 1.0000002384185791
		 24 1 24.8 1.0000002384185791;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032UpperArm_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000002384185791 0.8 1.0000002384185791
		 1.6 1.0000002384185791 2.4 1.0000002384185791 3.2 0.99999982118606567 4 1 4.8 1.0000001192092896
		 5.6 1.0000001192092896 6.4 1.0000001192092896 7.2 1.0000001192092896 8 1.0000001192092896
		 8.8 1 9.6 1.0000001192092896 10.4 1 11.2 1.0000001192092896 12 0.99999994039535522
		 12.8 1.0000001192092896 13.6 1.0000001192092896 14.4 1.0000002384185791 15.2 1.0000001192092896
		 16 0.99999988079071045 16.8 1.0000001192092896 17.6 1.0000001192092896 18.4 1.0000001192092896
		 19.2 1.0000002384185791 20 1.0000001192092896 20.8 1.0000002384185791 21.6 1.0000001192092896
		 22.4 1.0000001192092896 23.2 1.0000002384185791 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032UpperArm_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -49.189823150634766 0.8 -49.190738677978516
		 1.6 -49.176235198974609 2.4 -49.157524108886719 3.2 -49.131645202636719 4 -49.096065521240234
		 4.8 -49.053173065185547 5.6 -49.007652282714844 6.4 -48.959716796875 7.2 -48.909542083740234
		 8 -48.862319946289063 8.8 -48.820011138916016 9.6 -48.781246185302734 10.4 -48.746540069580078
		 11.2 -48.717975616455078 12 -48.693572998046875 12.8 -48.667461395263672 13.6 -48.631801605224609
		 14.4 -48.592056274414063 15.2 -48.563140869140625 16 -48.546775817871094 16.8 -48.541057586669922
		 17.6 -48.558403015136719 18.4 -48.610984802246094 19.2 -48.688404083251953 20 -48.770256042480469
		 20.8 -48.855182647705078 21.6 -48.945266723632813 22.4 -49.025444030761719 23.2 -49.087371826171875
		 24 -49.138957977294922 24.8 -49.1898193359375;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032UpperArm_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 28.545291900634766 0.8 28.408821105957031
		 1.6 28.258869171142578 2.4 28.107133865356445 3.2 27.957344055175781 4 27.807212829589844
		 4.8 27.659374237060547 5.6 27.524627685546875 6.4 27.402830123901367 7.2 27.293855667114258
		 8 27.207927703857422 8.8 27.140169143676758 9.6 27.094833374023438 10.4 27.095344543457031
		 11.2 27.144081115722656 12 27.238334655761719 12.8 27.394191741943359 13.6 27.639850616455078
		 14.4 27.948078155517578 15.2 28.251707077026367 16 28.547931671142578 16.8 28.840353012084957
		 17.6 29.070375442504886 18.4 29.214242935180664 19.2 29.295186996459957 20 29.324163436889648
		 20.8 29.299190521240234 21.6 29.221267700195316 22.4 29.105449676513672 23.2 28.943965911865234
		 24 28.744550704956055 24.8 28.545289993286133;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032UpperArm_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -62.892147064208984 0.8 -63.129287719726555
		 1.6 -63.382926940917962 2.4 -63.639484405517571 3.2 -63.893470764160156 4 -64.148063659667969
		 4.8 -64.400245666503906 5.6 -64.635299682617187 6.4 -64.853233337402344 7.2 -65.054039001464844
		 8 -65.222862243652344 8.8 -65.365303039550781 9.6 -65.475662231445312 10.4 -65.522018432617187
		 11.2 -65.500900268554688 12 -65.415672302246094 12.8 -65.244575500488281 13.6 -64.952262878417969
		 14.4 -64.573554992675781 15.2 -64.192329406738281 16 -63.815670013427734 16.8 -63.436885833740234
		 17.6 -63.119953155517585 18.4 -62.893543243408203 19.2 -62.729408264160156 20 -62.606082916259766
		 20.8 -62.508064270019531 21.6 -62.450447082519538 22.4 -62.457614898681641 23.2 -62.559402465820313
		 24 -62.72590637207032 24.8 -62.892147064208984;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Forearm_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.2657172679901123 0.8 0.26571744680404663
		 1.6 0.26571738719940186 2.4 0.26571732759475708 3.2 0.26571738719940186 4 0.26571738719940186
		 4.8 0.26571738719940186 5.6 0.26571738719940186 6.4 0.26571732759475708 7.2 0.26571744680404663
		 8 0.26571732759475708 8.8 0.26571750640869141 9.6 0.26571732759475708 10.4 0.26571732759475708
		 11.2 0.26571732759475708 12 0.2657172679901123 12.8 0.2657172679901123 13.6 0.2657172679901123
		 14.4 0.26571744680404663 15.2 0.26571738719940186 16 0.26571738719940186 16.8 0.26571744680404663
		 17.6 0.26571750640869141 18.4 0.26571744680404663 19.2 0.26571744680404663 20 0.26571750640869141
		 20.8 0.2657172679901123 21.6 0.26571738719940186 22.4 0.26571738719940186 23.2 0.26571732759475708
		 24 0.26571738719940186 24.8 0.2657172679901123;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Forearm_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.9802322387695313e-008 0.8 -1.4901161193847656e-008
		 1.6 7.4505805969238281e-008 2.4 5.9604644775390625e-008 3.2 7.4505805969238281e-008
		 4 -7.4505805969238281e-008 4.8 5.9604644775390625e-008 5.6 4.4703483581542969e-008
		 6.4 4.4703483581542969e-008 7.2 -5.9604644775390625e-008 8 0 8.8 -8.9406967163085938e-008
		 9.6 -5.9604644775390625e-008 10.4 0 11.2 -1.1920928955078125e-007 12 8.9406967163085938e-008
		 12.8 5.9604644775390625e-008 13.6 -2.9802322387695313e-008 14.4 1.4901161193847656e-008
		 15.2 7.4505805969238281e-008 16 0 16.8 5.9604644775390625e-008 17.6 0 18.4 -1.1920928955078125e-007
		 19.2 2.9802322387695313e-008 20 -8.9406967163085938e-008 20.8 2.9802322387695313e-008
		 21.6 -8.9406967163085938e-008 22.4 8.9406967163085938e-008 23.2 0 24 -4.4703483581542969e-008
		 24.8 -2.9802322387695313e-008;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Forearm_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 5.9604644775390625e-008 1.6 0 2.4 0
		 3.2 0 4 0 4.8 -5.9604644775390625e-008 5.6 0 6.4 0 7.2 5.9604644775390625e-008 8 5.9604644775390625e-008
		 8.8 0 9.6 0 10.4 0 11.2 5.9604644775390625e-008 12 0 12.8 0 13.6 5.9604644775390625e-008
		 14.4 -5.9604644775390625e-008 15.2 -5.9604644775390625e-008 16 0 16.8 -5.9604644775390625e-008
		 17.6 0 18.4 5.9604644775390625e-008 19.2 -1.1920928955078125e-007 20 5.9604644775390625e-008
		 20.8 0 21.6 0 22.4 -5.9604644775390625e-008 23.2 0 24 0 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Forearm_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1.0000001192092896 2.4 0.99999994039535522
		 3.2 1 4 1 4.8 1.0000001192092896 5.6 1 6.4 1.0000001192092896 7.2 1.0000001192092896
		 8 0.99999994039535522 8.8 1.0000001192092896 9.6 0.99999994039535522 10.4 0.99999994039535522
		 11.2 1.0000001192092896 12 0.99999994039535522 12.8 1.0000001192092896 13.6 1 14.4 0.99999994039535522
		 15.2 1 16 1 16.8 0.99999988079071045 17.6 0.99999988079071045 18.4 0.99999994039535522
		 19.2 1.0000001192092896 20 0.99999994039535522 20.8 1 21.6 1 22.4 1 23.2 1.0000001192092896
		 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Forearm_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1.0000001192092896 2.4 1.0000001192092896
		 3.2 1 4 1.0000001192092896 4.8 1.0000001192092896 5.6 1.0000001192092896 6.4 1 7.2 1.0000001192092896
		 8 0.99999994039535522 8.8 1.0000001192092896 9.6 1.0000001192092896 10.4 1 11.2 1
		 12 1.0000001192092896 12.8 1.0000001192092896 13.6 0.99999994039535522 14.4 1.0000001192092896
		 15.2 1.0000001192092896 16 0.99999994039535522 16.8 1.0000002384185791 17.6 1.0000001192092896
		 18.4 1.0000001192092896 19.2 1.0000002384185791 20 1.0000001192092896 20.8 1 21.6 1.0000001192092896
		 22.4 1 23.2 1.0000001192092896 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Forearm_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 1 4 1 4.8 1.0000001192092896
		 5.6 1 6.4 1.0000001192092896 7.2 1 8 1 8.8 1 9.6 1 10.4 1 11.2 1.0000001192092896
		 12 1 12.8 1 13.6 0.99999994039535522 14.4 1.0000001192092896 15.2 0.99999994039535522
		 16 1 16.8 1.0000001192092896 17.6 1.0000001192092896 18.4 1 19.2 1 20 1 20.8 1 21.6 1
		 22.4 1 23.2 1 24 0.99999994039535522 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Forearm_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.7075473124350538e-006 0.8 0 1.6 -1.7075470850613783e-006
		 2.4 0 3.2 3.4150943974964321e-006 4 0 4.8 0 5.6 -1.707547198748216e-006 6.4 0 7.2 0
		 8 0 8.8 -3.4150941701227566e-006 9.6 1.707547198748216e-006 10.4 0 11.2 1.707547198748216e-006
		 12 -1.707547198748216e-006 12.8 -1.707547198748216e-006 13.6 -1.7075474261218915e-006
		 14.4 0 15.2 0 16 -3.415094852243783e-006 16.8 -1.7075469713745406e-006 17.6 -1.7075470850613783e-006
		 18.4 0 19.2 -3.4150937153754057e-006 20 0 20.8 -3.4150946248701075e-006 21.6 0 22.4 1.707547198748216e-006
		 23.2 -1.7075470850613783e-006 24 -1.7075473124350538e-006 24.8 1.7075473124350538e-006;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Forearm_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.4545990982005605e-006 0.8 1.440743062630645e-006
		 1.6 -1.2806602853743243e-006 2.4 -4.3755903789133299e-006 3.2 1.227299662787118e-006
		 4 4.8024764964793576e-007 4.8 2.561320798122324e-006 5.6 -2.294516662004753e-006
		 6.4 -4.6957543418102432e-006 7.2 1.1739386991393985e-006 8 1.013856262943591e-006
		 8.8 -2.0277122985135065e-006 9.6 -1.5474648762392462e-006 10.4 -2.8814863526349654e-006
		 11.2 3.2550117339269491e-006 12 -5.3360855645223637e-007 12.8 -4.2688679968705401e-007
		 13.6 3.468455361144152e-006 14.4 5.3360855645223637e-007 15.2 3.2016512818699994e-007
		 16 5.5228483688551933e-006 16.8 -3.0148885343805887e-006 17.6 3.8153011701069772e-006
		 18.4 -3.1482904887525365e-006 19.2 1.307340767198184e-006 20 -2.668042725417763e-006
		 20.8 -3.948703124478925e-006 21.6 -2.4012383619265165e-006 22.4 -1.067216999217635e-007
		 23.2 -1.7075470850613783e-006 24 -1.6008256409349997e-007 24.8 -2.4545990982005605e-006;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Forearm_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -76.732414245605469 0.8 -76.595298767089844
		 1.6 -76.477195739746094 2.4 -76.363555908203125 3.2 -76.264862060546875 4 -76.183967590332031
		 4.8 -76.118003845214844 5.6 -76.068855285644531 6.4 -76.036529541015625 7.2 -76.020988464355469
		 8 -76.024147033691406 8.8 -76.037330627441406 9.6 -76.069168090820312 10.4 -76.1475830078125
		 11.2 -76.272026062011719 12 -76.442985534667969 12.8 -76.689804077148438 13.6 -77.059707641601563
		 14.4 -77.505416870117187 15.2 -77.91455078125 16 -78.277259826660156 16.8 -78.603347778320313
		 17.6 -78.809822082519531 18.4 -78.849044799804687 19.2 -78.768623352050781 20 -78.62841796875
		 20.8 -78.445411682128906 21.6 -78.202583312988281 22.4 -77.908981323242188 23.2 -77.5506591796875
		 24 -77.141532897949219 24.8 -76.732414245605469;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Hand_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.26571741700172424 0.8 0.26571735739707947
		 1.6 0.26571756601333618 2.4 0.26571762561798096 3.2 0.26571744680404663 4 0.26571732759475708
		 4.8 0.26571747660636902 5.6 0.26571753621101379 6.4 0.26571741700172424 7.2 0.2657172679901123
		 8 0.26571744680404663 8.8 0.26571732759475708 9.6 0.26571738719940186 10.4 0.26571744680404663
		 11.2 0.26571732759475708 12 0.26571756601333618 12.8 0.26571753621101379 13.6 0.26571738719940186
		 14.4 0.26571741700172424 15.2 0.26571756601333618 16 0.26571735739707947 16.8 0.26571750640869141
		 17.6 0.26571753621101379 18.4 0.26571723818778992 19.2 0.26571732759475708 20 0.26571735739707947
		 20.8 0.26571741700172424 21.6 0.2657172679901123 22.4 0.26571744680404663 23.2 0.26571744680404663
		 24 0.26571744680404663 24.8 0.26571741700172424;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Hand_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 -5.9604644775390625e-008 2.4 0
		 3.2 -5.9604644775390625e-008 4 0 4.8 0 5.6 0 6.4 0 7.2 -5.9604644775390625e-008 8 0
		 8.8 0 9.6 0 10.4 5.9604644775390625e-008 11.2 5.9604644775390625e-008 12 5.9604644775390625e-008
		 12.8 -5.9604644775390625e-008 13.6 -5.9604644775390625e-008 14.4 -5.9604644775390625e-008
		 15.2 0 16 0 16.8 0 17.6 -5.9604644775390625e-008 18.4 -5.9604644775390625e-008 19.2 0
		 20 5.9604644775390625e-008 20.8 0 21.6 -5.9604644775390625e-008 22.4 0 23.2 0 24 -5.9604644775390625e-008
		 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Hand_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 -5.9604644775390625e-008 1.6 5.9604644775390625e-008
		 2.4 1.1920928955078125e-007 3.2 0 4 0 4.8 0 5.6 1.1920928955078125e-007 6.4 5.9604644775390625e-008
		 7.2 0 8 0 8.8 -1.1920928955078125e-007 9.6 0 10.4 0 11.2 -5.9604644775390625e-008
		 12 5.9604644775390625e-008 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 5.9604644775390625e-008
		 17.6 1.1920928955078125e-007 18.4 -5.9604644775390625e-008 19.2 0 20 -5.9604644775390625e-008
		 20.8 0 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Hand_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 0.99999988079071045
		 1.6 1.0000001192092896 2.4 1.0000001192092896 3.2 1 4 1.0000001192092896 4.8 1 5.6 1
		 6.4 1 7.2 1.0000001192092896 8 1 8.8 1.0000002384185791 9.6 0.99999988079071045 10.4 1
		 11.2 0.99999994039535522 12 1.0000001192092896 12.8 1.0000001192092896 13.6 1 14.4 1.0000001192092896
		 15.2 1 16 1.0000001192092896 16.8 1.0000001192092896 17.6 1 18.4 1.0000001192092896
		 19.2 1.0000001192092896 20 1 20.8 0.99999994039535522 21.6 1.0000002384185791 22.4 1.0000001192092896
		 23.2 1.0000001192092896 24 1 24.8 0.99999994039535522;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Hand_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 0.99999994039535522 1.6 1.0000001192092896
		 2.4 1.0000002384185791 3.2 1.0000001192092896 4 1.0000001192092896 4.8 1.0000001192092896
		 5.6 0.99999994039535522 6.4 1.0000001192092896 7.2 1.0000001192092896 8 1 8.8 1.0000001192092896
		 9.6 1.0000001192092896 10.4 0.99999994039535522 11.2 1 12 1.0000001192092896 12.8 1.0000001192092896
		 13.6 1 14.4 1.0000001192092896 15.2 1.0000001192092896 16 1.0000001192092896 16.8 1.0000002384185791
		 17.6 1.0000001192092896 18.4 1.0000001192092896 19.2 1.0000002384185791 20 1 20.8 1
		 21.6 1.0000001192092896 22.4 1.0000001192092896 23.2 1 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Hand_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 0.99999988079071045
		 1.6 1.0000001192092896 2.4 1.0000001192092896 3.2 1.0000001192092896 4 1.0000001192092896
		 4.8 1.0000001192092896 5.6 0.99999994039535522 6.4 1 7.2 1.0000001192092896 8 1 8.8 1.0000001192092896
		 9.6 1 10.4 1 11.2 1 12 1 12.8 1 13.6 1 14.4 1 15.2 0.99999994039535522 16 1.0000001192092896
		 16.8 1.0000002384185791 17.6 0.99999988079071045 18.4 1.0000001192092896 19.2 1.0000001192092896
		 20 1.0000001192092896 20.8 1 21.6 1.0000001192092896 22.4 0.99999994039535522 23.2 1.0000001192092896
		 24 1.0000001192092896 24.8 0.99999994039535522;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Hand_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 155.32643127441406 0.8 155.32643127441406
		 1.6 155.32643127441406 2.4 155.32643127441406 3.2 155.32643127441406 4 155.32643127441406
		 4.8 155.32643127441406 5.6 155.32643127441406 6.4 155.32643127441406 7.2 155.32643127441406
		 8 155.32643127441406 8.8 155.32643127441406 9.6 155.32643127441406 10.4 155.32643127441406
		 11.2 155.32643127441406 12 155.32643127441406 12.8 155.32643127441406 13.6 155.32643127441406
		 14.4 155.32643127441406 15.2 155.32643127441406 16 155.32643127441406 16.8 155.32643127441406
		 17.6 155.32643127441406 18.4 155.32643127441406 19.2 155.32643127441406 20 155.32643127441406
		 20.8 155.32643127441406 21.6 155.32643127441406 22.4 155.32643127441406 23.2 155.32643127441406
		 24 155.32643127441406 24.8 155.32643127441406;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Hand_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.3196506500244141 0.8 -2.319645881652832
		 1.6 -2.3196485042572021 2.4 -2.3196523189544678 3.2 -2.3196480274200439 4 -2.3196475505828857
		 4.8 -2.3196492195129395 5.6 -2.3196492195129395 6.4 -2.3196477890014648 7.2 -2.3196496963500977
		 8 -2.3196492195129395 8.8 -2.3196494579315186 9.6 -2.319650411605835 10.4 -2.3196496963500977
		 11.2 -2.3196473121643066 12 -2.3196496963500977 12.8 -2.3196499347686768 13.6 -2.3196489810943604
		 14.4 -2.319648265838623 15.2 -2.319650411605835 16 -2.3196518421173096 16.8 -2.3196506500244141
		 17.6 -2.3196494579315186 18.4 -2.3196513652801514 19.2 -2.3196516036987305 20 -2.3196520805358887
		 20.8 -2.3196477890014648 21.6 -2.3196499347686768 22.4 -2.319650411605835 23.2 -2.3196511268615723
		 24 -2.3196473121643066 24.8 -2.3196506500244141;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Hand_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 6.9528470039367676 0.8 6.9528446197509766
		 1.6 6.952845573425293 2.4 6.9528465270996094 3.2 6.9528465270996094 4 6.9528446197509766
		 4.8 6.9528460502624512 5.6 6.9528436660766602 6.4 6.9528450965881348 7.2 6.952845573425293
		 8 6.9528446197509766 8.8 6.9528460502624512 9.6 6.952845573425293 10.4 6.9528450965881348
		 11.2 6.9528450965881348 12 6.952845573425293 12.8 6.9528450965881348 13.6 6.9528441429138184
		 14.4 6.9528446197509766 15.2 6.9528450965881348 16 6.9528436660766602 16.8 6.9528446197509766
		 17.6 6.9528446197509766 18.4 6.9528450965881348 19.2 6.9528450965881348 20 6.9528450965881348
		 20.8 6.9528446197509766 21.6 6.9528446197509766 22.4 6.9528450965881348 23.2 6.9528450965881348
		 24 6.9528450965881348 24.8 6.9528470039367676;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Finger0_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.11071552336215973 0.8 0.11071550846099854
		 1.6 0.11071549355983734 2.4 0.11071541905403137 3.2 0.11071562767028809 4 0.1107155978679657
		 4.8 0.1107155978679657 5.6 0.11071568727493286 6.4 0.11071547865867615 7.2 0.11071550846099854
		 8 0.1107155978679657 8.8 0.11071556806564331 9.6 0.11071556806564331 10.4 0.11071556806564331
		 11.2 0.11071547865867615 12 0.11071553826332092 12.8 0.11071538925170898 13.6 0.11071550846099854
		 14.4 0.1107155978679657 15.2 0.11071565747261047 16 0.11071556806564331 16.8 0.11071547865867615
		 17.6 0.11071550846099854 18.4 0.1107155978679657 19.2 0.11071553826332092 20 0.11071556806564331
		 20.8 0.1107155978679657 21.6 0.11071547865867615 22.4 0.11071547865867615 23.2 0.11071547865867615
		 24 0.11071555316448212 24.8 0.11071552336215973;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Finger0_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.1920928955078125e-007 0.8 0 1.6 -1.1920928955078125e-007
		 2.4 0 3.2 0 4 5.9604644775390625e-008 4.8 0 5.6 1.1920928955078125e-007 6.4 0 7.2 0
		 8 0 8.8 0 9.6 0 10.4 1.1920928955078125e-007 11.2 0 12 0 12.8 0 13.6 0 14.4 0 15.2 0
		 16 -5.9604644775390625e-008 16.8 0 17.6 5.9604644775390625e-008 18.4 5.9604644775390625e-008
		 19.2 0 20 0 20.8 0 21.6 0 22.4 1.1920928955078125e-007 23.2 0 24 0 24.8 -1.1920928955078125e-007;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Finger0_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 2.9802322387695313e-008 0.8 0 1.6 2.9802322387695313e-008
		 2.4 4.4703483581542969e-008 3.2 -2.9802322387695313e-008 4 -4.4703483581542969e-008
		 4.8 -4.4703483581542969e-008 5.6 -2.9802322387695313e-008 6.4 4.4703483581542969e-008
		 7.2 1.4901161193847656e-008 8 -1.4901161193847656e-008 8.8 -2.9802322387695313e-008
		 9.6 0 10.4 1.4901161193847656e-008 11.2 2.9802322387695313e-008 12 -4.4703483581542969e-008
		 12.8 1.4901161193847656e-008 13.6 4.4703483581542969e-008 14.4 0 15.2 -2.9802322387695313e-008
		 16 -2.9802322387695313e-008 16.8 2.9802322387695313e-008 17.6 4.4703483581542969e-008
		 18.4 0 19.2 1.4901161193847656e-008 20 2.9802322387695313e-008 20.8 1.4901161193847656e-008
		 21.6 1.4901161193847656e-008 22.4 2.9802322387695313e-008 23.2 2.9802322387695313e-008
		 24 0 24.8 2.9802322387695313e-008;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Finger0_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1 2.4 0.99999988079071045 3.2 1 4 0.99999994039535522 4.8 0.99999994039535522
		 5.6 1.0000001192092896 6.4 0.99999994039535522 7.2 1 8 0.99999994039535522 8.8 1
		 9.6 1.0000001192092896 10.4 1.0000001192092896 11.2 1 12 1 12.8 0.99999994039535522
		 13.6 1 14.4 1 15.2 1 16 1.0000001192092896 16.8 1.0000001192092896 17.6 1 18.4 1.0000001192092896
		 19.2 1 20 1.0000001192092896 20.8 1 21.6 1 22.4 1.0000001192092896 23.2 1 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Finger0_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 0.99999994039535522 2.4 0.99999994039535522 3.2 1 4 0.99999988079071045 4.8 0.99999994039535522
		 5.6 1.0000001192092896 6.4 0.99999982118606567 7.2 0.99999994039535522 8 1 8.8 1
		 9.6 1.0000001192092896 10.4 1.0000001192092896 11.2 0.99999994039535522 12 1 12.8 0.99999988079071045
		 13.6 0.99999994039535522 14.4 1 15.2 0.99999994039535522 16 1 16.8 1.0000001192092896
		 17.6 1.0000001192092896 18.4 1.0000001192092896 19.2 1 20 1 20.8 0.99999994039535522
		 21.6 0.99999994039535522 22.4 1.0000001192092896 23.2 1 24 0.99999988079071045 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Finger0_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1 2.4 0.99999994039535522 3.2 1 4 0.99999988079071045 4.8 0.99999988079071045
		 5.6 1.0000001192092896 6.4 0.99999988079071045 7.2 0.99999994039535522 8 1 8.8 0.99999994039535522
		 9.6 1.0000001192092896 10.4 1.0000001192092896 11.2 1 12 1 12.8 1 13.6 1 14.4 1 15.2 1
		 16 1 16.8 1.0000001192092896 17.6 1.0000001192092896 18.4 1.0000001192092896 19.2 0.99999994039535522
		 20 1.0000001192092896 20.8 0.99999994039535522 21.6 0.99999988079071045 22.4 1.0000001192092896
		 23.2 1 24 0.99999994039535522 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Finger0_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.045625664293766022 0.8 -0.045625664293766022
		 1.6 -0.045625455677509308 2.4 -0.045625455677509308 3.2 -0.045625455677509308 4 -0.045625671744346619
		 4.8 -0.045625455677509308 5.6 -0.045625664293766022 6.4 -0.045625675469636917 7.2 -0.045625671744346619
		 8 -0.045625455677509308 8.8 -0.045625455677509308 9.6 -0.045625664293766022 10.4 -0.045625664293766022
		 11.2 -0.045625884085893631 12 -0.04562566801905632 12.8 -0.045625671744346619 13.6 -0.045625884085893631
		 14.4 -0.04562566801905632 15.2 -0.045625884085893631 16 -0.04562566801905632 16.8 -0.045625876635313034
		 17.6 -0.045625664293766022 18.4 -0.045625664293766022 19.2 -0.045625239610671997
		 20 -0.04562566801905632 20.8 -0.045626096427440643 21.6 -0.045625455677509308 22.4 -0.045625664293766022
		 23.2 -0.04562566801905632 24 -0.045625671744346619 24.8 -0.045625664293766022;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Finger0_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -8.0041267835895269e-008 0.8 2.1344338563267229e-007
		 1.6 -8.27093231237086e-007 2.4 -1.0405367447674507e-006 3.2 -2.2678361801808933e-006
		 4 1.0938975947283325e-006 4.8 4.8024770649135462e-007 5.6 -2.934846463631402e-007
		 6.4 8.2709328808050486e-007 7.2 1.0672170702719086e-007 8 -1.5207843944153865e-006
		 8.8 1.040536631080613e-006 9.6 1.5474645351787331e-006 10.4 6.6701056766760303e-007
		 11.2 -1.3340213911305909e-007 12 4.2688682810876344e-007 12.8 -1.8676299760045369e-006
		 13.6 -2.1344341405438172e-007 14.4 -1.1472583310023765e-006 15.2 -9.338149311588495e-007
		 16 -5.869692927262804e-007 16.8 6.4033014268716215e-007 17.6 -9.338149311588495e-007
		 18.4 -1.9743513348657871e-006 19.2 4.0020640312832256e-007 20 -5.3360846408168072e-008
		 20.8 2.50796006184828e-006 21.6 -2.294516662004753e-006 22.4 7.4705184260892565e-007
		 23.2 -1.6008256409349997e-007 24 -5.3360855645223637e-007 24.8 -8.0041267835895269e-008;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Finger0_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 8.5377376990436449e-007
		 3.2 0 4 0 4.8 0 5.6 0 6.4 0 7.2 0 8 0 8.8 0 9.6 0 10.4 -8.5377354253068916e-007 11.2 8.5377365621752688e-007
		 12 0 12.8 0 13.6 0 14.4 4.2688682810876344e-007 15.2 -4.2688682810876344e-007 16 0
		 16.8 0 17.6 -4.2688682810876344e-007 18.4 0 19.2 4.2688682810876344e-007 20 -4.2688677126534458e-007
		 20.8 -4.2688682810876344e-007 21.6 0 22.4 4.2688677126534458e-007 23.2 0 24 0 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Finger0Nub_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.027678966522216797 0.8 0.027678787708282471
		 1.6 0.027678936719894409 2.4 0.027678936719894409 3.2 0.027678936719894409 4 0.027678966522216797
		 4.8 0.027678906917572021 5.6 0.027678817510604858 6.4 0.027678817510604858 7.2 0.027678847312927246
		 8 0.027678817510604858 8.8 0.027678817510604858 9.6 0.027678936719894409 10.4 0.027678817510604858
		 11.2 0.027678877115249634 12 0.027678847312927246 12.8 0.027678906917572021 13.6 0.027678847312927246
		 14.4 0.027678877115249634 15.2 0.027678966522216797 16 0.027678906917572021 16.8 0.027678966522216797
		 17.6 0.027678966522216797 18.4 0.027678877115249634 19.2 0.027678936719894409 20 0.027678966522216797
		 20.8 0.027678817510604858 21.6 0.027678936719894409 22.4 0.027678847312927246 23.2 0.027678996324539185
		 24 0.027678787708282471 24.8 0.027678966522216797;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Finger0Nub_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 1.1920928955078125e-007 1.6 0 2.4 -5.9604644775390625e-008
		 3.2 5.9604644775390625e-008 4 5.9604644775390625e-008 4.8 -5.9604644775390625e-008
		 5.6 -5.9604644775390625e-008 6.4 -5.9604644775390625e-008 7.2 0 8 0 8.8 -1.1920928955078125e-007
		 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 -1.1920928955078125e-007 14.4 0 15.2 0 16 0
		 16.8 5.9604644775390625e-008 17.6 0 18.4 0 19.2 0 20 0 20.8 0 21.6 0 22.4 -1.1920928955078125e-007
		 23.2 0 24 0 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Finger0Nub_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 2.9802322387695313e-008 1.6 -4.4703483581542969e-008
		 2.4 0 3.2 0 4 -2.9802322387695313e-008 4.8 0 5.6 2.9802322387695313e-008 6.4 4.4703483581542969e-008
		 7.2 1.4901161193847656e-008 8 1.4901161193847656e-008 8.8 4.4703483581542969e-008
		 9.6 -1.4901161193847656e-008 10.4 5.9604644775390625e-008 11.2 4.4703483581542969e-008
		 12 2.9802322387695313e-008 12.8 0 13.6 0 14.4 0 15.2 -4.4703483581542969e-008 16 0
		 16.8 -4.4703483581542969e-008 17.6 0 18.4 2.9802322387695313e-008 19.2 0 20 0 20.8 2.9802322387695313e-008
		 21.6 0 22.4 0 23.2 -5.9604644775390625e-008 24 0 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Finger0Nub_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 1 1.6 0.99999994039535522
		 2.4 0.99999988079071045 3.2 1 4 1 4.8 1.0000001192092896 5.6 1 6.4 1 7.2 1.0000001192092896
		 8 1 8.8 1.0000001192092896 9.6 0.99999994039535522 10.4 1.0000001192092896 11.2 0.99999994039535522
		 12 0.99999994039535522 12.8 1.0000001192092896 13.6 1 14.4 1.0000001192092896 15.2 0.99999994039535522
		 16 1.0000001192092896 16.8 0.99999994039535522 17.6 1.0000001192092896 18.4 1.0000001192092896
		 19.2 1 20 1 20.8 0.99999994039535522 21.6 1 22.4 1.0000001192092896 23.2 1 24 1.0000001192092896
		 24.8 0.99999994039535522;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Finger0Nub_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 0.99999994039535522 2.4 0.99999988079071045
		 3.2 1 4 1.0000001192092896 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 1 8 1.0000001192092896
		 8.8 1.0000001192092896 9.6 1 10.4 1.0000001192092896 11.2 0.99999994039535522 12 1
		 12.8 1.0000001192092896 13.6 1 14.4 1.0000001192092896 15.2 1 16 1.0000001192092896
		 16.8 0.99999994039535522 17.6 1.0000001192092896 18.4 1.0000001192092896 19.2 0.99999994039535522
		 20 1 20.8 0.99999994039535522 21.6 1 22.4 1.0000001192092896 23.2 1.0000001192092896
		 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Finger0Nub_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 0.99999994039535522 2.4 0.99999988079071045
		 3.2 1 4 1.0000001192092896 4.8 1 5.6 0.99999994039535522 6.4 1 7.2 1 8 1.0000001192092896
		 8.8 1.0000001192092896 9.6 0.99999994039535522 10.4 1 11.2 1 12 1 12.8 1 13.6 0.99999994039535522
		 14.4 1 15.2 1 16 1.0000001192092896 16.8 1 17.6 1 18.4 1 19.2 1 20 1 20.8 1 21.6 1
		 22.4 1.0000001192092896 23.2 0.99999994039535522 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Finger0Nub_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 -2.1344341405438172e-007 1.6 0 2.4 2.1344344247609112e-007
		 3.2 2.1344341405438172e-007 4 0 4.8 -2.1344341405438172e-007 5.6 0 6.4 -2.1344338563267229e-007
		 7.2 0 8 -2.1344338563267229e-007 8.8 -2.1344338563267229e-007 9.6 -2.1344341405438172e-007
		 10.4 0 11.2 -2.1344342826523643e-007 12 0 12.8 0 13.6 -2.1344341405438172e-007 14.4 4.2688677126534458e-007
		 15.2 0 16 -4.2688677126534458e-007 16.8 0 17.6 -2.1344338563267229e-007 18.4 4.2688677126534458e-007
		 19.2 -2.1344342826523643e-007 20 2.1344341405438172e-007 20.8 -2.1344342826523643e-007
		 21.6 -2.1344341405438172e-007 22.4 0 23.2 2.1344338563267229e-007 24 0 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Finger0Nub_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.4812798073980957e-006 0.8 2.4012382482396788e-007
		 1.6 3.2016512818699994e-007 2.4 -5.0692818831521436e-007 3.2 -1.4140625808067853e-006
		 4 2.081073262161226e-006 4.8 7.4705184260892565e-007 5.6 2.6680426756797715e-008
		 6.4 4.0020640312832256e-007 7.2 3.0148878522595624e-006 8 2.6680427822611819e-007
		 8.8 6.6701056766760303e-007 9.6 -4.0020643155003199e-007 10.4 6.1364971770672128e-007
		 11.2 2.027712525887182e-006 12 1.2806605127479997e-006 12.8 -6.6701056766760303e-007
		 13.6 1.4941039125915268e-006 14.4 -2.4812793526507448e-006 15.2 -1.6541865761610097e-006
		 16 9.8717566743289353e-007 16.8 -2.6680427822611819e-007 17.6 1.2539799172373023e-006
		 18.4 -8.5377354253068916e-007 19.2 2.4279188437503763e-006 20 2.6680426756797715e-008
		 20.8 -1.8676300328479556e-007 21.6 9.6049529929587152e-007 22.4 2.1344338563267229e-007
		 23.2 -2.9348470320655906e-007 24 1.8943100030810454e-006 24.8 -2.4812798073980957e-006;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Finger0Nub_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 -8.5377365621752688e-007
		 4.8 8.5377354253068916e-007 5.6 0 6.4 0 7.2 0 8 0 8.8 8.5377354253068916e-007 9.6 8.5377371306094574e-007
		 10.4 0 11.2 0 12 4.2688685653047287e-007 12.8 -8.5377354253068916e-007 13.6 -4.2688682810876344e-007
		 14.4 -4.2688677126534458e-007 15.2 0 16 4.2688677126534458e-007 16.8 0 17.6 -4.2688677126534458e-007
		 18.4 4.2688677126534458e-007 19.2 0 20 4.2688682810876344e-007 20.8 4.2688685653047287e-007
		 21.6 -8.5377365621752688e-007 22.4 0 23.2 -8.5377365621752688e-007 24 8.5377354253068916e-007
		 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Clavicle_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.1920928955078125e-007 0.8 -1.1920928955078125e-007
		 1.6 1.1920928955078125e-007 2.4 1.1920928955078125e-007 3.2 -5.9604644775390625e-008
		 4 1.7881393432617188e-007 4.8 0 5.6 1.7881393432617188e-007 6.4 1.1920928955078125e-007
		 7.2 0 8 1.1920928955078125e-007 8.8 0 9.6 1.1920928955078125e-007 10.4 1.1920928955078125e-007
		 11.2 0 12 0 12.8 0 13.6 0 14.4 -1.1920928955078125e-007 15.2 1.1920928955078125e-007
		 16 0 16.8 2.9802322387695313e-007 17.6 2.384185791015625e-007 18.4 -1.1920928955078125e-007
		 19.2 0 20 -1.1920928955078125e-007 20.8 -1.1920928955078125e-007 21.6 0 22.4 1.1920928955078125e-007
		 23.2 1.1920928955078125e-007 24 0 24.8 1.1920928955078125e-007;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Clavicle_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 6.5028667449951172e-005 0.8 6.4790248870849609e-005
		 1.6 6.5028667449951172e-005 2.4 6.5207481384277344e-005 3.2 6.5088272094726563e-005
		 4 6.5326690673828125e-005 4.8 6.5028667449951172e-005 5.6 6.5207481384277344e-005
		 6.4 6.5207481384277344e-005 7.2 6.5028667449951172e-005 8 6.5028667449951172e-005
		 8.8 6.5207481384277344e-005 9.6 6.5147876739501953e-005 10.4 6.5028667449951172e-005
		 11.2 6.5088272094726563e-005 12 6.5088272094726563e-005 12.8 6.5028667449951172e-005
		 13.6 6.5028667449951172e-005 14.4 6.4969062805175781e-005 15.2 6.5207481384277344e-005
		 16 6.5147876739501953e-005 16.8 6.5207481384277344e-005 17.6 6.5267086029052734e-005
		 18.4 6.4909458160400391e-005 19.2 6.4849853515625e-005 20 6.5088272094726563e-005
		 20.8 6.5028667449951172e-005 21.6 6.4849853515625e-005 22.4 6.5088272094726563e-005
		 23.2 6.5207481384277344e-005 24 6.5147876739501953e-005 24.8 6.5028667449951172e-005;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Clavicle_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.038798511028289795 0.8 -0.038798514753580093
		 1.6 -0.038798503577709198 2.4 -0.038798511028289795 3.2 -0.038798492401838303 4 -0.038798481225967407
		 4.8 -0.038798507302999496 5.6 -0.038798503577709198 6.4 -0.038798492401838303 7.2 -0.038798496127128601
		 8 -0.038798518478870392 8.8 -0.0387984998524189 9.6 -0.038798507302999496 10.4 -0.038798507302999496
		 11.2 -0.038798511028289795 12 -0.0387984998524189 12.8 -0.038798488676548004 13.6 -0.0387984998524189
		 14.4 -0.038798492401838303 15.2 -0.038798511028289795 16 -0.0387984998524189 16.8 -0.038798503577709198
		 17.6 -0.038798496127128601 18.4 -0.038798518478870392 19.2 -0.038798507302999496
		 20 -0.038798511028289795 20.8 -0.038798507302999496 21.6 -0.038798492401838303 22.4 -0.038798511028289795
		 23.2 -0.038798503577709198 24 -0.038798503577709198 24.8 -0.038798514753580093;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Clavicle_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1 2.4 1 3.2 1
		 4 1 4.8 1 5.6 1 6.4 1 7.2 1 8 1.0000001192092896 8.8 1 9.6 1.0000001192092896 10.4 1
		 11.2 1 12 0.99999994039535522 12.8 1.0000001192092896 13.6 1.0000001192092896 14.4 1.0000001192092896
		 15.2 1.0000001192092896 16 1.0000001192092896 16.8 1 17.6 1 18.4 1 19.2 1 20 1.0000001192092896
		 20.8 1.0000001192092896 21.6 1.0000001192092896 22.4 1 23.2 1 24 1.0000001192092896
		 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Clavicle_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1 2.4 0.99999994039535522 3.2 1 4 0.99999994039535522 4.8 1 5.6 1 6.4 0.99999994039535522
		 7.2 1 8 1 8.8 0.99999994039535522 9.6 1 10.4 1 11.2 0.99999994039535522 12 0.99999994039535522
		 12.8 1 13.6 0.99999988079071045 14.4 1 15.2 1.0000001192092896 16 1 16.8 0.99999994039535522
		 17.6 1 18.4 1 19.2 0.99999982118606567 20 1 20.8 1.0000001192092896 21.6 1 22.4 0.99999994039535522
		 23.2 1 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Clavicle_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 1.0000001192092896
		 1.6 1 2.4 1 3.2 1 4 0.99999988079071045 4.8 1 5.6 1.0000001192092896 6.4 1.0000001192092896
		 7.2 0.99999988079071045 8 1 8.8 1 9.6 1 10.4 1.0000001192092896 11.2 0.99999988079071045
		 12 0.99999988079071045 12.8 0.99999994039535522 13.6 0.99999988079071045 14.4 1 15.2 1.0000001192092896
		 16 1 16.8 0.99999982118606567 17.6 0.99999988079071045 18.4 1.0000001192092896 19.2 1.0000001192092896
		 20 1 20.8 1 21.6 0.99999994039535522 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Clavicle_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -92.587684631347656 0.8 -92.587684631347656
		 1.6 -92.587684631347656 2.4 -92.587684631347656 3.2 -92.587684631347656 4 -92.587684631347656
		 4.8 -92.587684631347656 5.6 -92.587684631347656 6.4 -92.587684631347656 7.2 -92.587684631347656
		 8 -92.587684631347656 8.8 -92.587684631347656 9.6 -92.587684631347656 10.4 -92.587684631347656
		 11.2 -92.587684631347656 12 -92.587684631347656 12.8 -92.587684631347656 13.6 -92.587684631347656
		 14.4 -92.587684631347656 15.2 -92.587684631347656 16 -92.587684631347656 16.8 -92.587684631347656
		 17.6 -92.587684631347656 18.4 -92.587684631347656 19.2 -92.587684631347656 20 -92.587684631347656
		 20.8 -92.587684631347656 21.6 -92.587684631347656 22.4 -92.587684631347656 23.2 -92.587684631347656
		 24 -92.587684631347656 24.8 -92.587684631347656;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Clavicle_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 69.521682739257813 0.8 69.521682739257813
		 1.6 69.521682739257813 2.4 69.521682739257813 3.2 69.521690368652344 4 69.521682739257813
		 4.8 69.521690368652344 5.6 69.521690368652344 6.4 69.521690368652344 7.2 69.521682739257813
		 8 69.521690368652344 8.8 69.521682739257813 9.6 69.521690368652344 10.4 69.521682739257813
		 11.2 69.521690368652344 12 69.521682739257813 12.8 69.521690368652344 13.6 69.521690368652344
		 14.4 69.521690368652344 15.2 69.521690368652344 16 69.521690368652344 16.8 69.521690368652344
		 17.6 69.521682739257813 18.4 69.521690368652344 19.2 69.521690368652344 20 69.521690368652344
		 20.8 69.521690368652344 21.6 69.521690368652344 22.4 69.521682739257813 23.2 69.521690368652344
		 24 69.521682739257813 24.8 69.521690368652344;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Clavicle_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 87.192390441894531 0.8 87.192390441894531
		 1.6 87.192390441894531 2.4 87.192390441894531 3.2 87.1923828125 4 87.192390441894531
		 4.8 87.192398071289063 5.6 87.192390441894531 6.4 87.192390441894531 7.2 87.192390441894531
		 8 87.192390441894531 8.8 87.1923828125 9.6 87.192390441894531 10.4 87.192390441894531
		 11.2 87.1923828125 12 87.1923828125 12.8 87.192390441894531 13.6 87.192390441894531
		 14.4 87.192390441894531 15.2 87.192390441894531 16 87.192390441894531 16.8 87.1923828125
		 17.6 87.192390441894531 18.4 87.192390441894531 19.2 87.192390441894531 20 87.192390441894531
		 20.8 87.192390441894531 21.6 87.192390441894531 22.4 87.192390441894531 23.2 87.192390441894531
		 24 87.192390441894531 24.8 87.192390441894531;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032UpperArm_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.15029531717300415 0.8 0.15029540657997131
		 1.6 0.15029539167881012 2.4 0.15029530227184296 3.2 0.15029533207416534 4 0.15029536187648773
		 4.8 0.15029540657997131 5.6 0.15029536187648773 6.4 0.15029536187648773 7.2 0.15029537677764893
		 8 0.15029527246952057 8.8 0.15029536187648773 9.6 0.15029531717300415 10.4 0.15029533207416534
		 11.2 0.15029536187648773 12 0.15029530227184296 12.8 0.15029539167881012 13.6 0.15029534697532654
		 14.4 0.15029537677764893 15.2 0.15029531717300415 16 0.15029531717300415 16.8 0.15029533207416534
		 17.6 0.15029531717300415 18.4 0.15029540657997131 19.2 0.15029536187648773 20 0.15029536187648773
		 20.8 0.15029531717300415 21.6 0.15029542148113251 22.4 0.15029537677764893 23.2 0.15029531717300415
		 24 0.15029533207416534 24.8 0.15029534697532654;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032UpperArm_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 5.9604644775390625e-008 0.8 -1.1920928955078125e-007
		 1.6 -5.9604644775390625e-008 2.4 5.9604644775390625e-008 3.2 5.9604644775390625e-008
		 4 0 4.8 -1.1920928955078125e-007 5.6 0 6.4 -5.9604644775390625e-008 7.2 -1.1920928955078125e-007
		 8 5.9604644775390625e-008 8.8 0 9.6 5.9604644775390625e-008 10.4 0 11.2 0 12 5.9604644775390625e-008
		 12.8 -5.9604644775390625e-008 13.6 5.9604644775390625e-008 14.4 -5.9604644775390625e-008
		 15.2 0 16 0 16.8 5.9604644775390625e-008 17.6 5.9604644775390625e-008 18.4 -5.9604644775390625e-008
		 19.2 0 20 -5.9604644775390625e-008 20.8 5.9604644775390625e-008 21.6 -1.7881393432617188e-007
		 22.4 -5.9604644775390625e-008 23.2 1.7881393432617188e-007 24 1.7881393432617188e-007
		 24.8 5.9604644775390625e-008;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032UpperArm_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 -1.1920928955078125e-007 1.6 -1.1920928955078125e-007
		 2.4 0 3.2 5.9604644775390625e-008 4 5.9604644775390625e-008 4.8 -5.9604644775390625e-008
		 5.6 0 6.4 1.1920928955078125e-007 7.2 -1.1920928955078125e-007 8 1.1920928955078125e-007
		 8.8 -1.1920928955078125e-007 9.6 0 10.4 0 11.2 0 12 1.1920928955078125e-007 12.8 -2.384185791015625e-007
		 13.6 0 14.4 -1.1920928955078125e-007 15.2 1.1920928955078125e-007 16 5.9604644775390625e-008
		 16.8 1.1920928955078125e-007 17.6 0 18.4 -1.1920928955078125e-007 19.2 0 20 0 20.8 0
		 21.6 0 22.4 0 23.2 1.1920928955078125e-007 24 1.1920928955078125e-007 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032UpperArm_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000002384185791 1.6 1.0000002384185791
		 2.4 1 3.2 0.99999988079071045 4 1 4.8 1.0000002384185791 5.6 1.0000001192092896 6.4 0.99999994039535522
		 7.2 0.99999982118606567 8 1.0000001192092896 8.8 0.99999982118606567 9.6 0.99999988079071045
		 10.4 1 11.2 1 12 1 12.8 1.0000001192092896 13.6 1 14.4 1.0000002384185791 15.2 1.0000001192092896
		 16 0.9999997615814209 16.8 1.0000001192092896 17.6 1.0000001192092896 18.4 1.0000001192092896
		 19.2 1 20 1 20.8 1.0000001192092896 21.6 1.0000001192092896 22.4 1.0000001192092896
		 23.2 1.0000002384185791 24 1.0000001192092896 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032UpperArm_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999982118606567 0.8 1.0000001192092896
		 1.6 1.0000001192092896 2.4 1.0000001192092896 3.2 1 4 1.0000001192092896 4.8 0.99999994039535522
		 5.6 1 6.4 1 7.2 0.99999982118606567 8 1 8.8 0.9999997615814209 9.6 0.99999988079071045
		 10.4 0.99999994039535522 11.2 0.99999994039535522 12 1.0000001192092896 12.8 1.0000001192092896
		 13.6 1.0000001192092896 14.4 1.0000001192092896 15.2 1 16 0.99999988079071045 16.8 1
		 17.6 0.99999994039535522 18.4 1.0000001192092896 19.2 1 20 0.99999994039535522 20.8 0.99999994039535522
		 21.6 0.99999994039535522 22.4 1.0000001192092896 23.2 1.0000001192092896 24 1 24.8 0.99999982118606567;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032UpperArm_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000002384185791 1.6 1.0000001192092896
		 2.4 1.0000001192092896 3.2 0.99999994039535522 4 1.0000002384185791 4.8 1.0000001192092896
		 5.6 1.0000001192092896 6.4 1.0000001192092896 7.2 0.9999997615814209 8 1.0000001192092896
		 8.8 1 9.6 0.99999982118606567 10.4 1 11.2 1 12 1 12.8 1 13.6 1.0000001192092896 14.4 1.0000002384185791
		 15.2 1.0000001192092896 16 0.99999988079071045 16.8 1.0000001192092896 17.6 1.0000001192092896
		 18.4 1.0000001192092896 19.2 1 20 0.99999994039535522 20.8 1.0000001192092896 21.6 1
		 22.4 1.0000002384185791 23.2 1.0000001192092896 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032UpperArm_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -14.97248649597168 0.8 -14.852727890014647
		 1.6 -14.681706428527832 2.4 -14.501057624816893 3.2 -14.304319381713867 4 -14.082588195800781
		 4.8 -13.845245361328125 5.6 -13.613035202026367 6.4 -13.38461971282959 7.2 -13.160903930664063
		 8 -12.964967727661133 8.8 -12.795860290527344 9.6 -12.653583526611328 10.4 -12.562143325805664
		 11.2 -12.528400421142578 12 -12.545103073120117 12.8 -12.615184783935547 13.6 -12.749905586242676
		 14.4 -12.939726829528809 15.2 -13.156328201293945 16 -13.40061092376709 16.8 -13.672724723815918
		 17.6 -13.941271781921387 18.4 -14.205700874328613 19.2 -14.465722084045408 20 -14.688097953796388
		 20.8 -14.866545677185059 21.6 -15.005591392517088 22.4 -15.087457656860352 23.2 -15.086952209472656
		 24 -15.029479026794435 24.8 -14.972477912902832;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032UpperArm_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -70.859298706054688 0.8 -70.899925231933594
		 1.6 -70.953407287597656 2.4 -71.009658813476562 3.2 -71.0692138671875 4 -71.134239196777344
		 4.8 -71.20263671875 5.6 -71.268417358398438 6.4 -71.331459045410156 7.2 -71.391799926757812
		 8 -71.443534851074219 8.8 -71.48681640625 9.6 -71.521354675292969 10.4 -71.540458679199219
		 11.2 -71.542167663574219 12 -71.528419494628906 12.8 -71.49847412109375 13.6 -71.448928833007812
		 14.4 -71.383468627929688 15.2 -71.311843872070313 16 -71.233985900878906 16.8 -71.150138854980469
		 17.6 -71.070266723632813 18.4 -70.994300842285156 19.2 -70.922172546386719 20 -70.863594055175781
		 20.8 -70.819869995117187 21.6 -70.789436340332031 22.4 -70.777603149414063 23.2 -70.792350769042969
		 24 -70.825782775878906 24.8 -70.859306335449219;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032UpperArm_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 14.087612152099609 0.8 14.063555717468262
		 1.6 14.020321846008301 2.4 13.974162101745605 3.2 13.920607566833496 4 13.856212615966797
		 4.8 13.784980773925781 5.6 13.71326732635498 6.4 13.639662742614746 7.2 13.564984321594238
		 8 13.497616767883301 8.8 13.436993598937988 9.6 13.382465362548828 10.4 13.34161376953125
		 11.2 13.316404342651367 12 13.304420471191406 12.8 13.306598663330078 13.6 13.325977325439453
		 14.4 13.36153507232666 15.2 13.408012390136719 16 13.466091156005859 16.8 13.536396026611328
		 17.6 13.611401557922363 18.4 13.690629005432129 19.2 13.773649215698242 20 13.850796699523926
		 20.8 13.919258117675781 21.6 13.979791641235352 22.4 14.027387619018555 23.2 14.055784225463867
		 24 14.071390151977539 24.8 14.087594032287598;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Forearm_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.26571738719940186 0.8 0.26571732759475708
		 1.6 0.26571738719940186 2.4 0.26571732759475708 3.2 0.26571732759475708 4 0.26571738719940186
		 4.8 0.26571732759475708 5.6 0.26571738719940186 6.4 0.2657172679901123 7.2 0.26571738719940186
		 8 0.26571732759475708 8.8 0.26571738719940186 9.6 0.26571744680404663 10.4 0.26571738719940186
		 11.2 0.26571732759475708 12 0.26571738719940186 12.8 0.26571738719940186 13.6 0.2657172679901123
		 14.4 0.26571732759475708 15.2 0.2657172679901123 16 0.26571738719940186 16.8 0.26571732759475708
		 17.6 0.2657172679901123 18.4 0.26571738719940186 19.2 0.26571732759475708 20 0.26571738719940186
		 20.8 0.26571744680404663 21.6 0.26571732759475708 22.4 0.26571738719940186 23.2 0.26571744680404663
		 24 0.26571738719940186 24.8 0.26571744680404663;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Forearm_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -5.9604644775390625e-008 0.8 0 1.6 1.1920928955078125e-007
		 2.4 0 3.2 5.9604644775390625e-008 4 1.1920928955078125e-007 4.8 5.9604644775390625e-008
		 5.6 5.9604644775390625e-008 6.4 5.9604644775390625e-008 7.2 0 8 -5.9604644775390625e-008
		 8.8 -1.1920928955078125e-007 9.6 5.9604644775390625e-008 10.4 0 11.2 -5.9604644775390625e-008
		 12 0 12.8 0 13.6 0 14.4 5.9604644775390625e-008 15.2 1.1920928955078125e-007 16 5.9604644775390625e-008
		 16.8 0 17.6 0 18.4 5.9604644775390625e-008 19.2 -5.9604644775390625e-008 20 -5.9604644775390625e-008
		 20.8 0 21.6 -5.9604644775390625e-008 22.4 0 23.2 0 24 -5.9604644775390625e-008 24.8 -5.9604644775390625e-008;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Forearm_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 -2.9802322387695313e-008 1.6 2.9802322387695313e-008
		 2.4 2.9802322387695313e-008 3.2 0 4 0 4.8 0 5.6 0 6.4 0 7.2 -2.9802322387695313e-008
		 8 -2.9802322387695313e-008 8.8 -2.9802322387695313e-008 9.6 0 10.4 -2.9802322387695313e-008
		 11.2 -5.9604644775390625e-008 12 0 12.8 0 13.6 -2.9802322387695313e-008 14.4 2.9802322387695313e-008
		 15.2 0 16 2.9802322387695313e-008 16.8 -2.9802322387695313e-008 17.6 -2.9802322387695313e-008
		 18.4 2.9802322387695313e-008 19.2 0 20 -5.9604644775390625e-008 20.8 5.9604644775390625e-008
		 21.6 -2.9802322387695313e-008 22.4 0 23.2 0 24 -2.9802322387695313e-008 24.8 2.9802322387695313e-008;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Forearm_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 1 1.6 0.99999994039535522
		 2.4 0.99999988079071045 3.2 1.0000001192092896 4 1.0000001192092896 4.8 1 5.6 1 6.4 1
		 7.2 1.0000001192092896 8 0.99999994039535522 8.8 1.0000001192092896 9.6 1.0000001192092896
		 10.4 0.99999982118606567 11.2 0.99999982118606567 12 1 12.8 1 13.6 0.99999994039535522
		 14.4 0.99999994039535522 15.2 0.99999994039535522 16 1 16.8 1 17.6 0.99999988079071045
		 18.4 1 19.2 1 20 1 20.8 0.99999988079071045 21.6 0.99999994039535522 22.4 0.99999988079071045
		 23.2 0.99999988079071045 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Forearm_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 0.99999994039535522 1.6 1.0000001192092896
		 2.4 0.99999994039535522 3.2 1 4 1 4.8 1 5.6 1.0000001192092896 6.4 1 7.2 1.0000001192092896
		 8 1.0000001192092896 8.8 1.0000002384185791 9.6 1.0000001192092896 10.4 0.99999994039535522
		 11.2 1.0000001192092896 12 1.0000001192092896 12.8 1 13.6 1 14.4 1 15.2 0.99999988079071045
		 16 1.0000001192092896 16.8 1 17.6 0.99999982118606567 18.4 1 19.2 1.0000001192092896
		 20 1.0000001192092896 20.8 0.99999994039535522 21.6 1.0000001192092896 22.4 1 23.2 1
		 24 0.99999994039535522 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Forearm_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1.0000001192092896
		 4 1 4.8 1 5.6 1 6.4 0.99999994039535522 7.2 1 8 1 8.8 1 9.6 1 10.4 1 11.2 1 12 1.0000001192092896
		 12.8 1 13.6 1 14.4 0.99999994039535522 15.2 1 16 1 16.8 0.99999994039535522 17.6 1
		 18.4 1 19.2 1.0000001192092896 20 1 20.8 1 21.6 1.0000001192092896 22.4 0.99999994039535522
		 23.2 1 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Forearm_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 2.13443399843527e-007 0.8 -2.5613210254959995e-006
		 1.6 -1.707547198748216e-006 2.4 3.415094852243783e-006 3.2 1.0672171129044727e-006
		 4 0 4.8 1.0672171129044727e-006 5.6 8.5377354253068916e-007 6.4 6.4033025637399987e-007
		 7.2 4.2688677126534458e-007 8 -8.5377354253068916e-007 8.8 -2.1344337710615946e-006
		 9.6 2.13443399843527e-007 10.4 0 11.2 0 12 1.280660399061162e-006 12.8 -1.920990598591743e-006
		 13.6 8.5377359937410802e-007 14.4 8.5377365621752688e-007 15.2 -1.0672172265913105e-006
		 16 1.707547198748216e-006 16.8 1.707547198748216e-006 17.6 -8.5377376990436449e-007
		 18.4 1.920990598591743e-006 19.2 1.707547198748216e-006 20 8.5377354253068916e-007
		 20.8 2.1344342826523643e-007 21.6 1.4941036852178513e-006 22.4 8.5377359937410802e-007
		 23.2 1.920990598591743e-006 24 8.5377365621752688e-007 24.8 2.13443399843527e-007;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Forearm_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -4.6857503548380919e-006 0.8 -1.2406399036990479e-006
		 1.6 -1.9209908259654185e-006 2.4 -2.367888100707205e-006 3.2 -6.2031983816268621e-007
		 4 -5.3260796448739711e-006 4.8 -3.2283314794767648e-006 5.6 1.0005160220316611e-006
		 6.4 -3.1382851375383325e-006 7.2 -4.7858011384960264e-006 8 -1.62750609433715e-006
		 8.8 -3.6685582927020732e-006 9.6 -4.4189450818521436e-006 10.4 -2.1811251826875377e-006
		 11.2 -6.3399374994332902e-006 12 -3.5718419439945133e-006 12.8 -3.29836757373414e-006
		 13.6 -3.3950846045627259e-006 14.4 -9.6716553343867417e-007 15.2 1.387382326356601e-006
		 16 5.6695904504522332e-007 16.8 1.4740935512236319e-006 17.6 -2.9481875571946148e-006
		 18.4 -5.3761059461976402e-006 19.2 -1.6942069578362862e-006 20 1.3340213911305909e-007
		 20.8 3.0682494411848893e-007 21.6 -2.3345373847405426e-006 22.4 6.536705541293486e-007
		 23.2 -2.6413624709675787e-006 24 -2.7113983378512785e-006 24.8 6.1031471432215767e-007;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Forearm_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -132.86531066894531 0.8 -132.85835266113281
		 1.6 -132.85054016113281 2.4 -132.84269714355469 3.2 -132.83750915527344 4 -132.83540344238281
		 4.8 -132.83592224121094 5.6 -132.84060668945312 6.4 -132.85050964355469 7.2 -132.86454772949219
		 8 -132.88095092773437 8.8 -132.89970397949219 9.6 -132.92083740234375 10.4 -132.94256591796875
		 11.2 -132.96487426757812 12 -132.98777770996094 12.8 -133.00949096679687 13.6 -133.03004455566406
		 14.4 -133.04937744140625 15.2 -133.06578063964844 16 -133.07923889160156 16.8 -133.0897216796875
		 17.6 -133.09547424316406 18.4 -133.09649658203125 19.2 -133.09280395507812 20 -133.08261108398437
		 20.8 -133.06590270996094 21.6 -133.04269409179687 22.4 -133.01119995117187 23.2 -132.96809387207031
		 24 -132.91670227050781 24.8 -132.86531066894531;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Hand_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.26571741700172424 0.8 0.26571729779243469
		 1.6 0.26571744680404663 2.4 0.26571744680404663 3.2 0.26571741700172424 4 0.26571747660636902
		 4.8 0.26571738719940186 5.6 0.26571744680404663 6.4 0.26571744680404663 7.2 0.26571744680404663
		 8 0.26571738719940186 8.8 0.26571741700172424 9.6 0.26571729779243469 10.4 0.26571738719940186
		 11.2 0.26571738719940186 12 0.26571732759475708 12.8 0.2657172679901123 13.6 0.2657172679901123
		 14.4 0.26571741700172424 15.2 0.26571732759475708 16 0.26571753621101379 16.8 0.26571741700172424
		 17.6 0.26571738719940186 18.4 0.26571744680404663 19.2 0.26571732759475708 20 0.26571732759475708
		 20.8 0.26571744680404663 21.6 0.26571738719940186 22.4 0.26571750640869141 23.2 0.26571744680404663
		 24 0.26571738719940186 24.8 0.26571738719940186;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Hand_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 1.1920928955078125e-007 1.6 5.9604644775390625e-008
		 2.4 5.9604644775390625e-008 3.2 5.9604644775390625e-008 4 0 4.8 0 5.6 5.9604644775390625e-008
		 6.4 0 7.2 0 8 5.9604644775390625e-008 8.8 0 9.6 -1.1920928955078125e-007 10.4 0 11.2 0
		 12 -1.1920928955078125e-007 12.8 1.1920928955078125e-007 13.6 1.7881393432617188e-007
		 14.4 1.1920928955078125e-007 15.2 5.9604644775390625e-008 16 5.9604644775390625e-008
		 16.8 5.9604644775390625e-008 17.6 5.9604644775390625e-008 18.4 1.1920928955078125e-007
		 19.2 5.9604644775390625e-008 20 -1.1920928955078125e-007 20.8 0 21.6 0 22.4 0 23.2 -1.1920928955078125e-007
		 24 -1.1920928955078125e-007 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Hand_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 5.9604644775390625e-008 1.6 -2.9802322387695313e-008
		 2.4 -5.9604644775390625e-008 3.2 0 4 -5.9604644775390625e-008 4.8 0 5.6 0 6.4 -2.9802322387695313e-008
		 7.2 0 8 0 8.8 -2.9802322387695313e-008 9.6 2.9802322387695313e-008 10.4 0 11.2 -2.9802322387695313e-008
		 12 2.9802322387695313e-008 12.8 0 13.6 2.9802322387695313e-008 14.4 -2.9802322387695313e-008
		 15.2 0 16 -5.9604644775390625e-008 16.8 0 17.6 0 18.4 -5.9604644775390625e-008 19.2 2.9802322387695313e-008
		 20 2.9802322387695313e-008 20.8 -8.9406967163085938e-008 21.6 0 22.4 -2.9802322387695313e-008
		 23.2 0 24 0 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Hand_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1.0000001192092896
		 2.4 1.0000001192092896 3.2 1 4 0.99999994039535522 4.8 1 5.6 0.99999994039535522
		 6.4 1.0000001192092896 7.2 1.0000001192092896 8 1 8.8 1.0000001192092896 9.6 1 10.4 1
		 11.2 0.99999994039535522 12 1 12.8 0.99999994039535522 13.6 1.0000001192092896 14.4 1
		 15.2 1 16 1 16.8 1 17.6 1 18.4 1 19.2 0.99999994039535522 20 0.99999994039535522
		 20.8 1 21.6 1 22.4 1 23.2 0.99999994039535522 24 0.99999994039535522 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Hand_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1.0000001192092896 2.4 1.0000001192092896
		 3.2 1.0000001192092896 4 1 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 1.0000001192092896
		 8 1 8.8 1.0000001192092896 9.6 1.0000001192092896 10.4 1 11.2 1.0000001192092896
		 12 1.0000001192092896 12.8 0.99999994039535522 13.6 1.0000001192092896 14.4 1 15.2 1
		 16 1 16.8 1 17.6 0.99999994039535522 18.4 1 19.2 1 20 1 20.8 1.0000001192092896 21.6 1.0000001192092896
		 22.4 1 23.2 1.0000001192092896 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Hand_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1 2.4 1.0000001192092896 3.2 1.0000001192092896 4 0.99999994039535522 4.8 1 5.6 0.99999994039535522
		 6.4 1.0000001192092896 7.2 1.0000001192092896 8 0.99999994039535522 8.8 1.0000001192092896
		 9.6 1.0000001192092896 10.4 1 11.2 1.0000001192092896 12 0.99999994039535522 12.8 1
		 13.6 1.0000001192092896 14.4 1.0000001192092896 15.2 1 16 0.99999994039535522 16.8 1.0000001192092896
		 17.6 1 18.4 1 19.2 0.99999988079071045 20 1 20.8 1.0000001192092896 21.6 1.0000001192092896
		 22.4 1.0000001192092896 23.2 1.0000001192092896 24 0.99999994039535522 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Hand_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 89.954376220703125 0.8 89.954376220703125
		 1.6 89.954376220703125 2.4 89.954376220703125 3.2 89.954376220703125 4 89.954376220703125
		 4.8 89.954376220703125 5.6 89.954376220703125 6.4 89.954376220703125 7.2 89.954376220703125
		 8 89.954376220703125 8.8 89.954376220703125 9.6 89.954376220703125 10.4 89.954376220703125
		 11.2 89.954376220703125 12 89.954376220703125 12.8 89.954376220703125 13.6 89.954376220703125
		 14.4 89.954376220703125 15.2 89.954376220703125 16 89.954376220703125 16.8 89.954376220703125
		 17.6 89.954376220703125 18.4 89.954376220703125 19.2 89.954376220703125 20 89.954376220703125
		 20.8 89.954376220703125 21.6 89.954376220703125 22.4 89.954376220703125 23.2 89.954376220703125
		 24 89.954376220703125 24.8 89.954376220703125;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Hand_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -12.084281921386719 0.8 -11.934963226318359
		 1.6 -11.803753852844238 2.4 -11.677002906799316 3.2 -11.567230224609375 4 -11.478628158569336
		 4.8 -11.406986236572266 5.6 -11.35225772857666 6.4 -11.315723419189453 7.2 -11.296106338500977
		 8 -11.289375305175781 8.8 -11.295555114746094 9.6 -11.314628601074219 10.4 -11.342611312866211
		 11.2 -11.379484176635742 12 -11.425260543823242 12.8 -11.475942611694336 13.6 -11.531522750854492
		 14.4 -11.592005729675293 15.2 -11.653384208679199 16 -11.715671539306641 16.8 -11.778854370117188
		 17.6 -11.838940620422363 18.4 -11.895926475524902 19.2 -11.949811935424805 20 -11.99660587310791
		 20.8 -12.036296844482422 21.6 -12.068889617919922 22.4 -12.090383529663086 23.2 -12.095756530761719
		 24 -12.090018272399902 24.8 -12.084278106689453;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Hand_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.1828033425208557e-007 0.8 -2.1815937145674982e-007
		 1.6 0 2.4 -2.1795415250380756e-007 3.2 0 4 0 4.8 -2.1774449976419416e-007 5.6 -1.0885133150395632e-007
		 6.4 0 7.2 0 8 -1.0882740753004329e-007 8.8 0 9.6 1.0883699275154868e-007 10.4 -2.1769528757431544e-007
		 11.2 0 12 -1.0887926293889905e-007 12.8 1.0889878154785036e-007 13.6 -1.0892026836017976e-007
		 14.4 -2.1788760307117627e-007 15.2 -1.0896781077462946e-007 16 -1.0899230318273112e-007
		 16.8 -2.1803461436320501e-007 17.6 -2.1808240546761229e-007 18.4 1.0906399694476931e-007
		 19.2 -1.0908566849821e-007 20 -1.0910456893498123e-007 20.8 0 21.6 -1.0913390013911339e-007
		 22.4 1.0914266113104533e-007 23.2 -3.274345772297238e-007 24 -1.0914251902249816e-007
		 24.8 -1.0914016712604278e-007;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Finger0_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.11071556806564331 0.8 0.11071565002202988
		 1.6 0.11071565747261047 2.4 0.11071547120809555 3.2 0.11071556806564331 4 0.11071557551622391
		 4.8 0.1107155829668045 5.6 0.1107155978679657 6.4 0.11071550846099854 7.2 0.11071549355983734
		 8 0.11071545630693436 8.8 0.11071564257144928 9.6 0.1107155978679657 10.4 0.11071552336215973
		 11.2 0.11071564257144928 12 0.11071556806564331 12.8 0.11071551591157913 13.6 0.11071547865867615
		 14.4 0.11071547865867615 15.2 0.11071561276912689 16 0.11071564257144928 16.8 0.11071550846099854
		 17.6 0.11071552336215973 18.4 0.1107156053185463 19.2 0.1107155829668045 20 0.11071565002202988
		 20.8 0.11071556061506271 21.6 0.11071553826332092 22.4 0.1107155829668045 23.2 0.11071561276912689
		 24 0.11071561276912689 24.8 0.11071550846099854;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Finger0_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 2.9802322387695313e-008 0.8 -8.9406967163085938e-008
		 1.6 -5.9604644775390625e-008 2.4 5.9604644775390625e-008 3.2 0 4 0 4.8 -2.9802322387695313e-008
		 5.6 -5.9604644775390625e-008 6.4 8.9406967163085938e-008 7.2 5.9604644775390625e-008
		 8 8.9406967163085938e-008 8.8 -5.9604644775390625e-008 9.6 -2.9802322387695313e-008
		 10.4 5.9604644775390625e-008 11.2 -8.9406967163085938e-008 12 -2.9802322387695313e-008
		 12.8 2.9802322387695313e-008 13.6 5.9604644775390625e-008 14.4 2.9802322387695313e-008
		 15.2 -5.9604644775390625e-008 16 -5.9604644775390625e-008 16.8 2.9802322387695313e-008
		 17.6 2.9802322387695313e-008 18.4 -2.9802322387695313e-008 19.2 -5.9604644775390625e-008
		 20 -8.9406967163085938e-008 20.8 0 21.6 2.9802322387695313e-008 22.4 -2.9802322387695313e-008
		 23.2 -5.9604644775390625e-008 24 -5.9604644775390625e-008 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Finger0_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 5.9604644775390625e-008 1.6 -5.9604644775390625e-008
		 2.4 -5.9604644775390625e-008 3.2 0 4 0 4.8 0 5.6 0 6.4 0 7.2 0 8 5.9604644775390625e-008
		 8.8 0 9.6 0 10.4 0 11.2 0 12 -1.1920928955078125e-007 12.8 0 13.6 0 14.4 5.9604644775390625e-008
		 15.2 0 16 5.9604644775390625e-008 16.8 5.9604644775390625e-008 17.6 5.9604644775390625e-008
		 18.4 0 19.2 1.7881393432617188e-007 20 0 20.8 -1.1920928955078125e-007 21.6 0 22.4 -1.1920928955078125e-007
		 23.2 -1.1920928955078125e-007 24 1.1920928955078125e-007 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Finger0_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1 2.4 0.99999994039535522
		 3.2 1 4 0.99999994039535522 4.8 1 5.6 0.99999994039535522 6.4 1 7.2 0.99999988079071045
		 8 0.99999988079071045 8.8 1.0000001192092896 9.6 1 10.4 1.0000001192092896 11.2 0.99999994039535522
		 12 1 12.8 1 13.6 1 14.4 0.99999988079071045 15.2 1.0000001192092896 16 1.0000001192092896
		 16.8 1 17.6 0.99999994039535522 18.4 0.99999994039535522 19.2 1 20 1.0000001192092896
		 20.8 1.0000001192092896 21.6 1.0000001192092896 22.4 1.0000001192092896 23.2 0.99999994039535522
		 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Finger0_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 1 1.6 1 2.4 0.99999994039535522
		 3.2 1 4 1 4.8 0.99999994039535522 5.6 0.99999988079071045 6.4 0.99999988079071045
		 7.2 0.99999994039535522 8 0.99999988079071045 8.8 1 9.6 1.0000001192092896 10.4 1.0000001192092896
		 11.2 0.99999994039535522 12 0.99999988079071045 12.8 0.99999994039535522 13.6 0.99999982118606567
		 14.4 0.99999982118606567 15.2 0.99999994039535522 16 1.0000001192092896 16.8 0.99999994039535522
		 17.6 0.99999988079071045 18.4 1 19.2 1 20 1.0000001192092896 20.8 0.99999994039535522
		 21.6 1 22.4 1.0000001192092896 23.2 0.99999994039535522 24 0.99999988079071045 24.8 0.99999988079071045;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Finger0_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 1.0000001192092896
		 1.6 0.99999994039535522 2.4 0.99999994039535522 3.2 1.0000001192092896 4 0.99999994039535522
		 4.8 0.99999994039535522 5.6 0.99999982118606567 6.4 0.99999988079071045 7.2 0.99999988079071045
		 8 0.99999994039535522 8.8 1.0000001192092896 9.6 1.0000001192092896 10.4 1 11.2 0.99999994039535522
		 12 0.99999994039535522 12.8 1 13.6 0.99999988079071045 14.4 0.99999988079071045 15.2 1
		 16 1.0000001192092896 16.8 0.99999994039535522 17.6 0.99999988079071045 18.4 1 19.2 1
		 20 1.0000001192092896 20.8 1 21.6 1 22.4 1.0000001192092896 23.2 0.99999994039535522
		 24 0.99999994039535522 24.8 0.99999994039535522;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Finger0_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.045625671744346619 0.8 0.045625455677509308
		 1.6 0.04562566801905632 2.4 0.045625671744346619 3.2 0.045625455677509308 4 0.04562566801905632
		 4.8 0.045625884085893631 5.6 0.045625887811183929 6.4 0.045625671744346619 7.2 0.045625671744346619
		 8 0.045625671744346619 8.8 0.04562566801905632 9.6 0.045625876635313034 10.4 0.045625664293766022
		 11.2 0.045625671744346619 12 0.045625671744346619 12.8 0.045625671744346619 13.6 0.045625675469636917
		 14.4 0.045625675469636917 15.2 0.045625455677509308 16 0.045625664293766022 16.8 0.045625671744346619
		 17.6 0.045625671744346619 18.4 0.045625880360603333 19.2 0.04562566801905632 20 0.045625664293766022
		 20.8 0.045625455677509308 21.6 0.04562566801905632 22.4 0.045625876635313034 23.2 0.045625671744346619
		 24 0.045625887811183929 24.8 0.045625671744346619;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Finger0_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.0672170702719086e-007 0.8 0 1.6 -1.0672170702719086e-007
		 2.4 1.0672171413261822e-007 3.2 0 4 0 4.8 0 5.6 1.0672171413261822e-007 6.4 0 7.2 -1.0672172123804556e-007
		 8 -1.0672172123804556e-007 8.8 -1.0672169281633614e-007 9.6 -2.1344341405438172e-007
		 10.4 1.0672169281633614e-007 11.2 0 12 0 12.8 2.1344341405438172e-007 13.6 -2.1344341405438172e-007
		 14.4 0 15.2 0 16 0 16.8 0 17.6 -1.0672171413261822e-007 18.4 0 19.2 0 20 -1.0672169281633614e-007
		 20.8 0 21.6 0 22.4 1.0672169281633614e-007 23.2 1.0672171413261822e-007 24 -2.1344341405438172e-007
		 24.8 1.0672170702719086e-007;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Finger0_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 4.5957035581523087e-006 0.8 -1.2773252819897607e-006
		 1.6 -2.0577278974087676e-006 2.4 1.4674235444545047e-006 3.2 6.2365495523408754e-007
		 4 -1.0171912663281546e-006 4.8 1.2573151479955413e-006 5.6 -1.8676300328479556e-007
		 6.4 -9.4048505161481444e-007 7.2 -2.5379758881172165e-006 8 1.2973358707313309e-006
		 8.8 3.985388048022287e-006 9.6 2.5813312731770566e-006 10.4 3.3350528383380151e-007
		 11.2 -8.6377883690147428e-007 12 -2.8381302854540991e-006 12.8 1.0305315072400845e-006
		 13.6 -7.9707774602866266e-007 14.4 -3.4751260500343047e-006 15.2 3.4351043609603948e-007
		 16 5.0359301440039417e-007 16.8 4.5023219286122179e-007 17.6 1.2673203855229076e-006
		 18.4 -8.370984119210334e-007 19.2 1.5341245784838975e-007 20 3.5851819575327681e-006
		 20.8 2.6013412934844382e-007 21.6 -3.0015474550282306e-008 22.4 -6.2365489839066868e-007
		 23.2 2.7714295356418006e-006 24 1.2039542980346596e-006 24.8 -7.7039732104822178e-007;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Finger0Nub_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.027678906917572021 0.8 0.027678951621055603
		 1.6 0.02767886221408844 2.4 0.027678802609443665 3.2 0.027678921818733215 4 0.027678906917572021
		 4.8 0.027678921818733215 5.6 0.027678892016410828 6.4 0.027678921818733215 7.2 0.027678817510604858
		 8 0.027678906917572021 8.8 0.027678832411766052 9.6 0.027678906917572021 10.4 0.027678877115249634
		 11.2 0.027678847312927246 12 0.027678936719894409 12.8 0.02767886221408844 13.6 0.027678832411766052
		 14.4 0.027678906917572021 15.2 0.027678951621055603 16 0.027678936719894409 16.8 0.027678921818733215
		 17.6 0.027678981423377991 18.4 0.027678936719894409 19.2 0.027678892016410828 20 0.02767886221408844
		 20.8 0.027678966522216797 21.6 0.027678892016410828 22.4 0.02767886221408844 23.2 0.027678877115249634
		 24 0.027678921818733215 24.8 0.027678906917572021;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Finger0Nub_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 -2.9802322387695313e-008 1.6 0 2.4 8.9406967163085938e-008
		 3.2 -2.9802322387695313e-008 4 0 4.8 -5.9604644775390625e-008 5.6 -5.9604644775390625e-008
		 6.4 0 7.2 5.9604644775390625e-008 8 -2.9802322387695313e-008 8.8 5.9604644775390625e-008
		 9.6 0 10.4 0 11.2 2.9802322387695313e-008 12 -2.9802322387695313e-008 12.8 2.9802322387695313e-008
		 13.6 2.9802322387695313e-008 14.4 -2.9802322387695313e-008 15.2 -2.9802322387695313e-008
		 16 -2.9802322387695313e-008 16.8 -2.9802322387695313e-008 17.6 -8.9406967163085938e-008
		 18.4 0 19.2 0 20 0 20.8 -8.9406967163085938e-008 21.6 0 22.4 5.9604644775390625e-008
		 23.2 2.9802322387695313e-008 24 -2.9802322387695313e-008 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Finger0Nub_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.1920928955078125e-007 0.8 -1.1920928955078125e-007
		 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 0 6.4 0 7.2 -5.9604644775390625e-008 8 0 8.8 0 9.6 0
		 10.4 0 11.2 0 12 0 12.8 0 13.6 5.9604644775390625e-008 14.4 -5.9604644775390625e-008
		 15.2 5.9604644775390625e-008 16 0 16.8 5.9604644775390625e-008 17.6 0 18.4 0 19.2 0
		 20 0 20.8 0 21.6 1.1920928955078125e-007 22.4 -1.1920928955078125e-007 23.2 0 24 0
		 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Finger0Nub_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1 0.8 -1.0000001192092896 1.6 -0.99999994039535522
		 2.4 -1.0000001192092896 3.2 -1 4 -1.0000001192092896 4.8 -1 5.6 -1 6.4 -1 7.2 -1
		 8 -0.99999994039535522 8.8 -0.99999994039535522 9.6 -1.0000001192092896 10.4 -1 11.2 -0.99999994039535522
		 12 -1 12.8 -1.0000001192092896 13.6 -1 14.4 -1.0000001192092896 15.2 -1 16 -1 16.8 -1
		 17.6 -0.99999994039535522 18.4 -0.99999994039535522 19.2 -1.0000001192092896 20 -1
		 20.8 -1.0000001192092896 21.6 -1 22.4 -1.0000001192092896 23.2 -1.0000001192092896
		 24 -1.0000001192092896 24.8 -1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Finger0Nub_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.99999994039535522 0.8 -1 1.6 -1 2.4 -1
		 3.2 -1 4 -1.0000001192092896 4.8 -1 5.6 -1.0000001192092896 6.4 -1 7.2 -1 8 -1 8.8 -1
		 9.6 -1.0000001192092896 10.4 -1 11.2 -0.99999988079071045 12 -1 12.8 -1 13.6 -1 14.4 -1.0000001192092896
		 15.2 -1.0000001192092896 16 -1 16.8 -1 17.6 -1 18.4 -1 19.2 -1.0000001192092896 20 -1
		 20.8 -1.0000001192092896 21.6 -1 22.4 -1.0000001192092896 23.2 -1.0000001192092896
		 24 -1 24.8 -1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Finger0Nub_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1 0.8 -0.99999994039535522 1.6 -0.99999994039535522
		 2.4 -1 3.2 -1.0000001192092896 4 -1.0000001192092896 4.8 -1 5.6 -1.0000001192092896
		 6.4 -1 7.2 -1 8 -1 8.8 -0.99999994039535522 9.6 -1.0000001192092896 10.4 -1 11.2 -0.99999994039535522
		 12 -1 12.8 -1.0000001192092896 13.6 -1 14.4 -1.0000001192092896 15.2 -1.0000001192092896
		 16 -1 16.8 -0.99999994039535522 17.6 -1 18.4 -1 19.2 -1.0000001192092896 20 -1 20.8 -1
		 21.6 -1 22.4 -1.0000001192092896 23.2 -1 24 -1 24.8 -1;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Finger0Nub_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 2.1344341405438172e-007
		 4 0 4.8 0 5.6 0 6.4 -2.1344341405438172e-007 7.2 0 8 0 8.8 0 9.6 0 10.4 0 11.2 0
		 12 -4.2688682810876344e-007 12.8 0 13.6 0 14.4 2.1344338563267229e-007 15.2 0 16 0
		 16.8 -2.1344341405438172e-007 17.6 0 18.4 2.1344341405438172e-007 19.2 2.1344338563267229e-007
		 20 0 20.8 2.1344338563267229e-007 21.6 0 22.4 0 23.2 0 24 0 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Finger0Nub_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 -1.0672169281633614e-007 1.6 0 2.4 -1.0672169281633614e-007
		 3.2 1.0672170702719086e-007 4 0 4.8 0 5.6 1.0672170702719086e-007 6.4 0 7.2 1.0672170702719086e-007
		 8 1.0672171413261822e-007 8.8 -1.0672171413261822e-007 9.6 0 10.4 1.0672170702719086e-007
		 11.2 -1.0672171413261822e-007 12 -1.0672170702719086e-007 12.8 1.0672169281633614e-007
		 13.6 0 14.4 1.0672169281633614e-007 15.2 1.0672170702719086e-007 16 0 16.8 -1.0672170702719086e-007
		 17.6 -2.1344342826523643e-007 18.4 -1.0672171413261822e-007 19.2 2.1344338563267229e-007
		 20 0 20.8 2.1344338563267229e-007 21.6 0 22.4 0 23.2 0 24 0 24.8 2.1344341405438172e-007;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Finger0Nub_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -180 0.8 -180 1.6 -180 2.4 -180 3.2 -180
		 4 -180 4.8 -180 5.6 -180 6.4 -180 7.2 -180 8 -180 8.8 -180 9.6 -180 10.4 -180 11.2 -180
		 12 -180 12.8 -180 13.6 -180 14.4 -180 15.2 -180 16 -180 16.8 -180 17.6 -180 18.4 -180
		 19.2 -180 20 -180 20.8 -180 21.6 -180 22.4 -180 23.2 -180 24 -180 24.8 -180;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Thigh_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.090926945209503174 0.8 -0.091771125793457031
		 1.6 -0.09284287691116333 2.4 -0.09395831823348999 3.2 -0.095124959945678711 4 -0.096380352973937988
		 4.8 -0.097684800624847412 5.6 -0.09893035888671875 6.4 -0.10011732578277588 7.2 -0.10124611854553223
		 8 -0.10221171379089355 8.8 -0.10302084684371948 9.6 -0.10366982221603394 10.4 -0.1040387749671936
		 11.2 -0.10409623384475708 12 -0.10387516021728516 12.8 -0.10335230827331543 13.6 -0.10245883464813232
		 14.4 -0.10125815868377686 15.2 -0.099926292896270752 16 -0.098458528518676758 16.8 -0.096856772899627686
		 17.6 -0.095311582088470459 18.4 -0.093824505805969238 19.2 -0.092396438121795654
		 20 -0.091222167015075684 20.8 -0.090332865715026855 21.6 -0.089701056480407715 22.4 -0.089433670043945313
		 23.2 -0.089688599109649658 24 -0.090307950973510742 24.8 -0.090926945209503174;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Thigh_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.028250128030776978 0.8 0.028553366661071777
		 1.6 0.028945237398147583 2.4 0.029355436563491821 3.2 0.029787600040435791 4 0.030256688594818115
		 4.8 0.030747950077056885 5.6 0.031219244003295898 6.4 0.031671047210693359 7.2 0.032103180885314941
		 8 0.032474100589752197 8.8 0.032785862684249878 9.6 0.033036559820175171 10.4 0.033179640769958496
		 11.2 0.033201932907104492 12 0.033116579055786133 12.8 0.032916009426116943 13.6 0.032574981451034546
		 14.4 0.032118409872055054 15.2 0.031613767147064209 16 0.031060189008712769 16.8 0.030458599328994751
		 17.6 0.029881060123443604 18.4 0.029327362775802612 19.2 0.028797715902328491 20 0.028363555669784546
		 20.8 0.028035640716552734 21.6 0.027802795171737671 22.4 0.027703940868377686 23.2 0.027796685695648193
		 24 0.028023242950439453 24.8 0.028250128030776978;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Thigh_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.091669656336307526 0.8 0.091322273015975952
		 1.6 0.090845800936222076 2.4 0.090329781174659729 3.2 0.089765146374702454 4 0.089127510786056519
		 4.8 0.088435113430023193 5.6 0.087748244404792786 6.4 0.087069503962993622 7.2 0.086401402950286865
		 8 0.085813775658607483 8.8 0.085310041904449463 9.6 0.084897875785827637 10.4 0.084659740328788757
		 11.2 0.084622502326965332 12 0.084764204919338226 12.8 0.08509276807308197 13.6 0.085641190409660339
		 14.4 0.086358159780502319 15.2 0.08712758868932724 16 0.087944388389587402 16.8 0.08879968523979187
		 17.6 0.089590035378932953 18.4 0.090319231152534485 19.2 0.09099087119102478 20 0.091522946953773499
		 20.8 0.09191422164440155 21.6 0.092186659574508667 22.4 0.092301934957504272 23.2 0.092197403311729431
		 24 0.091935895383358002 24.8 0.091669656336307526;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Thigh_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1.0000001192092896
		 2.4 1 3.2 1.0000001192092896 4 1 4.8 0.99999988079071045 5.6 1 6.4 1 7.2 0.99999994039535522
		 8 0.99999988079071045 8.8 0.99999988079071045 9.6 1 10.4 0.99999994039535522 11.2 0.99999994039535522
		 12 1 12.8 0.99999994039535522 13.6 1.0000001192092896 14.4 1.0000001192092896 15.2 1
		 16 1 16.8 1 17.6 1 18.4 0.99999988079071045 19.2 0.99999994039535522 20 1 20.8 0.99999994039535522
		 21.6 1 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Thigh_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1.0000001192092896 2.4 1 3.2 1 4 1.0000001192092896 4.8 1.0000001192092896 5.6 1.0000001192092896
		 6.4 1 7.2 1 8 1.0000001192092896 8.8 0.99999988079071045 9.6 1.0000001192092896 10.4 1
		 11.2 0.99999988079071045 12 1 12.8 1 13.6 1.0000001192092896 14.4 1.0000001192092896
		 15.2 1 16 1.0000001192092896 16.8 1.0000001192092896 17.6 1.0000001192092896 18.4 1.0000001192092896
		 19.2 0.99999994039535522 20 1.0000001192092896 20.8 0.99999994039535522 21.6 1.0000001192092896
		 22.4 1 23.2 1.0000001192092896 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Thigh_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1 2.4 1.0000001192092896
		 3.2 1 4 1 4.8 1 5.6 1 6.4 1 7.2 1.0000001192092896 8 1 8.8 1 9.6 1.0000001192092896
		 10.4 0.99999994039535522 11.2 1 12 1.0000001192092896 12.8 1.0000001192092896 13.6 1.0000001192092896
		 14.4 1.0000001192092896 15.2 1.0000001192092896 16 1 16.8 1 17.6 1.0000002384185791
		 18.4 0.99999994039535522 19.2 1 20 1 20.8 1.0000001192092896 21.6 1.0000001192092896
		 22.4 1.0000001192092896 23.2 1 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Thigh_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.9660949707031252 0.8 1.7534332275390625
		 1.6 1.5006256103515625 2.4 1.232147216796875 3.2 0.9091949462890625 4 0.50482177734375
		 4.8 0.05657958984375 5.6 -0.3692626953125 6.4 -0.7557830810546875 7.2 -1.0956878662109375
		 8 -1.3433990478515625 8.8 -1.492645263671875 9.6 -1.5460052490234375 10.4 -1.503509521484375
		 11.2 -1.389984130859375 12 -1.22381591796875 12.8 -1.0139007568359375 13.6 -0.7603759765625
		 14.4 -0.5121307373046875 15.2 -0.3187255859375 16 -0.1538543701171875 16.8 0.00885009765625
		 17.6 0.177154541015625 18.4 0.3884429931640625 19.2 0.677398681640625 20 1.021148681640625
		 20.8 1.4190673828125 21.6 1.82275390625 22.4 2.098876953125 23.2 2.1562042236328125
		 24 2.0687103271484375 24.8 1.9667358398437498;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Thigh_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -179.03778076171875 0.8 -179.19923400878906
		 1.6 -179.37374877929687 2.4 -179.54283142089844 3.2 -179.71623229980469 4 -179.91885375976562
		 4.8 -180.14614868164062 5.6 -180.37942504882812 6.4 -180.63420104980469 7.2 -180.92703247070312
		 8 -181.22726440429687 8.8 -181.52679443359375 9.6 -181.8133544921875 10.4 -182.02334594726562
		 11.2 -182.125 12 -182.12248229980469 12.8 -182.00198364257812 13.6 -181.73358154296875
		 14.4 -181.32998657226562 15.2 -180.860595703125 16 -180.33363342285156 16.8 -179.76373291015625
		 17.6 -179.24819946289062 18.4 -178.82466125488281 19.2 -178.4908447265625 20 -178.27925109863281
		 20.8 -178.21015930175781 21.6 -178.29200744628906 22.4 -178.46417236328125 23.2 -178.65837097167969
		 24 -178.85459899902344 24.8 -179.03828430175781;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Thigh_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -78.987968444824219 0.8 -79.599372863769531
		 1.6 -80.577827453613281 2.4 -81.591026306152344 3.2 -82.047554016113281 4 -81.866668701171875
		 4.8 -81.130012512207031 5.6 -79.489250183105469 6.4 -76.666145324707031 7.2 -72.938743591308594
		 8 -68.791946411132813 8.8 -64.124557495117188 9.6 -59.0360107421875 10.4 -54.311698913574219
		 11.2 -50.34307861328125 12 -46.7391357421875 12.8 -43.112380981445313 13.6 -38.912765502929688
		 14.4 -34.693023681640625 15.2 -31.718612670898438 16 -30.268264770507813 16.8 -30.062225341796871
		 17.6 -31.526382446289063 18.4 -35.076416015625 19.2 -40.297317504882813 20 -46.368148803710938
		 20.8 -53.753456115722656 21.6 -61.985595703125007 22.4 -68.845840454101563 23.2 -73.139511108398438
		 24 -76.063545227050781 24.8 -78.987953186035156;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Calf_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.44286221265792847 0.8 0.44286224246025085
		 1.6 0.44286224246025085 2.4 0.44286236166954041 3.2 0.44286233186721802 4 0.44286233186721802
		 4.8 0.44286215305328369 5.6 0.44286236166954041 6.4 0.44286221265792847 7.2 0.44286233186721802
		 8 0.44286221265792847 8.8 0.44286233186721802 9.6 0.44286233186721802 10.4 0.44286227226257324
		 11.2 0.44286227226257324 12 0.44286233186721802 12.8 0.44286218285560608 13.6 0.44286221265792847
		 14.4 0.44286224246025085 15.2 0.44286230206489563 16 0.44286221265792847 16.8 0.44286227226257324
		 17.6 0.44286230206489563 18.4 0.44286227226257324 19.2 0.44286230206489563 20 0.44286227226257324
		 20.8 0.44286230206489563 21.6 0.44286224246025085 22.4 0.44286227226257324 23.2 0.44286233186721802
		 24 0.44286221265792847 24.8 0.44286221265792847;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Calf_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.1920928955078125e-007 0.8 -5.9604644775390625e-008
		 1.6 -5.9604644775390625e-008 2.4 0 3.2 0 4 -5.9604644775390625e-008 4.8 -1.1920928955078125e-007
		 5.6 0 6.4 -1.1920928955078125e-007 7.2 0 8 -5.9604644775390625e-008 8.8 0 9.6 2.9802322387695313e-008
		 10.4 2.9802322387695313e-008 11.2 0 12 5.9604644775390625e-008 12.8 -2.9802322387695313e-008
		 13.6 1.0430812835693359e-007 14.4 0 15.2 5.2154064178466797e-008 16 -1.4901161193847656e-008
		 16.8 -3.7252902984619141e-008 17.6 3.7252902984619141e-008 18.4 8.9406967163085938e-008
		 19.2 1.4901161193847656e-008 20 5.9604644775390625e-008 20.8 1.1920928955078125e-007
		 21.6 0 22.4 0 23.2 0 24 -1.1920928955078125e-007 24.8 -5.9604644775390625e-008;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Calf_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.4901161193847656e-008 0.8 -2.2351741790771484e-008
		 1.6 -1.4901161193847656e-008 2.4 0 3.2 -1.4901161193847656e-008 4 -1.4901161193847656e-008
		 4.8 0 5.6 0 6.4 0 7.2 -7.4505805969238281e-009 8 -2.2351741790771484e-008 8.8 7.4505805969238281e-009
		 9.6 7.4505805969238281e-009 10.4 0 11.2 -2.2351741790771484e-008 12 1.4901161193847656e-008
		 12.8 0 13.6 -7.4505805969238281e-009 14.4 1.4901161193847656e-008 15.2 -7.4505805969238281e-009
		 16 7.4505805969238281e-009 16.8 -7.4505805969238281e-009 17.6 0 18.4 0 19.2 7.4505805969238281e-009
		 20 7.4505805969238281e-009 20.8 -7.4505805969238281e-009 21.6 -7.4505805969238281e-009
		 22.4 7.4505805969238281e-009 23.2 -7.4505805969238281e-009 24 -7.4505805969238281e-009
		 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Calf_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 0.99999994039535522
		 1.6 1.0000001192092896 2.4 0.99999994039535522 3.2 1 4 0.99999988079071045 4.8 1
		 5.6 0.99999988079071045 6.4 0.99999994039535522 7.2 1 8 0.99999988079071045 8.8 1
		 9.6 1 10.4 0.99999994039535522 11.2 1.0000001192092896 12 1.0000001192092896 12.8 0.99999988079071045
		 13.6 0.99999994039535522 14.4 1 15.2 0.99999994039535522 16 1.0000001192092896 16.8 1
		 17.6 0.99999994039535522 18.4 0.99999988079071045 19.2 0.99999994039535522 20 1.0000001192092896
		 20.8 1.0000001192092896 21.6 0.99999982118606567 22.4 1.0000001192092896 23.2 0.9999997615814209
		 24 1.0000001192092896 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Calf_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1.0000001192092896
		 2.4 1 3.2 1 4 1.0000001192092896 4.8 1.0000001192092896 5.6 1.0000001192092896 6.4 1
		 7.2 1.0000001192092896 8 1 8.8 1.0000001192092896 9.6 1.0000001192092896 10.4 1.0000001192092896
		 11.2 1.0000001192092896 12 1.0000001192092896 12.8 0.99999988079071045 13.6 0.99999994039535522
		 14.4 1 15.2 1 16 0.99999994039535522 16.8 1.0000001192092896 17.6 1.0000001192092896
		 18.4 1.0000001192092896 19.2 0.99999994039535522 20 1 20.8 1 21.6 1.0000001192092896
		 22.4 1.0000001192092896 23.2 1.0000001192092896 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Calf_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 1 4 1 4.8 1 5.6 1
		 6.4 1 7.2 1 8 1 8.8 1 9.6 1 10.4 1 11.2 1 12 1.0000001192092896 12.8 1 13.6 1.0000001192092896
		 14.4 1 15.2 1 16 1 16.8 1 17.6 1 18.4 1 19.2 1 20 1.0000001192092896 20.8 1 21.6 1
		 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Calf_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.0010318735330657e-008 0.8 1.6675265612775547e-008
		 1.6 -3.3350529005105045e-009 2.4 -1.3340212490220438e-008 3.2 2.0010318735330657e-008
		 4 -1.6675265612775547e-008 4.8 4.6690740163057853e-008 5.6 3.0015478102995985e-008
		 6.4 -1.3340212490220438e-008 7.2 0 8 0 8.8 -2.6680421427727197e-008 9.6 2.6680424980440876e-008
		 10.4 0 11.2 -2.6680424980440876e-008 12 -5.3360846408168072e-008 12.8 -2.6680428533154554e-008
		 13.6 -2.6680428533154554e-008 14.4 -4.0020641023374992e-008 15.2 -1.3340212490220438e-008
		 16 6.6701071332886386e-009 16.8 2.0010316958973817e-008 17.6 0 18.4 0 19.2 -2.6680426756797715e-008
		 20 1.3340212490220438e-008 20.8 1.3340212490220438e-008 21.6 -4.0020637470661313e-008
		 22.4 -4.0020637470661313e-008 23.2 5.3360842855454393e-008 24 1.3340211602042018e-008
		 24.8 6.6701066891994287e-009;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Calf_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 2.6680426756797715e-008 1.6 0 2.4 0
		 3.2 2.6680426756797715e-008 4 0 4.8 2.0010320511687496e-008 5.6 -1.0005161144022168e-008
		 6.4 0 7.2 -5.336085351359543e-008 8 8.0041289152177342e-008 8.8 8.0041282046749984e-008
		 9.6 2.6680426756797715e-008 10.4 0 11.2 0 12 5.3360846408168072e-008 12.8 0 13.6 0
		 14.4 -2.6680424980440876e-008 15.2 -1.3340214266577277e-008 16 6.670105801021009e-009
		 16.8 -6.6701062451102189e-009 17.6 0 18.4 2.6680428533154554e-008 19.2 -6.6701066891994287e-009
		 20 2.0010316958973817e-008 20.8 4.0020633917947634e-008 21.6 0 22.4 -2.6680423204084036e-008
		 23.2 5.3360867724450145e-008 24 2.6680423204084036e-008 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Calf_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -76.234848022460938 0.8 -72.872413635253906
		 1.6 -72.200950622558594 2.4 -72.087471008300781 3.2 -72.829315185546875 4 -74.9940185546875
		 4.8 -78.013999938964844 5.6 -80.483917236328125 6.4 -82.051185607910156 7.2 -83.068351745605469
		 8 -83.187873840332031 8.8 -81.826377868652344 9.6 -79.567192077636719 10.4 -77.81298828125
		 11.2 -77.148025512695313 12 -76.987998962402344 12.8 -76.982803344726563 13.6 -76.662391662597656
		 14.4 -76.496795654296875 15.2 -77.546096801757813 16 -80.8984375 16.8 -85.465652465820313
		 17.6 -89.043174743652344 18.4 -90.669532775878906 19.2 -91.306175231933594 20 -91.632987976074219
		 20.8 -92.328857421875 21.6 -92.714866638183594 22.4 -91.434165954589844 23.2 -87.478897094726563
		 24 -81.856857299804687 24.8 -76.234848022460938;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Foot_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.44286209344863892 0.8 0.4428621232509613
		 1.6 0.44286206364631653 2.4 0.44286230206489563 3.2 0.44286215305328369 4 0.44286224246025085
		 4.8 0.44286227226257324 5.6 0.44286215305328369 6.4 0.44286215305328369 7.2 0.44286233186721802
		 8 0.44286218285560608 8.8 0.44286233186721802 9.6 0.44286230206489563 10.4 0.44286224246025085
		 11.2 0.44286221265792847 12 0.44286230206489563 12.8 0.44286209344863892 13.6 0.44286227226257324
		 14.4 0.44286209344863892 15.2 0.44286215305328369 16 0.44286209344863892 16.8 0.44286206364631653
		 17.6 0.44286230206489563 18.4 0.44286227226257324 19.2 0.44286227226257324 20 0.44286230206489563
		 20.8 0.44286227226257324 21.6 0.44286227226257324 22.4 0.44286224246025085 23.2 0.44286227226257324
		 24 0.44286203384399414 24.8 0.44286221265792847;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Foot_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.3411045074462891e-007 0.8 -2.9802322387695313e-008
		 1.6 1.6391277313232422e-007 2.4 2.9802322387695313e-008 3.2 -5.9604644775390625e-008
		 4 -8.9406967163085938e-008 4.8 1.3411045074462891e-007 5.6 -2.9802322387695313e-008
		 6.4 1.1920928955078125e-007 7.2 -1.1175870895385742e-008 8 3.7252902984619141e-008
		 8.8 -3.3527612686157227e-008 9.6 -2.9802322387695313e-008 10.4 -7.4505805969238281e-008
		 11.2 -2.9802322387695313e-008 12 -5.9604644775390625e-008 12.8 4.4703483581542969e-008
		 13.6 -5.9604644775390625e-008 14.4 0 15.2 0 16 5.9604644775390625e-008 16.8 -2.9802322387695313e-008
		 17.6 -5.9604644775390625e-008 18.4 -5.9604644775390625e-008 19.2 -2.9802322387695313e-008
		 20 -5.9604644775390625e-008 20.8 -4.4703483581542969e-008 21.6 -4.4703483581542969e-008
		 22.4 2.9802322387695313e-008 23.2 2.6077032089233398e-008 24 7.4505805969238281e-008
		 24.8 7.4505805969238281e-008;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Foot_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 2.2351741790771484e-008 0.8 2.9802322387695313e-008
		 1.6 2.2351741790771484e-008 2.4 0 3.2 1.4901161193847656e-008 4 2.2351741790771484e-008
		 4.8 7.4505805969238281e-009 5.6 -7.4505805969238281e-009 6.4 2.2351741790771484e-008
		 7.2 1.4901161193847656e-008 8 0 8.8 -1.4901161193847656e-008 9.6 0 10.4 0 11.2 1.4901161193847656e-008
		 12 -7.4505805969238281e-009 12.8 0 13.6 0 14.4 -2.2351741790771484e-008 15.2 2.2351741790771484e-008
		 16 7.4505805969238281e-009 16.8 0 17.6 7.4505805969238281e-009 18.4 7.4505805969238281e-009
		 19.2 -1.4901161193847656e-008 20 -1.4901161193847656e-008 20.8 7.4505805969238281e-009
		 21.6 -7.4505805969238281e-009 22.4 0 23.2 1.4901161193847656e-008 24 -7.4505805969238281e-009
		 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Foot_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 0.99999988079071045 1.6 0.99999988079071045
		 2.4 1.0000001192092896 3.2 1 4 1 4.8 1.0000001192092896 5.6 1.0000001192092896 6.4 0.99999988079071045
		 7.2 1.0000002384185791 8 1.0000001192092896 8.8 1.0000001192092896 9.6 0.99999994039535522
		 10.4 1 11.2 1 12 1.0000001192092896 12.8 1 13.6 1.0000001192092896 14.4 0.99999994039535522
		 15.2 0.99999994039535522 16 1 16.8 1.0000001192092896 17.6 1.0000001192092896 18.4 1.0000002384185791
		 19.2 1 20 0.99999994039535522 20.8 1 21.6 1.0000001192092896 22.4 1.0000001192092896
		 23.2 0.99999994039535522 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Foot_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 0.9999997615814209 2.4 1.0000001192092896
		 3.2 1 4 0.99999994039535522 4.8 1.0000001192092896 5.6 1 6.4 0.99999994039535522
		 7.2 1.0000002384185791 8 1 8.8 1.0000002384185791 9.6 1 10.4 1.0000001192092896 11.2 1
		 12 1.0000001192092896 12.8 1 13.6 1.0000002384185791 14.4 0.99999994039535522 15.2 0.99999988079071045
		 16 0.99999994039535522 16.8 1 17.6 1.0000001192092896 18.4 1.0000001192092896 19.2 1
		 20 1 20.8 1 21.6 1.0000001192092896 22.4 1.0000002384185791 23.2 0.99999994039535522
		 24 0.99999994039535522 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Foot_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 0.99999982118606567 1.6 1 2.4 1.0000001192092896
		 3.2 1 4 1 4.8 1 5.6 1 6.4 1 7.2 0.99999994039535522 8 0.99999994039535522 8.8 1 9.6 0.99999994039535522
		 10.4 1 11.2 0.99999982118606567 12 1 12.8 0.99999982118606567 13.6 1.0000001192092896
		 14.4 0.99999988079071045 15.2 0.99999982118606567 16 1 16.8 1 17.6 1 18.4 1 19.2 0.99999994039535522
		 20 1 20.8 0.99999994039535522 21.6 1 22.4 1 23.2 1 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Foot_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.1955709308385849 0.8 -0.21559754014015198
		 1.6 -0.23006337881088254 2.4 -0.2425672858953476 3.2 -0.23550648987293243 4 -0.20218877494335175
		 4.8 -0.17105749249458313 5.6 -0.15997745096683502 6.4 -0.15258343517780304 7.2 -0.1307012140750885
		 8 -0.096685394644737244 8.8 -0.057538181543350213 9.6 -0.012604654766619205 10.4 0.026686690747737885
		 11.2 0.050126504153013229 12 0.062448102980852127 12.8 0.073576442897319794 13.6 0.095360711216926575
		 14.4 0.10568958520889282 15.2 0.097142145037651062 16 0.093625783920288086 16.8 0.11122645437717438
		 17.6 0.12904949486255646 18.4 0.11601389199495316 19.2 0.073384232819080353 20 0.025226633995771408
		 20.8 -0.021022047847509384 21.6 -0.072920344769954681 22.4 -0.11946965754032135 23.2 -0.15216509997844696
		 24 -0.17525064945220947 24.8 -0.19638484716415405;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Foot_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.065660879015922546 0.8 -0.050766594707965851
		 1.6 -0.050286959856748581 2.4 -0.051663711667060852 3.2 -0.045305386185646057 4 -0.029168684035539631
		 4.8 0.0053044818341732025 5.6 0.065534293651580811 6.4 0.16204197704792023 7.2 0.27820751070976257
		 8 0.37542620301246643 8.8 0.44548586010932922 9.6 0.49513444304466253 10.4 0.51411885023117065
		 11.2 0.50240761041641235 12 0.46335041522979731 12.8 0.39286482334136963 13.6 0.26329097151756287
		 14.4 0.10156147927045822 15.2 -0.011221147142350674 16 -0.034184932708740234 16.8 -0.0098401941359043121
		 17.6 0.011354493908584118 18.4 -0.0061206086538732052 19.2 -0.037715800106525421
		 20 -0.065594509243965149 20.8 -0.090790696442127228 21.6 -0.11025255918502808 22.4 -0.11549290269613266
		 23.2 -0.10517409443855286 24 -0.086475834250450134 24.8 -0.065722942352294922;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Foot_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 33.756015777587891 0.8 32.118190765380859
		 1.6 32.410919189453125 2.4 32.976329803466797 3.2 32.113803863525391 4 27.791053771972656
		 4.8 22.040256500244141 5.6 19.257614135742188 6.4 22.058782577514648 7.2 27.828113555908203
		 8 33.114856719970703 8.8 36.574569702148438 9.6 39.551609039306641 10.4 42.628303527832031
		 11.2 46.039249420166016 12 49.549736022949219 12.8 53.038284301757813 13.6 57.894412994384766
		 14.4 62.728519439697273 15.2 63.250667572021491 16 55.451412200927734 16.8 43.340213775634766
		 17.6 34.655437469482422 18.4 33.141242980957031 19.2 35.053363800048828 20 36.897537231445313
		 20.8 37.723316192626953 21.6 38.481052398681641 22.4 38.527545928955078 23.2 37.411247253417969
		 24 35.583606719970703 24.8 33.756008148193359;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe0_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.10185834020376205 0.8 0.10185833275318146
		 1.6 0.10185837000608444 2.4 0.10185832530260086 3.2 0.10185834020376205 4 0.10185834765434265
		 4.8 0.10185831040143967 5.6 0.10185833275318146 6.4 0.10185832530260086 7.2 0.10185832530260086
		 8 0.10185830295085907 8.8 0.10185832530260086 9.6 0.10185833275318146 10.4 0.10185833275318146
		 11.2 0.10185832530260086 12 0.10185833275318146 12.8 0.10185831785202026 13.6 0.10185831785202026
		 14.4 0.10185831785202026 15.2 0.10185832530260086 16 0.10185830295085907 16.8 0.10185830295085907
		 17.6 0.10185834765434265 18.4 0.10185828804969788 19.2 0.10185828804969788 20 0.10185831785202026
		 20.8 0.10185831785202026 21.6 0.10185832530260086 22.4 0.10185831040143967 23.2 0.10185832530260086
		 24 0.10185834020376205 24.8 0.10185834020376205;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe0_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.1284300833940506 0.8 0.12843003869056702
		 1.6 0.12843012809753418 2.4 0.12843003869056702 3.2 0.1284300684928894 4 0.12843009829521179
		 4.8 0.12842994928359985 5.6 0.12843014299869537 6.4 0.12842994928359985 7.2 0.12842997908592224
		 8 0.12842991948127747 8.8 0.12842993438243866 9.6 0.12843015789985657 10.4 0.12843003869056702
		 11.2 0.12843011319637299 12 0.1284300833940506 12.8 0.12842999398708344 13.6 0.12843000888824463
		 14.4 0.12842999398708344 15.2 0.12843009829521179 16 0.12843009829521179 16.8 0.1284300684928894
		 17.6 0.12843000888824463 18.4 0.1284300684928894 19.2 0.12843009829521179 20 0.1284300684928894
		 20.8 0.1284300684928894 21.6 0.12843000888824463 22.4 0.12842997908592224 23.2 0.12842997908592224
		 24 0.12843011319637299 24.8 0.1284300833940506;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe0_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 1.4901161193847656e-008 1.6 -1.4901161193847656e-008
		 2.4 -7.4505805969238281e-009 3.2 7.4505805969238281e-009 4 1.4901161193847656e-008
		 4.8 1.4901161193847656e-008 5.6 -1.4901161193847656e-008 6.4 -7.4505805969238281e-009
		 7.2 0 8 7.4505805969238281e-009 8.8 0 9.6 7.4505805969238281e-009 10.4 7.4505805969238281e-009
		 11.2 -7.4505805969238281e-009 12 -7.4505805969238281e-009 12.8 1.4901161193847656e-008
		 13.6 -7.4505805969238281e-009 14.4 0 15.2 7.4505805969238281e-009 16 7.4505805969238281e-009
		 16.8 -7.4505805969238281e-009 17.6 7.4505805969238281e-009 18.4 7.4505805969238281e-009
		 19.2 0 20 2.2351741790771484e-008 20.8 -1.4901161193847656e-008 21.6 2.2351741790771484e-008
		 22.4 0 23.2 0 24 -1.4901161193847656e-008 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe0_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1 4.8 0.99999994039535522 5.6 1.0000001192092896 6.4 1 7.2 1.0000001192092896 8 0.99999988079071045
		 8.8 1 9.6 1 10.4 1.0000001192092896 11.2 1.0000001192092896 12 1.0000001192092896
		 12.8 1 13.6 0.99999994039535522 14.4 0.99999994039535522 15.2 1 16 0.99999994039535522
		 16.8 1 17.6 1.0000001192092896 18.4 1 19.2 1 20 1.0000001192092896 20.8 1.0000001192092896
		 21.6 0.99999994039535522 22.4 0.99999994039535522 23.2 1 24 0.99999994039535522 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe0_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 0.99999994039535522
		 1.6 1.0000001192092896 2.4 1 3.2 1 4 1.0000001192092896 4.8 0.99999994039535522 5.6 1
		 6.4 1 7.2 1.0000001192092896 8 0.99999994039535522 8.8 1.0000001192092896 9.6 1 10.4 1.0000001192092896
		 11.2 1.0000001192092896 12 1.0000001192092896 12.8 1 13.6 0.99999994039535522 14.4 0.99999994039535522
		 15.2 1 16 0.99999994039535522 16.8 1.0000001192092896 17.6 1.0000002384185791 18.4 1
		 19.2 1 20 1.0000001192092896 20.8 1.0000001192092896 21.6 0.99999994039535522 22.4 0.99999994039535522
		 23.2 1 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe0_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1 4.8 1 5.6 1 6.4 1 7.2 1 8 0.99999994039535522 8.8 1 9.6 1 10.4 1 11.2 1 12 1
		 12.8 1 13.6 0.99999994039535522 14.4 0.99999994039535522 15.2 1 16 0.99999994039535522
		 16.8 1 17.6 1 18.4 0.99999994039535522 19.2 1 20 1 20.8 1.0000001192092896 21.6 0.99999994039535522
		 22.4 0.99999994039535522 23.2 1 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe0_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.5079598344746046e-006 0.8 -2.4946200483100256e-006
		 1.6 -2.4946195935626747e-006 2.4 -2.4946198209363502e-006 3.2 -2.50796006184828e-006
		 4 -2.5012896003318019e-006 4.8 -2.5046251721505541e-006 5.6 -2.505458724044729e-006
		 6.4 -2.5046249447768787e-006 7.2 -2.5054584966710536e-006 8 -2.5029576136148535e-006
		 8.8 -2.5062922759389039e-006 9.6 -2.50796006184828e-006 10.4 -2.5062922759389039e-006
		 11.2 -2.5046247174032032e-006 12 -2.5046247174032032e-006 12.8 -2.50796006184828e-006
		 13.6 -2.4946200483100256e-006 14.4 -2.4946200483100256e-006 15.2 -2.50796006184828e-006
		 16 -2.5079602892219555e-006 16.8 -2.5046247174032032e-006 17.6 -2.5146296138700563e-006
		 18.4 -2.5213003027602099e-006 19.2 -2.50796006184828e-006 20 -2.5213000753865344e-006
		 20.8 -2.4946195935626747e-006 21.6 -2.5079602892219555e-006 22.4 -2.5079602892219555e-006
		 23.2 -2.4946198209363502e-006 24 -2.4946198209363502e-006 24.8 -2.5079598344746046e-006;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe0_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 6.670105801021009e-009 0.8 -3.3350533445997144e-009
		 1.6 0 2.4 0 3.2 0 4 1.6675266722998572e-009 4.8 1.2506450319804685e-009 5.6 6.5137749361010577e-011
		 6.4 -3.9082657249389641e-011 7.2 5.5367089385471851e-011 8 -2.6055107724132217e-011
		 8.8 5.2110208509370537e-011 9.6 1.5633062899755856e-010 10.4 1.0422040314095327e-010
		 11.2 -2.6055100785238317e-011 12 -2.6055100785238317e-011 12.8 3.6477146303504071e-010
		 13.6 -6.2532251599023425e-010 14.4 0 15.2 -1.3027552647759677e-010 16 -3.3350535666443193e-009
		 16.8 0 17.6 6.670105801021009e-009 18.4 0 19.2 1.3340213378398857e-008 20 0 20.8 3.3350529005105045e-009
		 21.6 -1.6675267833221596e-009 22.4 -4.1688169583053991e-010 23.2 -1.6675266722998572e-009
		 24 -3.3350535666443193e-009 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe0_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 90 0.8 90 1.6 90 2.4 90 3.2 90 4 90 4.8 90
		 5.6 90 6.4 90 7.2 90 8 90 8.8 90 9.6 90 10.4 90 11.2 90 12 90 12.8 90 13.6 90 14.4 90
		 15.2 90 16 90 16.8 90 17.6 90 18.4 90 19.2 90 20 90 20.8 90 21.6 90 22.4 90 23.2 90
		 24 90 24.8 90;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe01_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.013285905122756958 0.8 0.01328587532043457
		 1.6 0.01328575611114502 2.4 0.013285845518112183 3.2 0.013285905122756958 4 0.013285905122756958
		 4.8 0.013285726308822632 5.6 0.013285696506500244 6.4 0.01328587532043457 7.2 0.013285905122756958
		 8 0.013286054134368896 8.8 0.013285920023918152 9.6 0.01328585296869278 10.4 0.013285789638757706
		 11.2 0.013285847380757332 12 0.01328587532043457 12.8 0.013285860419273376 13.6 0.013285867869853973
		 14.4 0.013285920023918152 15.2 0.013285905122756958 16 0.013285905122756958 16.8 0.013285905122756958
		 17.6 0.013285845518112183 18.4 0.013285845518112183 19.2 0.013285860419273376 20 0.013285860419273376
		 20.8 0.013285905122756958 21.6 0.013285847380757332 22.4 0.013285882771015167 23.2 0.013285726308822632
		 24 0.013285994529724121 24.8 0.013285905122756958;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe01_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.4901161193847656e-008 0.8 7.4505805969238281e-009
		 1.6 6.7055225372314453e-008 2.4 1.4901161193847656e-008 3.2 -2.2351741790771484e-008
		 4 -7.4505805969238281e-009 4.8 2.2351741790771484e-008 5.6 2.7939677238464355e-009
		 6.4 2.3283064365386963e-010 7.2 0 8 -3.2596290111541748e-009 8.8 -9.3132257461547852e-010
		 9.6 2.3283064365386963e-010 10.4 2.3283064365386963e-009 11.2 4.6566128730773926e-010
		 12 0 12.8 0 13.6 0 14.4 -3.7252902984619141e-009 15.2 9.3132257461547852e-010 16 1.4901161193847656e-008
		 16.8 1.4901161193847656e-008 17.6 0 18.4 -1.4901161193847656e-008 19.2 7.4505805969238281e-009
		 20 -7.4505805969238281e-009 20.8 5.5879354476928711e-009 21.6 0 22.4 0 23.2 2.2351741790771484e-008
		 24 -2.9802322387695313e-008 24.8 -1.4901161193847656e-008;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe01_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.2351741790771484e-008 0.8 7.4505805969238281e-009
		 1.6 2.2351741790771484e-008 2.4 0 3.2 -1.4901161193847656e-008 4 0 4.8 -1.4901161193847656e-008
		 5.6 -2.2351741790771484e-008 6.4 1.4901161193847656e-008 7.2 0 8 0 8.8 -2.2351741790771484e-008
		 9.6 2.2351741790771484e-008 10.4 -2.2351741790771484e-008 11.2 -2.2351741790771484e-008
		 12 0 12.8 -1.4901161193847656e-008 13.6 0 14.4 7.4505805969238281e-009 15.2 0 16 7.4505805969238281e-009
		 16.8 0 17.6 2.2351741790771484e-008 18.4 -1.4901161193847656e-008 19.2 0 20 7.4505805969238281e-009
		 20.8 0 21.6 0 22.4 2.2351741790771484e-008 23.2 7.4505805969238281e-009 24 -7.4505805969238281e-009
		 24.8 -2.2351741790771484e-008;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe01_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1 4.8 0.99999994039535522 5.6 1.0000001192092896 6.4 1 7.2 1.0000001192092896 8 0.99999988079071045
		 8.8 1 9.6 1 10.4 1.0000001192092896 11.2 1 12 1.0000001192092896 12.8 1 13.6 0.99999994039535522
		 14.4 1 15.2 1 16 0.99999994039535522 16.8 1 17.6 1.0000001192092896 18.4 1 19.2 1
		 20 1.0000001192092896 20.8 1.0000001192092896 21.6 0.99999988079071045 22.4 0.99999994039535522
		 23.2 1 24 0.99999994039535522 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe01_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 0.99999994039535522
		 1.6 1.0000001192092896 2.4 1 3.2 1 4 1.0000001192092896 4.8 0.99999994039535522 5.6 1
		 6.4 1 7.2 1.0000001192092896 8 0.99999994039535522 8.8 1.0000001192092896 9.6 1 10.4 1.0000001192092896
		 11.2 1 12 1.0000001192092896 12.8 1 13.6 0.99999994039535522 14.4 0.99999994039535522
		 15.2 1 16 0.99999994039535522 16.8 1.0000001192092896 17.6 1.0000002384185791 18.4 1
		 19.2 0.99999994039535522 20 1.0000001192092896 20.8 1.0000001192092896 21.6 0.99999994039535522
		 22.4 0.99999994039535522 23.2 1 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe01_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1 4.8 1 5.6 1 6.4 1 7.2 1 8 0.99999994039535522 8.8 1 9.6 1 10.4 1 11.2 1 12 1
		 12.8 1 13.6 0.99999994039535522 14.4 0.99999994039535522 15.2 1 16 0.99999994039535522
		 16.8 1 17.6 1 18.4 0.99999994039535522 19.2 1 20 1 20.8 1.0000001192092896 21.6 0.99999994039535522
		 22.4 0.99999994039535522 23.2 1 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe01_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 1.3340213378398857e-008
		 3.2 -6.6701066891994287e-009 4 0 4.8 3.3350535666443193e-009 5.6 -8.3376333614992859e-010
		 6.4 0 7.2 -8.3376322512762613e-010 8 1.6675267833221596e-009 8.8 0 9.6 -1.6675266722998572e-009
		 10.4 -3.3350529005105045e-009 11.2 0 12 0 12.8 -3.3350531225551094e-009 13.6 0 14.4 0
		 15.2 0 16 -6.6701066891994287e-009 16.8 -3.3350529005105045e-009 17.6 0 18.4 -2.6680424980440876e-008
		 19.2 1.3340214266577277e-008 20 -1.3340211602042018e-008 20.8 2.6680421427727197e-008
		 21.6 1.3340214266577277e-008 22.4 0 23.2 1.3340213378398857e-008 24 0 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe01_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 -3.3350533445997144e-009 1.6 0 2.4 -6.6701066891994287e-009
		 3.2 0 4 1.6675266722998572e-009 4.8 4.1688169583053991e-010 5.6 3.9082650310495737e-011
		 6.4 -1.0422041701874107e-010 7.2 4.0711094217993349e-011 8 -5.2110215448264434e-011
		 8.8 5.2110208509370537e-011 9.6 1.5633062899755856e-010 10.4 5.2110201570476633e-011
		 11.2 -2.6055102519961792e-011 12 5.2110205039923585e-011 12.8 4.1688164031938868e-010
		 13.6 -4.168816680749643e-010 14.4 0 15.2 2.0844083403748215e-010 16 -1.6675266722998572e-009
		 16.8 0 17.6 6.670105801021009e-009 18.4 -1.3340212490220438e-008 19.2 1.3340212490220438e-008
		 20 -3.3350526784658996e-009 20.8 0 21.6 -5.0025805720110839e-009 22.4 -8.3376339166107982e-010
		 23.2 -1.6675266722998572e-009 24 0 24.8 -6.670105801021009e-009;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe01_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 1.7075473124350538e-006 2.4 -1.7075473124350538e-006
		 3.2 3.4150946248701075e-006 4 1.7075473124350538e-006 4.8 -8.5377371306094574e-007
		 5.6 0 6.4 0 7.2 0 8 -1.0672172123804556e-007 8.8 0 9.6 -1.0672170702719086e-007 10.4 0
		 11.2 0.042762961238622665 12 0.12828801572322845 12.8 0.17105028033256531 13.6 0.25206062197685242
		 14.4 0.41408082842826843 15.2 0.49509081244468689 16 2.7441990375518799 16.8 7.2423925399780273
		 17.6 9.4914817810058594 18.4 8.3050327301025391 19.2 5.932161808013916 20 4.7457237243652344
		 20.8 3.5592861175537109 21.6 1.1864273548126221 22.4 0 23.2 0 24 8.5377371306094574e-007
		 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe02_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.01328587532043457 0.8 0.013285845518112183
		 1.6 0.013285964727401733 2.4 0.013285905122756958 3.2 0.013285696506500244 4 0.01328587532043457
		 4.8 0.013285934925079346 5.6 0.013285934925079346 6.4 0.013285905122756958 7.2 0.01328568160533905
		 8 0.013285800814628601 8.8 0.01328568160533905 9.6 0.013285860419273376 10.4 0.013286031782627106
		 11.2 0.013285883702337742 12 0.013285808265209198 12.8 0.013285927474498749 13.6 0.01328594982624054
		 14.4 0.013285815715789795 15.2 0.013285845518112183 16 0.013285845518112183 16.8 0.013285964727401733
		 17.6 0.013285845518112183 18.4 0.01328587532043457 19.2 0.013285905122756958 20 0.013285860419273376
		 20.8 0.013285879045724869 21.6 0.013285893946886063 22.4 0.013285890221595764 23.2 0.013285964727401733
		 24 0.013285815715789795 24.8 0.01328587532043457;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe02_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 7.4505805969238281e-009 0.8 1.4901161193847656e-008
		 1.6 -5.9604644775390625e-008 2.4 1.4901161193847656e-008 3.2 8.9406967163085938e-008
		 4 0 4.8 -5.5879354476928711e-009 5.6 -4.6566128730773926e-010 6.4 6.9849193096160889e-010
		 7.2 4.6566128730773926e-010 8 1.1641532182693481e-009 8.8 3.7252902984619141e-009
		 9.6 5.8207660913467407e-010 10.4 -4.1909515857696533e-009 11.2 -4.6566128730773926e-010
		 12 1.862645149230957e-009 12.8 -9.3132257461547852e-010 13.6 -4.6566128730773926e-009
		 14.4 3.7252902984619141e-009 15.2 0 16 -3.7252902984619141e-009 16.8 2.9802322387695313e-008
		 17.6 0 18.4 0 19.2 1.4901161193847656e-008 20 1.862645149230957e-009 20.8 7.4505805969238281e-009
		 21.6 7.4505805969238281e-009 22.4 7.4505805969238281e-009 23.2 -7.4505805969238281e-009
		 24 2.2351741790771484e-008 24.8 7.4505805969238281e-009;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe02_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.4901161193847656e-008 0.8 0 1.6 -7.4505805969238281e-009
		 2.4 0 3.2 2.9802322387695313e-008 4 2.2351741790771484e-008 4.8 7.4505805969238281e-009
		 5.6 1.4901161193847656e-008 6.4 -1.4901161193847656e-008 7.2 -1.4901161193847656e-008
		 8 0 8.8 1.4901161193847656e-008 9.6 -7.4505805969238281e-009 10.4 1.4901161193847656e-008
		 11.2 7.4505805969238281e-009 12 0 12.8 7.4505805969238281e-009 13.6 -1.4901161193847656e-008
		 14.4 7.4505805969238281e-009 15.2 7.4505805969238281e-009 16 -7.4505805969238281e-009
		 16.8 -7.4505805969238281e-009 17.6 -1.4901161193847656e-008 18.4 1.4901161193847656e-008
		 19.2 2.2351741790771484e-008 20 -1.4901161193847656e-008 20.8 1.4901161193847656e-008
		 21.6 1.4901161193847656e-008 22.4 -1.4901161193847656e-008 23.2 -7.4505805969238281e-009
		 24 2.2351741790771484e-008 24.8 1.4901161193847656e-008;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe02_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1 4.8 0.99999994039535522 5.6 1.0000001192092896 6.4 1 7.2 1.0000001192092896 8 0.99999988079071045
		 8.8 1 9.6 1 10.4 1.0000001192092896 11.2 1.0000001192092896 12 1.0000001192092896
		 12.8 1.0000001192092896 13.6 0.99999994039535522 14.4 1 15.2 1 16 0.99999994039535522
		 16.8 1 17.6 1.0000001192092896 18.4 1.0000001192092896 19.2 1 20 1.0000001192092896
		 20.8 1 21.6 1.0000001192092896 22.4 0.99999994039535522 23.2 1 24 0.99999994039535522
		 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe02_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 0.99999994039535522
		 1.6 1.0000001192092896 2.4 1 3.2 1 4 1.0000001192092896 4.8 0.99999994039535522 5.6 1
		 6.4 1 7.2 1.0000001192092896 8 0.99999994039535522 8.8 1.0000001192092896 9.6 1 10.4 1.0000001192092896
		 11.2 1.0000001192092896 12 1.0000001192092896 12.8 1.0000001192092896 13.6 1 14.4 1
		 15.2 1 16 0.99999994039535522 16.8 1 17.6 1 18.4 0.99999994039535522 19.2 1 20 1.0000001192092896
		 20.8 1 21.6 1 22.4 0.99999994039535522 23.2 1 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe02_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1 4.8 1 5.6 1 6.4 1 7.2 1 8 0.99999994039535522 8.8 1 9.6 1 10.4 1 11.2 1 12 1
		 12.8 1 13.6 0.99999994039535522 14.4 1 15.2 1.0000001192092896 16 1 16.8 1 17.6 1
		 18.4 1 19.2 1 20 1 20.8 1.0000001192092896 21.6 1 22.4 0.99999994039535522 23.2 1
		 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe02_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 1.3340213378398857e-008
		 3.2 -6.6701066891994287e-009 4 0 4.8 3.3350535666443193e-009 5.6 -8.3376333614992859e-010
		 6.4 0 7.2 -8.3376322512762613e-010 8 1.6675267833221596e-009 8.8 0 9.6 -1.6675266722998572e-009
		 10.4 -3.3350529005105045e-009 11.2 0 12 8.3376328063877736e-010 12.8 3.3350529005105045e-009
		 13.6 6.6701066891994287e-009 14.4 -1.3340213378398857e-008 15.2 -1.3340213378398857e-008
		 16 -6.6701066891994287e-009 16.8 0 17.6 2.0010320511687496e-008 18.4 0 19.2 0 20 -1.3340211602042018e-008
		 20.8 -1.3340213378398857e-008 21.6 0 22.4 0 23.2 1.3340213378398857e-008 24 0 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe02_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 -3.3350533445997144e-009 1.6 0 2.4 -6.6701066891994287e-009
		 3.2 0 4 1.6675266722998572e-009 4.8 4.1688169583053991e-010 5.6 3.9082650310495737e-011
		 6.4 -1.0422041701874107e-010 7.2 4.0711094217993349e-011 8 -5.2110215448264434e-011
		 8.8 5.2110208509370537e-011 9.6 1.5633062899755856e-010 10.4 5.2110201570476633e-011
		 11.2 -1.0422040314095327e-010 12 -4.4293674283935047e-010 12.8 3.1266120248396589e-010
		 13.6 0 14.4 2.501290063960937e-009 15.2 -4.168816680749643e-010 16 -8.3376333614992859e-010
		 16.8 8.3376333614992859e-010 17.6 6.670105801021009e-009 18.4 -3.3350529005105045e-009
		 19.2 -3.3350533445997144e-009 20 3.3350526784658996e-009 20.8 3.3350531225551094e-009
		 21.6 1.6675264502552523e-009 22.4 -8.3376339166107982e-010 23.2 -1.6675266722998572e-009
		 24 0 24.8 -6.670105801021009e-009;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe02_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 1.7075473124350538e-006 2.4 -1.7075473124350538e-006
		 3.2 3.4150946248701075e-006 4 1.7075473124350538e-006 4.8 -8.5377371306094574e-007
		 5.6 0 6.4 0 7.2 0 8 -1.0672172123804556e-007 8.8 0 9.6 -1.0672170702719086e-007 10.4 0
		 11.2 0.042762640863656998 12 0.1282879114151001 12.8 0.1710500568151474 13.6 0.25206083059310913
		 14.4 0.414080411195755 15.2 0.4950909316539765 16 2.7442007064819336 16.8 7.2423872947692862
		 17.6 9.4914798736572266 18.4 8.3050355911254883 19.2 5.932157039642334 20 4.7457284927368164
		 20.8 3.5592896938323975 21.6 1.1864266395568848 22.4 0 23.2 0 24 8.5377371306094574e-007
		 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe0Nub_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.013285905122756958 0.8 0.01328587532043457
		 1.6 0.013285964727401733 2.4 0.013285845518112183 3.2 0.013285905122756958 4 0.01328587532043457
		 4.8 0.013285905122756958 5.6 0.013285934925079346 6.4 0.01328587532043457 7.2 0.013285920023918152
		 8 0.013285815715789795 8.8 0.013285934925079346 9.6 0.01328585296869278 10.4 0.013285905122756958
		 11.2 0.013285927474498749 12 0.013285924680531025 12.8 0.013285849243402481 13.6 0.013285845518112183
		 14.4 0.013285830616950989 15.2 0.013285845518112183 16 0.013285890221595764 16.8 0.01328587532043457
		 17.6 0.013285934925079346 18.4 0.013285815715789795 19.2 0.013285830616950989 20 0.013285890221595764
		 20.8 0.013285867869853973 21.6 0.01328585296869278 22.4 0.013285890221595764 23.2 0.013285934925079346
		 24 0.013285815715789795 24.8 0.013285905122756958;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe0Nub_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.4901161193847656e-008 0.8 -1.4901161193847656e-008
		 1.6 -3.7252902984619141e-008 2.4 1.4901161193847656e-008 3.2 -2.2351741790771484e-008
		 4 7.4505805969238281e-009 4.8 -7.4505805969238281e-009 5.6 -9.3132257461547852e-010
		 6.4 0 7.2 -2.3283064365386963e-010 8 1.3969838619232178e-009 8.8 -6.9849193096160889e-010
		 9.6 4.6566128730773926e-010 10.4 -1.1641532182693481e-009 11.2 -2.3283064365386963e-009
		 12 -1.862645149230957e-009 12.8 9.3132257461547852e-010 13.6 9.3132257461547852e-010
		 14.4 3.7252902984619141e-009 15.2 0 16 0 16.8 -1.4901161193847656e-008 17.6 1.4901161193847656e-008
		 18.4 -1.4901161193847656e-008 19.2 -7.4505805969238281e-009 20 7.4505805969238281e-009
		 20.8 1.862645149230957e-009 21.6 -7.4505805969238281e-009 22.4 0 23.2 -1.4901161193847656e-008
		 24 1.4901161193847656e-008 24.8 -1.4901161193847656e-008;
createNode animCurveTL -n "Bip02FBXASC032LFBXASC032Toe0Nub_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 7.4505805969238281e-009 0.8 7.4505805969238281e-009
		 1.6 -1.4901161193847656e-008 2.4 7.4505805969238281e-009 3.2 -1.4901161193847656e-008
		 4 0 4.8 1.4901161193847656e-008 5.6 7.4505805969238281e-009 6.4 -1.4901161193847656e-008
		 7.2 7.4505805969238281e-009 8 0 8.8 7.4505805969238281e-009 9.6 -7.4505805969238281e-009
		 10.4 7.4505805969238281e-009 11.2 1.4901161193847656e-008 12 7.4505805969238281e-009
		 12.8 0 13.6 1.4901161193847656e-008 14.4 -1.4901161193847656e-008 15.2 -1.4901161193847656e-008
		 16 -1.4901161193847656e-008 16.8 -7.4505805969238281e-009 17.6 7.4505805969238281e-009
		 18.4 -1.4901161193847656e-008 19.2 -7.4505805969238281e-009 20 7.4505805969238281e-009
		 20.8 -1.4901161193847656e-008 21.6 -7.4505805969238281e-009 22.4 -7.4505805969238281e-009
		 23.2 7.4505805969238281e-009 24 -7.4505805969238281e-009 24.8 7.4505805969238281e-009;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe0Nub_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.0000001192092896 0.8 -1 1.6 -1 2.4 -1
		 3.2 -1 4 -1 4.8 -0.99999994039535522 5.6 -1.0000001192092896 6.4 -1 7.2 -1.0000001192092896
		 8 -0.99999988079071045 8.8 -1 9.6 -1 10.4 -1.0000001192092896 11.2 -1.0000001192092896
		 12 -1 12.8 -1.0000001192092896 13.6 -1 14.4 -1 15.2 -1 16 -1 16.8 -0.99999994039535522
		 17.6 -1.0000001192092896 18.4 -0.99999994039535522 19.2 -1 20 -1.0000001192092896
		 20.8 -1.0000001192092896 21.6 -1.0000001192092896 22.4 -0.99999994039535522 23.2 -1
		 24 -0.99999994039535522 24.8 -1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe0Nub_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.0000001192092896 0.8 -0.99999994039535522
		 1.6 -1.0000001192092896 2.4 -1 3.2 -1 4 -1.0000001192092896 4.8 -0.99999994039535522
		 5.6 -1 6.4 -1 7.2 -1.0000001192092896 8 -0.99999994039535522 8.8 -1.0000001192092896
		 9.6 -1 10.4 -1.0000001192092896 11.2 -1.0000001192092896 12 -1 12.8 -1.0000001192092896
		 13.6 -1 14.4 -1 15.2 -1 16 -1 16.8 -1 17.6 -1.0000001192092896 18.4 -0.99999994039535522
		 19.2 -1 20 -1.0000001192092896 20.8 -1 21.6 -1.0000001192092896 22.4 -0.99999994039535522
		 23.2 -1 24 -1 24.8 -1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032LFBXASC032Toe0Nub_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -1.0000001192092896 0.8 -1 1.6 -1 2.4 -1
		 3.2 -1 4 -1 4.8 -1 5.6 -1 6.4 -1 7.2 -1 8 -0.99999994039535522 8.8 -1 9.6 -1 10.4 -1
		 11.2 -1 12 -1 12.8 -1 13.6 -1 14.4 -1 15.2 -1 16 -0.99999994039535522 16.8 -1 17.6 -1
		 18.4 -0.99999994039535522 19.2 -1 20 -1 20.8 -1.0000001192092896 21.6 -1 22.4 -0.99999994039535522
		 23.2 -1 24 -1 24.8 -1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe0Nub_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 -1.3340213378398857e-008
		 3.2 6.6701066891994287e-009 4 0 4.8 -3.3350535666443193e-009 5.6 8.3376333614992859e-010
		 6.4 0 7.2 8.3376322512762613e-010 8 -1.6675267833221596e-009 8.8 0 9.6 1.6675266722998572e-009
		 10.4 3.3350529005105045e-009 11.2 0 12 0 12.8 0 13.6 6.6701066891994287e-009 14.4 0
		 15.2 0 16 0 16.8 0 17.6 1.3340211602042018e-008 18.4 0 19.2 0 20 0 20.8 1.3340213378398857e-008
		 21.6 1.3340211602042018e-008 22.4 0 23.2 -1.3340213378398857e-008 24 0 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe0Nub_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 3.3350533445997144e-009 1.6 0 2.4 6.6701066891994287e-009
		 3.2 0 4 -1.6675266722998572e-009 4.8 -4.1688169583053991e-010 5.6 -3.9082650310495737e-011
		 6.4 1.0422041701874107e-010 7.2 -4.0711094217993349e-011 8 5.2110215448264434e-011
		 8.8 -5.2110208509370537e-011 9.6 -1.5633062899755856e-010 10.4 -5.2110201570476633e-011
		 11.2 0 12 0 12.8 0 13.6 0 14.4 -1.6675266722998572e-009 15.2 0 16 0 16.8 2.501290063960937e-009
		 17.6 -1.3340211602042018e-008 18.4 -6.6701071332886386e-009 19.2 -3.3350533445997144e-009
		 20 0 20.8 3.3350529005105045e-009 21.6 0 22.4 8.3376339166107982e-010 23.2 1.6675266722998572e-009
		 24 0 24.8 6.670105801021009e-009;
createNode animCurveTA -n "Bip02FBXASC032LFBXASC032Toe0Nub_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -180 0.8 -180 1.6 -180 2.4 -180 3.2 -180
		 4 -180 4.8 -180 5.6 -180 6.4 -180 7.2 -180 8 -180 8.8 -180 9.6 -180 10.4 -180 11.2 -180
		 12 -180 12.8 -180 13.6 -180 14.4 -180 15.2 -180 16 -180 16.8 -180 17.6 -180 18.4 -180
		 19.2 -180 20 -180 20.8 -180 21.6 -180 22.4 -180 23.2 -180 24 -180 24.8 -180;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Thigh_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.10352921485900879 0.8 -0.1026875376701355
		 1.6 -0.10161197185516357 2.4 -0.10048598051071167 3.2 -0.099301040172576904 4 -0.098016679286956787
		 4.8 -0.096672356128692627 5.6 -0.095379650592803955 6.4 -0.094138860702514648 7.2 -0.092950880527496338
		 8 -0.09192889928817749 8.8 -0.091067969799041748 9.6 -0.090374588966369629 10.4 -0.089979112148284912
		 11.2 -0.089917361736297607 12 -0.090154170989990234 12.8 -0.090712308883666992 13.6 -0.091662168502807617
		 14.4 -0.092931032180786133 15.2 -0.094329297542572021 16 -0.095858871936798096 16.8 -0.097514688968658447
		 17.6 -0.099099040031433105 18.4 -0.10061222314834595 19.2 -0.1020544171333313 20 -0.10323250293731689
		 20.8 -0.10411995649337769 21.6 -0.10474836826324463 22.4 -0.10501366853713989 23.2 -0.10476112365722656
		 24 -0.10414570569992065 24.8 -0.10352921485900879;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Thigh_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.032254427671432495 0.8 0.032028257846832275
		 1.6 0.031744122505187988 2.4 0.031446605920791626 3.2 0.031133890151977539 4 0.03079560399055481
		 4.8 0.030441522598266602 5.6 0.030099719762802124 6.4 0.029770970344543457 7.2 0.029455512762069702
		 8 0.029183059930801392 8.8 0.028952807188034058 9.6 0.028766870498657227 10.4 0.028660863637924194
		 11.2 0.028644293546676636 12 0.028708130121231079 12.8 0.02885928750038147 13.6 0.029116570949554443
		 14.4 0.029459178447723389 15.2 0.0298348069190979 16 0.030243843793869019 16.8 0.030683904886245728
		 17.6 0.031102597713470459 18.4 0.031499952077865601 19.2 0.031876355409622192 20 0.032182037830352783
		 20.8 0.032411277294158936 21.6 0.032572746276855469 22.4 0.032640337944030762 23.2 0.03257453441619873
		 24 0.032414734363555908 24.8 0.032254427671432495;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Thigh_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.084981031715869904 0.8 -0.085451804101467133
		 1.6 -0.086059749126434326 2.4 -0.08668246865272522 3.2 -0.087325379252433777 4 -0.088009022176265717
		 4.8 -0.088706620037555695 5.6 -0.089357510209083557 6.4 -0.089964278042316437 7.2 -0.090529359877109528
		 8 -0.091001778841018677 8.8 -0.091389521956443787 9.6 -0.091695770621299744 10.4 -0.091868460178375244
		 11.2 -0.091895200312137604 12 -0.091793462634086609 12.8 -0.091554015874862671 13.6 -0.091140538454055786
		 14.4 -0.090570911765098572 15.2 -0.089919939637184143 16 -0.089179530739784241 16.8 -0.088343843817710876
		 17.6 -0.087510153651237488 18.4 -0.086682207882404327 19.2 -0.08586372435092926 20 -0.085173070430755615
		 20.8 -0.084639102220535278 21.6 -0.084253504872322083 22.4 -0.084087461233139038
		 23.2 -0.084240376949310303 24 -0.084613077342510223 24.8 -0.084981031715869904;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Thigh_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1.0000001192092896
		 2.4 1.0000001192092896 3.2 1.0000001192092896 4 1 4.8 1 5.6 0.99999988079071045 6.4 1
		 7.2 1 8 1 8.8 1 9.6 1 10.4 0.99999994039535522 11.2 0.99999982118606567 12 1.0000001192092896
		 12.8 0.99999988079071045 13.6 1.0000001192092896 14.4 1 15.2 1 16 1.0000001192092896
		 16.8 1 17.6 1.0000001192092896 18.4 1.0000001192092896 19.2 1 20 1 20.8 1 21.6 1.0000001192092896
		 22.4 0.99999994039535522 23.2 1.0000001192092896 24 1 24.8 0.99999994039535522;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Thigh_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000002384185791
		 1.6 1.0000001192092896 2.4 1 3.2 1 4 1.0000001192092896 4.8 1 5.6 1 6.4 1.0000001192092896
		 7.2 0.99999988079071045 8 0.99999994039535522 8.8 0.99999988079071045 9.6 1.0000001192092896
		 10.4 0.99999988079071045 11.2 0.99999994039535522 12 1.0000001192092896 12.8 1.0000001192092896
		 13.6 1.0000002384185791 14.4 1.0000001192092896 15.2 1.0000001192092896 16 1.0000001192092896
		 16.8 1.0000001192092896 17.6 1.0000001192092896 18.4 1 19.2 1 20 1.0000001192092896
		 20.8 1 21.6 0.99999994039535522 22.4 1.0000001192092896 23.2 1.0000001192092896 24 1
		 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Thigh_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1.0000001192092896 2.4 1.0000001192092896
		 3.2 1 4 1 4.8 1.0000001192092896 5.6 1 6.4 1 7.2 1.0000001192092896 8 1 8.8 1.0000001192092896
		 9.6 1 10.4 0.99999994039535522 11.2 1 12 1 12.8 1 13.6 1.0000001192092896 14.4 1
		 15.2 1.0000001192092896 16 1 16.8 1 17.6 1.0000001192092896 18.4 0.99999994039535522
		 19.2 0.99999994039535522 20 1 20.8 1 21.6 1 22.4 1.0000001192092896 23.2 1 24 1.0000001192092896
		 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Thigh_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0504913330078125 0.8 0.8859405517578125
		 1.6 0.6495208740234375 2.4 0.4346923828125 3.2 0.2592010498046875 4 0.1046905517578125
		 4.8 -0.0433502197265625 5.6 -0.183563232421875 6.4 -0.3233184814453125 7.2 -0.48291015625
		 8 -0.692901611328125 8.8 -1.005279541015625 9.6 -1.383331298828125 10.4 -1.696533203125
		 11.2 -1.8843383789062498 12 -1.9650115966796875 12.8 -1.9279937744140625 13.6 -1.7693939208984375
		 14.4 -1.4993133544921875 15.2 -1.13690185546875 16 -0.6671905517578125 16.8 -0.128997802734375
		 17.6 0.376861572265625 18.4 0.829437255859375 19.2 1.2210693359375 20 1.4929046630859375
		 20.8 1.644256591796875 21.6 1.6913299560546875 22.4 1.63555908203125 23.2 1.4736480712890625
		 24 1.25372314453125 24.8 1.048797607421875;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Thigh_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -177.89923095703125 0.8 -178.14497375488281
		 1.6 -178.46585083007812 2.4 -178.82080078125 3.2 -179.21107482910156 4 -179.64396667480469
		 4.8 -180.09681701660156 5.6 -180.51739501953125 6.4 -180.89242553710937 7.2 -181.22610473632812
		 8 -181.48431396484375 8.8 -181.63493347167969 9.6 -181.64971923828125 10.4 -181.54791259765625
		 11.2 -181.38406372070312 12 -181.17674255371094 12.8 -180.95010375976562 13.6 -180.71638488769531
		 14.4 -180.48416137695312 15.2 -180.25579833984375 16 -180.00146484375 16.8 -179.71058654785156
		 17.6 -179.40948486328125 18.4 -179.08364868164062 19.2 -178.71514892578125 20 -178.36183166503906
		 20.8 -178.05348205566406 21.6 -177.79415893554688 22.4 -177.63229370117187 23.2 -177.63201904296875
		 24 -177.7572021484375 24.8 -177.89788818359375;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Thigh_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -44.200958251953125 0.8 -42.328033447265625
		 1.6 -39.0703125 2.4 -35.608505249023438 3.2 -33.010528564453125 4 -31.63409423828125
		 4.8 -31.120819091796875 5.6 -31.464004516601563 6.4 -32.31756591796875 7.2 -34.027542114257813
		 8 -37.625686645507813 8.8 -44.415512084960938 9.6 -53.092781066894531 10.4 -60.777122497558587
		 11.2 -66.494209289550781 12 -71.218544006347656 12.8 -74.994491577148438 13.6 -77.8631591796875
		 14.4 -79.785293579101563 15.2 -80.684608459472656 16 -80.479637145996094 16.8 -79.25311279296875
		 17.6 -77.173683166503906 18.4 -74.061080932617188 19.2 -70.094970703125 20 -65.981689453125
		 20.8 -61.784324645996101 21.6 -57.43733215332032 22.4 -53.453697204589844 23.2 -50.126205444335938
		 24 -47.163238525390625 24.8 -44.20098876953125;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Calf_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.44286236166954041 0.8 0.44286221265792847
		 1.6 0.44286224246025085 2.4 0.44286221265792847 3.2 0.44286233186721802 4 0.44286218285560608
		 4.8 0.44286224246025085 5.6 0.44286233186721802 6.4 0.44286227226257324 7.2 0.44286221265792847
		 8 0.44286221265792847 8.8 0.44286224246025085 9.6 0.44286221265792847 10.4 0.44286224246025085
		 11.2 0.44286239147186279 12 0.44286221265792847 12.8 0.44286221265792847 13.6 0.44286224246025085
		 14.4 0.44286236166954041 15.2 0.44286239147186279 16 0.44286236166954041 16.8 0.44286230206489563
		 17.6 0.44286215305328369 18.4 0.44286224246025085 19.2 0.44286218285560608 20 0.44286221265792847
		 20.8 0.44286218285560608 21.6 0.44286230206489563 22.4 0.44286227226257324 23.2 0.44286230206489563
		 24 0.44286227226257324 24.8 0.44286233186721802;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Calf_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 8.9406967163085938e-008 0.8 0 1.6 1.4901161193847656e-007
		 2.4 2.9802322387695313e-008 3.2 5.9604644775390625e-008 4 2.9802322387695313e-008
		 4.8 3.7252902984619141e-008 5.6 6.7055225372314453e-008 6.4 5.9604644775390625e-008
		 7.2 5.9604644775390625e-008 8 8.9406967163085938e-008 8.8 2.9802322387695313e-008
		 9.6 0 10.4 -2.9802322387695313e-008 11.2 0 12 0 12.8 -5.9604644775390625e-008 13.6 -5.9604644775390625e-008
		 14.4 0 15.2 0 16 0 16.8 -5.9604644775390625e-008 17.6 -5.9604644775390625e-008 18.4 -1.1920928955078125e-007
		 19.2 0 20 -1.1920928955078125e-007 20.8 -1.7881393432617188e-007 21.6 5.9604644775390625e-008
		 22.4 -1.1920928955078125e-007 23.2 -2.9802322387695313e-008 24 2.9802322387695313e-008
		 24.8 8.9406967163085938e-008;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Calf_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 7.4505805969238281e-009 0.8 1.4901161193847656e-008
		 1.6 0 2.4 -7.4505805969238281e-009 3.2 0 4 7.4505805969238281e-009 4.8 -7.4505805969238281e-009
		 5.6 -7.4505805969238281e-009 6.4 7.4505805969238281e-009 7.2 0 8 -7.4505805969238281e-009
		 8.8 -7.4505805969238281e-009 9.6 0 10.4 1.4901161193847656e-008 11.2 0 12 1.4901161193847656e-008
		 12.8 7.4505805969238281e-009 13.6 -7.4505805969238281e-009 14.4 -7.4505805969238281e-009
		 15.2 0 16 7.4505805969238281e-009 16.8 0 17.6 -7.4505805969238281e-009 18.4 -1.4901161193847656e-008
		 19.2 7.4505805969238281e-009 20 7.4505805969238281e-009 20.8 0 21.6 0 22.4 0 23.2 7.4505805969238281e-009
		 24 0 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Calf_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 0.99999994039535522
		 3.2 1.0000001192092896 4 0.99999988079071045 4.8 0.99999994039535522 5.6 0.99999994039535522
		 6.4 0.99999994039535522 7.2 1.0000001192092896 8 0.99999994039535522 8.8 0.99999994039535522
		 9.6 0.99999994039535522 10.4 1 11.2 1.0000001192092896 12 0.99999988079071045 12.8 0.99999988079071045
		 13.6 0.99999994039535522 14.4 1.0000001192092896 15.2 0.99999994039535522 16 1 16.8 0.99999982118606567
		 17.6 0.99999994039535522 18.4 1 19.2 0.99999994039535522 20 1 20.8 0.99999988079071045
		 21.6 1.0000001192092896 22.4 1 23.2 1 24 0.99999994039535522 24.8 0.99999994039535522;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Calf_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1.0000001192092896
		 4 0.99999994039535522 4.8 1.0000001192092896 5.6 1 6.4 1.0000001192092896 7.2 0.99999994039535522
		 8 0.99999988079071045 8.8 1 9.6 1 10.4 0.99999994039535522 11.2 1.0000002384185791
		 12 1 12.8 1 13.6 1.0000001192092896 14.4 1.0000001192092896 15.2 1.0000001192092896
		 16 1 16.8 1 17.6 1 18.4 1.0000001192092896 19.2 1 20 1 20.8 0.99999994039535522 21.6 1
		 22.4 1.0000001192092896 23.2 1.0000002384185791 24 1.0000001192092896 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Calf_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1.0000001192092896 2.4 1 3.2 1.0000001192092896
		 4 1 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 1 8 1 8.8 1 9.6 1.0000001192092896 10.4 0.99999994039535522
		 11.2 1 12 1 12.8 1 13.6 1 14.4 1.0000001192092896 15.2 1 16 1 16.8 1 17.6 1 18.4 1.0000001192092896
		 19.2 1 20 1.0000001192092896 20.8 1 21.6 1 22.4 1.0000001192092896 23.2 1 24 1 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Calf_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.6680421427727197e-008 0.8 -5.336085351359543e-008
		 1.6 -5.336085351359543e-008 2.4 0 3.2 -2.6680421427727197e-008 4 0 4.8 0 5.6 0 6.4 -1.3340211602042018e-008
		 7.2 -2.6680428533154554e-008 8 2.668043030951139e-008 8.8 -2.6680426756797715e-008
		 9.6 -4.0020641023374992e-008 10.4 -1.3340213378398857e-008 11.2 -2.6680421427727197e-008
		 12 -4.0020641023374992e-008 12.8 2.6680424980440876e-008 13.6 -1.3340211602042018e-008
		 14.4 -3.3350527672837416e-008 15.2 2.0010318735330657e-008 16 5.669590308343686e-008
		 16.8 1.6675265612775547e-009 17.6 1.5007740827854832e-008 18.4 -2.6680424980440876e-008
		 19.2 -1.3340212490220438e-008 20 4.0020637470661313e-008 20.8 2.6680428533154554e-008
		 21.6 -5.336085351359543e-008 22.4 -1.0672168571090879e-007 23.2 -2.6680421427727197e-008
		 24 -2.6680424980440876e-008 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Calf_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 2.6680426756797715e-008 1.6 1.3340212490220438e-008
		 2.4 2.6680426756797715e-008 3.2 -6.670105801021009e-009 4 1.6675268943444619e-009
		 4.8 0 5.6 -1.6675267833221596e-009 6.4 -6.6701071332886386e-009 7.2 1.0005159367665328e-008
		 8 -3.3350534778264773e-008 8.8 6.0030963311419328e-008 9.6 0 10.4 2.6680424980440876e-008
		 11.2 6.6701062451102189e-008 12 0 12.8 2.668043030951139e-008 13.6 0 14.4 -5.3360846408168072e-008
		 15.2 -5.3360857066309109e-008 16 2.6680426756797715e-008 16.8 0 17.6 -6.6701071332886386e-009
		 18.4 2.6680424980440876e-008 19.2 0 20 5.3360849960881751e-008 20.8 -2.668043030951139e-008
		 21.6 5.3360849960881751e-008 22.4 -2.6680426756797715e-008 23.2 0 24 8.0041289152177342e-008
		 24.8 -2.6680428533154554e-008;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Calf_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -76.536628723144531 0.8 -77.683799743652344
		 1.6 -77.222137451171875 2.4 -76.531333923339844 3.2 -77.001518249511719 4 -79.803375244140625
		 4.8 -83.76617431640625 5.6 -86.76800537109375 6.4 -87.775863647460938 7.2 -87.822715759277344
		 8 -87.885658264160156 8.8 -88.656280517578125 9.6 -89.442955017089844 10.4 -89.148094177246094
		 11.2 -87.145721435546875 12 -84.061782836914063 12.8 -80.676483154296875 13.6 -76.464622497558594
		 14.4 -71.951370239257813 15.2 -69.492546081542969 16 -70.798629760742187 16.8 -74.15911865234375
		 17.6 -76.798500061035156 18.4 -77.695777893066406 19.2 -77.871894836425781 20 -77.614288330078125
		 20.8 -76.685264587402344 21.6 -75.322463989257813 22.4 -74.526176452636719 23.2 -74.81866455078125
		 24 -75.677650451660156 24.8 -76.536636352539063;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Foot_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.44286227226257324 0.8 0.44286221265792847
		 1.6 0.44286236166954041 2.4 0.44286233186721802 3.2 0.44286227226257324 4 0.44286218285560608
		 4.8 0.44286233186721802 5.6 0.44286218285560608 6.4 0.44286221265792847 7.2 0.44286227226257324
		 8 0.44286227226257324 8.8 0.44286224246025085 9.6 0.44286221265792847 10.4 0.4428621232509613
		 11.2 0.44286227226257324 12 0.44286230206489563 12.8 0.44286224246025085 13.6 0.44286218285560608
		 14.4 0.44286221265792847 15.2 0.44286230206489563 16 0.44286227226257324 16.8 0.44286227226257324
		 17.6 0.44286221265792847 18.4 0.44286215305328369 19.2 0.44286215305328369 20 0.44286215305328369
		 20.8 0.4428621232509613 21.6 0.44286221265792847 22.4 0.44286221265792847 23.2 0.44286221265792847
		 24 0.44286224246025085 24.8 0.44286236166954041;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Foot_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -4.4703483581542969e-008 0.8 1.4901161193847656e-008
		 1.6 -8.9406967163085938e-008 2.4 -4.4703483581542969e-008 3.2 -5.9604644775390625e-008
		 4 2.9802322387695313e-008 4.8 -5.9604644775390625e-008 5.6 -2.9802322387695313e-008
		 6.4 0 7.2 -2.9802322387695313e-008 8 -5.9604644775390625e-008 8.8 -5.9604644775390625e-008
		 9.6 0 10.4 7.4505805969238281e-008 11.2 -7.4505805969238281e-008 12 -1.862645149230957e-008
		 12.8 -1.4901161193847656e-008 13.6 1.0430812835693359e-007 14.4 -1.4901161193847656e-007
		 15.2 -1.4901161193847656e-007 16 -8.9406967163085938e-008 16.8 2.9802322387695313e-008
		 17.6 0 18.4 4.4703483581542969e-008 19.2 -3.7252902984619141e-008 20 4.0978193283081055e-008
		 20.8 1.1548399925231934e-007 21.6 -7.4505805969238281e-008 22.4 4.4703483581542969e-008
		 23.2 2.9802322387695313e-008 24 1.4901161193847656e-008 24.8 -5.9604644775390625e-008;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Foot_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 7.4505805969238281e-009
		 4 -7.4505805969238281e-009 4.8 7.4505805969238281e-009 5.6 0 6.4 -1.4901161193847656e-008
		 7.2 0 8 7.4505805969238281e-009 8.8 7.4505805969238281e-009 9.6 7.4505805969238281e-009
		 10.4 0 11.2 7.4505805969238281e-009 12 -7.4505805969238281e-009 12.8 -2.2351741790771484e-008
		 13.6 1.4901161193847656e-008 14.4 0 15.2 0 16 -7.4505805969238281e-009 16.8 1.4901161193847656e-008
		 17.6 7.4505805969238281e-009 18.4 7.4505805969238281e-009 19.2 -7.4505805969238281e-009
		 20 -1.4901161193847656e-008 20.8 7.4505805969238281e-009 21.6 0 22.4 0 23.2 -7.4505805969238281e-009
		 24 -7.4505805969238281e-009 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Foot_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.99999994039535522 0.8 1 1.6 1.0000001192092896
		 2.4 1 3.2 0.99999994039535522 4 1 4.8 1.0000001192092896 5.6 0.99999994039535522
		 6.4 1.0000003576278687 7.2 1.0000001192092896 8 1 8.8 1 9.6 1.0000001192092896 10.4 1
		 11.2 1 12 1 12.8 0.99999988079071045 13.6 1 14.4 0.99999994039535522 15.2 1 16 0.99999994039535522
		 16.8 1 17.6 1 18.4 1.0000001192092896 19.2 0.99999982118606567 20 0.99999994039535522
		 20.8 1.0000001192092896 21.6 1.0000001192092896 22.4 1.0000001192092896 23.2 1 24 1.0000001192092896
		 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Foot_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1 2.4 1 3.2 1
		 4 1 4.8 1.0000001192092896 5.6 0.99999994039535522 6.4 1.0000003576278687 7.2 1.0000001192092896
		 8 1.0000001192092896 8.8 0.99999994039535522 9.6 1.0000001192092896 10.4 1.0000001192092896
		 11.2 0.99999994039535522 12 1 12.8 1 13.6 1 14.4 1 15.2 1 16 0.99999994039535522
		 16.8 0.99999994039535522 17.6 0.99999988079071045 18.4 1.0000001192092896 19.2 0.99999982118606567
		 20 1 20.8 1.0000001192092896 21.6 1.0000001192092896 22.4 1 23.2 1 24 1.0000002384185791
		 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Foot_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1.0000001192092896 1.6 1 2.4 0.99999994039535522
		 3.2 1.0000001192092896 4 0.99999994039535522 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 1
		 8 1 8.8 0.99999994039535522 9.6 1.0000001192092896 10.4 1 11.2 0.99999988079071045
		 12 1.0000001192092896 12.8 0.99999988079071045 13.6 1 14.4 1 15.2 0.99999994039535522
		 16 0.99999994039535522 16.8 0.99999994039535522 17.6 1 18.4 1 19.2 0.99999994039535522
		 20 1 20.8 0.99999994039535522 21.6 0.99999994039535522 22.4 1.0000001192092896 23.2 0.99999994039535522
		 24 1.0000001192092896 24.8 1;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Foot_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.013098495081067085 0.8 -0.043257623910903931
		 1.6 -0.059953689575195313 2.4 -0.063280336558818817 3.2 -0.051249869167804718 4 -0.039382684975862503
		 4.8 -0.034541163593530655 5.6 -0.032176073640584946 6.4 -0.022901609539985657 7.2 -0.0039758565835654736
		 8 0.019147267565131187 8.8 0.047084275633096695 9.6 0.086259745061397552 10.4 0.13300338387489319
		 11.2 0.18642526865005493 12 0.24349130690097806 12.8 0.29370179772377014 13.6 0.34092274308204651
		 14.4 0.38106375932693481 15.2 0.39041462540626526 16 0.35830926895141602 16.8 0.31889346241950989
		 17.6 0.29854166507720947 18.4 0.28194674849510193 19.2 0.24634274840354922 20 0.19476394355297089
		 20.8 0.13376258313655853 21.6 0.066041290760040283 22.4 0.013535707257688046 23.2 -0.0080522764474153519
		 24 -0.0099256094545125961 24.8 -0.010988920927047729;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Foot_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -0.43217077851295471 0.8 -0.33789995312690735
		 1.6 -0.21654403209686279 2.4 -0.092345185577869415 3.2 -0.012457331642508507 4 -0.0057093910872936249
		 4.8 -0.035396318882703781 5.6 -0.052774522453546524 6.4 -0.03905843198299408 7.2 -0.012408558279275894
		 8 0.017911477014422417 8.8 0.048808977007865906 9.6 0.07675459235906601 10.4 0.094358272850513458
		 11.2 0.099940188229084015 12 0.094159863889217377 12.8 0.080591142177581787 13.6 0.06411878764629364
		 14.4 0.042915500700473785 15.2 0.020868629217147827 16 0.010646691545844078 16.8 -0.0090141687542200089
		 17.6 -0.066734910011291504 18.4 -0.18278327584266663 19.2 -0.32771086692810059 20 -0.44631293416023254
		 20.8 -0.52581667900085449 21.6 -0.57773721218109131 22.4 -0.59288936853408813 23.2 -0.56085211038589478
		 24 -0.49695867300033569 24.8 -0.43259343504905701;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Foot_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 49.598159790039063 0.8 52.702640533447266
		 1.6 56.812831878662109 2.4 60.901351928710938 3.2 61.627117156982415 4 56.216133117675781
		 4.8 47.442340850830078 5.6 40.286628723144531 6.4 36.592952728271484 7.2 34.517303466796875
		 8 33.50872802734375 8.8 33.924823760986328 9.6 35.407966613769531 10.4 36.334453582763672
		 11.2 36.053318023681641 12 35.215469360351563 12.8 34.149967193603516 13.6 33.155532836914063
		 14.4 31.933404922485348 15.2 29.916387557983402 16 25.780046463012695 16.8 20.848747253417969
		 17.6 18.528810501098633 18.4 20.919195175170898 19.2 25.921091079711914 20 30.644147872924805
		 20.8 34.041290283203125 21.6 37.159492492675781 22.4 40.249286651611328 23.2 43.384609222412109
		 24 46.49139404296875 24.8 49.598155975341797;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe0_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.10185832530260086 0.8 0.10185831785202026
		 1.6 0.10185831785202026 2.4 0.10185831785202026 3.2 0.10185831785202026 4 0.10185831785202026
		 4.8 0.10185831040143967 5.6 0.10185831785202026 6.4 0.10185831785202026 7.2 0.10185830295085907
		 8 0.10185828804969788 8.8 0.10185831040143967 9.6 0.10185833275318146 10.4 0.10185831040143967
		 11.2 0.10185831785202026 12 0.10185830295085907 12.8 0.10185829550027847 13.6 0.10185830295085907
		 14.4 0.10185832530260086 15.2 0.10185831040143967 16 0.10185832530260086 16.8 0.10185832530260086
		 17.6 0.10185831785202026 18.4 0.10185833275318146 19.2 0.10185834020376205 20 0.10185833275318146
		 20.8 0.10185832530260086 21.6 0.10185831040143967 22.4 0.10185832530260086 23.2 0.10185830295085907
		 24 0.10185832530260086 24.8 0.10185832530260086;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe0_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.12843009829521179 0.8 0.1284300684928894
		 1.6 0.12843002378940582 2.4 0.12843002378940582 3.2 0.12843002378940582 4 0.12843000888824463
		 4.8 0.12843003869056702 5.6 0.12843009829521179 6.4 0.12843000888824463 7.2 0.12843003869056702
		 8 0.1284300833940506 8.8 0.1284300684928894 9.6 0.12842999398708344 10.4 0.1284300684928894
		 11.2 0.12843002378940582 12 0.12843012809753418 12.8 0.12842997908592224 13.6 0.12843000888824463
		 14.4 0.12843000888824463 15.2 0.12843003869056702 16 0.12843000888824463 16.8 0.12843005359172821
		 17.6 0.12842996418476105 18.4 0.12842994928359985 19.2 0.1284300833940506 20 0.12843011319637299
		 20.8 0.12842994928359985 21.6 0.12842996418476105 22.4 0.1284300833940506 23.2 0.1284300684928894
		 24 0.1284300684928894 24.8 0.12843009829521179;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe0_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 7.4505805969238281e-009 0.8 7.4505805969238281e-009
		 1.6 7.4505805969238281e-009 2.4 -7.4505805969238281e-009 3.2 -7.4505805969238281e-009
		 4 0 4.8 0 5.6 7.4505805969238281e-009 6.4 7.4505805969238281e-009 7.2 0 8 1.4901161193847656e-008
		 8.8 0 9.6 0 10.4 0 11.2 0 12 0 12.8 0 13.6 0 14.4 -1.4901161193847656e-008 15.2 -7.4505805969238281e-009
		 16 0 16.8 7.4505805969238281e-009 17.6 -7.4505805969238281e-009 18.4 -7.4505805969238281e-009
		 19.2 0 20 -7.4505805969238281e-009 20.8 0 21.6 0 22.4 -7.4505805969238281e-009 23.2 7.4505805969238281e-009
		 24 -7.4505805969238281e-009 24.8 7.4505805969238281e-009;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe0_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 1 4 1.0000001192092896
		 4.8 0.99999994039535522 5.6 1.0000001192092896 6.4 1 7.2 1 8 1 8.8 1 9.6 1 10.4 0.99999994039535522
		 11.2 0.99999994039535522 12 0.99999994039535522 12.8 1.0000001192092896 13.6 1 14.4 1
		 15.2 1 16 0.99999994039535522 16.8 1.0000001192092896 17.6 1 18.4 1.0000001192092896
		 19.2 1.0000001192092896 20 1.0000001192092896 20.8 1.0000001192092896 21.6 1 22.4 1.0000001192092896
		 23.2 0.99999988079071045 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe0_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1 4.8 0.99999994039535522 5.6 1 6.4 1 7.2 1 8 1 8.8 1 9.6 1 10.4 1 11.2 1 12 1
		 12.8 1 13.6 1 14.4 1 15.2 0.99999994039535522 16 1 16.8 1.0000001192092896 17.6 1
		 18.4 1.0000001192092896 19.2 1.0000001192092896 20 1.0000001192092896 20.8 1.0000001192092896
		 21.6 0.99999994039535522 22.4 1.0000001192092896 23.2 0.99999988079071045 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe0_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1 4.8 0.99999994039535522 5.6 1 6.4 1 7.2 0.99999994039535522 8 1.0000001192092896
		 8.8 1.0000001192092896 9.6 1 10.4 1.0000001192092896 11.2 1 12 1 12.8 1.0000001192092896
		 13.6 1 14.4 1.0000001192092896 15.2 1 16 1 16.8 1 17.6 0.99999994039535522 18.4 1
		 19.2 1 20 1 20.8 1.0000001192092896 21.6 1 22.4 1.0000001192092896 23.2 0.99999994039535522
		 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe0_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.5046247174032032e-006 0.8 -2.5012900550791528e-006
		 1.6 -2.5012900550791528e-006 2.4 -2.50796006184828e-006 3.2 -2.50796006184828e-006
		 4 -2.5012900550791528e-006 4.8 -2.4979551653814269e-006 5.6 -2.5012900550791528e-006
		 6.4 -2.50796006184828e-006 7.2 -2.4946198209363502e-006 8 -2.5213003027602099e-006
		 8.8 -2.5213003027602099e-006 9.6 -2.4946198209363502e-006 10.4 -2.5213003027602099e-006
		 11.2 -2.50796006184828e-006 12 -2.50796006184828e-006 12.8 -2.5213003027602099e-006
		 13.6 -2.4946198209363502e-006 14.4 -2.5213003027602099e-006 15.2 -2.5079602892219555e-006
		 16 -2.5213003027602099e-006 16.8 -2.5146298412437318e-006 17.6 -2.5062925033125794e-006
		 18.4 -2.5046247174032032e-006 19.2 -2.5029571588675026e-006 20 -2.5062922759389039e-006
		 20.8 -2.5046247174032032e-006 21.6 -2.5046251721505541e-006 22.4 -2.5062922759389039e-006
		 23.2 -2.5054591787920799e-006 24 -2.505458724044729e-006 24.8 -2.5046247174032032e-006;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe0_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 2.7988882370620638e-013 0.8 1.3027552127342634e-011
		 1.6 2.0844083403748215e-010 2.4 8.3376333614992859e-010 3.2 -2.0844083403748215e-010
		 4 -2.5012896198717272e-009 4.8 0 5.6 6.670105801021009e-009 6.4 6.6701066891994287e-009
		 7.2 -6.6701066891994287e-009 8 6.6701066891994287e-009 8.8 0 9.6 0 10.4 0 11.2 8.3376339166107982e-010
		 12 1.6675267833221596e-009 12.8 0 13.6 0 14.4 0 15.2 0 16 0 16.8 1.6675264502552523e-009
		 17.6 -2.6055105295519354e-010 18.4 -1.3377665641911562e-009 19.2 -1.0422039897761692e-009
		 20 -4.6899178984816103e-010 20.8 1.0422040314095327e-010 21.6 7.2954292607008142e-010
		 22.4 6.2532240496793179e-010 23.2 -5.2110215448264434e-011 24 -3.3871636051507892e-010
		 24.8 2.7988882370620638e-013;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe0_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 90 0.8 90 1.6 90 2.4 90 3.2 90 4 90 4.8 90
		 5.6 90 6.4 90 7.2 90 8 90 8.8 90 9.6 90 10.4 90 11.2 90 12 90 12.8 90 13.6 90 14.4 90
		 15.2 90 16 90 16.8 90 17.6 90 18.4 90 19.2 90 20 90 20.8 90 21.6 90 22.4 90 23.2 90
		 24 90 24.8 90;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe01_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.01328587532043457 0.8 0.013285882771015167
		 1.6 0.013285920023918152 2.4 0.013285905122756958 3.2 0.013285905122756958 4 0.013285890221595764
		 4.8 0.013285845518112183 5.6 0.013285905122756958 6.4 0.01328587532043457 7.2 0.013285845518112183
		 8 0.013285890221595764 8.8 0.013285890221595764 9.6 0.013285897672176361 10.4 0.013285944238305092
		 11.2 0.013285934925079346 12 0.013285696506500244 12.8 0.013285666704177856 13.6 0.013285815715789795
		 14.4 0.01328587532043457 15.2 0.013285815715789795 16 0.013285726308822632 16.8 0.013285905122756958
		 17.6 0.013286054134368896 18.4 0.01328587532043457 19.2 0.013285860419273376 20 0.013285994529724121
		 20.8 0.013285890221595764 21.6 0.013285882771015167 22.4 0.013285867869853973 23.2 0.013285856693983078
		 24 0.013285873457789421 24.8 0.01328587532043457;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe01_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 4.6566128730773926e-010 0.8 4.6566128730773926e-010
		 1.6 -9.3132257461547852e-010 2.4 -1.6298145055770874e-009 3.2 -3.4924596548080444e-010
		 4 3.7252902984619141e-009 4.8 -1.4901161193847656e-008 5.6 4.4703483581542969e-008
		 6.4 0 7.2 -1.4901161193847656e-008 8 1.4901161193847656e-008 8.8 7.4505805969238281e-009
		 9.6 7.4505805969238281e-009 10.4 1.1175870895385742e-008 11.2 0 12 7.4505805969238281e-009
		 12.8 3.7252902984619141e-008 13.6 1.4901161193847656e-008 14.4 7.4505805969238281e-009
		 15.2 0 16 3.7252902984619141e-008 16.8 -1.1175870895385742e-008 17.6 -4.6566128730773926e-009
		 18.4 0 19.2 0 20 -3.7252902984619141e-009 20.8 -1.862645149230957e-009 21.6 0 22.4 9.3132257461547852e-010
		 23.2 1.862645149230957e-009 24 0 24.8 4.6566128730773926e-010;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe01_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -7.4505805969238281e-009 0.8 0 1.6 -7.4505805969238281e-009
		 2.4 -7.4505805969238281e-009 3.2 -7.4505805969238281e-009 4 0 4.8 -7.4505805969238281e-009
		 5.6 0 6.4 7.4505805969238281e-009 7.2 -7.4505805969238281e-009 8 -7.4505805969238281e-009
		 8.8 1.4901161193847656e-008 9.6 7.4505805969238281e-009 10.4 0 11.2 7.4505805969238281e-009
		 12 7.4505805969238281e-009 12.8 0 13.6 7.4505805969238281e-009 14.4 0 15.2 7.4505805969238281e-009
		 16 -7.4505805969238281e-009 16.8 -7.4505805969238281e-009 17.6 1.4901161193847656e-008
		 18.4 0 19.2 0 20 -7.4505805969238281e-009 20.8 0 21.6 -7.4505805969238281e-009 22.4 7.4505805969238281e-009
		 23.2 0 24 -7.4505805969238281e-009 24.8 -7.4505805969238281e-009;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe01_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1.0000001192092896 2.4 1 3.2 1
		 4 1.0000001192092896 4.8 1 5.6 1.0000001192092896 6.4 1.0000001192092896 7.2 1 8 1
		 8.8 1 9.6 0.99999994039535522 10.4 1 11.2 0.99999994039535522 12 0.99999994039535522
		 12.8 1.0000001192092896 13.6 0.99999994039535522 14.4 1.0000001192092896 15.2 1 16 0.99999994039535522
		 16.8 1.0000001192092896 17.6 1 18.4 1.0000001192092896 19.2 1 20 1.0000001192092896
		 20.8 1.0000001192092896 21.6 0.99999994039535522 22.4 1.0000001192092896 23.2 0.99999988079071045
		 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe01_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1.0000001192092896 4.8 1 5.6 1 6.4 1.0000001192092896 7.2 1 8 1 8.8 0.99999994039535522
		 9.6 0.99999994039535522 10.4 1 11.2 1 12 1 12.8 1 13.6 0.99999994039535522 14.4 1
		 15.2 1 16 0.99999994039535522 16.8 1.0000001192092896 17.6 1 18.4 1.0000001192092896
		 19.2 1.0000001192092896 20 1.0000001192092896 20.8 1.0000001192092896 21.6 0.99999994039535522
		 22.4 1 23.2 0.99999982118606567 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe01_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1 4.8 0.99999994039535522 5.6 1 6.4 1 7.2 0.99999994039535522 8 1.0000001192092896
		 8.8 1.0000001192092896 9.6 1 10.4 1.0000001192092896 11.2 1 12 1 12.8 1.0000001192092896
		 13.6 1 14.4 1.0000001192092896 15.2 1 16 1 16.8 1 17.6 0.99999994039535522 18.4 1
		 19.2 1 20 1 20.8 1.0000001192092896 21.6 1 22.4 1.0000001192092896 23.2 0.99999994039535522
		 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe01_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 -6.6701066891994287e-009 2.4 0
		 3.2 0 4 -6.6701062451102189e-009 4.8 3.3350533445997144e-009 5.6 -6.6701066891994287e-009
		 6.4 1.3340211602042018e-008 7.2 0 8 0 8.8 -1.3340214266577277e-008 9.6 0 10.4 0 11.2 0
		 12 -1.3340213378398857e-008 12.8 -1.3340213378398857e-008 13.6 0 14.4 -2.6680426756797715e-008
		 15.2 0 16 -2.6680428533154554e-008 16.8 -6.670105801021009e-009 17.6 1.6675266722998572e-009
		 18.4 8.337631696164749e-010 19.2 0 20 0 20.8 -1.6675264502552523e-009 21.6 -6.6701071332886386e-009
		 22.4 0 23.2 -1.6675268943444619e-009 24 -8.3376333614992859e-010 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe01_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 3.4604435202728601e-012 0.8 4.5596432879380089e-011
		 1.6 0 2.4 8.3376328063877736e-010 3.2 -3.1266125799511713e-010 4 -8.3376328063877736e-010
		 4.8 -2.5012898419163321e-009 5.6 -1.0005158479486909e-008 6.4 -1.3340211602042018e-008
		 7.2 -2.0010318735330657e-008 8 0 8.8 6.6701066891994287e-009 9.6 -3.3350535666443193e-009
		 10.4 0 11.2 8.3376333614992859e-010 12 1.6675267833221596e-009 12.8 0 13.6 -3.3350535666443193e-009
		 14.4 0 15.2 0 16 6.6701071332886386e-009 16.8 1.6675264502552523e-009 17.6 -8.3376333614992859e-010
		 18.4 -1.3157825939913437e-009 19.2 -5.1133136613756847e-010 20 4.4293671508377481e-010
		 20.8 -1.1464245108783189e-009 21.6 3.6477149079061633e-010 22.4 -9.3798369071862453e-010
		 23.2 1.9541329665528906e-010 24 -4.1688164031938868e-010 24.8 3.1169435522199196e-012;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe01_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 5.4715720843034887e-010 0.8 -0.002036363584920764
		 1.6 -0.0095682395622134209 2.4 -0.024631582200527191 3.2 -0.032163631170988083 4 1.9667360782623291
		 4.8 5.964508056640625 5.6 7.9633889198303214 6.4 7.6961474418640137 7.2 7.1616744995117188
		 8 6.8944315910339355 8.8 5.2545890808105469 9.6 1.9749186038970947 10.4 0.33508673310279846
		 11.2 0.14707164466381073 12 -0.22895582020282745 12.8 -0.41696962714195251 13.6 -0.44640007615089417
		 14.4 -0.50526976585388184 15.2 -0.53470230102539063 16 -0.56097757816314697 16.8 -0.61352062225341797
		 17.6 -0.63979339599609375 18.4 -0.66049587726593018 19.2 -0.7019004225730896 20 -0.72260260581970215
		 20.8 -0.7358354926109314 21.6 -0.76230162382125854 22.4 -0.77553457021713257 23.2 -0.58165019750595093
		 24 -0.193883016705513 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe02_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.013285879045724869 0.8 0.013285890221595764
		 1.6 0.013285867869853973 2.4 0.013285890221595764 3.2 0.01328587532043457 4 0.013285830616950989
		 4.8 0.01328587532043457 5.6 0.01328587532043457 6.4 0.013285845518112183 7.2 0.01328587532043457
		 8 0.013285920023918152 8.8 0.013285860419273376 9.6 0.01328585296869278 10.4 0.013285841792821884
		 11.2 0.013285845518112183 12 0.01328594982624054 12.8 0.013285964727401733 13.6 0.013286054134368896
		 14.4 0.013285905122756958 15.2 0.01328587532043457 16 0.013285994529724121 16.8 0.01328587532043457
		 17.6 0.013285785913467407 18.4 0.013285994529724121 19.2 0.013285920023918152 20 0.013285815715789795
		 20.8 0.01328568160533905 21.6 0.013285793364048004 22.4 0.013285771012306213 23.2 0.013285867869853973
		 24 0.013285854831337929 24.8 0.013285879045724869;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe02_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 2.3283064365386963e-010 2.4 -2.3283064365386963e-010
		 3.2 4.6566128730773926e-010 4 -3.7252902984619141e-009 4.8 -7.4505805969238281e-009
		 5.6 0 6.4 1.4901161193847656e-008 7.2 1.4901161193847656e-008 8 2.2351741790771484e-008
		 8.8 -3.7252902984619141e-009 9.6 -5.5879354476928711e-009 10.4 -3.7252902984619141e-009
		 11.2 0 12 -7.4505805969238281e-009 12.8 0 13.6 -4.4703483581542969e-008 14.4 7.4505805969238281e-009
		 15.2 2.2351741790771484e-008 16 -4.4703483581542969e-008 16.8 0 17.6 9.3132257461547852e-010
		 18.4 9.3132257461547852e-010 19.2 0 20 1.862645149230957e-009 20.8 2.7939677238464355e-009
		 21.6 0 22.4 9.3132257461547852e-010 23.2 -9.3132257461547852e-010 24 0 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe02_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 -7.4505805969238281e-009 1.6 1.4901161193847656e-008
		 2.4 7.4505805969238281e-009 3.2 2.2351741790771484e-008 4 -1.4901161193847656e-008
		 4.8 7.4505805969238281e-009 5.6 7.4505805969238281e-009 6.4 -7.4505805969238281e-009
		 7.2 7.4505805969238281e-009 8 1.4901161193847656e-008 8.8 -2.2351741790771484e-008
		 9.6 -7.4505805969238281e-009 10.4 7.4505805969238281e-009 11.2 0 12 0 12.8 0 13.6 0
		 14.4 -1.4901161193847656e-008 15.2 0 16 7.4505805969238281e-009 16.8 7.4505805969238281e-009
		 17.6 -2.2351741790771484e-008 18.4 0 19.2 0 20 1.4901161193847656e-008 20.8 0 21.6 7.4505805969238281e-009
		 22.4 -1.4901161193847656e-008 23.2 0 24 7.4505805969238281e-009 24.8 0;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe02_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 0.99999994039535522
		 3.2 1 4 1.0000001192092896 4.8 1.0000001192092896 5.6 1.0000001192092896 6.4 0.99999994039535522
		 7.2 0.99999988079071045 8 1 8.8 1 9.6 1 10.4 0.99999994039535522 11.2 0.99999994039535522
		 12 1.0000001192092896 12.8 1.0000001192092896 13.6 1.0000002384185791 14.4 0.99999994039535522
		 15.2 1 16 1.0000001192092896 16.8 0.99999988079071045 17.6 0.99999988079071045 18.4 1.0000001192092896
		 19.2 1 20 1.0000001192092896 20.8 1 21.6 1 22.4 1.0000001192092896 23.2 1.0000002384185791
		 24 1.0000001192092896 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe02_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1 3.2 1
		 4 1.0000001192092896 4.8 1.0000001192092896 5.6 1 6.4 1 7.2 0.99999994039535522 8 0.99999994039535522
		 8.8 1.0000001192092896 9.6 0.99999994039535522 10.4 0.99999994039535522 11.2 1 12 1
		 12.8 1.0000001192092896 13.6 1.0000001192092896 14.4 0.99999994039535522 15.2 1 16 1.0000001192092896
		 16.8 0.99999994039535522 17.6 0.99999994039535522 18.4 1.0000001192092896 19.2 1.0000001192092896
		 20 1.0000001192092896 20.8 1 21.6 1 22.4 1 23.2 1.0000001192092896 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe02_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1 1.6 1 2.4 1.0000001192092896
		 3.2 1 4 1.0000001192092896 4.8 1 5.6 1 6.4 1 7.2 0.99999994039535522 8 1 8.8 1.0000001192092896
		 9.6 1 10.4 1.0000001192092896 11.2 1 12 1.0000001192092896 12.8 1.0000001192092896
		 13.6 1.0000001192092896 14.4 1 15.2 1.0000001192092896 16 1.0000001192092896 16.8 1
		 17.6 0.99999994039535522 18.4 1 19.2 1 20 1 20.8 1.0000001192092896 21.6 1 22.4 1.0000001192092896
		 23.2 1 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe02_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 1.3340213378398857e-008 1.6 -6.6701066891994287e-009
		 2.4 -1.3340213378398857e-008 3.2 0 4 0 4.8 6.670105801021009e-009 5.6 -2.6680426756797715e-008
		 6.4 1.3340213378398857e-008 7.2 -1.3340214266577277e-008 8 -1.3340214266577277e-008
		 8.8 1.3340211602042018e-008 9.6 1.3340213378398857e-008 10.4 -2.6680428533154554e-008
		 11.2 -1.3340213378398857e-008 12 1.3340212490220438e-008 12.8 0 13.6 0 14.4 0 15.2 -2.6680424980440876e-008
		 16 1.3340212490220438e-008 16.8 -6.6701071332886386e-009 17.6 -1.6675267833221596e-009
		 18.4 0 19.2 1.6675264502552523e-009 20 0 20.8 -1.6675265612775547e-009 21.6 0 22.4 1.6675265612775547e-009
		 23.2 8.3376322512762613e-010 24 0 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe02_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 3.7912212431934211e-012 0.8 -6.5137760636713171e-012
		 1.6 2.0844083403748215e-010 2.4 4.1688169583053991e-010 3.2 -5.2110208509370537e-011
		 4 -2.5012898419163321e-009 4.8 3.3350529005105045e-009 5.6 -3.3350531225551094e-009
		 6.4 -3.3350535666443193e-009 7.2 6.6701071332886386e-009 8 2.0010320511687496e-008
		 8.8 -1.0005160255843748e-008 9.6 1.0005160255843748e-008 10.4 -3.3350535666443193e-009
		 11.2 -8.3376333614992859e-010 12 0 12.8 3.3350531225551094e-009 13.6 6.6701053569317992e-009
		 14.4 0 15.2 6.6701066891994287e-009 16 0 16.8 8.3376344717223095e-010 17.6 -2.0844086179305774e-010
		 18.4 7.5559791756774075e-010 19.2 2.2146837141967524e-010 20 -9.5101115871187858e-010
		 20.8 -1.8238571763973255e-010 21.6 1.3027552647759677e-010 22.4 -1.1724795578871294e-009
		 23.2 -1.4330304720644449e-009 24 3.9734029955162953e-010 24.8 3.1169435522199196e-012;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe02_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 5.4715720843034887e-010 0.8 -0.002036363584920764
		 1.6 -0.0095683475956320763 2.4 -0.024632012471556664 3.2 -0.032163549214601517 4 1.9667347669601443
		 4.8 5.9645047187805176 5.6 7.9633879661560059 6.4 7.6961474418640137 7.2 7.1616721153259277
		 8 6.894434928894043 8.8 5.2545890808105469 9.6 1.9749184846878052 10.4 0.33508589863777161
		 11.2 0.14707185328006744 12 -0.22895663976669312 12.8 -0.41697046160697937 13.6 -0.44640681147575378
		 14.4 -0.50526809692382813 15.2 -0.53470230102539063 16 -0.56097406148910522 16.8 -0.61352074146270752
		 17.6 -0.63979345560073853 18.4 -0.6604958176612854 19.2 -0.70190048217773438 20 -0.72260260581970215
		 20.8 -0.73583585023880005 21.6 -0.76230192184448242 22.4 -0.775534987449646 23.2 -0.58165031671524048
		 24 -0.19388291239738464 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe0Nub_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.01328587532043457 0.8 0.013285882771015167
		 1.6 0.013285815715789795 2.4 0.013285860419273376 3.2 0.013285860419273376 4 0.013285920023918152
		 4.8 0.013285845518112183 5.6 0.013285815715789795 6.4 0.01328587532043457 7.2 0.013285934925079346
		 8 0.01328587532043457 8.8 0.013285845518112183 9.6 0.013285912573337555 10.4 0.01328582689166069
		 11.2 0.013285815715789795 12 0.01328594982624054 12.8 0.013285964727401733 13.6 0.01328587532043457
		 14.4 0.013285964727401733 15.2 0.013285994529724121 16 0.013285964727401733 16.8 0.013285905122756958
		 17.6 0.013285785913467407 18.4 0.013285905122756958 19.2 0.013285785913467407 20 0.013285815715789795
		 20.8 0.013285964727401733 21.6 0.013285927474498749 22.4 0.013285957276821136 23.2 0.01328592374920845
		 24 0.013285871595144272 24.8 0.01328587532043457;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe0Nub_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 1.1641532182693481e-009 2.4 6.9849193096160889e-010
		 3.2 0 4 3.7252902984619141e-009 4.8 3.7252902984619141e-009 5.6 -7.4505805969238281e-009
		 6.4 1.4901161193847656e-008 7.2 7.4505805969238281e-009 8 0 8.8 -3.7252902984619141e-009
		 9.6 1.0244548320770264e-008 10.4 -3.7252902984619141e-009 11.2 3.7252902984619141e-009
		 12 -7.4505805969238281e-009 12.8 -1.862645149230957e-008 13.6 0 14.4 -2.9802322387695313e-008
		 15.2 -5.2154064178466797e-008 16 -7.4505805969238281e-009 16.8 -1.862645149230957e-009
		 17.6 4.6566128730773926e-010 18.4 0 19.2 -9.3132257461547852e-010 20 0 20.8 -4.6566128730773926e-010
		 21.6 -9.3132257461547852e-010 22.4 -9.3132257461547852e-010 23.2 0 24 4.6566128730773926e-010
		 24.8 0;
createNode animCurveTL -n "Bip02FBXASC032RFBXASC032Toe0Nub_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 7.4505805969238281e-009 0.8 7.4505805969238281e-009
		 1.6 0 2.4 0 3.2 -7.4505805969238281e-009 4 7.4505805969238281e-009 4.8 0 5.6 0 6.4 -7.4505805969238281e-009
		 7.2 0 8 -7.4505805969238281e-009 8.8 1.4901161193847656e-008 9.6 7.4505805969238281e-009
		 10.4 -7.4505805969238281e-009 11.2 -7.4505805969238281e-009 12 -7.4505805969238281e-009
		 12.8 0 13.6 0 14.4 7.4505805969238281e-009 15.2 -7.4505805969238281e-009 16 0 16.8 0
		 17.6 7.4505805969238281e-009 18.4 7.4505805969238281e-009 19.2 7.4505805969238281e-009
		 20 -7.4505805969238281e-009 20.8 0 21.6 0 22.4 7.4505805969238281e-009 23.2 0 24 0
		 24.8 7.4505805969238281e-009;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe0Nub_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1 0.8 1 1.6 1 2.4 1 3.2 1 4 1 4.8 0.99999994039535522
		 5.6 1 6.4 1.0000001192092896 7.2 1 8 1 8.8 1 9.6 0.99999994039535522 10.4 1.0000001192092896
		 11.2 1 12 1 12.8 0.99999994039535522 13.6 1 14.4 1 15.2 1 16 1 16.8 1 17.6 1 18.4 1.0000001192092896
		 19.2 1 20 1.0000001192092896 20.8 1.0000001192092896 21.6 1 22.4 1.0000001192092896
		 23.2 0.99999988079071045 24 1 24.8 1;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe0Nub_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1 2.4 1 3.2 1.0000001192092896 4 1 4.8 0.99999994039535522 5.6 1 6.4 1.0000001192092896
		 7.2 1 8 1 8.8 1 9.6 0.99999994039535522 10.4 1 11.2 1 12 1 12.8 0.99999994039535522
		 13.6 1 14.4 1 15.2 1 16 1 16.8 1 17.6 1 18.4 1.0000001192092896 19.2 1 20 1.0000001192092896
		 20.8 1.0000001192092896 21.6 1 22.4 1 23.2 0.99999988079071045 24 1 24.8 1.0000001192092896;
createNode animCurveTU -n "Bip02FBXASC032RFBXASC032Toe0Nub_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.0000001192092896 0.8 1.0000001192092896
		 1.6 1 2.4 1 3.2 1.0000001192092896 4 1 4.8 0.99999994039535522 5.6 1 6.4 1 7.2 1
		 8 1.0000001192092896 8.8 1.0000001192092896 9.6 1 10.4 1.0000001192092896 11.2 1
		 12 1 12.8 1 13.6 1 14.4 1 15.2 1.0000001192092896 16 1 16.8 1 17.6 1 18.4 1 19.2 1
		 20 1 20.8 1.0000001192092896 21.6 1 22.4 1 23.2 0.99999994039535522 24 1 24.8 1.0000001192092896;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe0Nub_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 6.670105801021009e-009 1.6 -6.6701066891994287e-009
		 2.4 0 3.2 -1.3340211602042018e-008 4 -6.6701066891994287e-009 4.8 0 5.6 -1.3340213378398857e-008
		 6.4 0 7.2 1.3340213378398857e-008 8 0 8.8 0 9.6 1.3340214266577277e-008 10.4 0 11.2 0
		 12 0 12.8 0 13.6 0 14.4 1.3340213378398857e-008 15.2 0 16 -1.3340213378398857e-008
		 16.8 0 17.6 0 18.4 -8.3376322512762613e-010 19.2 -1.6675266722998572e-009 20 0 20.8 0
		 21.6 -3.3350533445997144e-009 22.4 1.6675266722998572e-009 23.2 -8.3376344717223095e-010
		 24 0 24.8 0;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe0Nub_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 3.7912212431934211e-012 0.8 -4.5596432879380089e-011
		 1.6 0 2.4 4.168816680749643e-010 3.2 5.2110208509370537e-011 4 -8.3376333614992859e-010
		 4.8 -2.501290063960937e-009 5.6 6.6701066891994287e-009 6.4 -3.3350529005105045e-009
		 7.2 0 8 -6.6701066891994287e-009 8.8 0 9.6 6.6701071332886386e-009 10.4 -6.670105801021009e-009
		 11.2 -4.168816680749643e-010 12 0 12.8 -3.3350535666443193e-009 13.6 -3.3350533445997144e-009
		 14.4 -6.6701066891994287e-009 15.2 0 16 3.3350533445997144e-009 16.8 0 17.6 -2.2146838529746304e-010
		 18.4 7.5559791756774075e-010 19.2 1.9541328277750125e-010 20 -9.5101115871187858e-010
		 20.8 -1.9541325502192564e-010 21.6 -6.7743272103015784e-010 22.4 -3.2568875374394679e-010
		 23.2 1.087800738375222e-009 24 3.9734032730720514e-010 24.8 3.1169435522199196e-012;
createNode animCurveTA -n "Bip02FBXASC032RFBXASC032Toe0Nub_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 0.8 0 1.6 0 2.4 0 3.2 0 4 0 4.8 0 5.6 -1.7075473124350538e-006
		 6.4 0 7.2 0 8 3.4150946248701075e-006 8.8 0 9.6 0 10.4 0 11.2 0 12 4.2688682810876344e-007
		 12.8 0 13.6 1.7075473124350538e-006 14.4 -1.7075473124350538e-006 15.2 0 16 1.7075473124350538e-006
		 16.8 8.5377365621752688e-007 17.6 0 18.4 -1.0672169281633614e-007 19.2 0 20 0 20.8 0
		 21.6 5.336085351359543e-008 22.4 0 23.2 0 24 -2.6680426756797715e-008 24.8 0;
createNode skinCluster -n "skinCluster1";
	setAttr ".skm" -1;
	setAttr -s 138 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.0097181500000000001 0.00037950100000000002 0.0023266900000000002 0
		 -0.000370875 -0.0099927899999999997 8.0824900000000006e-005 0 0.0023280800000000002 -7.7444199999999996e-006 0.0097252199999999997 0
		 -0.65090199999999998 1.5040230000000001 0.11916599999999999 1;
	setAttr ".gm" -type "matrix" 121.97685199999999 0 0 0 0 -1.0663599999999999e-005 121.97685199999999 0
		 0 -67.091924000000006 -5.8653599999999995e-006 0 -76.695364999999995 147.56112100000001 3.761733 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:137]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 24 ".wm";
	setAttr -s 24 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 99.999994039621498 99.999994039621498 100 6.1232259663261692e-017
		 -6.1232339957315016e-017 -1.5707950154926333 0 0 99.605453014373779 -4.3037612584839735e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654746 0 0 0.70710678118654757 1
		 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 1.0000000000009615 1.0000000000027798 1.0000000000037412 -1.5707949399947918
		 -1.5707949399947916 0 0 0 6.3108872417680944e-030 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0 0 0 1 0.010000000596037886 0.010000000596037886 0.01 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.0000000190370255 1.0000000190354075 0.99999999999646805 -4.160399887678803e-006
		 1.1024679939494495e-009 0.00079493125414108298 0 0.10185825814246896 -7.5646419967593647e-005
		 1.0484352197450548e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999903855
		 0.99999999999722022 0.99999999999625877 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1.0000000000000002 1.4823076576950252e-021
		 1.1024680149315129e-009 4.5866088704826772e-015 0 0.094883406099660172 -8.0499057403623131e-005
		 -3.2787813189916207e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998096297482
		 0.99999998096459286 1.0000000000035321 no;
	setAttr ".xm[4]" -type "matrix" "xform" 0.99999999999999989 1 0.99999999999999967 1.4823076576950256e-021
		 1.1024680149315135e-009 4.5867172906999273e-015 0 0.1010944487398433 -8.2527174617430966e-005
		 -3.4035078370426836e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 0.99999999999999978 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999978 1.0000000000000002 1.482307657695026e-021
		 1.1024680149315121e-009 4.5866088704826772e-015 0 0.1036415912270372 -8.6497631724243278e-005
		 -3.5417140034881737e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1 1.0000000000000004 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1.0000000014934207 1.0000000024314166 1.0000000000005567 -1.9695580104603899e-007
		 -1.2831642682016146e-006 0.3047763320295897 0 0.10864744872783016 -6.1982153942493224e-005
		 -2.8719315262142541e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 0.99999999999999978 no;
	setAttr ".xm[7]" -type "matrix" "xform" 0.99999999805808926 0.99999997861528611 0.99999997762501769 -4.7415977067545902e-005
		 1.5165045752298725 2.835972657723465 0 9.3509206600117523e-008 6.5051986388731109e-005
		 -0.038798501984717126 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999850657928
		 0.99999999756858338 0.99999999999944333 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1.0000000060781384 1.0000000000001215 1.0000000059328122 -4.271415023207202e-009
		 0.016145807636436728 -8.9743286555877167e-008 0 0.15029534561820987 1.8780471218025144e-015
		 -1.2315881203761592e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000019419109
		 1.0000000213847144 1.0000000223749828 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1.0000000057395282 0.99999998578190652 0.99999999999999989 0
		 0 -0.13896988711970176 0 0.26571736318377787 -3.3280277212397737e-014 2.6050135604194224e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999392186156 0.99999999999987854
		 0.99999999406718776 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1.0000000147478101 1.0000000417114911 1.000000008802165 1.5700000481004204
		 2.3602193525984482e-008 -0.095993098476443384 0 0.26571743011176624 5.9372373892307984e-009
		 -3.5689449173759158e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999426047181
		 1.0000000142180936 1.0000000000000002 no;
	setAttr ".xm[11]" -type "matrix" "xform" 0.99999997938460083 0.99999997861640122
		 0.999999999999443 -1.9819809701927383e-007 1.286284274016676e-006 -0.30557399290348086 0 0.08159119986437835
		 -1.3442802981877833e-008 -6.0557671040012331e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.99999999850657928 0.99999999756858338 0.99999999999944333 no;
	setAttr ".xm[12]" -type "matrix" "xform" 0.99999999805809625 0.99999997861529211
		 0.99999997762501691 -4.7505647178434622e-005 -1.5165071477988425 2.8360674394934859 0 1.2857641173980028e-007
		 6.4831373222828947e-005 0.038798502344881546 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999850657928 0.99999999756858338 0.99999999999944333 no;
	setAttr ".xm[13]" -type "matrix" "xform" 1.0000000152670316 0.99999999999913758 1.0000000151026616 6.638673716379797e-008
		 -0.032697127098095406 -1.2841206921151637e-006 0 0.15029534561820984 2.3742349128708004e-015
		 1.2315881647850802e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000019419037
		 1.0000000213847084 1.0000000223749836 no;
	setAttr ".xm[14]" -type "matrix" "xform" 0.9999999860735761 0.99999996674943681 1 0
		 0 -0.13896990316819485 0 0.2657173869257502 -1.2436878700128028e-014 -2.4820665300850919e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998473296858 1.0000000000008624
		 0.99999998489733866 no;
	setAttr ".xm[15]" -type "matrix" "xform" 0.99999999572251907 1.000000004733494 0.99999997952767727 -1.570000052610343
		 -8.8432499517621121e-010 -0.046660830588103656 0 0.26571736425216219 1.589969073068076e-009
		 -2.4257966524388053e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.000000013926424
		 1.0000000332505643 1 no;
	setAttr ".xm[16]" -type "matrix" "xform" 1.000000000037641 1.0000000018233413 1.0000000033574721 3.1415898050462387
		 -0.038154163970708324 3.0407963539284633 0 -0.10185816375446699 0.00015641457182495437
		 0.08857244090678297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998096297482
		 0.99999998096459286 1.0000000000035321 no;
	setAttr ".xm[17]" -type "matrix" "xform" 0.99999997562944454 1.0000000066335815 0.99999999999999989 0
		 0 -0.20000003871235572 0 0.44286216956686919 4.0866187656085629e-009 -3.3053398351690078e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.999999999962359 0.99999999817665874
		 0.99999999664252792 no;
	setAttr ".xm[18]" -type "matrix" "xform" 0.99999994532447734 0.99999991322753967
		 0.99999999668082762 0.0038109539278372213 -0.037963171318867818 0.099927590999708632 0 0.4428622782151509
		 2.7135683717399717e-009 7.4242684222625144e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.000000024370556 0.99999999336641854 1.0000000000000002 no;
	setAttr ".xm[19]" -type "matrix" "xform" 0.99999999978602438 1.000000001823341 0.9999999927124128 3.1415898051922682
		 0.038153585818649742 3.0407961390101081 0 -0.10185816394975356 0.00015690590090161605
		 -0.088572439813166468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998096297482
		 0.99999998096459286 1.0000000000035321 no;
	setAttr ".xm[20]" -type "matrix" "xform" 0.99999997589531586 0.99999998554798986
		 0.99999999999999944 0 0 -0.20000003654755943 0 0.44286216954627211 4.9942301127980926e-009
		 3.7839845146159234e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000002139757
		 0.99999999817665897 1.0000000072875872 no;
	setAttr ".xm[21]" -type "matrix" "xform" 0.99999994553526084 0.99999993410237509
		 1.0000000073116042 -0.0038107789213233057 0.037963171414535951 0.099927593371526291 0 0.44286227829753444
		 3.0045177422388658e-009 2.2716483139006982e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.0000000241046847 1.0000000144520103 1.0000000000000007 no;
	setAttr ".xm[22]" -type "matrix" "xform" 0.99999999999999989 0.99999995814646425
		 0.99999998997197981 0.00079631916287427654 8.3266726846886716e-017 1.1844908734404134e-017 0 0.11071552795984474
		 -2.1939203787013639e-009 1.3279101554464212e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999998525219014 0.99999995828851063 0.99999999119783511 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1 0.99999999542739348 0.9999999864943887 -0.00079631792143745417
		 -7.0410344221727408e-013 -8.8432470759158465e-010 0 0.11071553697859149 3.2866650068186232e-008
		 -1.5152727822487222e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.000000004277481
		 0.99999999526650596 1.0000000204723232 no;
	setAttr -s 24 ".m";
	setAttr -s 24 ".p";
	setAttr -s 24 ".g[0:23]" yes yes yes yes yes yes yes yes yes yes no 
		no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	setAttr ".skm" -1;
	setAttr -s 152 ".wl";
	setAttr ".wl[0].w[1]"  1;
	setAttr ".wl[1].w[1]"  1;
	setAttr -s 2 ".wl[2].w[0:1]"  0.69999998807907104 0.30000001192092896;
	setAttr ".wl[3].w[1]"  1;
	setAttr -s 2 ".wl[4].w[0:1]"  0.60000000596046432 0.39999999403953568;
	setAttr ".wl[5].w[1]"  1;
	setAttr -s 2 ".wl[6].w[0:1]"  0.2 0.8;
	setAttr -s 2 ".wl[7].w[0:1]"  0.94999999869614837 0.05000000130385162;
	setAttr -s 2 ".wl[8].w[0:1]"  0.75 0.25;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr -s 2 ".wl[16].w[0:1]"  0.89999999627470961 0.10000000372529039;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr -s 2 ".wl[53].w[0:1]"  0.89999999627470961 0.10000000372529039;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr -s 2 ".wl[73].w[0:1]"  0.64999999552965149 0.35000000447034851;
	setAttr ".wl[74].w[1]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr -s 2 ".wl[84].w[0:1]"  0.75 0.25;
	setAttr ".wl[85].w[1]"  1;
	setAttr ".wl[86].w[1]"  1;
	setAttr -s 2 ".wl[87].w[0:1]"  0.69999998807907104 0.30000001192092896;
	setAttr -s 2 ".wl[88].w[0:1]"  0.60000000596046432 0.39999999403953568;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr -s 2 ".wl[95].w[0:1]"  0.89999999627470961 0.10000000372529039;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[1]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.3430899999999999e-008 -1.4623e-008 0.01 0 0.01 0 -1.3430899999999999e-008 0
		 0 0.01 1.4623e-008 0 -1.5839909999999999 -0.024483899999999999 2.0226600000000003e-006 1;
	setAttr ".pm[1]" -type "matrix" 8.4640599999999998e-009 -1.5925100000000001e-008 0.01 0
		 0.0095367500000000001 -0.0030083900000000001 -1.2862800000000002e-008 0 0.0030083900000000001 0.0095367500000000001 1.2641e-008 0
		 -1.4363870000000001 0.453177 1.9375300000000001e-006 1;
	setAttr ".gm" -type "matrix" 41.322315000000003 0 0 0 0 0 -41.322315000000003 0 0 41.322315000000003 0 0
		 2.4590800000000001e-007 166.113257 4.3821760000000003 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode tweak -n "tweak2";
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:151]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	setAttr ".skm" -1;
	setAttr -s 872 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.69032009362414326;
	setAttr ".wl[0].w[1]" 0.30938912159506038;
	setAttr ".wl[0].w[4]" 0.00029078478079645997;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.49875058020196633;
	setAttr ".wl[1].w[1]" 0.50095085299079767;
	setAttr ".wl[1].w[6]" 0.00029856680723586658;
	setAttr -s 3 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.68223271557692522;
	setAttr ".wl[2].w[1]" 0.31637411105267382;
	setAttr ".wl[2].w[4]" 0.0013931733704009646;
	setAttr -s 3 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.70469666225976801;
	setAttr ".wl[3].w[1]" 0.0011531704700082942;
	setAttr ".wl[3].w[4]" 0.29415016727022369;
	setAttr -s 3 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.51363435549630543;
	setAttr ".wl[4].w[1]" 0.0023198104036887155;
	setAttr ".wl[4].w[4]" 0.48404583410000585;
	setAttr -s 3 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.93084283112346922;
	setAttr ".wl[5].w[1]" 0.0138786150104697;
	setAttr ".wl[5].w[4]" 0.05527855386606096;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.89935294725994253;
	setAttr ".wl[6].w[1]" 0.077848156399977442;
	setAttr ".wl[6].w[4]" 0.022798896340080053;
	setAttr -s 3 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.8292836769579448;
	setAttr ".wl[7].w[1]" 0.0096459085491719596;
	setAttr ".wl[7].w[4]" 0.16107041449288328;
	setAttr -s 3 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.94019119279625141;
	setAttr ".wl[8].w[1]" 0.029246862526535286;
	setAttr ".wl[8].w[4]" 0.03056194467721321;
	setAttr -s 3 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.96358907890864598;
	setAttr ".wl[9].w[1]" 0.017428431787981778;
	setAttr ".wl[9].w[4]" 0.01898248930337218;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.96158942374085654;
	setAttr ".wl[10].w[1]" 0.035674252831837033;
	setAttr ".wl[10].w[4]" 0.0027363234273064512;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.85472269785385491;
	setAttr ".wl[11].w[1]" 0.0066781467447713195;
	setAttr ".wl[11].w[4]" 0.13859915540137374;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.50608580683324289;
	setAttr ".wl[12].w[1]" 0.0047399437308008659;
	setAttr ".wl[12].w[4]" 0.48917424943595633;
	setAttr -s 3 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.48889481950938463;
	setAttr ".wl[13].w[4]" 0.48989418094177728;
	setAttr ".wl[13].w[22]" 0.021210999548838143;
	setAttr -s 3 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.97187980823884101;
	setAttr ".wl[14].w[1]" 0.0048573627309030278;
	setAttr ".wl[14].w[4]" 0.023262829030256081;
	setAttr -s 3 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.97846930405567911;
	setAttr ".wl[15].w[1]" 0.020041567439114876;
	setAttr ".wl[15].w[4]" 0.0014891285052059736;
	setAttr -s 3 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.74205974361863025;
	setAttr ".wl[16].w[1]" 0.0041097491244195816;
	setAttr ".wl[16].w[4]" 0.25383050725695033;
	setAttr -s 3 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.94541630258775944;
	setAttr ".wl[17].w[1]" 0.0053525683602974354;
	setAttr ".wl[17].w[4]" 0.049231129051943164;
	setAttr -s 3 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.9031542986034643;
	setAttr ".wl[18].w[1]" 0.088721827048676122;
	setAttr ".wl[18].w[4]" 0.0081238743478596123;
	setAttr -s 3 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.69354101722401185;
	setAttr ".wl[19].w[1]" 0.017368647354357041;
	setAttr ".wl[19].w[4]" 0.28909033542163104;
	setAttr -s 3 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.47250004931993111;
	setAttr ".wl[20].w[4]" 0.47591544674194841;
	setAttr ".wl[20].w[22]" 0.051584503938120418;
	setAttr -s 3 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.72553863785888406;
	setAttr ".wl[21].w[1]" 0.0054747251877709027;
	setAttr ".wl[21].w[4]" 0.26898663695334502;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.81961182734583482;
	setAttr ".wl[22].w[1]" 0.010722687394204415;
	setAttr ".wl[22].w[4]" 0.16966548525996078;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.47295419790737753;
	setAttr ".wl[23].w[4]" 0.47516119989629041;
	setAttr ".wl[23].w[22]" 0.051884602196332057;
	setAttr -s 3 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.94051031119044393;
	setAttr ".wl[24].w[1]" 0.0019051500650104042;
	setAttr ".wl[24].w[4]" 0.057584538744545666;
	setAttr -s 3 ".wl[25].w";
	setAttr ".wl[25].w[0]" 0.96450223404981728;
	setAttr ".wl[25].w[1]" 0.02777787786957792;
	setAttr ".wl[25].w[4]" 0.0077198880806047714;
	setAttr -s 3 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.64974047305277827;
	setAttr ".wl[26].w[1]" 0.0015310528302389739;
	setAttr ".wl[26].w[4]" 0.34872847411698271;
	setAttr -s 3 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.51176243420275525;
	setAttr ".wl[27].w[1]" 0.0022066287053586074;
	setAttr ".wl[27].w[4]" 0.48603093709188611;
	setAttr -s 3 ".wl[28].w";
	setAttr ".wl[28].w[0]" 0.47207995105016681;
	setAttr ".wl[28].w[4]" 0.51235690037760706;
	setAttr ".wl[28].w[22]" 0.015563148572226133;
	setAttr -s 3 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.95073647181238474;
	setAttr ".wl[29].w[1]" 0.002920598928038387;
	setAttr ".wl[29].w[4]" 0.046342929259576872;
	setAttr -s 3 ".wl[30].w";
	setAttr ".wl[30].w[0]" 0.9784423579775251;
	setAttr ".wl[30].w[1]" 0.0023739631050126463;
	setAttr ".wl[30].w[4]" 0.019183678917462171;
	setAttr -s 3 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.47295419790737753;
	setAttr ".wl[31].w[4]" 0.47516119989629041;
	setAttr ".wl[31].w[22]" 0.051884602196332057;
	setAttr -s 3 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.81961182734583482;
	setAttr ".wl[32].w[1]" 0.010722687394204415;
	setAttr ".wl[32].w[4]" 0.16966548525996078;
	setAttr -s 3 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.92300704310960291;
	setAttr ".wl[33].w[1]" 0.059586673065033076;
	setAttr ".wl[33].w[4]" 0.017406283825363942;
	setAttr -s 3 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.990480579012331;
	setAttr ".wl[34].w[1]" 0.0083871026766818898;
	setAttr ".wl[34].w[4]" 0.0011323183109871076;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.87006376468811131;
	setAttr ".wl[35].w[1]" 0.1293372356567134;
	setAttr ".wl[35].w[4]" 0.00059899965517529381;
	setAttr -s 3 ".wl[36].w";
	setAttr ".wl[36].w[0]" 0.72558712879970511;
	setAttr ".wl[36].w[1]" 0.27421135641395067;
	setAttr ".wl[36].w[4]" 0.00020151478634422329;
	setAttr -s 3 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.73546613803331018;
	setAttr ".wl[37].w[1]" 0.26223812763449456;
	setAttr ".wl[37].w[4]" 0.0022957343321953197;
	setAttr -s 3 ".wl[38].w";
	setAttr ".wl[38].w[0]" 0.75364619253699627;
	setAttr ".wl[38].w[1]" 0.2443225067313696;
	setAttr ".wl[38].w[4]" 0.0020313007316342204;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[0]" 0.58048192198456294;
	setAttr ".wl[39].w[1]" 0.41783310470240681;
	setAttr ".wl[39].w[4]" 0.0016849733130303044;
	setAttr -s 3 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.58073281806799504;
	setAttr ".wl[40].w[1]" 0.41792381502020393;
	setAttr ".wl[40].w[4]" 0.0013433669118010911;
	setAttr -s 3 ".wl[41].w";
	setAttr ".wl[41].w[0]" 0.57272722203211224;
	setAttr ".wl[41].w[1]" 0.42559420756416644;
	setAttr ".wl[41].w[4]" 0.0016785704037213184;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[0]" 0.5598010794461229;
	setAttr ".wl[42].w[1]" 0.43766305142206852;
	setAttr ".wl[42].w[4]" 0.0025358691318085988;
	setAttr -s 3 ".wl[43].w";
	setAttr ".wl[43].w[0]" 0.59538754001206484;
	setAttr ".wl[43].w[1]" 0.40358772237525103;
	setAttr ".wl[43].w[4]" 0.001024737612684218;
	setAttr -s 3 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.58073281806799504;
	setAttr ".wl[44].w[1]" 0.41792381502020393;
	setAttr ".wl[44].w[4]" 0.0013433669118010911;
	setAttr -s 3 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.6478853294685839;
	setAttr ".wl[45].w[1]" 0.35158882388551549;
	setAttr ".wl[45].w[4]" 0.00052584664590066364;
	setAttr -s 3 ".wl[46].w";
	setAttr ".wl[46].w[0]" 0.43083139484444516;
	setAttr ".wl[46].w[1]" 0.56789275971386555;
	setAttr ".wl[46].w[6]" 0.0012758454416891846;
	setAttr -s 3 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.43107974171105956;
	setAttr ".wl[47].w[1]" 0.56510972068057985;
	setAttr ".wl[47].w[6]" 0.0038105376083604906;
	setAttr -s 3 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.15698563001064722;
	setAttr ".wl[48].w[1]" 0.8390408501557145;
	setAttr ".wl[48].w[6]" 0.0039735198336382791;
	setAttr -s 3 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.43957412857137274;
	setAttr ".wl[49].w[1]" 0.56019477041799293;
	setAttr ".wl[49].w[6]" 0.00023110101063447875;
	setAttr -s 3 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.11344192853476426;
	setAttr ".wl[50].w[1]" 0.88539370987216026;
	setAttr ".wl[50].w[6]" 0.0011643615930754098;
	setAttr -s 3 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.46011115643430284;
	setAttr ".wl[51].w[1]" 0.53950986443805615;
	setAttr ".wl[51].w[6]" 0.00037897912764104145;
	setAttr -s 3 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.18323828184845023;
	setAttr ".wl[52].w[1]" 0.81378671549067993;
	setAttr ".wl[52].w[6]" 0.0029750026608697834;
	setAttr -s 3 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.41906032241289648;
	setAttr ".wl[53].w[1]" 0.57865663427287917;
	setAttr ".wl[53].w[6]" 0.0022830433142243256;
	setAttr -s 3 ".wl[54].w";
	setAttr ".wl[54].w[0]" 0.20297654355719752;
	setAttr ".wl[54].w[1]" 0.78667062943109556;
	setAttr ".wl[54].w[6]" 0.01035282701170696;
	setAttr -s 3 ".wl[55].w";
	setAttr ".wl[55].w[0]" 0.35981041334429198;
	setAttr ".wl[55].w[1]" 0.63998466126786646;
	setAttr ".wl[55].w[6]" 0.00020492538784159026;
	setAttr -s 3 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.057470383453193996;
	setAttr ".wl[56].w[1]" 0.94176134680702583;
	setAttr ".wl[56].w[6]" 0.00076826973978015849;
	setAttr -s 3 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.1686040087664519;
	setAttr ".wl[57].w[1]" 0.8247194912560748;
	setAttr ".wl[57].w[6]" 0.0066764999774733286;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.46181941053459979;
	setAttr ".wl[58].w[1]" 0.53735326871401146;
	setAttr ".wl[58].w[6]" 0.00082732075138884317;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.15698563001064722;
	setAttr ".wl[59].w[1]" 0.8390408501557145;
	setAttr ".wl[59].w[6]" 0.0039735198336382791;
	setAttr -s 3 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.43083139484444516;
	setAttr ".wl[60].w[1]" 0.56789275971386555;
	setAttr ".wl[60].w[6]" 0.0012758454416891846;
	setAttr -s 3 ".wl[61].w";
	setAttr ".wl[61].w[0]" 0.0010161087290990565;
	setAttr ".wl[61].w[1]" 0.9048834989922484;
	setAttr ".wl[61].w[6]" 0.094100392278652578;
	setAttr -s 3 ".wl[62].w";
	setAttr ".wl[62].w[0]" 0.0018933715607785723;
	setAttr ".wl[62].w[1]" 0.82375411805246934;
	setAttr ".wl[62].w[6]" 0.17435251038675206;
	setAttr -s 3 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.00019066033917438944;
	setAttr ".wl[63].w[1]" 0.97640083540460654;
	setAttr ".wl[63].w[6]" 0.023408504256219109;
	setAttr -s 3 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.00055130707461706005;
	setAttr ".wl[64].w[1]" 0.95824134324482757;
	setAttr ".wl[64].w[6]" 0.04120734968055538;
	setAttr -s 3 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.0011447693318140241;
	setAttr ".wl[65].w[1]" 0.87373254371229825;
	setAttr ".wl[65].w[6]" 0.12512268695588771;
	setAttr -s 3 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.0012896369254965542;
	setAttr ".wl[66].w[1]" 0.915600829411513;
	setAttr ".wl[66].w[6]" 0.083109533662990412;
	setAttr -s 3 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.0012896369254965542;
	setAttr ".wl[67].w[1]" 0.915600829411513;
	setAttr ".wl[67].w[6]" 0.083109533662990412;
	setAttr -s 3 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.49127056003667902;
	setAttr ".wl[68].w[4]" 0.49405457213749493;
	setAttr ".wl[68].w[22]" 0.014674867825826093;
	setAttr -s 3 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.86163926645779276;
	setAttr ".wl[69].w[1]" 0.012372500385465567;
	setAttr ".wl[69].w[4]" 0.1259882331567416;
	setAttr -s 3 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.92327800738485921;
	setAttr ".wl[70].w[1]" 0.066303472711059491;
	setAttr ".wl[70].w[4]" 0.010418519904081285;
	setAttr -s 3 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.47765320687289986;
	setAttr ".wl[71].w[4]" 0.48180213944090428;
	setAttr ".wl[71].w[22]" 0.040544653686195843;
	setAttr -s 3 ".wl[72].w";
	setAttr ".wl[72].w[0]" 0.4672987227885958;
	setAttr ".wl[72].w[1]" 0.53200932627557973;
	setAttr ".wl[72].w[6]" 0.00069195093582458372;
	setAttr -s 3 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.91283648208433377;
	setAttr ".wl[73].w[1]" 0.0061823291163626767;
	setAttr ".wl[73].w[4]" 0.080981188799303577;
	setAttr -s 3 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.92327800738485921;
	setAttr ".wl[74].w[1]" 0.066303472711059491;
	setAttr ".wl[74].w[4]" 0.010418519904081285;
	setAttr -s 3 ".wl[75].w[7:9]"  0.67870278847699805 0.32094417938672748 
		0.00035303213627439203;
	setAttr -s 3 ".wl[76].w[7:9]"  0.68529138042056092 0.31339705105438209 
		0.0013115685250570878;
	setAttr -s 3 ".wl[77].w";
	setAttr ".wl[77].w[7]" 0.49853057363814657;
	setAttr ".wl[77].w[8]" 0.50119501875561845;
	setAttr ".wl[77].w[10]" 0.00027440760623502659;
	setAttr -s 3 ".wl[78].w[7:9]"  0.70830484004048477 0.0011455106044077753 
		0.29054964935510752;
	setAttr -s 3 ".wl[79].w[7:9]"  0.93252813346537333 0.013638900748403496 
		0.053832965786223153;
	setAttr -s 3 ".wl[80].w[7:9]"  0.51623412994206552 0.0023427832784571083 
		0.48142308677947737;
	setAttr -s 3 ".wl[81].w[7:9]"  0.90615861523317787 0.073565246482704641 
		0.02027613828411742;
	setAttr -s 3 ".wl[82].w[7:9]"  0.8382341429042004 0.0093602334504738847 
		0.1524056236453257;
	setAttr -s 3 ".wl[83].w[7:9]"  0.9434616739477889 0.028010781931827534 
		0.028527544120383622;
	setAttr -s 3 ".wl[84].w[7:9]"  0.96372918788294515 0.03374253497598944 
		0.0025282771410654612;
	setAttr -s 3 ".wl[85].w[7:9]"  0.96321297464325795 0.017581971683611773 
		0.019205053673130301;
	setAttr -s 3 ".wl[86].w[7:9]"  0.85103962315640935 0.0067869531683647667 
		0.14217342367522584;
	setAttr -s 3 ".wl[87].w";
	setAttr ".wl[87].w[7]" 0.48889899214768961;
	setAttr ".wl[87].w[9]" 0.4898924745192737;
	setAttr ".wl[87].w[22]" 0.021208533333036766;
	setAttr -s 3 ".wl[88].w[7:9]"  0.50653659328754341 0.0047560456408121113 
		0.48870736107164447;
	setAttr -s 3 ".wl[89].w[7:9]"  0.97425712360972938 0.02387590838192407 
		0.001866968008346575;
	setAttr -s 3 ".wl[90].w[7:9]"  0.96798643203249979 0.0054154701603738196 
		0.026598097807126363;
	setAttr -s 3 ".wl[91].w[7:9]"  0.73161569116918979 0.0041888684484650135 
		0.26419544038234521;
	setAttr -s 3 ".wl[92].w[7:9]"  0.9394860936569579 0.0058034632684158234 
		0.054710443074626317;
	setAttr -s 3 ".wl[93].w[7:9]"  0.9123408471326856 0.08086003650156251 
		0.0067991163657519418;
	setAttr -s 3 ".wl[94].w[7:9]"  0.70197663749173578 0.017324043264770706 
		0.28069931924349362;
	setAttr -s 3 ".wl[95].w[7:9]"  0.72643544641730173 0.0054689604465696044 
		0.26809559313612868;
	setAttr -s 3 ".wl[96].w";
	setAttr ".wl[96].w[7]" 0.47250813563740279;
	setAttr ".wl[96].w[9]" 0.4759151712572029;
	setAttr ".wl[96].w[22]" 0.05157669310539436;
	setAttr -s 3 ".wl[97].w[7:9]"  0.83000660871226406 0.010390207305375435 
		0.15960318398236048;
	setAttr -s 3 ".wl[98].w";
	setAttr ".wl[98].w[7]" 0.4729620092237628;
	setAttr ".wl[98].w[9]" 0.47516208807478072;
	setAttr ".wl[98].w[22]" 0.051875902701456506;
	setAttr -s 3 ".wl[99].w[7:9]"  0.93637299203067115 0.0020150470751939794 
		0.06161196089413485;
	setAttr -s 3 ".wl[100].w[7:9]"  0.96113712457037026 0.030175356883484723 
		0.008687518546144973;
	setAttr -s 3 ".wl[101].w[7:9]"  0.65265091553738797 0.0015265478024271693 
		0.34582253666018492;
	setAttr -s 3 ".wl[102].w[7:9]"  0.51246167844157442 0.0022133407412492545 
		0.48532498081717634;
	setAttr -s 3 ".wl[103].w[7:9]"  0.944922014245971 0.0032007505526112355 
		0.051877235201417814;
	setAttr -s 3 ".wl[104].w";
	setAttr ".wl[104].w[7]" 0.47210442144338316;
	setAttr ".wl[104].w[9]" 0.51233525354757259;
	setAttr ".wl[104].w[22]" 0.015560325009044333;
	setAttr -s 3 ".wl[105].w[7:9]"  0.97499626807042949 0.0027016069666470147 
		0.02230212496292347;
	setAttr -s 3 ".wl[106].w";
	setAttr ".wl[106].w[7]" 0.4729620092237628;
	setAttr ".wl[106].w[9]" 0.47516208807478072;
	setAttr ".wl[106].w[22]" 0.051875902701456506;
	setAttr -s 3 ".wl[107].w[7:9]"  0.83000660871226406 0.010390207305375435 
		0.15960318398236048;
	setAttr -s 3 ".wl[108].w[7:9]"  0.92458828070584365 0.058557867449298237 
		0.016853851844858051;
	setAttr -s 3 ".wl[109].w[7:9]"  0.98739973759731325 0.011032820630065759 
		0.0015674417726210409;
	setAttr -s 3 ".wl[110].w[7:9]"  0.85654895650768526 0.14271768187131478 
		0.00073336162099998546;
	setAttr -s 3 ".wl[111].w[7:9]"  0.69840317902605575 0.30129478468517928 
		0.00030203628876487827;
	setAttr -s 3 ".wl[112].w[7:9]"  0.7571765922615229 0.24090205342516738 
		0.001921354313309788;
	setAttr -s 3 ".wl[113].w[7:9]"  0.74848785753709202 0.24964945856067824 
		0.0018626839022297566;
	setAttr -s 3 ".wl[114].w[7:9]"  0.57975198943768758 0.41849635058924284 
		0.0017516599730696806;
	setAttr -s 3 ".wl[115].w[7:9]"  0.57612558357598054 0.42252379242207827 
		0.0013506240019412212;
	setAttr -s 3 ".wl[116].w[7:9]"  0.58647704454870497 0.4125149311543222 
		0.0010080242969728133;
	setAttr -s 3 ".wl[117].w[7:9]"  0.56077844215718597 0.43695161543668865 
		0.0022699424061253881;
	setAttr -s 3 ".wl[118].w[7:9]"  0.58647704454870497 0.4125149311543222 
		0.0010080242969728133;
	setAttr -s 3 ".wl[119].w[7:9]"  0.60173927101841584 0.39745553614617757 
		0.0008051928354066187;
	setAttr -s 3 ".wl[120].w[7:9]"  0.63903953701003913 0.36031985817538736 
		0.00064060481457346946;
	setAttr -s 3 ".wl[121].w";
	setAttr ".wl[121].w[7]" 0.41313575334246633;
	setAttr ".wl[121].w[8]" 0.58591115967794571;
	setAttr ".wl[121].w[10]" 0.00095308697958793802;
	setAttr -s 3 ".wl[122].w";
	setAttr ".wl[122].w[7]" 0.42365722725779592;
	setAttr ".wl[122].w[8]" 0.57292980031116303;
	setAttr ".wl[122].w[10]" 0.0034129724310409163;
	setAttr -s 3 ".wl[123].w";
	setAttr ".wl[123].w[7]" 0.12423097488439235;
	setAttr ".wl[123].w[8]" 0.87289903667591484;
	setAttr ".wl[123].w[10]" 0.0028699884396928212;
	setAttr -s 3 ".wl[124].w";
	setAttr ".wl[124].w[7]" 0.44840995035277287;
	setAttr ".wl[124].w[8]" 0.55130203158159519;
	setAttr ".wl[124].w[10]" 0.00028801806563195356;
	setAttr -s 3 ".wl[125].w";
	setAttr ".wl[125].w[7]" 0.46178635473781166;
	setAttr ".wl[125].w[8]" 0.53781322067002613;
	setAttr ".wl[125].w[10]" 0.00040042459216236583;
	setAttr -s 3 ".wl[126].w";
	setAttr ".wl[126].w[7]" 0.13095756965837529;
	setAttr ".wl[126].w[8]" 0.86761623635750051;
	setAttr ".wl[126].w[10]" 0.0014261939841242652;
	setAttr -s 3 ".wl[127].w";
	setAttr ".wl[127].w[7]" 0.15813767275478208;
	setAttr ".wl[127].w[8]" 0.83949221059956669;
	setAttr ".wl[127].w[10]" 0.0023701166456511435;
	setAttr -s 3 ".wl[128].w";
	setAttr ".wl[128].w[7]" 0.42386040311589024;
	setAttr ".wl[128].w[8]" 0.57368449982556058;
	setAttr ".wl[128].w[10]" 0.0024550970585491818;
	setAttr -s 3 ".wl[129].w";
	setAttr ".wl[129].w[7]" 0.18760553434936744;
	setAttr ".wl[129].w[8]" 0.8031583605092466;
	setAttr ".wl[129].w[10]" 0.0092361051413859599;
	setAttr -s 3 ".wl[130].w";
	setAttr ".wl[130].w[7]" 0.39125728862970288;
	setAttr ".wl[130].w[8]" 0.60843037713546755;
	setAttr ".wl[130].w[10]" 0.00031233423482962221;
	setAttr -s 3 ".wl[131].w";
	setAttr ".wl[131].w[7]" 0.08521532371512483;
	setAttr ".wl[131].w[8]" 0.91353253866476525;
	setAttr ".wl[131].w[10]" 0.0012521376201098599;
	setAttr -s 3 ".wl[132].w";
	setAttr ".wl[132].w[7]" 0.17855428406470464;
	setAttr ".wl[132].w[8]" 0.81419702468226041;
	setAttr ".wl[132].w[10]" 0.0072486912530349773;
	setAttr -s 3 ".wl[133].w";
	setAttr ".wl[133].w[7]" 0.45285852031075685;
	setAttr ".wl[133].w[8]" 0.54649442823740291;
	setAttr ".wl[133].w[10]" 0.00064705145184018673;
	setAttr -s 3 ".wl[134].w";
	setAttr ".wl[134].w[7]" 0.12423097488439235;
	setAttr ".wl[134].w[8]" 0.87289903667591484;
	setAttr ".wl[134].w[10]" 0.0028699884396928212;
	setAttr -s 3 ".wl[135].w";
	setAttr ".wl[135].w[7]" 0.41313575334246633;
	setAttr ".wl[135].w[8]" 0.58591115967794571;
	setAttr ".wl[135].w[10]" 0.00095308697958793802;
	setAttr -s 3 ".wl[136].w";
	setAttr ".wl[136].w[7]" 0.00044309702141608884;
	setAttr ".wl[136].w[8]" 0.94614774678653224;
	setAttr ".wl[136].w[10]" 0.053409156192051624;
	setAttr -s 3 ".wl[137].w";
	setAttr ".wl[137].w[7]" 0.0013675373637617417;
	setAttr ".wl[137].w[8]" 0.84951499958049992;
	setAttr ".wl[137].w[10]" 0.14911746305573834;
	setAttr -s 3 ".wl[138].w";
	setAttr ".wl[138].w[7]" 0.00053830957389077502;
	setAttr ".wl[138].w[8]" 0.94657519325515649;
	setAttr ".wl[138].w[10]" 0.052886497170952736;
	setAttr -s 3 ".wl[139].w";
	setAttr ".wl[139].w[7]" 0.00086433161086302561;
	setAttr ".wl[139].w[8]" 0.94150975620592825;
	setAttr ".wl[139].w[10]" 0.057625912183208707;
	setAttr -s 3 ".wl[140].w";
	setAttr ".wl[140].w[7]" 0.0015032141848401737;
	setAttr ".wl[140].w[8]" 0.85361219031715241;
	setAttr ".wl[140].w[10]" 0.14488459549800731;
	setAttr -s 3 ".wl[141].w";
	setAttr ".wl[141].w[7]" 0.00079012038633949409;
	setAttr ".wl[141].w[8]" 0.93979035587244009;
	setAttr ".wl[141].w[10]" 0.059419523741220448;
	setAttr -s 3 ".wl[142].w";
	setAttr ".wl[142].w[7]" 0.00079012038633949409;
	setAttr ".wl[142].w[8]" 0.93979035587244009;
	setAttr ".wl[142].w[10]" 0.059419523741220448;
	setAttr -s 3 ".wl[143].w";
	setAttr ".wl[143].w[7]" 0.49127718052123359;
	setAttr ".wl[143].w[9]" 0.49404971141548476;
	setAttr ".wl[143].w[22]" 0.01467310806328171;
	setAttr -s 3 ".wl[144].w[7:9]"  0.86687126123613878 0.012095034977760937 
		0.12103370378610014;
	setAttr -s 3 ".wl[145].w[7:9]"  0.93174075088459307 0.059613452431426781 
		0.0086457966839801857;
	setAttr -s 3 ".wl[146].w";
	setAttr ".wl[146].w[7]" 0.47766249917485776;
	setAttr ".wl[146].w[9]" 0.48180071126386675;
	setAttr ".wl[146].w[22]" 0.040536789561275523;
	setAttr -s 3 ".wl[147].w";
	setAttr ".wl[147].w[7]" 0.4621938539600402;
	setAttr ".wl[147].w[8]" 0.53721903647169977;
	setAttr ".wl[147].w[10]" 0.00058710956825996561;
	setAttr -s 3 ".wl[148].w[7:9]"  0.9104333282123156 0.0063079577623740878 
		0.083258714025310307;
	setAttr -s 3 ".wl[149].w[7:9]"  0.93174075088459307 0.059613452431426781 
		0.0086457966839801857;
	setAttr -s 3 ".wl[150].w";
	setAttr ".wl[150].w[11]" 0.29407900721432267;
	setAttr ".wl[150].w[12]" 0.70507983225891657;
	setAttr ".wl[150].w[17]" 0.00084116052676076151;
	setAttr -s 3 ".wl[151].w";
	setAttr ".wl[151].w[11]" 0.49015034826243914;
	setAttr ".wl[151].w[12]" 0.50761843742668489;
	setAttr ".wl[151].w[17]" 0.0022312143108759327;
	setAttr -s 3 ".wl[152].w";
	setAttr ".wl[152].w[11]" 0.49741335043612256;
	setAttr ".wl[152].w[12]" 0.50067579297195175;
	setAttr ".wl[152].w[17]" 0.0019108565919256689;
	setAttr -s 3 ".wl[153].w";
	setAttr ".wl[153].w[11]" 0.053567111314405426;
	setAttr ".wl[153].w[12]" 0.94613087138662444;
	setAttr ".wl[153].w[17]" 0.0003020172989701387;
	setAttr -s 3 ".wl[154].w";
	setAttr ".wl[154].w[11]" 0.037389217520049499;
	setAttr ".wl[154].w[12]" 0.96236162598972319;
	setAttr ".wl[154].w[17]" 0.00024915649022724893;
	setAttr -s 3 ".wl[155].w";
	setAttr ".wl[155].w[11]" 0.19868176523791131;
	setAttr ".wl[155].w[12]" 0.8009239673920816;
	setAttr ".wl[155].w[17]" 0.00039426737000712938;
	setAttr -s 3 ".wl[156].w";
	setAttr ".wl[156].w[11]" 0.29817292923409322;
	setAttr ".wl[156].w[12]" 0.70120528484666234;
	setAttr ".wl[156].w[17]" 0.00062178591924452731;
	setAttr -s 3 ".wl[157].w";
	setAttr ".wl[157].w[11]" 0.21861066884883135;
	setAttr ".wl[157].w[12]" 0.78105571239932903;
	setAttr ".wl[157].w[17]" 0.00033361875183967254;
	setAttr -s 3 ".wl[158].w";
	setAttr ".wl[158].w[11]" 0.52852300954271525;
	setAttr ".wl[158].w[12]" 0.47136330951249705;
	setAttr ".wl[158].w[17]" 0.00011368094478773041;
	setAttr -s 3 ".wl[159].w";
	setAttr ".wl[159].w[11]" 0.50278067915482483;
	setAttr ".wl[159].w[12]" 0.49668739362395675;
	setAttr ".wl[159].w[17]" 0.00053192722121842408;
	setAttr -s 3 ".wl[160].w";
	setAttr ".wl[160].w[11]" 0.49938174773019939;
	setAttr ".wl[160].w[12]" 0.49938174773019939;
	setAttr ".wl[160].w[17]" 0.0012365045396011899;
	setAttr -s 3 ".wl[161].w";
	setAttr ".wl[161].w[11]" 0.19868176523791131;
	setAttr ".wl[161].w[12]" 0.8009239673920816;
	setAttr ".wl[161].w[17]" 0.00039426737000712938;
	setAttr -s 3 ".wl[162].w";
	setAttr ".wl[162].w[11]" 0.029845914279088823;
	setAttr ".wl[162].w[12]" 0.96919679780858059;
	setAttr ".wl[162].w[17]" 0.00095728791233061202;
	setAttr -s 3 ".wl[163].w";
	setAttr ".wl[163].w[11]" 0.032343286156751423;
	setAttr ".wl[163].w[12]" 0.96681119950826389;
	setAttr ".wl[163].w[17]" 0.00084551433498479761;
	setAttr -s 3 ".wl[164].w";
	setAttr ".wl[164].w[11]" 0.025173959152145174;
	setAttr ".wl[164].w[12]" 0.97422502005400813;
	setAttr ".wl[164].w[17]" 0.00060102079384672952;
	setAttr -s 3 ".wl[165].w";
	setAttr ".wl[165].w[11]" 0.034388564084018407;
	setAttr ".wl[165].w[12]" 0.96434487313677419;
	setAttr ".wl[165].w[17]" 0.0012665627792074429;
	setAttr -s 3 ".wl[166].w";
	setAttr ".wl[166].w[11]" 0.035672101066416669;
	setAttr ".wl[166].w[12]" 0.96324889431003069;
	setAttr ".wl[166].w[17]" 0.0010790046235524934;
	setAttr -s 3 ".wl[167].w";
	setAttr ".wl[167].w[11]" 0.05639878711298147;
	setAttr ".wl[167].w[12]" 0.94347626233928494;
	setAttr ".wl[167].w[17]" 0.00012495054773351802;
	setAttr -s 3 ".wl[168].w";
	setAttr ".wl[168].w[11]" 0.020148784060592888;
	setAttr ".wl[168].w[12]" 0.97960397912147223;
	setAttr ".wl[168].w[17]" 0.00024723681793491827;
	setAttr -s 3 ".wl[169].w";
	setAttr ".wl[169].w[11]" 0.037389217520049499;
	setAttr ".wl[169].w[12]" 0.96236162598972319;
	setAttr ".wl[169].w[17]" 0.00024915649022724893;
	setAttr -s 3 ".wl[170].w";
	setAttr ".wl[170].w[11]" 0.013066191886332573;
	setAttr ".wl[170].w[12]" 0.98675036759236012;
	setAttr ".wl[170].w[17]" 0.00018344052130722592;
	setAttr -s 3 ".wl[171].w";
	setAttr ".wl[171].w[11]" 0.49956554900132005;
	setAttr ".wl[171].w[12]" 0.49956554900132005;
	setAttr ".wl[171].w[17]" 0.00086890199735990793;
	setAttr -s 3 ".wl[172].w";
	setAttr ".wl[172].w[11]" 0.49983507207968647;
	setAttr ".wl[172].w[12]" 0.49983507207968647;
	setAttr ".wl[172].w[17]" 0.00032985584062707863;
	setAttr -s 3 ".wl[173].w";
	setAttr ".wl[173].w[11]" 0.49959225614021202;
	setAttr ".wl[173].w[12]" 0.49959225614021202;
	setAttr ".wl[173].w[17]" 0.00081548771957591008;
	setAttr -s 3 ".wl[174].w";
	setAttr ".wl[174].w[11]" 0.50093878323240015;
	setAttr ".wl[174].w[12]" 0.49850302453160877;
	setAttr ".wl[174].w[17]" 0.00055819223599104409;
	setAttr -s 3 ".wl[175].w";
	setAttr ".wl[175].w[11]" 0.50278067915482483;
	setAttr ".wl[175].w[12]" 0.49668739362395675;
	setAttr ".wl[175].w[17]" 0.00053192722121842408;
	setAttr -s 3 ".wl[176].w";
	setAttr ".wl[176].w[11]" 0.49959225614021202;
	setAttr ".wl[176].w[12]" 0.49959225614021202;
	setAttr ".wl[176].w[17]" 0.00081548771957591008;
	setAttr -s 3 ".wl[177].w";
	setAttr ".wl[177].w[11]" 0.49999107866211934;
	setAttr ".wl[177].w[12]" 0.49999107866211934;
	setAttr ".wl[177].w[17]" 1.7842675761319694e-005;
	setAttr -s 3 ".wl[178].w";
	setAttr ".wl[178].w[11]" 0.21861066884883135;
	setAttr ".wl[178].w[12]" 0.78105571239932903;
	setAttr ".wl[178].w[17]" 0.00033361875183967254;
	setAttr -s 3 ".wl[179].w";
	setAttr ".wl[179].w[11]" 0.49983507207968647;
	setAttr ".wl[179].w[12]" 0.49983507207968647;
	setAttr ".wl[179].w[17]" 0.00032985584062707863;
	setAttr -s 3 ".wl[180].w";
	setAttr ".wl[180].w[11]" 0.06082717347436746;
	setAttr ".wl[180].w[12]" 0.93906759779749571;
	setAttr ".wl[180].w[17]" 0.00010522872813680097;
	setAttr -s 3 ".wl[181].w";
	setAttr ".wl[181].w[11]" 0.24479665098583217;
	setAttr ".wl[181].w[12]" 0.75516674982076104;
	setAttr ".wl[181].w[17]" 3.65991934068308e-005;
	setAttr -s 3 ".wl[182].w";
	setAttr ".wl[182].w[11]" 0.022728176119296246;
	setAttr ".wl[182].w[12]" 0.97699063750773685;
	setAttr ".wl[182].w[17]" 0.00028118637296702456;
	setAttr -s 3 ".wl[183].w";
	setAttr ".wl[183].w[11]" 0.013066191886332573;
	setAttr ".wl[183].w[12]" 0.98675036759236012;
	setAttr ".wl[183].w[17]" 0.00018344052130722592;
	setAttr -s 3 ".wl[184].w";
	setAttr ".wl[184].w[11]" 0.039398402999037366;
	setAttr ".wl[184].w[12]" 0.96051885328908759;
	setAttr ".wl[184].w[17]" 8.2743711874999721e-005;
	setAttr -s 3 ".wl[185].w";
	setAttr ".wl[185].w[11]" 0.40102157515130066;
	setAttr ".wl[185].w[12]" 0.59884953944932873;
	setAttr ".wl[185].w[17]" 0.00012888539937066216;
	setAttr -s 3 ".wl[186].w";
	setAttr ".wl[186].w[11]" 0.05639878711298147;
	setAttr ".wl[186].w[12]" 0.94347626233928494;
	setAttr ".wl[186].w[17]" 0.00012495054773351802;
	setAttr -s 3 ".wl[187].w";
	setAttr ".wl[187].w[11]" 0.24479665098583217;
	setAttr ".wl[187].w[12]" 0.75516674982076104;
	setAttr ".wl[187].w[17]" 3.65991934068308e-005;
	setAttr -s 3 ".wl[188].w";
	setAttr ".wl[188].w[11]" 0.06082717347436746;
	setAttr ".wl[188].w[12]" 0.93906759779749571;
	setAttr ".wl[188].w[17]" 0.00010522872813680097;
	setAttr -s 3 ".wl[189].w";
	setAttr ".wl[189].w[11]" 0.041522114425446746;
	setAttr ".wl[189].w[12]" 0.95827900777577679;
	setAttr ".wl[189].w[17]" 0.00019887779877653567;
	setAttr -s 3 ".wl[190].w";
	setAttr ".wl[190].w[11]" 0.40102157515130066;
	setAttr ".wl[190].w[12]" 0.59884953944932873;
	setAttr ".wl[190].w[17]" 0.00012888539937066216;
	setAttr -s 3 ".wl[191].w";
	setAttr ".wl[191].w[11]" 0.034181898099095262;
	setAttr ".wl[191].w[12]" 0.96545716125568404;
	setAttr ".wl[191].w[17]" 0.00036094064522079484;
	setAttr -s 3 ".wl[192].w";
	setAttr ".wl[192].w[11]" 0.056732837040900271;
	setAttr ".wl[192].w[12]" 0.94304892266907725;
	setAttr ".wl[192].w[17]" 0.00021824029002250167;
	setAttr -s 3 ".wl[193].w";
	setAttr ".wl[193].w[11]" 0.053567111314405426;
	setAttr ".wl[193].w[12]" 0.94613087138662444;
	setAttr ".wl[193].w[17]" 0.0003020172989701387;
	setAttr -s 3 ".wl[194].w";
	setAttr ".wl[194].w[11]" 0.014805826217258022;
	setAttr ".wl[194].w[12]" 0.98501485251617504;
	setAttr ".wl[194].w[17]" 0.00017932126656697417;
	setAttr -s 3 ".wl[195].w";
	setAttr ".wl[195].w[11]" 0.014356656795560226;
	setAttr ".wl[195].w[12]" 0.98527576117400895;
	setAttr ".wl[195].w[17]" 0.0003675820304308605;
	setAttr -s 3 ".wl[196].w";
	setAttr ".wl[196].w[11]" 0.013332809668345923;
	setAttr ".wl[196].w[12]" 0.98651493926286171;
	setAttr ".wl[196].w[17]" 0.00015225106879240396;
	setAttr -s 3 ".wl[197].w";
	setAttr ".wl[197].w[11]" 0.024518973548813838;
	setAttr ".wl[197].w[12]" 0.97460111634929036;
	setAttr ".wl[197].w[17]" 0.00087991010189586427;
	setAttr -s 3 ".wl[198].w";
	setAttr ".wl[198].w[11]" 0.019538986610576865;
	setAttr ".wl[198].w[12]" 0.97984649432426674;
	setAttr ".wl[198].w[17]" 0.00061451906515646237;
	setAttr -s 3 ".wl[199].w";
	setAttr ".wl[199].w[11]" 0.023684968404843628;
	setAttr ".wl[199].w[12]" 0.97560786860619197;
	setAttr ".wl[199].w[17]" 0.00070716298896441785;
	setAttr -s 3 ".wl[200].w";
	setAttr ".wl[200].w[11]" 0.014356656795560226;
	setAttr ".wl[200].w[12]" 0.98527576117400895;
	setAttr ".wl[200].w[17]" 0.0003675820304308605;
	setAttr -s 3 ".wl[201].w";
	setAttr ".wl[201].w[11]" 0.023684968404843628;
	setAttr ".wl[201].w[12]" 0.97560786860619197;
	setAttr ".wl[201].w[17]" 0.00070716298896441785;
	setAttr -s 3 ".wl[202].w";
	setAttr ".wl[202].w[11]" 0.019435572473897923;
	setAttr ".wl[202].w[12]" 0.98010167298320183;
	setAttr ".wl[202].w[17]" 0.00046275454290033142;
	setAttr -s 3 ".wl[203].w";
	setAttr ".wl[203].w[11]" 0.01984299767290908;
	setAttr ".wl[203].w[12]" 0.97995166437874814;
	setAttr ".wl[203].w[17]" 0.0002053379483428129;
	setAttr -s 3 ".wl[204].w";
	setAttr ".wl[204].w[11]" 0.49901369800360312;
	setAttr ".wl[204].w[12]" 0.49901369800360312;
	setAttr ".wl[204].w[17]" 0.0019726039927937694;
	setAttr -s 3 ".wl[205].w";
	setAttr ".wl[205].w[11]" 0.49015034826243914;
	setAttr ".wl[205].w[12]" 0.50761843742668489;
	setAttr ".wl[205].w[17]" 0.0022312143108759327;
	setAttr -s 3 ".wl[206].w";
	setAttr ".wl[206].w[11]" 0.29407900721432267;
	setAttr ".wl[206].w[12]" 0.70507983225891657;
	setAttr ".wl[206].w[17]" 0.00084116052676076151;
	setAttr -s 3 ".wl[207].w";
	setAttr ".wl[207].w[11]" 0.49741335043612256;
	setAttr ".wl[207].w[12]" 0.50067579297195175;
	setAttr ".wl[207].w[17]" 0.0019108565919256689;
	setAttr -s 3 ".wl[208].w";
	setAttr ".wl[208].w[11]" 0.49916858984863394;
	setAttr ".wl[208].w[12]" 0.49916858984863394;
	setAttr ".wl[208].w[17]" 0.0016628203027322203;
	setAttr -s 3 ".wl[209].w";
	setAttr ".wl[209].w[11]" 0.49925084919251628;
	setAttr ".wl[209].w[12]" 0.49925084919251628;
	setAttr ".wl[209].w[17]" 0.001498301614967531;
	setAttr -s 3 ".wl[210].w";
	setAttr ".wl[210].w[11]" 0.49015034826243914;
	setAttr ".wl[210].w[12]" 0.50761843742668489;
	setAttr ".wl[210].w[17]" 0.0022312143108759327;
	setAttr -s 3 ".wl[211].w";
	setAttr ".wl[211].w[11]" 0.49901369800360312;
	setAttr ".wl[211].w[12]" 0.49901369800360312;
	setAttr ".wl[211].w[17]" 0.0019726039927937694;
	setAttr -s 3 ".wl[212].w";
	setAttr ".wl[212].w[11]" 0.49465791236069856;
	setAttr ".wl[212].w[12]" 0.50356918634234293;
	setAttr ".wl[212].w[17]" 0.00177290129695851;
	setAttr -s 3 ".wl[213].w";
	setAttr ".wl[213].w[11]" 0.29817292923409322;
	setAttr ".wl[213].w[12]" 0.70120528484666234;
	setAttr ".wl[213].w[17]" 0.00062178591924452731;
	setAttr -s 3 ".wl[214].w";
	setAttr ".wl[214].w[11]" 0.49925084919251628;
	setAttr ".wl[214].w[12]" 0.49925084919251628;
	setAttr ".wl[214].w[17]" 0.001498301614967531;
	setAttr -s 3 ".wl[215].w";
	setAttr ".wl[215].w[11]" 0.013332809668345923;
	setAttr ".wl[215].w[12]" 0.98651493926286171;
	setAttr ".wl[215].w[17]" 0.00015225106879240396;
	setAttr -s 3 ".wl[216].w";
	setAttr ".wl[216].w[11]" 0.025173959152145174;
	setAttr ".wl[216].w[12]" 0.97422502005400813;
	setAttr ".wl[216].w[17]" 0.00060102079384672952;
	setAttr -s 3 ".wl[217].w";
	setAttr ".wl[217].w[11]" 0.032343286156751423;
	setAttr ".wl[217].w[12]" 0.96681119950826389;
	setAttr ".wl[217].w[17]" 0.00084551433498479761;
	setAttr -s 3 ".wl[218].w";
	setAttr ".wl[218].w[11]" 0.019435572473897923;
	setAttr ".wl[218].w[12]" 0.98010167298320183;
	setAttr ".wl[218].w[17]" 0.00046275454290033142;
	setAttr -s 3 ".wl[219].w";
	setAttr ".wl[219].w[11]" 0.024518973548813838;
	setAttr ".wl[219].w[12]" 0.97460111634929036;
	setAttr ".wl[219].w[17]" 0.00087991010189586427;
	setAttr -s 3 ".wl[220].w";
	setAttr ".wl[220].w[11]" 0.031814991164949125;
	setAttr ".wl[220].w[12]" 0.9674767129510089;
	setAttr ".wl[220].w[17]" 0.00070829588404197857;
	setAttr -s 3 ".wl[221].w";
	setAttr ".wl[221].w[11]" 0.022728176119296246;
	setAttr ".wl[221].w[12]" 0.97699063750773685;
	setAttr ".wl[221].w[17]" 0.00028118637296702456;
	setAttr -s 3 ".wl[222].w";
	setAttr ".wl[222].w[11]" 0.019538986610576865;
	setAttr ".wl[222].w[12]" 0.97984649432426674;
	setAttr ".wl[222].w[17]" 0.00061451906515646237;
	setAttr -s 3 ".wl[223].w";
	setAttr ".wl[223].w[11]" 0.49465791236069856;
	setAttr ".wl[223].w[12]" 0.50356918634234293;
	setAttr ".wl[223].w[17]" 0.00177290129695851;
	setAttr -s 3 ".wl[224].w";
	setAttr ".wl[224].w[11]" 0.49465791236069856;
	setAttr ".wl[224].w[12]" 0.50356918634234293;
	setAttr ".wl[224].w[17]" 0.00177290129695851;
	setAttr -s 3 ".wl[225].w";
	setAttr ".wl[225].w[11]" 0.49938174773019939;
	setAttr ".wl[225].w[12]" 0.49938174773019939;
	setAttr ".wl[225].w[17]" 0.0012365045396011899;
	setAttr -s 3 ".wl[226].w";
	setAttr ".wl[226].w[11]" 0.29790998781710126;
	setAttr ".wl[226].w[12]" 0.70201334097430534;
	setAttr ".wl[226].w[17]" 7.6671208593406652e-005;
	setAttr -s 3 ".wl[227].w";
	setAttr ".wl[227].w[11]" 0.01984299767290908;
	setAttr ".wl[227].w[12]" 0.97995166437874814;
	setAttr ".wl[227].w[17]" 0.0002053379483428129;
	setAttr -s 3 ".wl[228].w";
	setAttr ".wl[228].w[11]" 0.031814991164949125;
	setAttr ".wl[228].w[12]" 0.9674767129510089;
	setAttr ".wl[228].w[17]" 0.00070829588404197857;
	setAttr -s 3 ".wl[229].w";
	setAttr ".wl[229].w[13]" 0.70509112540985353;
	setAttr ".wl[229].w[14]" 0.29406783060593783;
	setAttr ".wl[229].w[18]" 0.00084104398420861302;
	setAttr -s 3 ".wl[230].w";
	setAttr ".wl[230].w[13]" 0.50067575359689132;
	setAttr ".wl[230].w[14]" 0.49741343611241534;
	setAttr ".wl[230].w[18]" 0.0019108102906933782;
	setAttr -s 3 ".wl[231].w";
	setAttr ".wl[231].w[13]" 0.50761891896395961;
	setAttr ".wl[231].w[14]" 0.49015004250912858;
	setAttr ".wl[231].w[18]" 0.0022310385269119176;
	setAttr -s 3 ".wl[232].w";
	setAttr ".wl[232].w[13]" 0.94611713336127379;
	setAttr ".wl[232].w[14]" 0.053580752599009698;
	setAttr ".wl[232].w[18]" 0.00030211403971655332;
	setAttr -s 3 ".wl[233].w";
	setAttr ".wl[233].w[13]" 0.8009437686912767;
	setAttr ".wl[233].w[14]" 0.19866205461758785;
	setAttr ".wl[233].w[18]" 0.00039417669113552044;
	setAttr -s 3 ".wl[234].w";
	setAttr ".wl[234].w[13]" 0.96237250516174644;
	setAttr ".wl[234].w[14]" 0.037378427728689323;
	setAttr ".wl[234].w[18]" 0.00024906710956424494;
	setAttr -s 3 ".wl[235].w";
	setAttr ".wl[235].w[13]" 0.70119559637032691;
	setAttr ".wl[235].w[14]" 0.29818256130221993;
	setAttr ".wl[235].w[18]" 0.00062184232745321239;
	setAttr -s 3 ".wl[236].w";
	setAttr ".wl[236].w[13]" 0.78103420111830002;
	setAttr ".wl[236].w[14]" 0.21863211065845725;
	setAttr ".wl[236].w[18]" 0.00033368822324285807;
	setAttr -s 3 ".wl[237].w";
	setAttr ".wl[237].w[13]" 0.18768376751490357;
	setAttr ".wl[237].w[14]" 0.81216197362995524;
	setAttr ".wl[237].w[18]" 0.00015425885514120719;
	setAttr -s 3 ".wl[238].w";
	setAttr ".wl[238].w[13]" 0.49938182037555301;
	setAttr ".wl[238].w[14]" 0.49938182037555301;
	setAttr ".wl[238].w[18]" 0.0012363592488939855;
	setAttr -s 3 ".wl[239].w";
	setAttr ".wl[239].w[13]" 0.49668737852288408;
	setAttr ".wl[239].w[14]" 0.50278076694912377;
	setAttr ".wl[239].w[18]" 0.00053185452799215771;
	setAttr -s 3 ".wl[240].w";
	setAttr ".wl[240].w[13]" 0.8009437686912767;
	setAttr ".wl[240].w[14]" 0.19866205461758785;
	setAttr ".wl[240].w[18]" 0.00039417669113552044;
	setAttr -s 3 ".wl[241].w";
	setAttr ".wl[241].w[13]" 0.96919931623172106;
	setAttr ".wl[241].w[14]" 0.029843491523321743;
	setAttr ".wl[241].w[18]" 0.00095719224495711952;
	setAttr -s 3 ".wl[242].w";
	setAttr ".wl[242].w[13]" 0.97422806115770977;
	setAttr ".wl[242].w[14]" 0.025171002895217426;
	setAttr ".wl[242].w[18]" 0.00060093594707283197;
	setAttr -s 3 ".wl[243].w";
	setAttr ".wl[243].w[13]" 0.96681027439061917;
	setAttr ".wl[243].w[14]" 0.032344187118494308;
	setAttr ".wl[243].w[18]" 0.00084553849088647964;
	setAttr -s 3 ".wl[244].w";
	setAttr ".wl[244].w[13]" 0.96324438854539218;
	setAttr ".wl[244].w[14]" 0.035676453645522181;
	setAttr ".wl[244].w[18]" 0.0010791578090857395;
	setAttr -s 3 ".wl[245].w";
	setAttr ".wl[245].w[13]" 0.96434402211343728;
	setAttr ".wl[245].w[14]" 0.03438938389981324;
	setAttr ".wl[245].w[18]" 0.0012665939867495478;
	setAttr -s 3 ".wl[246].w";
	setAttr ".wl[246].w[13]" 0.94349466288294759;
	setAttr ".wl[246].w[14]" 0.056380441911915248;
	setAttr ".wl[246].w[18]" 0.00012489520513716523;
	setAttr -s 3 ".wl[247].w";
	setAttr ".wl[247].w[13]" 0.97961103890402312;
	setAttr ".wl[247].w[14]" 0.020141823552852607;
	setAttr ".wl[247].w[18]" 0.00024713754312428646;
	setAttr -s 3 ".wl[248].w";
	setAttr ".wl[248].w[13]" 0.98675534137704068;
	setAttr ".wl[248].w[14]" 0.013061295310726691;
	setAttr ".wl[248].w[18]" 0.00018336331223262612;
	setAttr -s 3 ".wl[249].w";
	setAttr ".wl[249].w[13]" 0.96237250516174644;
	setAttr ".wl[249].w[14]" 0.037378427728689323;
	setAttr ".wl[249].w[18]" 0.00024906710956424494;
	setAttr -s 3 ".wl[250].w";
	setAttr ".wl[250].w[13]" 0.49956555766693073;
	setAttr ".wl[250].w[14]" 0.49956555766693073;
	setAttr ".wl[250].w[18]" 0.00086888466613865801;
	setAttr -s 3 ".wl[251].w";
	setAttr ".wl[251].w[13]" 0.49959221865666636;
	setAttr ".wl[251].w[14]" 0.49959221865666636;
	setAttr ".wl[251].w[18]" 0.00081556268666727646;
	setAttr -s 3 ".wl[252].w";
	setAttr ".wl[252].w[13]" 0.49983504816574775;
	setAttr ".wl[252].w[14]" 0.49983504816574775;
	setAttr ".wl[252].w[18]" 0.00032990366850451508;
	setAttr -s 3 ".wl[253].w";
	setAttr ".wl[253].w[13]" 0.49879824516670279;
	setAttr ".wl[253].w[14]" 0.5005201264215855;
	setAttr ".wl[253].w[18]" 0.0006816284117117556;
	setAttr -s 3 ".wl[254].w";
	setAttr ".wl[254].w[13]" 0.49668737852288408;
	setAttr ".wl[254].w[14]" 0.50278076694912377;
	setAttr ".wl[254].w[18]" 0.00053185452799215771;
	setAttr -s 3 ".wl[255].w";
	setAttr ".wl[255].w[13]" 0.49959221865666636;
	setAttr ".wl[255].w[14]" 0.49959221865666636;
	setAttr ".wl[255].w[18]" 0.00081556268666727646;
	setAttr -s 3 ".wl[256].w";
	setAttr ".wl[256].w[13]" 0.78103420111830002;
	setAttr ".wl[256].w[14]" 0.21863211065845725;
	setAttr ".wl[256].w[18]" 0.00033368822324285807;
	setAttr -s 3 ".wl[257].w";
	setAttr ".wl[257].w[13]" 0.49999107153098393;
	setAttr ".wl[257].w[14]" 0.49999107153098393;
	setAttr ".wl[257].w[18]" 1.7856938032099851e-005;
	setAttr -s 3 ".wl[258].w";
	setAttr ".wl[258].w[13]" 0.49983504816574775;
	setAttr ".wl[258].w[14]" 0.49983504816574775;
	setAttr ".wl[258].w[18]" 0.00032990366850451508;
	setAttr -s 3 ".wl[259].w";
	setAttr ".wl[259].w[13]" 0.93904572063470304;
	setAttr ".wl[259].w[14]" 0.060849002128409338;
	setAttr ".wl[259].w[18]" 0.00010527723688747088;
	setAttr -s 3 ".wl[260].w";
	setAttr ".wl[260].w[13]" 0.75511539268330197;
	setAttr ".wl[260].w[14]" 0.2448479917518665;
	setAttr ".wl[260].w[18]" 3.6615564831615738e-005;
	setAttr -s 3 ".wl[261].w";
	setAttr ".wl[261].w[13]" 0.97698286377429333;
	setAttr ".wl[261].w[14]" 0.022735841573597166;
	setAttr ".wl[261].w[18]" 0.00028129465210955642;
	setAttr -s 3 ".wl[262].w";
	setAttr ".wl[262].w[13]" 0.98675534137704068;
	setAttr ".wl[262].w[14]" 0.013061295310726691;
	setAttr ".wl[262].w[18]" 0.00018336331223262612;
	setAttr -s 3 ".wl[263].w";
	setAttr ".wl[263].w[13]" 0.96052083576729519;
	setAttr ".wl[263].w[14]" 0.039396427151264013;
	setAttr ".wl[263].w[18]" 8.2737081440851341e-005;
	setAttr -s 3 ".wl[264].w";
	setAttr ".wl[264].w[13]" 0.94349466288294759;
	setAttr ".wl[264].w[14]" 0.056380441911915248;
	setAttr ".wl[264].w[18]" 0.00012489520513716523;
	setAttr -s 3 ".wl[265].w";
	setAttr ".wl[265].w[13]" 0.59886183315132635;
	setAttr ".wl[265].w[14]" 0.40100932876553702;
	setAttr ".wl[265].w[18]" 0.00012883808313653906;
	setAttr -s 3 ".wl[266].w";
	setAttr ".wl[266].w[13]" 0.75511539268330197;
	setAttr ".wl[266].w[14]" 0.2448479917518665;
	setAttr ".wl[266].w[18]" 3.6615564831615738e-005;
	setAttr -s 3 ".wl[267].w";
	setAttr ".wl[267].w[13]" 0.93904572063470304;
	setAttr ".wl[267].w[14]" 0.060849002128409338;
	setAttr ".wl[267].w[18]" 0.00010527723688747088;
	setAttr -s 3 ".wl[268].w";
	setAttr ".wl[268].w[13]" 0.95829362280131636;
	setAttr ".wl[268].w[14]" 0.041507587658457669;
	setAttr ".wl[268].w[18]" 0.00019878954022594817;
	setAttr -s 3 ".wl[269].w";
	setAttr ".wl[269].w[13]" 0.59886183315132635;
	setAttr ".wl[269].w[14]" 0.40100932876553702;
	setAttr ".wl[269].w[18]" 0.00012883808313653906;
	setAttr -s 3 ".wl[270].w";
	setAttr ".wl[270].w[13]" 0.94303009411397276;
	setAttr ".wl[270].w[14]" 0.056751573228612864;
	setAttr ".wl[270].w[18]" 0.00021833265741429391;
	setAttr -s 3 ".wl[271].w";
	setAttr ".wl[271].w[13]" 0.96544635220594299;
	setAttr ".wl[271].w[14]" 0.034192573292060907;
	setAttr ".wl[271].w[18]" 0.00036107450199611971;
	setAttr -s 3 ".wl[272].w";
	setAttr ".wl[272].w[13]" 0.94611713336127379;
	setAttr ".wl[272].w[14]" 0.053580752599009698;
	setAttr ".wl[272].w[18]" 0.00030211403971655332;
	setAttr -s 3 ".wl[273].w";
	setAttr ".wl[273].w[13]" 0.98501429079282854;
	setAttr ".wl[273].w[14]" 0.014806381567119213;
	setAttr ".wl[273].w[18]" 0.00017932764005218721;
	setAttr -s 3 ".wl[274].w";
	setAttr ".wl[274].w[13]" 0.98527839551576257;
	setAttr ".wl[274].w[14]" 0.014354096553950849;
	setAttr ".wl[274].w[18]" 0.00036750793028665412;
	setAttr -s 3 ".wl[275].w";
	setAttr ".wl[275].w[13]" 0.98651869875024911;
	setAttr ".wl[275].w[14]" 0.013329098197325938;
	setAttr ".wl[275].w[18]" 0.00015220305242492704;
	setAttr -s 3 ".wl[276].w";
	setAttr ".wl[276].w[13]" 0.97460046253703725;
	setAttr ".wl[276].w[14]" 0.024519604318670483;
	setAttr ".wl[276].w[18]" 0.00087993314429228413;
	setAttr -s 3 ".wl[277].w";
	setAttr ".wl[277].w[13]" 0.97560439378493169;
	setAttr ".wl[277].w[14]" 0.023688330227552058;
	setAttr ".wl[277].w[18]" 0.00070727598751624612;
	setAttr -s 3 ".wl[278].w";
	setAttr ".wl[278].w[13]" 0.97984842229681324;
	setAttr ".wl[278].w[14]" 0.019537126689110649;
	setAttr ".wl[278].w[18]" 0.00061445101407608916;
	setAttr -s 3 ".wl[279].w";
	setAttr ".wl[279].w[13]" 0.98527839551576257;
	setAttr ".wl[279].w[14]" 0.014354096553950849;
	setAttr ".wl[279].w[18]" 0.00036750793028665412;
	setAttr -s 3 ".wl[280].w";
	setAttr ".wl[280].w[13]" 0.97560439378493169;
	setAttr ".wl[280].w[14]" 0.023688330227552058;
	setAttr ".wl[280].w[18]" 0.00070727598751624612;
	setAttr -s 3 ".wl[281].w";
	setAttr ".wl[281].w[13]" 0.98009741507408266;
	setAttr ".wl[281].w[14]" 0.019439719950709845;
	setAttr ".wl[281].w[18]" 0.00046286497520755501;
	setAttr -s 3 ".wl[282].w";
	setAttr ".wl[282].w[13]" 0.97994552900552567;
	setAttr ".wl[282].w[14]" 0.019849062319433081;
	setAttr ".wl[282].w[18]" 0.00020540867504125149;
	setAttr -s 3 ".wl[283].w";
	setAttr ".wl[283].w[13]" 0.50761891896395961;
	setAttr ".wl[283].w[14]" 0.49015004250912858;
	setAttr ".wl[283].w[18]" 0.0022310385269119176;
	setAttr -s 3 ".wl[284].w";
	setAttr ".wl[284].w[13]" 0.4990137898071107;
	setAttr ".wl[284].w[14]" 0.4990137898071107;
	setAttr ".wl[284].w[18]" 0.0019724203857785965;
	setAttr -s 3 ".wl[285].w";
	setAttr ".wl[285].w[13]" 0.70509112540985353;
	setAttr ".wl[285].w[14]" 0.29406783060593783;
	setAttr ".wl[285].w[18]" 0.00084104398420861302;
	setAttr -s 3 ".wl[286].w";
	setAttr ".wl[286].w[13]" 0.50067575359689132;
	setAttr ".wl[286].w[14]" 0.49741343611241534;
	setAttr ".wl[286].w[18]" 0.0019108102906933782;
	setAttr -s 3 ".wl[287].w";
	setAttr ".wl[287].w[13]" 0.49925081226082246;
	setAttr ".wl[287].w[14]" 0.49925081226082246;
	setAttr ".wl[287].w[18]" 0.0014983754783551217;
	setAttr -s 3 ".wl[288].w";
	setAttr ".wl[288].w[13]" 0.49916861428882681;
	setAttr ".wl[288].w[14]" 0.49916861428882681;
	setAttr ".wl[288].w[18]" 0.0016627714223463538;
	setAttr -s 3 ".wl[289].w";
	setAttr ".wl[289].w[13]" 0.4990137898071107;
	setAttr ".wl[289].w[14]" 0.4990137898071107;
	setAttr ".wl[289].w[18]" 0.0019724203857785965;
	setAttr -s 3 ".wl[290].w";
	setAttr ".wl[290].w[13]" 0.50761891896395961;
	setAttr ".wl[290].w[14]" 0.49015004250912858;
	setAttr ".wl[290].w[18]" 0.0022310385269119176;
	setAttr -s 3 ".wl[291].w";
	setAttr ".wl[291].w[13]" 0.50356878279460437;
	setAttr ".wl[291].w[14]" 0.49465824890574323;
	setAttr ".wl[291].w[18]" 0.0017729682996522566;
	setAttr -s 3 ".wl[292].w";
	setAttr ".wl[292].w[13]" 0.70119559637032691;
	setAttr ".wl[292].w[14]" 0.29818256130221993;
	setAttr ".wl[292].w[18]" 0.00062184232745321239;
	setAttr -s 3 ".wl[293].w";
	setAttr ".wl[293].w[13]" 0.49925081226082246;
	setAttr ".wl[293].w[14]" 0.49925081226082246;
	setAttr ".wl[293].w[18]" 0.0014983754783551217;
	setAttr -s 3 ".wl[294].w";
	setAttr ".wl[294].w[13]" 0.98651869875024911;
	setAttr ".wl[294].w[14]" 0.013329098197325938;
	setAttr ".wl[294].w[18]" 0.00015220305242492704;
	setAttr -s 3 ".wl[295].w";
	setAttr ".wl[295].w[13]" 0.96681027439061917;
	setAttr ".wl[295].w[14]" 0.032344187118494308;
	setAttr ".wl[295].w[18]" 0.00084553849088647964;
	setAttr -s 3 ".wl[296].w";
	setAttr ".wl[296].w[13]" 0.97422806115770977;
	setAttr ".wl[296].w[14]" 0.025171002895217426;
	setAttr ".wl[296].w[18]" 0.00060093594707283197;
	setAttr -s 3 ".wl[297].w";
	setAttr ".wl[297].w[13]" 0.98009741507408266;
	setAttr ".wl[297].w[14]" 0.019439719950709845;
	setAttr ".wl[297].w[18]" 0.00046286497520755501;
	setAttr -s 3 ".wl[298].w";
	setAttr ".wl[298].w[13]" 0.97460046253703725;
	setAttr ".wl[298].w[14]" 0.024519604318670483;
	setAttr ".wl[298].w[18]" 0.00087993314429228413;
	setAttr -s 3 ".wl[299].w";
	setAttr ".wl[299].w[13]" 0.96747139007519067;
	setAttr ".wl[299].w[14]" 0.031820181843666945;
	setAttr ".wl[299].w[18]" 0.00070842808114231735;
	setAttr -s 3 ".wl[300].w";
	setAttr ".wl[300].w[13]" 0.97698286377429333;
	setAttr ".wl[300].w[14]" 0.022735841573597166;
	setAttr ".wl[300].w[18]" 0.00028129465210955642;
	setAttr -s 3 ".wl[301].w";
	setAttr ".wl[301].w[13]" 0.97984842229681324;
	setAttr ".wl[301].w[14]" 0.019537126689110649;
	setAttr ".wl[301].w[18]" 0.00061445101407608916;
	setAttr -s 3 ".wl[302].w";
	setAttr ".wl[302].w[13]" 0.50356878279460437;
	setAttr ".wl[302].w[14]" 0.49465824890574323;
	setAttr ".wl[302].w[18]" 0.0017729682996522566;
	setAttr -s 3 ".wl[303].w";
	setAttr ".wl[303].w[13]" 0.50356878279460437;
	setAttr ".wl[303].w[14]" 0.49465824890574323;
	setAttr ".wl[303].w[18]" 0.0017729682996522566;
	setAttr -s 3 ".wl[304].w";
	setAttr ".wl[304].w[13]" 0.49938182037555301;
	setAttr ".wl[304].w[14]" 0.49938182037555301;
	setAttr ".wl[304].w[18]" 0.0012363592488939855;
	setAttr -s 3 ".wl[305].w";
	setAttr ".wl[305].w[13]" 0.70201871891573042;
	setAttr ".wl[305].w[14]" 0.29790462165034515;
	setAttr ".wl[305].w[18]" 7.6659433924410657e-005;
	setAttr -s 3 ".wl[306].w";
	setAttr ".wl[306].w[13]" 0.97994552900552567;
	setAttr ".wl[306].w[14]" 0.019849062319433081;
	setAttr ".wl[306].w[18]" 0.00020540867504125149;
	setAttr -s 3 ".wl[307].w";
	setAttr ".wl[307].w[13]" 0.96747139007519067;
	setAttr ".wl[307].w[14]" 0.031820181843666945;
	setAttr ".wl[307].w[18]" 0.00070842808114231735;
	setAttr -s 3 ".wl[308].w";
	setAttr ".wl[308].w[7]" 0.00017171324739553341;
	setAttr ".wl[308].w[8]" 0.53600796154065922;
	setAttr ".wl[308].w[10]" 0.46382032521194527;
	setAttr -s 3 ".wl[309].w";
	setAttr ".wl[309].w[8]" 0.20952083574874941;
	setAttr ".wl[309].w[10]" 0.7008764730750866;
	setAttr ".wl[309].w[15]" 0.08960269117616397;
	setAttr -s 3 ".wl[310].w";
	setAttr ".wl[310].w[7]" 9.121294223154018e-005;
	setAttr ".wl[310].w[8]" 0.52687036832988066;
	setAttr ".wl[310].w[10]" 0.47303841872788777;
	setAttr -s 3 ".wl[311].w";
	setAttr ".wl[311].w[7]" 0.00014184118869279197;
	setAttr ".wl[311].w[8]" 0.60925853746722691;
	setAttr ".wl[311].w[10]" 0.39059962134408033;
	setAttr -s 3 ".wl[312].w";
	setAttr ".wl[312].w[8]" 0.4254989207965853;
	setAttr ".wl[312].w[10]" 0.55438073804485866;
	setAttr ".wl[312].w[15]" 0.020120341158556009;
	setAttr -s 3 ".wl[313].w";
	setAttr ".wl[313].w[8]" 0.26421337191499866;
	setAttr ".wl[313].w[10]" 0.63987830047552674;
	setAttr ".wl[313].w[15]" 0.095908327609474611;
	setAttr -s 3 ".wl[314].w";
	setAttr ".wl[314].w[8]" 0.2221537708067145;
	setAttr ".wl[314].w[10]" 0.66650406363094772;
	setAttr ".wl[314].w[15]" 0.11134216556233772;
	setAttr -s 3 ".wl[315].w";
	setAttr ".wl[315].w[7]" 0.00024060601417903791;
	setAttr ".wl[315].w[8]" 0.58168492470133515;
	setAttr ".wl[315].w[10]" 0.41807446928448588;
	setAttr -s 3 ".wl[316].w";
	setAttr ".wl[316].w[8]" 0.011345877811302843;
	setAttr ".wl[316].w[10]" 0.68194548635448327;
	setAttr ".wl[316].w[15]" 0.30670863583421387;
	setAttr -s 3 ".wl[317].w";
	setAttr ".wl[317].w[8]" 0.052632403879595502;
	setAttr ".wl[317].w[10]" 0.83253767620435559;
	setAttr ".wl[317].w[15]" 0.11482991991604899;
	setAttr -s 3 ".wl[318].w";
	setAttr ".wl[318].w[8]" 0.066678738229365014;
	setAttr ".wl[318].w[10]" 0.56117312730415192;
	setAttr ".wl[318].w[15]" 0.37214813446648309;
	setAttr -s 3 ".wl[319].w";
	setAttr ".wl[319].w[8]" 0.010523044560121299;
	setAttr ".wl[319].w[10]" 0.72228309401876889;
	setAttr ".wl[319].w[15]" 0.26719386142110979;
	setAttr -s 3 ".wl[320].w";
	setAttr ".wl[320].w[7]" 0.00024203847387488053;
	setAttr ".wl[320].w[8]" 0.57557210399813252;
	setAttr ".wl[320].w[10]" 0.42418585752799265;
	setAttr -s 3 ".wl[321].w";
	setAttr ".wl[321].w[8]" 0.12552264962522114;
	setAttr ".wl[321].w[10]" 0.79473457504292799;
	setAttr ".wl[321].w[15]" 0.079742775331850868;
	setAttr -s 3 ".wl[322].w";
	setAttr ".wl[322].w[8]" 0.0020526399327314938;
	setAttr ".wl[322].w[10]" 0.49956093352185515;
	setAttr ".wl[322].w[15]" 0.49838642654541337;
	setAttr -s 3 ".wl[323].w";
	setAttr ".wl[323].w[8]" 0.0001238870941035706;
	setAttr ".wl[323].w[10]" 0.051514734270823502;
	setAttr ".wl[323].w[15]" 0.94836137863507297;
	setAttr -s 3 ".wl[324].w";
	setAttr ".wl[324].w[8]" 0.00022814078023717673;
	setAttr ".wl[324].w[10]" 0.2931819666459447;
	setAttr ".wl[324].w[15]" 0.7065898925738181;
	setAttr -s 3 ".wl[325].w";
	setAttr ".wl[325].w[8]" 0.0002067766842777538;
	setAttr ".wl[325].w[10]" 0.31692313425710411;
	setAttr ".wl[325].w[15]" 0.68287008905861812;
	setAttr -s 3 ".wl[326].w";
	setAttr ".wl[326].w[8]" 0.0033863405791068387;
	setAttr ".wl[326].w[10]" 0.46459883665749085;
	setAttr ".wl[326].w[15]" 0.53201482276340228;
	setAttr -s 3 ".wl[327].w";
	setAttr ".wl[327].w[8]" 0.0048115952080411365;
	setAttr ".wl[327].w[10]" 0.42597294968188554;
	setAttr ".wl[327].w[15]" 0.56921545511007332;
	setAttr -s 3 ".wl[328].w";
	setAttr ".wl[328].w[8]" 0.0038317068673032746;
	setAttr ".wl[328].w[10]" 0.38914868235935901;
	setAttr ".wl[328].w[15]" 0.60701961077333766;
	setAttr -s 3 ".wl[329].w";
	setAttr ".wl[329].w[8]" 0.0038729853616733621;
	setAttr ".wl[329].w[10]" 0.36509021935558456;
	setAttr ".wl[329].w[15]" 0.63103679528274215;
	setAttr -s 3 ".wl[330].w";
	setAttr ".wl[330].w[8]" 0.00012086883752214557;
	setAttr ".wl[330].w[10]" 0.064861822914049475;
	setAttr ".wl[330].w[15]" 0.93501730824842832;
	setAttr -s 3 ".wl[331].w";
	setAttr ".wl[331].w[8]" 0.0014899742478947948;
	setAttr ".wl[331].w[10]" 0.51602477791147783;
	setAttr ".wl[331].w[15]" 0.48248524784062746;
	setAttr -s 3 ".wl[332].w";
	setAttr ".wl[332].w[8]" 0.029282579016886058;
	setAttr ".wl[332].w[10]" 0.50619705035883833;
	setAttr ".wl[332].w[15]" 0.46452037062427565;
	setAttr -s 3 ".wl[333].w";
	setAttr ".wl[333].w[8]" 0.026305086459054657;
	setAttr ".wl[333].w[10]" 0.51663499442171046;
	setAttr ".wl[333].w[15]" 0.45705991911923494;
	setAttr -s 3 ".wl[334].w";
	setAttr ".wl[334].w[8]" 0.024050776331658953;
	setAttr ".wl[334].w[10]" 0.56628787563353233;
	setAttr ".wl[334].w[15]" 0.40966134803480864;
	setAttr -s 3 ".wl[335].w";
	setAttr ".wl[335].w[8]" 0.027857054430935977;
	setAttr ".wl[335].w[10]" 0.76857855581299039;
	setAttr ".wl[335].w[15]" 0.2035643897560736;
	setAttr -s 3 ".wl[336].w";
	setAttr ".wl[336].w[8]" 0.065721516918332348;
	setAttr ".wl[336].w[10]" 0.72803276613723378;
	setAttr ".wl[336].w[15]" 0.20624571694443394;
	setAttr -s 3 ".wl[337].w";
	setAttr ".wl[337].w[8]" 0.050484282237337627;
	setAttr ".wl[337].w[10]" 0.66919266019726231;
	setAttr ".wl[337].w[15]" 0.2803230575654001;
	setAttr -s 3 ".wl[338].w";
	setAttr ".wl[338].w[8]" 0.042026821194527955;
	setAttr ".wl[338].w[10]" 0.8121832818000384;
	setAttr ".wl[338].w[15]" 0.14578989700543368;
	setAttr -s 3 ".wl[339].w";
	setAttr ".wl[339].w[8]" 0.043707763524206932;
	setAttr ".wl[339].w[10]" 0.91386303119906354;
	setAttr ".wl[339].w[15]" 0.042429205276729588;
	setAttr -s 3 ".wl[340].w";
	setAttr ".wl[340].w[8]" 0.11037571769125555;
	setAttr ".wl[340].w[10]" 0.71446491240266463;
	setAttr ".wl[340].w[15]" 0.17515936990607983;
	setAttr -s 3 ".wl[341].w";
	setAttr ".wl[341].w[8]" 0.054698742195169965;
	setAttr ".wl[341].w[10]" 0.60543925358799267;
	setAttr ".wl[341].w[15]" 0.33986200421683743;
	setAttr -s 3 ".wl[342].w";
	setAttr ".wl[342].w[8]" 0.065860815785349497;
	setAttr ".wl[342].w[10]" 0.57521038233293376;
	setAttr ".wl[342].w[15]" 0.35892880188171672;
	setAttr -s 3 ".wl[343].w";
	setAttr ".wl[343].w[8]" 0.20952083574874941;
	setAttr ".wl[343].w[10]" 0.7008764730750866;
	setAttr ".wl[343].w[15]" 0.08960269117616397;
	setAttr -s 3 ".wl[344].w";
	setAttr ".wl[344].w[8]" 0.043707763524206932;
	setAttr ".wl[344].w[10]" 0.91386303119906354;
	setAttr ".wl[344].w[15]" 0.042429205276729588;
	setAttr -s 3 ".wl[345].w";
	setAttr ".wl[345].w[8]" 0.042026821194527955;
	setAttr ".wl[345].w[10]" 0.8121832818000384;
	setAttr ".wl[345].w[15]" 0.14578989700543368;
	setAttr -s 3 ".wl[346].w";
	setAttr ".wl[346].w[8]" 0.043707763524206932;
	setAttr ".wl[346].w[10]" 0.91386303119906354;
	setAttr ".wl[346].w[15]" 0.042429205276729588;
	setAttr -s 3 ".wl[347].w";
	setAttr ".wl[347].w[8]" 0.00032117523714727354;
	setAttr ".wl[347].w[10]" 0.69190703410548182;
	setAttr ".wl[347].w[15]" 0.30777179065737093;
	setAttr -s 3 ".wl[348].w";
	setAttr ".wl[348].w[8]" 0.00022814078023717673;
	setAttr ".wl[348].w[10]" 0.2931819666459447;
	setAttr ".wl[348].w[15]" 0.7065898925738181;
	setAttr -s 3 ".wl[349].w";
	setAttr ".wl[349].w[8]" 4.4870921046602453e-005;
	setAttr ".wl[349].w[10]" 0.30358409226348759;
	setAttr ".wl[349].w[15]" 0.69637103681546575;
	setAttr -s 3 ".wl[350].w";
	setAttr ".wl[350].w[8]" 4.4870921046602453e-005;
	setAttr ".wl[350].w[10]" 0.30358409226348759;
	setAttr ".wl[350].w[15]" 0.69637103681546575;
	setAttr -s 3 ".wl[351].w";
	setAttr ".wl[351].w[8]" 0.0037427558998693379;
	setAttr ".wl[351].w[10]" 0.44000624761302037;
	setAttr ".wl[351].w[15]" 0.55625099648711041;
	setAttr -s 3 ".wl[352].w";
	setAttr ".wl[352].w[8]" 0.00046794586967093297;
	setAttr ".wl[352].w[10]" 0.43221458619654701;
	setAttr ".wl[352].w[15]" 0.56731746793378213;
	setAttr -s 3 ".wl[353].w";
	setAttr ".wl[353].w[8]" 1.5541724708806843e-005;
	setAttr ".wl[353].w[10]" 0.30011091727935701;
	setAttr ".wl[353].w[15]" 0.69987354099593424;
	setAttr -s 3 ".wl[354].w";
	setAttr ".wl[354].w[8]" 0.092455394944945604;
	setAttr ".wl[354].w[10]" 0.61220111487054962;
	setAttr ".wl[354].w[15]" 0.29534349018450473;
	setAttr -s 3 ".wl[355].w";
	setAttr ".wl[355].w[8]" 0.15556090547682483;
	setAttr ".wl[355].w[10]" 0.77177905549254178;
	setAttr ".wl[355].w[15]" 0.072660039030633242;
	setAttr -s 3 ".wl[356].w";
	setAttr ".wl[356].w[8]" 0.4254989207965853;
	setAttr ".wl[356].w[10]" 0.55438073804485866;
	setAttr ".wl[356].w[15]" 0.020120341158556009;
	setAttr -s 3 ".wl[357].w";
	setAttr ".wl[357].w[7]" 0.00024203847387488053;
	setAttr ".wl[357].w[8]" 0.57557210399813252;
	setAttr ".wl[357].w[10]" 0.42418585752799265;
	setAttr -s 3 ".wl[358].w";
	setAttr ".wl[358].w[8]" 0.073239603921638821;
	setAttr ".wl[358].w[10]" 0.51157163400946204;
	setAttr ".wl[358].w[15]" 0.4151887620688991;
	setAttr -s 3 ".wl[359].w";
	setAttr ".wl[359].w[8]" 0.07761059546888352;
	setAttr ".wl[359].w[10]" 0.55231117085271619;
	setAttr ".wl[359].w[15]" 0.37007823367840031;
	setAttr -s 3 ".wl[360].w";
	setAttr ".wl[360].w[8]" 0.12998685508051508;
	setAttr ".wl[360].w[10]" 0.57665776287508042;
	setAttr ".wl[360].w[15]" 0.29335538204440442;
	setAttr -s 3 ".wl[361].w";
	setAttr ".wl[361].w[8]" 0.0011327712745110171;
	setAttr ".wl[361].w[10]" 0.51805211893075076;
	setAttr ".wl[361].w[15]" 0.48081510979473824;
	setAttr -s 3 ".wl[362].w";
	setAttr ".wl[362].w[8]" 0.00032117523714727354;
	setAttr ".wl[362].w[10]" 0.69190703410548182;
	setAttr ".wl[362].w[15]" 0.30777179065737093;
	setAttr -s 3 ".wl[363].w";
	setAttr ".wl[363].w[8]" 0.043707763524206932;
	setAttr ".wl[363].w[10]" 0.91386303119906354;
	setAttr ".wl[363].w[15]" 0.042429205276729588;
	setAttr -s 3 ".wl[364].w";
	setAttr ".wl[364].w[8]" 1.2565016068249528e-007;
	setAttr ".wl[364].w[10]" 0.99976034754165288;
	setAttr ".wl[364].w[15]" 0.00023952680818643563;
	setAttr -s 3 ".wl[365].w";
	setAttr ".wl[365].w[8]" 0.0037427558998693379;
	setAttr ".wl[365].w[10]" 0.44000624761302037;
	setAttr ".wl[365].w[15]" 0.55625099648711041;
	setAttr -s 3 ".wl[366].w";
	setAttr ".wl[366].w[8]" 5.8135140663269083e-005;
	setAttr ".wl[366].w[10]" 0.048101222720932625;
	setAttr ".wl[366].w[15]" 0.95184064213840414;
	setAttr -s 3 ".wl[367].w";
	setAttr ".wl[367].w[8]" 0.027857054430935977;
	setAttr ".wl[367].w[10]" 0.76857855581299039;
	setAttr ".wl[367].w[15]" 0.2035643897560736;
	setAttr -s 3 ".wl[368].w";
	setAttr ".wl[368].w[8]" 0.054698742195169965;
	setAttr ".wl[368].w[10]" 0.60543925358799267;
	setAttr ".wl[368].w[15]" 0.33986200421683743;
	setAttr -s 3 ".wl[369].w";
	setAttr ".wl[369].w[8]" 0.11037571769125555;
	setAttr ".wl[369].w[10]" 0.71446491240266463;
	setAttr ".wl[369].w[15]" 0.17515936990607983;
	setAttr -s 3 ".wl[370].w";
	setAttr ".wl[370].w[8]" 0.15556090547682483;
	setAttr ".wl[370].w[10]" 0.77177905549254178;
	setAttr ".wl[370].w[15]" 0.072660039030633242;
	setAttr -s 3 ".wl[371].w";
	setAttr ".wl[371].w[8]" 0.22934450286917163;
	setAttr ".wl[371].w[10]" 0.65690183486810505;
	setAttr ".wl[371].w[15]" 0.11375366226272329;
	setAttr -s 3 ".wl[372].w";
	setAttr ".wl[372].w[8]" 0.065721516918332348;
	setAttr ".wl[372].w[10]" 0.72803276613723378;
	setAttr ".wl[372].w[15]" 0.20624571694443394;
	setAttr -s 3 ".wl[373].w";
	setAttr ".wl[373].w[8]" 0.20952083574874941;
	setAttr ".wl[373].w[10]" 0.7008764730750866;
	setAttr ".wl[373].w[15]" 0.08960269117616397;
	setAttr -s 3 ".wl[374].w";
	setAttr ".wl[374].w[8]" 0.22934450286917163;
	setAttr ".wl[374].w[10]" 0.65690183486810505;
	setAttr ".wl[374].w[15]" 0.11375366226272329;
	setAttr -s 3 ".wl[375].w";
	setAttr ".wl[375].w[7]" 9.121294223154018e-005;
	setAttr ".wl[375].w[8]" 0.52687036832988066;
	setAttr ".wl[375].w[10]" 0.47303841872788777;
	setAttr -s 3 ".wl[376].w";
	setAttr ".wl[376].w[7]" 0.00016529161848469935;
	setAttr ".wl[376].w[8]" 0.51550086519649641;
	setAttr ".wl[376].w[10]" 0.48433384318501893;
	setAttr -s 3 ".wl[377].w";
	setAttr ".wl[377].w[7]" 0.00044309702141608884;
	setAttr ".wl[377].w[8]" 0.94614774678653224;
	setAttr ".wl[377].w[10]" 0.053409156192051624;
	setAttr -s 3 ".wl[378].w";
	setAttr ".wl[378].w[7]" 0.0013675373637617417;
	setAttr ".wl[378].w[8]" 0.84951499958049992;
	setAttr ".wl[378].w[10]" 0.14911746305573834;
	setAttr -s 3 ".wl[379].w";
	setAttr ".wl[379].w[8]" 0.0024776067015637735;
	setAttr ".wl[379].w[10]" 0.50026925413879431;
	setAttr ".wl[379].w[15]" 0.49725313915964192;
	setAttr -s 3 ".wl[380].w";
	setAttr ".wl[380].w[8]" 0.031058791823800357;
	setAttr ".wl[380].w[10]" 0.61088678541545371;
	setAttr ".wl[380].w[15]" 0.35805442276074595;
	setAttr -s 3 ".wl[381].w";
	setAttr ".wl[381].w[8]" 0.0075071828982520503;
	setAttr ".wl[381].w[10]" 0.51880274011727756;
	setAttr ".wl[381].w[15]" 0.47369007698447035;
	setAttr -s 3 ".wl[382].w";
	setAttr ".wl[382].w[8]" 0.0079486038705134359;
	setAttr ".wl[382].w[10]" 0.49803519136587454;
	setAttr ".wl[382].w[15]" 0.49401620476361208;
	setAttr -s 3 ".wl[383].w";
	setAttr ".wl[383].w[8]" 0.01121738885374866;
	setAttr ".wl[383].w[10]" 0.49165627491466618;
	setAttr ".wl[383].w[15]" 0.4971263362315852;
	setAttr -s 3 ".wl[384].w";
	setAttr ".wl[384].w[8]" 0.0079486038705134359;
	setAttr ".wl[384].w[10]" 0.49803519136587454;
	setAttr ".wl[384].w[15]" 0.49401620476361208;
	setAttr -s 3 ".wl[385].w";
	setAttr ".wl[385].w[8]" 0.10154928261869528;
	setAttr ".wl[385].w[10]" 0.580329647885378;
	setAttr ".wl[385].w[15]" 0.31812106949592672;
	setAttr -s 3 ".wl[386].w";
	setAttr ".wl[386].w[8]" 0.060302381982805908;
	setAttr ".wl[386].w[10]" 0.58965189092444337;
	setAttr ".wl[386].w[15]" 0.35004572709275072;
	setAttr -s 3 ".wl[387].w";
	setAttr ".wl[387].w[8]" 0.053800411287303215;
	setAttr ".wl[387].w[10]" 0.5224581664296406;
	setAttr ".wl[387].w[15]" 0.42374142228305628;
	setAttr -s 3 ".wl[388].w";
	setAttr ".wl[388].w[8]" 0.016658458454080878;
	setAttr ".wl[388].w[10]" 0.49273149208160771;
	setAttr ".wl[388].w[15]" 0.49061004946431142;
	setAttr -s 3 ".wl[389].w";
	setAttr ".wl[389].w[8]" 0.029731381719559836;
	setAttr ".wl[389].w[10]" 0.50878358066498663;
	setAttr ".wl[389].w[15]" 0.46148503761545356;
	setAttr -s 3 ".wl[390].w";
	setAttr ".wl[390].w[8]" 0.031058791823800357;
	setAttr ".wl[390].w[10]" 0.61088678541545371;
	setAttr ".wl[390].w[15]" 0.35805442276074595;
	setAttr -s 3 ".wl[391].w";
	setAttr ".wl[391].w[8]" 0.054564912131985173;
	setAttr ".wl[391].w[10]" 0.49808728266185953;
	setAttr ".wl[391].w[15]" 0.44734780520615519;
	setAttr -s 3 ".wl[392].w";
	setAttr ".wl[392].w[8]" 0.092999796066596183;
	setAttr ".wl[392].w[10]" 0.52550310381343235;
	setAttr ".wl[392].w[15]" 0.38149710011997146;
	setAttr -s 3 ".wl[393].w";
	setAttr ".wl[393].w[8]" 0.03426355049754333;
	setAttr ".wl[393].w[10]" 0.52109343826733134;
	setAttr ".wl[393].w[15]" 0.4446430112351254;
	setAttr -s 3 ".wl[394].w";
	setAttr ".wl[394].w[8]" 3.4966211651615183e-005;
	setAttr ".wl[394].w[10]" 0.045278099924752985;
	setAttr ".wl[394].w[15]" 0.95468693386359538;
	setAttr -s 3 ".wl[395].w";
	setAttr ".wl[395].w[8]" 0.092455394944945604;
	setAttr ".wl[395].w[10]" 0.61220111487054962;
	setAttr ".wl[395].w[15]" 0.29534349018450473;
	setAttr -s 3 ".wl[396].w";
	setAttr ".wl[396].w[8]" 0.07761059546888352;
	setAttr ".wl[396].w[10]" 0.55231117085271619;
	setAttr ".wl[396].w[15]" 0.37007823367840031;
	setAttr -s 3 ".wl[397].w";
	setAttr ".wl[397].w[8]" 0.050484282237337627;
	setAttr ".wl[397].w[10]" 0.66919266019726231;
	setAttr ".wl[397].w[15]" 0.2803230575654001;
	setAttr -s 3 ".wl[398].w";
	setAttr ".wl[398].w[8]" 0.12740095193060352;
	setAttr ".wl[398].w[10]" 0.66904574150555152;
	setAttr ".wl[398].w[15]" 0.20355330656384493;
	setAttr -s 3 ".wl[399].w";
	setAttr ".wl[399].w[8]" 0.026305086459054657;
	setAttr ".wl[399].w[10]" 0.51663499442171046;
	setAttr ".wl[399].w[15]" 0.45705991911923494;
	setAttr -s 3 ".wl[400].w";
	setAttr ".wl[400].w[8]" 0.029282579016886058;
	setAttr ".wl[400].w[10]" 0.50619705035883833;
	setAttr ".wl[400].w[15]" 0.46452037062427565;
	setAttr -s 3 ".wl[401].w";
	setAttr ".wl[401].w[8]" 0.034403072145810475;
	setAttr ".wl[401].w[10]" 0.50502650900998003;
	setAttr ".wl[401].w[15]" 0.46057041884420952;
	setAttr -s 3 ".wl[402].w";
	setAttr ".wl[402].w[8]" 0.026305086459054657;
	setAttr ".wl[402].w[10]" 0.51663499442171046;
	setAttr ".wl[402].w[15]" 0.45705991911923494;
	setAttr -s 3 ".wl[403].w";
	setAttr ".wl[403].w[8]" 0.034403072145810475;
	setAttr ".wl[403].w[10]" 0.50502650900998003;
	setAttr ".wl[403].w[15]" 0.46057041884420952;
	setAttr -s 3 ".wl[404].w";
	setAttr ".wl[404].w[8]" 0.0033863405791068387;
	setAttr ".wl[404].w[10]" 0.46459883665749085;
	setAttr ".wl[404].w[15]" 0.53201482276340228;
	setAttr -s 3 ".wl[405].w";
	setAttr ".wl[405].w[8]" 0.0048115952080411365;
	setAttr ".wl[405].w[10]" 0.42597294968188554;
	setAttr ".wl[405].w[15]" 0.56921545511007332;
	setAttr -s 3 ".wl[406].w";
	setAttr ".wl[406].w[8]" 0.10154928261869528;
	setAttr ".wl[406].w[10]" 0.580329647885378;
	setAttr ".wl[406].w[15]" 0.31812106949592672;
	setAttr -s 3 ".wl[407].w";
	setAttr ".wl[407].w[8]" 0.060302381982805908;
	setAttr ".wl[407].w[10]" 0.58965189092444337;
	setAttr ".wl[407].w[15]" 0.35004572709275072;
	setAttr -s 3 ".wl[408].w";
	setAttr ".wl[408].w[8]" 0.12998685508051508;
	setAttr ".wl[408].w[10]" 0.57665776287508042;
	setAttr ".wl[408].w[15]" 0.29335538204440442;
	setAttr -s 3 ".wl[409].w";
	setAttr ".wl[409].w[8]" 0.15556090547682483;
	setAttr ".wl[409].w[10]" 0.77177905549254178;
	setAttr ".wl[409].w[15]" 0.072660039030633242;
	setAttr -s 3 ".wl[410].w";
	setAttr ".wl[410].w[8]" 0.20952083574874941;
	setAttr ".wl[410].w[10]" 0.7008764730750866;
	setAttr ".wl[410].w[15]" 0.08960269117616397;
	setAttr -s 3 ".wl[411].w";
	setAttr ".wl[411].w[7]" 0.00079012038633949409;
	setAttr ".wl[411].w[8]" 0.93979035587244009;
	setAttr ".wl[411].w[10]" 0.059419523741220448;
	setAttr -s 3 ".wl[412].w";
	setAttr ".wl[412].w[7]" 0.00086433161086302561;
	setAttr ".wl[412].w[8]" 0.94150975620592825;
	setAttr ".wl[412].w[10]" 0.057625912183208707;
	setAttr -s 3 ".wl[413].w";
	setAttr ".wl[413].w[7]" 0.0015032141848401737;
	setAttr ".wl[413].w[8]" 0.85361219031715241;
	setAttr ".wl[413].w[10]" 0.14488459549800731;
	setAttr -s 3 ".wl[414].w";
	setAttr ".wl[414].w[7]" 0.00053830957389077502;
	setAttr ".wl[414].w[8]" 0.94657519325515649;
	setAttr ".wl[414].w[10]" 0.052886497170952736;
	setAttr -s 3 ".wl[415].w";
	setAttr ".wl[415].w[7]" 0.00016529161848469935;
	setAttr ".wl[415].w[8]" 0.51550086519649641;
	setAttr ".wl[415].w[10]" 0.48433384318501893;
	setAttr -s 3 ".wl[416].w";
	setAttr ".wl[416].w[7]" 0.0013675373637617417;
	setAttr ".wl[416].w[8]" 0.84951499958049992;
	setAttr ".wl[416].w[10]" 0.14911746305573834;
	setAttr -s 3 ".wl[417].w";
	setAttr ".wl[417].w[7]" 0.00079012038633949409;
	setAttr ".wl[417].w[8]" 0.93979035587244009;
	setAttr ".wl[417].w[10]" 0.059419523741220448;
	setAttr -s 3 ".wl[418].w";
	setAttr ".wl[418].w[0]" 7.5144175293016577e-005;
	setAttr ".wl[418].w[1]" 0.55007385342229798;
	setAttr ".wl[418].w[6]" 0.44985100240240911;
	setAttr -s 3 ".wl[419].w";
	setAttr ".wl[419].w[0]" 9.8048269903188253e-005;
	setAttr ".wl[419].w[1]" 0.52616097310437893;
	setAttr ".wl[419].w[6]" 0.4737409786257179;
	setAttr -s 3 ".wl[420].w";
	setAttr ".wl[420].w[1]" 0.24479845353558152;
	setAttr ".wl[420].w[6]" 0.66448823439313209;
	setAttr ".wl[420].w[16]" 0.090713312071286439;
	setAttr -s 3 ".wl[421].w";
	setAttr ".wl[421].w[0]" 0.00015094704287494924;
	setAttr ".wl[421].w[1]" 0.60652268544439925;
	setAttr ".wl[421].w[6]" 0.39332636751272576;
	setAttr -s 3 ".wl[422].w";
	setAttr ".wl[422].w[1]" 0.22902990376664478;
	setAttr ".wl[422].w[6]" 0.67533337866397058;
	setAttr ".wl[422].w[16]" 0.095636717569384647;
	setAttr -s 3 ".wl[423].w";
	setAttr ".wl[423].w[1]" 0.41327410831150885;
	setAttr ".wl[423].w[6]" 0.5627152084891287;
	setAttr ".wl[423].w[16]" 0.024010683199362493;
	setAttr -s 3 ".wl[424].w";
	setAttr ".wl[424].w[0]" 0.00011830763249106479;
	setAttr ".wl[424].w[1]" 0.60951181923894826;
	setAttr ".wl[424].w[6]" 0.39036987312856075;
	setAttr -s 3 ".wl[425].w";
	setAttr ".wl[425].w[1]" 0.17611463270145331;
	setAttr ".wl[425].w[6]" 0.72244188729081993;
	setAttr ".wl[425].w[16]" 0.10144348000772671;
	setAttr -s 3 ".wl[426].w";
	setAttr ".wl[426].w[1]" 0.005363931923422968;
	setAttr ".wl[426].w[6]" 0.7623703914926343;
	setAttr ".wl[426].w[16]" 0.23226567658394265;
	setAttr -s 3 ".wl[427].w";
	setAttr ".wl[427].w[1]" 0.019945101685126719;
	setAttr ".wl[427].w[6]" 0.92592629992658659;
	setAttr ".wl[427].w[16]" 0.05412859838828666;
	setAttr -s 3 ".wl[428].w";
	setAttr ".wl[428].w[1]" 0.0025059979274178554;
	setAttr ".wl[428].w[6]" 0.85136345522518853;
	setAttr ".wl[428].w[16]" 0.14613054684739366;
	setAttr -s 3 ".wl[429].w";
	setAttr ".wl[429].w[1]" 0.049090207893096344;
	setAttr ".wl[429].w[6]" 0.56781589575619029;
	setAttr ".wl[429].w[16]" 0.38309389635071339;
	setAttr -s 3 ".wl[430].w";
	setAttr ".wl[430].w[0]" 0.00039464635206241743;
	setAttr ".wl[430].w[1]" 0.56225145858311287;
	setAttr ".wl[430].w[6]" 0.43735389506482469;
	setAttr -s 3 ".wl[431].w";
	setAttr ".wl[431].w[1]" 0.12685989932048758;
	setAttr ".wl[431].w[6]" 0.80457345747554732;
	setAttr ".wl[431].w[16]" 0.068566643203965119;
	setAttr -s 3 ".wl[432].w";
	setAttr ".wl[432].w[1]" 0.001067305052878333;
	setAttr ".wl[432].w[6]" 0.50131131749710867;
	setAttr ".wl[432].w[16]" 0.49762137745001311;
	setAttr -s 3 ".wl[433].w";
	setAttr ".wl[433].w[1]" 0.0011990750723517225;
	setAttr ".wl[433].w[6]" 0.21856134214734341;
	setAttr ".wl[433].w[16]" 0.78023958278030492;
	setAttr -s 3 ".wl[434].w";
	setAttr ".wl[434].w[1]" 0.00063956339154441202;
	setAttr ".wl[434].w[6]" 0.40624191977835389;
	setAttr ".wl[434].w[16]" 0.59311851683010164;
	setAttr -s 3 ".wl[435].w";
	setAttr ".wl[435].w[1]" 0.0014539107617630304;
	setAttr ".wl[435].w[6]" 0.42497148481314434;
	setAttr ".wl[435].w[16]" 0.57357460442509256;
	setAttr -s 3 ".wl[436].w";
	setAttr ".wl[436].w[1]" 0.0085178135882779549;
	setAttr ".wl[436].w[6]" 0.47813925882444974;
	setAttr ".wl[436].w[16]" 0.51334292758727229;
	setAttr -s 3 ".wl[437].w";
	setAttr ".wl[437].w[1]" 0.0088265641572101636;
	setAttr ".wl[437].w[6]" 0.43077325163033958;
	setAttr ".wl[437].w[16]" 0.5604001842124503;
	setAttr -s 3 ".wl[438].w";
	setAttr ".wl[438].w[1]" 0.011286634143616862;
	setAttr ".wl[438].w[6]" 0.45531569466180155;
	setAttr ".wl[438].w[16]" 0.53339767119458159;
	setAttr -s 3 ".wl[439].w";
	setAttr ".wl[439].w[1]" 0.00082273326526741315;
	setAttr ".wl[439].w[6]" 0.20799355910180212;
	setAttr ".wl[439].w[16]" 0.79118370763293044;
	setAttr -s 3 ".wl[440].w";
	setAttr ".wl[440].w[1]" 0.0096338168657207901;
	setAttr ".wl[440].w[6]" 0.42136830352962734;
	setAttr ".wl[440].w[16]" 0.56899787960465198;
	setAttr -s 3 ".wl[441].w";
	setAttr ".wl[441].w[1]" 0.00021078880636724902;
	setAttr ".wl[441].w[6]" 0.54028737450977327;
	setAttr ".wl[441].w[16]" 0.45950183668385941;
	setAttr -s 3 ".wl[442].w";
	setAttr ".wl[442].w[1]" 0.048622259789818018;
	setAttr ".wl[442].w[6]" 0.49990090286409861;
	setAttr ".wl[442].w[16]" 0.45147683734608329;
	setAttr -s 3 ".wl[443].w";
	setAttr ".wl[443].w[1]" 0.043457794399664004;
	setAttr ".wl[443].w[6]" 0.54794009691244627;
	setAttr ".wl[443].w[16]" 0.40860210868788976;
	setAttr -s 3 ".wl[444].w";
	setAttr ".wl[444].w[1]" 0.043264447725111913;
	setAttr ".wl[444].w[6]" 0.51120996452538525;
	setAttr ".wl[444].w[16]" 0.44552558774950274;
	setAttr -s 3 ".wl[445].w";
	setAttr ".wl[445].w[1]" 0.048224830428934086;
	setAttr ".wl[445].w[6]" 0.71749622266076807;
	setAttr ".wl[445].w[16]" 0.23427894691029777;
	setAttr -s 3 ".wl[446].w";
	setAttr ".wl[446].w[1]" 0.083893113064082273;
	setAttr ".wl[446].w[6]" 0.61540925406742109;
	setAttr ".wl[446].w[16]" 0.3006976328684966;
	setAttr -s 3 ".wl[447].w";
	setAttr ".wl[447].w[1]" 0.10473086348241506;
	setAttr ".wl[447].w[6]" 0.66199194889673074;
	setAttr ".wl[447].w[16]" 0.23327718762085417;
	setAttr -s 3 ".wl[448].w";
	setAttr ".wl[448].w[1]" 0.069493549211564809;
	setAttr ".wl[448].w[6]" 0.87342701028568992;
	setAttr ".wl[448].w[16]" 0.057079440502745216;
	setAttr -s 3 ".wl[449].w";
	setAttr ".wl[449].w[1]" 0.067442879030549602;
	setAttr ".wl[449].w[6]" 0.76060868827798567;
	setAttr ".wl[449].w[16]" 0.17194843269146473;
	setAttr -s 3 ".wl[450].w";
	setAttr ".wl[450].w[1]" 0.14498508471446694;
	setAttr ".wl[450].w[6]" 0.67353963390126437;
	setAttr ".wl[450].w[16]" 0.18147528138426869;
	setAttr -s 3 ".wl[451].w";
	setAttr ".wl[451].w[1]" 0.097363049024551132;
	setAttr ".wl[451].w[6]" 0.54955900591808193;
	setAttr ".wl[451].w[16]" 0.35307794505736695;
	setAttr -s 3 ".wl[452].w";
	setAttr ".wl[452].w[1]" 0.07940966210112918;
	setAttr ".wl[452].w[6]" 0.58419834704044926;
	setAttr ".wl[452].w[16]" 0.33639199085842159;
	setAttr -s 3 ".wl[453].w";
	setAttr ".wl[453].w[1]" 0.24479845353558152;
	setAttr ".wl[453].w[6]" 0.66448823439313209;
	setAttr ".wl[453].w[16]" 0.090713312071286439;
	setAttr -s 3 ".wl[454].w";
	setAttr ".wl[454].w[1]" 0.067442879030549602;
	setAttr ".wl[454].w[6]" 0.76060868827798567;
	setAttr ".wl[454].w[16]" 0.17194843269146473;
	setAttr -s 3 ".wl[455].w";
	setAttr ".wl[455].w[1]" 0.069493549211564809;
	setAttr ".wl[455].w[6]" 0.87342701028568992;
	setAttr ".wl[455].w[16]" 0.057079440502745216;
	setAttr -s 3 ".wl[456].w";
	setAttr ".wl[456].w[1]" 0.069493549211564809;
	setAttr ".wl[456].w[6]" 0.87342701028568992;
	setAttr ".wl[456].w[16]" 0.057079440502745216;
	setAttr -s 3 ".wl[457].w";
	setAttr ".wl[457].w[1]" 0.0013429005099393253;
	setAttr ".wl[457].w[6]" 0.6168213275183001;
	setAttr ".wl[457].w[16]" 0.38183577197176055;
	setAttr -s 3 ".wl[458].w";
	setAttr ".wl[458].w[1]" 0.00041044432323262398;
	setAttr ".wl[458].w[6]" 0.43156428606050057;
	setAttr ".wl[458].w[16]" 0.56802526961626676;
	setAttr -s 3 ".wl[459].w";
	setAttr ".wl[459].w[1]" 0.0014539107617630304;
	setAttr ".wl[459].w[6]" 0.42497148481314434;
	setAttr ".wl[459].w[16]" 0.57357460442509256;
	setAttr -s 3 ".wl[460].w";
	setAttr ".wl[460].w[1]" 0.00041044432323262398;
	setAttr ".wl[460].w[6]" 0.43156428606050057;
	setAttr ".wl[460].w[16]" 0.56802526961626676;
	setAttr -s 3 ".wl[461].w";
	setAttr ".wl[461].w[1]" 0.010092683079384187;
	setAttr ".wl[461].w[6]" 0.46792909376833564;
	setAttr ".wl[461].w[16]" 0.52197822315228015;
	setAttr -s 3 ".wl[462].w";
	setAttr ".wl[462].w[1]" 0.0007155820529905812;
	setAttr ".wl[462].w[6]" 0.43795676106755244;
	setAttr ".wl[462].w[16]" 0.56132765687945696;
	setAttr -s 3 ".wl[463].w";
	setAttr ".wl[463].w[1]" 5.8844296268340433e-006;
	setAttr ".wl[463].w[6]" 0.2055737576660373;
	setAttr ".wl[463].w[16]" 0.79442035790433585;
	setAttr -s 3 ".wl[464].w";
	setAttr ".wl[464].w[1]" 0.079092885418441713;
	setAttr ".wl[464].w[6]" 0.61103072075817422;
	setAttr ".wl[464].w[16]" 0.30987639382338411;
	setAttr -s 3 ".wl[465].w";
	setAttr ".wl[465].w[1]" 0.21707215139294192;
	setAttr ".wl[465].w[6]" 0.68743740942925513;
	setAttr ".wl[465].w[16]" 0.095490439177803074;
	setAttr -s 3 ".wl[466].w";
	setAttr ".wl[466].w[0]" 0.00039464635206241743;
	setAttr ".wl[466].w[1]" 0.56225145858311287;
	setAttr ".wl[466].w[6]" 0.43735389506482469;
	setAttr -s 3 ".wl[467].w";
	setAttr ".wl[467].w[1]" 0.41327410831150885;
	setAttr ".wl[467].w[6]" 0.5627152084891287;
	setAttr ".wl[467].w[16]" 0.024010683199362493;
	setAttr -s 3 ".wl[468].w";
	setAttr ".wl[468].w[1]" 0.072355811433529774;
	setAttr ".wl[468].w[6]" 0.50139956963271948;
	setAttr ".wl[468].w[16]" 0.42624461893375076;
	setAttr -s 3 ".wl[469].w";
	setAttr ".wl[469].w[1]" 0.07610324119589372;
	setAttr ".wl[469].w[6]" 0.5378101678848981;
	setAttr ".wl[469].w[16]" 0.38608659091920816;
	setAttr -s 3 ".wl[470].w";
	setAttr ".wl[470].w[1]" 0.13546635070369659;
	setAttr ".wl[470].w[6]" 0.55105324760561714;
	setAttr ".wl[470].w[16]" 0.31348040169068625;
	setAttr -s 3 ".wl[471].w";
	setAttr ".wl[471].w[1]" 0.0014013074795883901;
	setAttr ".wl[471].w[6]" 0.52387560593919635;
	setAttr ".wl[471].w[16]" 0.4747230865812152;
	setAttr -s 3 ".wl[472].w";
	setAttr ".wl[472].w[1]" 0.0013429005099393253;
	setAttr ".wl[472].w[6]" 0.6168213275183001;
	setAttr ".wl[472].w[16]" 0.38183577197176055;
	setAttr -s 3 ".wl[473].w";
	setAttr ".wl[473].w[1]" 0.00010890542836481762;
	setAttr ".wl[473].w[6]" 0.90382291920192037;
	setAttr ".wl[473].w[16]" 0.096068175369714778;
	setAttr -s 3 ".wl[474].w";
	setAttr ".wl[474].w[1]" 0.069493549211564809;
	setAttr ".wl[474].w[6]" 0.87342701028568992;
	setAttr ".wl[474].w[16]" 0.057079440502745216;
	setAttr -s 3 ".wl[475].w";
	setAttr ".wl[475].w[1]" 0.010092683079384187;
	setAttr ".wl[475].w[6]" 0.46792909376833564;
	setAttr ".wl[475].w[16]" 0.52197822315228015;
	setAttr -s 3 ".wl[476].w";
	setAttr ".wl[476].w[1]" 0.00010311801967439496;
	setAttr ".wl[476].w[6]" 0.077245505524084768;
	setAttr ".wl[476].w[16]" 0.92265137645624085;
	setAttr -s 3 ".wl[477].w";
	setAttr ".wl[477].w[1]" 0.048224830428934086;
	setAttr ".wl[477].w[6]" 0.71749622266076807;
	setAttr ".wl[477].w[16]" 0.23427894691029777;
	setAttr -s 3 ".wl[478].w";
	setAttr ".wl[478].w[1]" 0.14498508471446694;
	setAttr ".wl[478].w[6]" 0.67353963390126437;
	setAttr ".wl[478].w[16]" 0.18147528138426869;
	setAttr -s 3 ".wl[479].w";
	setAttr ".wl[479].w[1]" 0.07940966210112918;
	setAttr ".wl[479].w[6]" 0.58419834704044926;
	setAttr ".wl[479].w[16]" 0.33639199085842159;
	setAttr -s 3 ".wl[480].w";
	setAttr ".wl[480].w[1]" 0.21707215139294192;
	setAttr ".wl[480].w[6]" 0.68743740942925513;
	setAttr ".wl[480].w[16]" 0.095490439177803074;
	setAttr -s 3 ".wl[481].w";
	setAttr ".wl[481].w[1]" 0.10473086348241506;
	setAttr ".wl[481].w[6]" 0.66199194889673074;
	setAttr ".wl[481].w[16]" 0.23327718762085417;
	setAttr -s 3 ".wl[482].w";
	setAttr ".wl[482].w[1]" 0.27453750956732087;
	setAttr ".wl[482].w[6]" 0.60315874955913817;
	setAttr ".wl[482].w[16]" 0.12230374087354107;
	setAttr -s 3 ".wl[483].w";
	setAttr ".wl[483].w[1]" 0.24479845353558152;
	setAttr ".wl[483].w[6]" 0.66448823439313209;
	setAttr ".wl[483].w[16]" 0.090713312071286439;
	setAttr -s 3 ".wl[484].w";
	setAttr ".wl[484].w[0]" 9.8048269903188253e-005;
	setAttr ".wl[484].w[1]" 0.52616097310437893;
	setAttr ".wl[484].w[6]" 0.4737409786257179;
	setAttr -s 3 ".wl[485].w";
	setAttr ".wl[485].w[1]" 0.27453750956732087;
	setAttr ".wl[485].w[6]" 0.60315874955913817;
	setAttr ".wl[485].w[16]" 0.12230374087354107;
	setAttr -s 3 ".wl[486].w";
	setAttr ".wl[486].w[0]" 0.00028637051356806452;
	setAttr ".wl[486].w[1]" 0.51313901800191342;
	setAttr ".wl[486].w[6]" 0.48657461148451858;
	setAttr -s 3 ".wl[487].w";
	setAttr ".wl[487].w[0]" 0.0018933715607785723;
	setAttr ".wl[487].w[1]" 0.82375411805246934;
	setAttr ".wl[487].w[6]" 0.17435251038675206;
	setAttr -s 3 ".wl[488].w";
	setAttr ".wl[488].w[0]" 0.0010161087290990565;
	setAttr ".wl[488].w[1]" 0.9048834989922484;
	setAttr ".wl[488].w[6]" 0.094100392278652578;
	setAttr -s 3 ".wl[489].w";
	setAttr ".wl[489].w[1]" 0.0024517261101290725;
	setAttr ".wl[489].w[6]" 0.49896769292780185;
	setAttr ".wl[489].w[16]" 0.49858058096206909;
	setAttr -s 3 ".wl[490].w";
	setAttr ".wl[490].w[1]" 0.053444696906089391;
	setAttr ".wl[490].w[6]" 0.56598372349204096;
	setAttr ".wl[490].w[16]" 0.38057157960186955;
	setAttr -s 3 ".wl[491].w";
	setAttr ".wl[491].w[1]" 0.017136027031731272;
	setAttr ".wl[491].w[6]" 0.49344511251238388;
	setAttr ".wl[491].w[16]" 0.48941886045588495;
	setAttr -s 3 ".wl[492].w";
	setAttr ".wl[492].w[1]" 0.016001282128776613;
	setAttr ".wl[492].w[6]" 0.50773842610740039;
	setAttr ".wl[492].w[16]" 0.47626029176382306;
	setAttr -s 3 ".wl[493].w";
	setAttr ".wl[493].w[1]" 0.019208938519104303;
	setAttr ".wl[493].w[6]" 0.48855031978400421;
	setAttr ".wl[493].w[16]" 0.49224074169689142;
	setAttr -s 3 ".wl[494].w";
	setAttr ".wl[494].w[1]" 0.017136027031731272;
	setAttr ".wl[494].w[6]" 0.49344511251238388;
	setAttr ".wl[494].w[16]" 0.48941886045588495;
	setAttr -s 3 ".wl[495].w";
	setAttr ".wl[495].w[1]" 0.11650932678322704;
	setAttr ".wl[495].w[6]" 0.5470917721635904;
	setAttr ".wl[495].w[16]" 0.3363989010531826;
	setAttr -s 3 ".wl[496].w";
	setAttr ".wl[496].w[1]" 0.067065026232251454;
	setAttr ".wl[496].w[6]" 0.50414637120733863;
	setAttr ".wl[496].w[16]" 0.4287886025604099;
	setAttr -s 3 ".wl[497].w";
	setAttr ".wl[497].w[1]" 0.082625827585080303;
	setAttr ".wl[497].w[6]" 0.55053478648458953;
	setAttr ".wl[497].w[16]" 0.36683938593033022;
	setAttr -s 3 ".wl[498].w";
	setAttr ".wl[498].w[1]" 0.024140600498900482;
	setAttr ".wl[498].w[6]" 0.48845580499668462;
	setAttr ".wl[498].w[16]" 0.48740359450441495;
	setAttr -s 3 ".wl[499].w";
	setAttr ".wl[499].w[1]" 0.053444696906089391;
	setAttr ".wl[499].w[6]" 0.56598372349204096;
	setAttr ".wl[499].w[16]" 0.38057157960186955;
	setAttr -s 3 ".wl[500].w";
	setAttr ".wl[500].w[1]" 0.045956411226042118;
	setAttr ".wl[500].w[6]" 0.49536367731694919;
	setAttr ".wl[500].w[16]" 0.45867991145700865;
	setAttr -s 3 ".wl[501].w";
	setAttr ".wl[501].w[1]" 0.057521736701283029;
	setAttr ".wl[501].w[6]" 0.48940041218125091;
	setAttr ".wl[501].w[16]" 0.45307785111746612;
	setAttr -s 3 ".wl[502].w";
	setAttr ".wl[502].w[1]" 0.10000957142608602;
	setAttr ".wl[502].w[6]" 0.5073561610091506;
	setAttr ".wl[502].w[16]" 0.39263426756476338;
	setAttr -s 3 ".wl[503].w";
	setAttr ".wl[503].w[1]" 0.028479407541563858;
	setAttr ".wl[503].w[6]" 0.51592816238330552;
	setAttr ".wl[503].w[16]" 0.45559243007513073;
	setAttr -s 3 ".wl[504].w";
	setAttr ".wl[504].w[1]" 2.3993756723316369e-007;
	setAttr ".wl[504].w[6]" 0.00047208203393432472;
	setAttr ".wl[504].w[16]" 0.99952767802849851;
	setAttr -s 3 ".wl[505].w";
	setAttr ".wl[505].w[1]" 0.079092885418441713;
	setAttr ".wl[505].w[6]" 0.61103072075817422;
	setAttr ".wl[505].w[16]" 0.30987639382338411;
	setAttr -s 3 ".wl[506].w";
	setAttr ".wl[506].w[1]" 0.07610324119589372;
	setAttr ".wl[506].w[6]" 0.5378101678848981;
	setAttr ".wl[506].w[16]" 0.38608659091920816;
	setAttr -s 3 ".wl[507].w";
	setAttr ".wl[507].w[1]" 0.083893113064082273;
	setAttr ".wl[507].w[6]" 0.61540925406742109;
	setAttr ".wl[507].w[16]" 0.3006976328684966;
	setAttr -s 3 ".wl[508].w";
	setAttr ".wl[508].w[1]" 0.17012033210931921;
	setAttr ".wl[508].w[6]" 0.61771089566070436;
	setAttr ".wl[508].w[16]" 0.21216877222997654;
	setAttr -s 3 ".wl[509].w";
	setAttr ".wl[509].w[1]" 0.043264447725111913;
	setAttr ".wl[509].w[6]" 0.51120996452538525;
	setAttr ".wl[509].w[16]" 0.44552558774950274;
	setAttr -s 3 ".wl[510].w";
	setAttr ".wl[510].w[1]" 0.048622259789818018;
	setAttr ".wl[510].w[6]" 0.49990090286409861;
	setAttr ".wl[510].w[16]" 0.45147683734608329;
	setAttr -s 3 ".wl[511].w";
	setAttr ".wl[511].w[1]" 0.056784857725362937;
	setAttr ".wl[511].w[6]" 0.49657788213567783;
	setAttr ".wl[511].w[16]" 0.44663726013895916;
	setAttr -s 3 ".wl[512].w";
	setAttr ".wl[512].w[1]" 0.043264447725111913;
	setAttr ".wl[512].w[6]" 0.51120996452538525;
	setAttr ".wl[512].w[16]" 0.44552558774950274;
	setAttr -s 3 ".wl[513].w";
	setAttr ".wl[513].w[1]" 0.056784857725362937;
	setAttr ".wl[513].w[6]" 0.49657788213567783;
	setAttr ".wl[513].w[16]" 0.44663726013895916;
	setAttr -s 3 ".wl[514].w";
	setAttr ".wl[514].w[1]" 0.0085178135882779549;
	setAttr ".wl[514].w[6]" 0.47813925882444974;
	setAttr ".wl[514].w[16]" 0.51334292758727229;
	setAttr -s 3 ".wl[515].w";
	setAttr ".wl[515].w[1]" 0.011286634143616862;
	setAttr ".wl[515].w[6]" 0.45531569466180155;
	setAttr ".wl[515].w[16]" 0.53339767119458159;
	setAttr -s 3 ".wl[516].w";
	setAttr ".wl[516].w[1]" 0.11650932678322704;
	setAttr ".wl[516].w[6]" 0.5470917721635904;
	setAttr ".wl[516].w[16]" 0.3363989010531826;
	setAttr -s 3 ".wl[517].w";
	setAttr ".wl[517].w[1]" 0.082625827585080303;
	setAttr ".wl[517].w[6]" 0.55053478648458953;
	setAttr ".wl[517].w[16]" 0.36683938593033022;
	setAttr -s 3 ".wl[518].w";
	setAttr ".wl[518].w[1]" 0.13546635070369659;
	setAttr ".wl[518].w[6]" 0.55105324760561714;
	setAttr ".wl[518].w[16]" 0.31348040169068625;
	setAttr -s 3 ".wl[519].w";
	setAttr ".wl[519].w[1]" 0.21707215139294192;
	setAttr ".wl[519].w[6]" 0.68743740942925513;
	setAttr ".wl[519].w[16]" 0.095490439177803074;
	setAttr -s 3 ".wl[520].w";
	setAttr ".wl[520].w[1]" 0.24479845353558152;
	setAttr ".wl[520].w[6]" 0.66448823439313209;
	setAttr ".wl[520].w[16]" 0.090713312071286439;
	setAttr -s 3 ".wl[521].w";
	setAttr ".wl[521].w[0]" 0.0012896369254965542;
	setAttr ".wl[521].w[1]" 0.915600829411513;
	setAttr ".wl[521].w[6]" 0.083109533662990412;
	setAttr -s 3 ".wl[522].w";
	setAttr ".wl[522].w[0]" 0.00055130707461706005;
	setAttr ".wl[522].w[1]" 0.95824134324482757;
	setAttr ".wl[522].w[6]" 0.04120734968055538;
	setAttr -s 3 ".wl[523].w";
	setAttr ".wl[523].w[0]" 0.0011447693318140241;
	setAttr ".wl[523].w[1]" 0.87373254371229825;
	setAttr ".wl[523].w[6]" 0.12512268695588771;
	setAttr -s 3 ".wl[524].w";
	setAttr ".wl[524].w[0]" 0.00019066033917438944;
	setAttr ".wl[524].w[1]" 0.97640083540460654;
	setAttr ".wl[524].w[6]" 0.023408504256219109;
	setAttr -s 3 ".wl[525].w";
	setAttr ".wl[525].w[0]" 0.00028637051356806452;
	setAttr ".wl[525].w[1]" 0.51313901800191342;
	setAttr ".wl[525].w[6]" 0.48657461148451858;
	setAttr -s 3 ".wl[526].w";
	setAttr ".wl[526].w[0]" 0.0018933715607785723;
	setAttr ".wl[526].w[1]" 0.82375411805246934;
	setAttr ".wl[526].w[6]" 0.17435251038675206;
	setAttr -s 3 ".wl[527].w";
	setAttr ".wl[527].w[0]" 0.0012896369254965542;
	setAttr ".wl[527].w[1]" 0.915600829411513;
	setAttr ".wl[527].w[6]" 0.083109533662990412;
	setAttr -s 3 ".wl[528].w";
	setAttr ".wl[528].w[11]" 0.83658055702016509;
	setAttr ".wl[528].w[12]" 0.00063787842248160106;
	setAttr ".wl[528].w[17]" 0.16278156455735321;
	setAttr -s 3 ".wl[529].w";
	setAttr ".wl[529].w[11]" 0.55229630850922773;
	setAttr ".wl[529].w[12]" 0.00019797167505785371;
	setAttr ".wl[529].w[17]" 0.44750571981571435;
	setAttr -s 3 ".wl[530].w";
	setAttr ".wl[530].w[11]" 0.83388769182066758;
	setAttr ".wl[530].w[12]" 0.00050161023895721522;
	setAttr ".wl[530].w[17]" 0.1656106979403752;
	setAttr -s 3 ".wl[531].w";
	setAttr ".wl[531].w[14]" 0.0029595490108605973;
	setAttr ".wl[531].w[18]" 0.79386178158438769;
	setAttr ".wl[531].w[21]" 0.20317866940475171;
	setAttr -s 3 ".wl[532].w";
	setAttr ".wl[532].w[11]" 0.013560924674575632;
	setAttr ".wl[532].w[17]" 0.61795938201468648;
	setAttr ".wl[532].w[21]" 0.36847969331073799;
	setAttr -s 3 ".wl[533].w";
	setAttr ".wl[533].w[14]" 0.013560062011378007;
	setAttr ".wl[533].w[18]" 0.61796833033794474;
	setAttr ".wl[533].w[21]" 0.36847160765067721;
	setAttr -s 3 ".wl[534].w";
	setAttr ".wl[534].w[11]" 0.0029603167508062407;
	setAttr ".wl[534].w[17]" 0.79383436543055763;
	setAttr ".wl[534].w[21]" 0.20320531781863621;
	setAttr -s 3 ".wl[535].w";
	setAttr ".wl[535].w[11]" 0.011801746526873557;
	setAttr ".wl[535].w[17]" 0.61500152598226587;
	setAttr ".wl[535].w[21]" 0.37319672749086047;
	setAttr -s 3 ".wl[536].w";
	setAttr ".wl[536].w[11]" 0.0029603167508062407;
	setAttr ".wl[536].w[17]" 0.79383436543055763;
	setAttr ".wl[536].w[21]" 0.20320531781863621;
	setAttr -s 3 ".wl[537].w";
	setAttr ".wl[537].w[14]" 0.0029595490108605973;
	setAttr ".wl[537].w[18]" 0.79386178158438769;
	setAttr ".wl[537].w[21]" 0.20317866940475171;
	setAttr -s 3 ".wl[538].w";
	setAttr ".wl[538].w[14]" 0.011801001621758053;
	setAttr ".wl[538].w[18]" 0.61501046102288537;
	setAttr ".wl[538].w[21]" 0.37318853735535668;
	setAttr -s 3 ".wl[539].w[19:21]"  0.39910730878362277 0.39910730878362266 
		0.2017853824327546;
	setAttr -s 3 ".wl[540].w[19:21]"  0.38151579509928335 0.38151579505876437 
		0.23696840984195217;
	setAttr -s 3 ".wl[541].w";
	setAttr ".wl[541].w[11]" 0.015292083173137409;
	setAttr ".wl[541].w[17]" 0.76753751862362973;
	setAttr ".wl[541].w[21]" 0.21717039820323275;
	setAttr -s 3 ".wl[542].w";
	setAttr ".wl[542].w[11]" 0.0053171363237757719;
	setAttr ".wl[542].w[17]" 0.92779053111475895;
	setAttr ".wl[542].w[21]" 0.066892332561465345;
	setAttr -s 3 ".wl[543].w";
	setAttr ".wl[543].w[11]" 0.0099142336055418785;
	setAttr ".wl[543].w[17]" 0.82270935732186923;
	setAttr ".wl[543].w[21]" 0.16737640907258888;
	setAttr -s 3 ".wl[544].w";
	setAttr ".wl[544].w[11]" 0.0037209851376169339;
	setAttr ".wl[544].w[17]" 0.64190853767134626;
	setAttr ".wl[544].w[21]" 0.35437047719103681;
	setAttr -s 3 ".wl[545].w";
	setAttr ".wl[545].w[11]" 0.0057304529358629414;
	setAttr ".wl[545].w[17]" 0.85692962233325864;
	setAttr ".wl[545].w[21]" 0.13733992473087842;
	setAttr -s 3 ".wl[546].w";
	setAttr ".wl[546].w[11]" 0.0018171858410822824;
	setAttr ".wl[546].w[17]" 0.86730812141277303;
	setAttr ".wl[546].w[21]" 0.13087469274614469;
	setAttr -s 3 ".wl[547].w";
	setAttr ".wl[547].w[11]" 0.01361234143185965;
	setAttr ".wl[547].w[17]" 0.73784633730985416;
	setAttr ".wl[547].w[21]" 0.24854132125828629;
	setAttr -s 3 ".wl[548].w";
	setAttr ".wl[548].w[11]" 0.0053171363237757719;
	setAttr ".wl[548].w[17]" 0.92779053111475895;
	setAttr ".wl[548].w[21]" 0.066892332561465345;
	setAttr -s 3 ".wl[549].w";
	setAttr ".wl[549].w[11]" 0.530975992587714;
	setAttr ".wl[549].w[12]" 0.00021095795956723658;
	setAttr ".wl[549].w[17]" 0.46881304945271884;
	setAttr -s 3 ".wl[550].w";
	setAttr ".wl[550].w[11]" 0.5742045938988668;
	setAttr ".wl[550].w[12]" 0.0002285704670602445;
	setAttr ".wl[550].w[17]" 0.42556683563407299;
	setAttr -s 3 ".wl[551].w";
	setAttr ".wl[551].w[11]" 0.052484753184039515;
	setAttr ".wl[551].w[17]" 0.91631532214807554;
	setAttr ".wl[551].w[21]" 0.031199924667884859;
	setAttr -s 3 ".wl[552].w";
	setAttr ".wl[552].w[11]" 0.043743661708320503;
	setAttr ".wl[552].w[17]" 0.93162573055352993;
	setAttr ".wl[552].w[21]" 0.024630607738149422;
	setAttr -s 3 ".wl[553].w";
	setAttr ".wl[553].w[11]" 0.020599927417271315;
	setAttr ".wl[553].w[17]" 0.96666761314850835;
	setAttr ".wl[553].w[21]" 0.012732459434220402;
	setAttr -s 3 ".wl[554].w";
	setAttr ".wl[554].w[11]" 0.0052595007049291674;
	setAttr ".wl[554].w[17]" 0.80654532001212353;
	setAttr ".wl[554].w[21]" 0.18819517928294732;
	setAttr -s 3 ".wl[555].w";
	setAttr ".wl[555].w[11]" 0.039226025221178885;
	setAttr ".wl[555].w[17]" 0.94468568748027093;
	setAttr ".wl[555].w[21]" 0.016088287298550177;
	setAttr -s 3 ".wl[556].w";
	setAttr ".wl[556].w[11]" 0.02003547962004807;
	setAttr ".wl[556].w[17]" 0.96989081572067248;
	setAttr ".wl[556].w[21]" 0.010073704659279467;
	setAttr -s 3 ".wl[557].w";
	setAttr ".wl[557].w[11]" 0.0085774987624257972;
	setAttr ".wl[557].w[17]" 0.77839181108219191;
	setAttr ".wl[557].w[21]" 0.21303069015538229;
	setAttr -s 3 ".wl[558].w";
	setAttr ".wl[558].w[11]" 0.034456862645408134;
	setAttr ".wl[558].w[17]" 0.95141500032712389;
	setAttr ".wl[558].w[21]" 0.014128137027467985;
	setAttr -s 3 ".wl[559].w";
	setAttr ".wl[559].w[11]" 0.058730852257211232;
	setAttr ".wl[559].w[17]" 0.9107417200848138;
	setAttr ".wl[559].w[21]" 0.030527427657975052;
	setAttr -s 3 ".wl[560].w";
	setAttr ".wl[560].w[11]" 0.034309373137772554;
	setAttr ".wl[560].w[17]" 0.94945577899763023;
	setAttr ".wl[560].w[21]" 0.016234847864597203;
	setAttr -s 3 ".wl[561].w";
	setAttr ".wl[561].w[11]" 0.020599927417271315;
	setAttr ".wl[561].w[17]" 0.96666761314850835;
	setAttr ".wl[561].w[21]" 0.012732459434220402;
	setAttr -s 3 ".wl[562].w";
	setAttr ".wl[562].w[11]" 0.47668972577199464;
	setAttr ".wl[562].w[17]" 0.52163575061066891;
	setAttr ".wl[562].w[21]" 0.001674523617336507;
	setAttr -s 3 ".wl[563].w";
	setAttr ".wl[563].w[11]" 0.47607454902120971;
	setAttr ".wl[563].w[17]" 0.5220276522213152;
	setAttr ".wl[563].w[21]" 0.001897798757475066;
	setAttr -s 3 ".wl[564].w";
	setAttr ".wl[564].w[11]" 0.44018268462582;
	setAttr ".wl[564].w[17]" 0.55928685041786186;
	setAttr ".wl[564].w[21]" 0.00053046495631814232;
	setAttr -s 3 ".wl[565].w";
	setAttr ".wl[565].w[11]" 0.46255259356340828;
	setAttr ".wl[565].w[17]" 0.53694405085292307;
	setAttr ".wl[565].w[21]" 0.00050335558366856837;
	setAttr -s 3 ".wl[566].w";
	setAttr ".wl[566].w[11]" 0.43337776824830104;
	setAttr ".wl[566].w[17]" 0.56620297193056079;
	setAttr ".wl[566].w[21]" 0.0004192598211382409;
	setAttr -s 3 ".wl[567].w";
	setAttr ".wl[567].w[11]" 0.42710522344381113;
	setAttr ".wl[567].w[17]" 0.57254987295837789;
	setAttr ".wl[567].w[21]" 0.000344903597811027;
	setAttr -s 3 ".wl[568].w";
	setAttr ".wl[568].w[11]" 0.41184538103086876;
	setAttr ".wl[568].w[17]" 0.58772420482376897;
	setAttr ".wl[568].w[21]" 0.00043041414536227192;
	setAttr -s 3 ".wl[569].w";
	setAttr ".wl[569].w[11]" 0.44018268462582;
	setAttr ".wl[569].w[17]" 0.55928685041786186;
	setAttr ".wl[569].w[21]" 0.00053046495631814232;
	setAttr -s 3 ".wl[570].w";
	setAttr ".wl[570].w[11]" 0.48335208796468732;
	setAttr ".wl[570].w[17]" 0.51482336951445551;
	setAttr ".wl[570].w[21]" 0.0018245425208571722;
	setAttr -s 3 ".wl[571].w";
	setAttr ".wl[571].w[11]" 0.71391322753777675;
	setAttr ".wl[571].w[12]" 0.0039589472264820805;
	setAttr ".wl[571].w[17]" 0.28212782523574126;
	setAttr -s 3 ".wl[572].w";
	setAttr ".wl[572].w[11]" 0.74432697672991688;
	setAttr ".wl[572].w[12]" 0.0034054127513769199;
	setAttr ".wl[572].w[17]" 0.25226761051870622;
	setAttr -s 3 ".wl[573].w";
	setAttr ".wl[573].w[11]" 0.53187575176997248;
	setAttr ".wl[573].w[12]" 0.00046621483807411321;
	setAttr ".wl[573].w[17]" 0.46765803339195344;
	setAttr -s 3 ".wl[574].w";
	setAttr ".wl[574].w[11]" 0.76427816987286146;
	setAttr ".wl[574].w[12]" 0.0015420292742943189;
	setAttr ".wl[574].w[17]" 0.23417980085284426;
	setAttr -s 3 ".wl[575].w";
	setAttr ".wl[575].w[11]" 0.79462480835917337;
	setAttr ".wl[575].w[12]" 0.00078132209457124221;
	setAttr ".wl[575].w[17]" 0.2045938695462553;
	setAttr -s 3 ".wl[576].w";
	setAttr ".wl[576].w[11]" 0.58590214674643004;
	setAttr ".wl[576].w[12]" 0.00022123931406029874;
	setAttr ".wl[576].w[17]" 0.4138766139395097;
	setAttr -s 3 ".wl[577].w";
	setAttr ".wl[577].w[11]" 0.53187575176997248;
	setAttr ".wl[577].w[12]" 0.00046621483807411321;
	setAttr ".wl[577].w[17]" 0.46765803339195344;
	setAttr -s 3 ".wl[578].w";
	setAttr ".wl[578].w[11]" 0.74007744810006992;
	setAttr ".wl[578].w[12]" 0.0037345605666036031;
	setAttr ".wl[578].w[17]" 0.25618799133332654;
	setAttr -s 3 ".wl[579].w";
	setAttr ".wl[579].w[11]" 0.55440871229138011;
	setAttr ".wl[579].w[12]" 0.00044501923227623628;
	setAttr ".wl[579].w[17]" 0.44514626847634364;
	setAttr -s 3 ".wl[580].w";
	setAttr ".wl[580].w[11]" 0.81406230933098644;
	setAttr ".wl[580].w[12]" 0.0012720859296486632;
	setAttr ".wl[580].w[17]" 0.18466560473936486;
	setAttr -s 3 ".wl[581].w";
	setAttr ".wl[581].w[11]" 0.97948135291715943;
	setAttr ".wl[581].w[12]" 0.013372248776393895;
	setAttr ".wl[581].w[17]" 0.0071463983064467542;
	setAttr -s 3 ".wl[582].w";
	setAttr ".wl[582].w[11]" 0.70903390827050716;
	setAttr ".wl[582].w[12]" 0.29079781001184019;
	setAttr ".wl[582].w[17]" 0.00016828171765267478;
	setAttr -s 3 ".wl[583].w";
	setAttr ".wl[583].w[11]" 0.75327490759725479;
	setAttr ".wl[583].w[12]" 0.24632523073898527;
	setAttr ".wl[583].w[17]" 0.0003998616637600202;
	setAttr -s 3 ".wl[584].w";
	setAttr ".wl[584].w[11]" 0.76673559510863853;
	setAttr ".wl[584].w[12]" 0.23171855472265665;
	setAttr ".wl[584].w[17]" 0.0015458501687048098;
	setAttr -s 3 ".wl[585].w";
	setAttr ".wl[585].w[11]" 0.79461973758541127;
	setAttr ".wl[585].w[12]" 0.20439350318982352;
	setAttr ".wl[585].w[17]" 0.00098675922476521146;
	setAttr -s 3 ".wl[586].w";
	setAttr ".wl[586].w[11]" 0.97954456553503522;
	setAttr ".wl[586].w[12]" 0.012311004406267709;
	setAttr ".wl[586].w[17]" 0.0081444300586971229;
	setAttr -s 3 ".wl[587].w";
	setAttr ".wl[587].w[11]" 0.96697234284853362;
	setAttr ".wl[587].w[12]" 0.020699726567339847;
	setAttr ".wl[587].w[17]" 0.012327930584126538;
	setAttr -s 3 ".wl[588].w";
	setAttr ".wl[588].w[11]" 0.77627566110840152;
	setAttr ".wl[588].w[12]" 0.22262770652884836;
	setAttr ".wl[588].w[17]" 0.0010966323627501343;
	setAttr -s 3 ".wl[589].w";
	setAttr ".wl[589].w[11]" 0.80163419627837396;
	setAttr ".wl[589].w[12]" 0.19817769891308554;
	setAttr ".wl[589].w[17]" 0.00018810480854041732;
	setAttr -s 3 ".wl[590].w";
	setAttr ".wl[590].w[11]" 0.90976186452790719;
	setAttr ".wl[590].w[12]" 0.064482484566797463;
	setAttr ".wl[590].w[17]" 0.025755650905295229;
	setAttr -s 3 ".wl[591].w";
	setAttr ".wl[591].w[11]" 0.53426794275592171;
	setAttr ".wl[591].w[12]" 0.46539487726621348;
	setAttr ".wl[591].w[17]" 0.00033717997786482335;
	setAttr -s 3 ".wl[592].w";
	setAttr ".wl[592].w[11]" 0.52467667517161976;
	setAttr ".wl[592].w[12]" 0.47474302818462394;
	setAttr ".wl[592].w[17]" 0.00058029664375618747;
	setAttr -s 3 ".wl[593].w";
	setAttr ".wl[593].w[11]" 0.58518507174051937;
	setAttr ".wl[593].w[12]" 0.41387345589617985;
	setAttr ".wl[593].w[17]" 0.00094147236330077049;
	setAttr -s 3 ".wl[594].w";
	setAttr ".wl[594].w[11]" 0.97693325987314938;
	setAttr ".wl[594].w[12]" 0.015913732936761935;
	setAttr ".wl[594].w[17]" 0.0071530071900887376;
	setAttr -s 3 ".wl[595].w";
	setAttr ".wl[595].w[11]" 0.5343828645267048;
	setAttr ".wl[595].w[12]" 0.46504965837419376;
	setAttr ".wl[595].w[17]" 0.00056747709910141874;
	setAttr -s 3 ".wl[596].w";
	setAttr ".wl[596].w[11]" 0.91507424022425843;
	setAttr ".wl[596].w[12]" 0.060453936894815229;
	setAttr ".wl[596].w[17]" 0.024471822880926346;
	setAttr -s 3 ".wl[597].w";
	setAttr ".wl[597].w[11]" 0.91357876915876335;
	setAttr ".wl[597].w[12]" 0.059479548440802769;
	setAttr ".wl[597].w[17]" 0.026941682400433983;
	setAttr -s 3 ".wl[598].w";
	setAttr ".wl[598].w[11]" 0.82580188333542981;
	setAttr ".wl[598].w[12]" 0.17416677975366204;
	setAttr ".wl[598].w[17]" 3.1336910908213204e-005;
	setAttr -s 3 ".wl[599].w";
	setAttr ".wl[599].w[11]" 0.77872076819222913;
	setAttr ".wl[599].w[12]" 0.22096899434033015;
	setAttr ".wl[599].w[17]" 0.00031023746744076453;
	setAttr -s 3 ".wl[600].w";
	setAttr ".wl[600].w[11]" 0.70903390827050716;
	setAttr ".wl[600].w[12]" 0.29079781001184019;
	setAttr ".wl[600].w[17]" 0.00016828171765267478;
	setAttr -s 3 ".wl[601].w";
	setAttr ".wl[601].w[11]" 0.74800994415535205;
	setAttr ".wl[601].w[12]" 0.25136244240015343;
	setAttr ".wl[601].w[17]" 0.00062761344449449163;
	setAttr -s 3 ".wl[602].w";
	setAttr ".wl[602].w[11]" 0.58513779478843675;
	setAttr ".wl[602].w[12]" 0.4135345119039267;
	setAttr ".wl[602].w[17]" 0.0013276933076364391;
	setAttr -s 3 ".wl[603].w";
	setAttr ".wl[603].w[11]" 0.97948135291715943;
	setAttr ".wl[603].w[12]" 0.013372248776393895;
	setAttr ".wl[603].w[17]" 0.0071463983064467542;
	setAttr -s 3 ".wl[604].w";
	setAttr ".wl[604].w[11]" 0.76427816987286146;
	setAttr ".wl[604].w[12]" 0.0015420292742943189;
	setAttr ".wl[604].w[17]" 0.23417980085284426;
	setAttr -s 3 ".wl[605].w";
	setAttr ".wl[605].w[11]" 0.40102157515130066;
	setAttr ".wl[605].w[12]" 0.59884953944932873;
	setAttr ".wl[605].w[17]" 0.00012888539937066216;
	setAttr -s 3 ".wl[606].w";
	setAttr ".wl[606].w[11]" 0.52852300954271525;
	setAttr ".wl[606].w[12]" 0.47136330951249705;
	setAttr ".wl[606].w[17]" 0.00011368094478773041;
	setAttr -s 3 ".wl[607].w";
	setAttr ".wl[607].w[11]" 0.24479665098583217;
	setAttr ".wl[607].w[12]" 0.75516674982076104;
	setAttr ".wl[607].w[17]" 3.65991934068308e-005;
	setAttr -s 3 ".wl[608].w";
	setAttr ".wl[608].w[11]" 0.29790998781710126;
	setAttr ".wl[608].w[12]" 0.70201334097430534;
	setAttr ".wl[608].w[17]" 7.6671208593406652e-005;
	setAttr -s 3 ".wl[609].w";
	setAttr ".wl[609].w[11]" 0.79313241705874538;
	setAttr ".wl[609].w[12]" 0.20664461421213148;
	setAttr ".wl[609].w[17]" 0.00022296872912320426;
	setAttr -s 3 ".wl[610].w";
	setAttr ".wl[610].w[11]" 0.50093878323240015;
	setAttr ".wl[610].w[12]" 0.49850302453160877;
	setAttr ".wl[610].w[17]" 0.00055819223599104409;
	setAttr -s 3 ".wl[611].w";
	setAttr ".wl[611].w[11]" 0.49983507207968647;
	setAttr ".wl[611].w[12]" 0.49983507207968647;
	setAttr ".wl[611].w[17]" 0.00032985584062707863;
	setAttr -s 3 ".wl[612].w";
	setAttr ".wl[612].w[11]" 0.49999107866211934;
	setAttr ".wl[612].w[12]" 0.49999107866211934;
	setAttr ".wl[612].w[17]" 1.7842675761319694e-005;
	setAttr -s 3 ".wl[613].w";
	setAttr ".wl[613].w[11]" 0.50278067915482483;
	setAttr ".wl[613].w[12]" 0.49668739362395675;
	setAttr ".wl[613].w[17]" 0.00053192722121842408;
	setAttr -s 3 ".wl[614].w";
	setAttr ".wl[614].w[11]" 0.52852300954271525;
	setAttr ".wl[614].w[12]" 0.47136330951249705;
	setAttr ".wl[614].w[17]" 0.00011368094478773041;
	setAttr -s 3 ".wl[615].w";
	setAttr ".wl[615].w[11]" 0.9696726128785339;
	setAttr ".wl[615].w[12]" 0.018006549501100946;
	setAttr ".wl[615].w[17]" 0.012320837620365212;
	setAttr -s 3 ".wl[616].w";
	setAttr ".wl[616].w[11]" 0.5825251123886841;
	setAttr ".wl[616].w[12]" 0.41654318033535115;
	setAttr ".wl[616].w[17]" 0.00093170727596472898;
	setAttr -s 3 ".wl[617].w";
	setAttr ".wl[617].w[11]" 0.74800994415535205;
	setAttr ".wl[617].w[12]" 0.25136244240015343;
	setAttr ".wl[617].w[17]" 0.00062761344449449163;
	setAttr -s 3 ".wl[618].w";
	setAttr ".wl[618].w[13]" 0.00063807582813048833;
	setAttr ".wl[618].w[14]" 0.83656812871682862;
	setAttr ".wl[618].w[18]" 0.162793795455041;
	setAttr -s 3 ".wl[619].w";
	setAttr ".wl[619].w[13]" 0.00050158887328635119;
	setAttr ".wl[619].w[14]" 0.83390634545707654;
	setAttr ".wl[619].w[18]" 0.16559206566963716;
	setAttr -s 3 ".wl[620].w";
	setAttr ".wl[620].w[13]" 0.00019805868683454701;
	setAttr ".wl[620].w[14]" 0.55230043808101326;
	setAttr ".wl[620].w[18]" 0.44750150323215215;
	setAttr -s 3 ".wl[621].w";
	setAttr ".wl[621].w[14]" 0.0029595490108605973;
	setAttr ".wl[621].w[18]" 0.79386178158438769;
	setAttr ".wl[621].w[21]" 0.20317866940475171;
	setAttr -s 3 ".wl[622].w";
	setAttr ".wl[622].w[14]" 0.015291316991823376;
	setAttr ".wl[622].w[18]" 0.76755764811199922;
	setAttr ".wl[622].w[21]" 0.21715103489617738;
	setAttr -s 3 ".wl[623].w";
	setAttr ".wl[623].w[14]" 0.011801001621758053;
	setAttr ".wl[623].w[18]" 0.61501046102288537;
	setAttr ".wl[623].w[21]" 0.37318853735535668;
	setAttr -s 3 ".wl[624].w";
	setAttr ".wl[624].w[14]" 0.0053157798860805306;
	setAttr ".wl[624].w[18]" 0.92781102150594719;
	setAttr ".wl[624].w[21]" 0.066873198607972334;
	setAttr -s 3 ".wl[625].w";
	setAttr ".wl[625].w[14]" 0.0099144199249950864;
	setAttr ".wl[625].w[18]" 0.82272272716862349;
	setAttr ".wl[625].w[21]" 0.16736285290638148;
	setAttr -s 3 ".wl[626].w";
	setAttr ".wl[626].w[14]" 0.0057315030557704748;
	setAttr ".wl[626].w[18]" 0.85692737101327776;
	setAttr ".wl[626].w[21]" 0.1373411259309518;
	setAttr -s 3 ".wl[627].w";
	setAttr ".wl[627].w[14]" 0.0037215162698455793;
	setAttr ".wl[627].w[18]" 0.64191458659505429;
	setAttr ".wl[627].w[21]" 0.35436389713510008;
	setAttr -s 3 ".wl[628].w";
	setAttr ".wl[628].w[14]" 0.0018178736577435688;
	setAttr ".wl[628].w[18]" 0.86729170687304569;
	setAttr ".wl[628].w[21]" 0.13089041946921076;
	setAttr -s 3 ".wl[629].w";
	setAttr ".wl[629].w[14]" 0.013611366363713264;
	setAttr ".wl[629].w[18]" 0.73786087523749255;
	setAttr ".wl[629].w[21]" 0.24852775839879418;
	setAttr -s 3 ".wl[630].w";
	setAttr ".wl[630].w[14]" 0.0053157798860805306;
	setAttr ".wl[630].w[18]" 0.92781102150594719;
	setAttr ".wl[630].w[21]" 0.066873198607972334;
	setAttr -s 3 ".wl[631].w";
	setAttr ".wl[631].w[14]" 0.0029595490108605973;
	setAttr ".wl[631].w[18]" 0.79386178158438769;
	setAttr ".wl[631].w[21]" 0.20317866940475171;
	setAttr -s 3 ".wl[632].w";
	setAttr ".wl[632].w[14]" 0.013560062011378007;
	setAttr ".wl[632].w[18]" 0.61796833033794474;
	setAttr ".wl[632].w[21]" 0.36847160765067721;
	setAttr -s 3 ".wl[633].w";
	setAttr ".wl[633].w[13]" 0.00021087891400821518;
	setAttr ".wl[633].w[14]" 0.53099387080045823;
	setAttr ".wl[633].w[18]" 0.46879525028553354;
	setAttr -s 3 ".wl[634].w";
	setAttr ".wl[634].w[13]" 0.00022853465006474039;
	setAttr ".wl[634].w[14]" 0.57422905663622426;
	setAttr ".wl[634].w[18]" 0.42554240871371096;
	setAttr -s 3 ".wl[635].w";
	setAttr ".wl[635].w[14]" 0.052482943038547898;
	setAttr ".wl[635].w[18]" 0.91632221240702949;
	setAttr ".wl[635].w[21]" 0.031194844554422514;
	setAttr -s 3 ".wl[636].w";
	setAttr ".wl[636].w[14]" 0.043746371253349674;
	setAttr ".wl[636].w[18]" 0.93162447033482065;
	setAttr ".wl[636].w[21]" 0.024629158411829704;
	setAttr -s 3 ".wl[637].w";
	setAttr ".wl[637].w[14]" 0.02059564986239313;
	setAttr ".wl[637].w[18]" 0.96667634947771208;
	setAttr ".wl[637].w[21]" 0.012728000659894793;
	setAttr -s 3 ".wl[638].w";
	setAttr ".wl[638].w[14]" 0.039234506346140695;
	setAttr ".wl[638].w[18]" 0.94467550660501287;
	setAttr ".wl[638].w[21]" 0.016089987048846531;
	setAttr -s 3 ".wl[639].w";
	setAttr ".wl[639].w[14]" 0.0052604193113356037;
	setAttr ".wl[639].w[18]" 0.80654466806760972;
	setAttr ".wl[639].w[21]" 0.18819491262105464;
	setAttr -s 3 ".wl[640].w";
	setAttr ".wl[640].w[14]" 0.020042692751853462;
	setAttr ".wl[640].w[18]" 0.96988117836445442;
	setAttr ".wl[640].w[21]" 0.01007612888369216;
	setAttr -s 3 ".wl[641].w";
	setAttr ".wl[641].w[14]" 0.034459308059702702;
	setAttr ".wl[641].w[18]" 0.95141336812811816;
	setAttr ".wl[641].w[21]" 0.014127323812179231;
	setAttr -s 3 ".wl[642].w";
	setAttr ".wl[642].w[14]" 0.0085776947692026897;
	setAttr ".wl[642].w[18]" 0.77840624996547692;
	setAttr ".wl[642].w[21]" 0.21301605526532041;
	setAttr -s 3 ".wl[643].w";
	setAttr ".wl[643].w[14]" 0.058739853073101179;
	setAttr ".wl[643].w[18]" 0.91073129028273214;
	setAttr ".wl[643].w[21]" 0.030528856644166665;
	setAttr -s 3 ".wl[644].w";
	setAttr ".wl[644].w[14]" 0.034306533362345813;
	setAttr ".wl[644].w[18]" 0.94946220860892638;
	setAttr ".wl[644].w[21]" 0.016231258028727834;
	setAttr -s 3 ".wl[645].w";
	setAttr ".wl[645].w[14]" 0.02059564986239313;
	setAttr ".wl[645].w[18]" 0.96667634947771208;
	setAttr ".wl[645].w[21]" 0.012728000659894793;
	setAttr -s 3 ".wl[646].w";
	setAttr ".wl[646].w[14]" 0.47669552048605601;
	setAttr ".wl[646].w[18]" 0.52162997653412946;
	setAttr ".wl[646].w[21]" 0.0016745029798145624;
	setAttr -s 3 ".wl[647].w";
	setAttr ".wl[647].w[14]" 0.4760786615033471;
	setAttr ".wl[647].w[18]" 0.52202379598378912;
	setAttr ".wl[647].w[21]" 0.0018975425128638331;
	setAttr -s 3 ".wl[648].w";
	setAttr ".wl[648].w[14]" 0.4401852353886947;
	setAttr ".wl[648].w[18]" 0.55928450456923984;
	setAttr ".wl[648].w[21]" 0.00053026004206541296;
	setAttr -s 3 ".wl[649].w";
	setAttr ".wl[649].w[14]" 0.46257002982732615;
	setAttr ".wl[649].w[18]" 0.53692645872579858;
	setAttr ".wl[649].w[21]" 0.00050351144687536343;
	setAttr -s 3 ".wl[650].w";
	setAttr ".wl[650].w[14]" 0.43340129005376443;
	setAttr ".wl[650].w[18]" 0.56617936812895753;
	setAttr ".wl[650].w[21]" 0.00041934181727798286;
	setAttr -s 3 ".wl[651].w";
	setAttr ".wl[651].w[14]" 0.42711999304811538;
	setAttr ".wl[651].w[18]" 0.57253514081040546;
	setAttr ".wl[651].w[21]" 0.00034486614147926552;
	setAttr -s 3 ".wl[652].w";
	setAttr ".wl[652].w[14]" 0.41184822999593218;
	setAttr ".wl[652].w[18]" 0.58772151818459606;
	setAttr ".wl[652].w[21]" 0.00043025181947180431;
	setAttr -s 3 ".wl[653].w";
	setAttr ".wl[653].w[14]" 0.4401852353886947;
	setAttr ".wl[653].w[18]" 0.55928450456923984;
	setAttr ".wl[653].w[21]" 0.00053026004206541296;
	setAttr -s 3 ".wl[654].w";
	setAttr ".wl[654].w[14]" 0.48335756902947585;
	setAttr ".wl[654].w[18]" 0.51481769161683855;
	setAttr ".wl[654].w[21]" 0.0018247393536856915;
	setAttr -s 3 ".wl[655].w";
	setAttr ".wl[655].w[13]" 0.0039586863355154612;
	setAttr ".wl[655].w[14]" 0.71392458167980444;
	setAttr ".wl[655].w[18]" 0.28211673198468012;
	setAttr -s 3 ".wl[656].w";
	setAttr ".wl[656].w[13]" 0.0034055916179416635;
	setAttr ".wl[656].w[14]" 0.74432702858248878;
	setAttr ".wl[656].w[18]" 0.25226737979956959;
	setAttr -s 3 ".wl[657].w";
	setAttr ".wl[657].w[13]" 0.00046608292458935797;
	setAttr ".wl[657].w[14]" 0.53189052669083692;
	setAttr ".wl[657].w[18]" 0.46764339038457364;
	setAttr -s 3 ".wl[658].w";
	setAttr ".wl[658].w[13]" 0.0015416448968070273;
	setAttr ".wl[658].w[14]" 0.7643063937861162;
	setAttr ".wl[658].w[18]" 0.2341519613170768;
	setAttr -s 3 ".wl[659].w";
	setAttr ".wl[659].w[13]" 0.00078110516639435937;
	setAttr ".wl[659].w[14]" 0.79466726277976618;
	setAttr ".wl[659].w[18]" 0.20455163205383942;
	setAttr -s 3 ".wl[660].w";
	setAttr ".wl[660].w[13]" 0.00022128509698238113;
	setAttr ".wl[660].w[14]" 0.58591365581576749;
	setAttr ".wl[660].w[18]" 0.41386505908725008;
	setAttr -s 3 ".wl[661].w";
	setAttr ".wl[661].w[13]" 0.00046608292458935797;
	setAttr ".wl[661].w[14]" 0.53189052669083692;
	setAttr ".wl[661].w[18]" 0.46764339038457364;
	setAttr -s 3 ".wl[662].w";
	setAttr ".wl[662].w[13]" 0.0037351749493782531;
	setAttr ".wl[662].w[14]" 0.74006794620092997;
	setAttr ".wl[662].w[18]" 0.25619687884969189;
	setAttr -s 3 ".wl[663].w";
	setAttr ".wl[663].w[13]" 0.0012725413203985864;
	setAttr ".wl[663].w[14]" 0.81404320013403764;
	setAttr ".wl[663].w[18]" 0.18468425854556381;
	setAttr -s 3 ".wl[664].w";
	setAttr ".wl[664].w[13]" 0.00044520145047211116;
	setAttr ".wl[664].w[14]" 0.55441120410204137;
	setAttr ".wl[664].w[18]" 0.44514359444748652;
	setAttr -s 3 ".wl[665].w";
	setAttr ".wl[665].w[13]" 0.013368433938175883;
	setAttr ".wl[665].w[14]" 0.97948737827658749;
	setAttr ".wl[665].w[18]" 0.0071441877852366619;
	setAttr -s 3 ".wl[666].w";
	setAttr ".wl[666].w[13]" 0.37051643971569231;
	setAttr ".wl[666].w[14]" 0.62935286730991047;
	setAttr ".wl[666].w[18]" 0.00013069297439723948;
	setAttr -s 3 ".wl[667].w";
	setAttr ".wl[667].w[13]" 0.25761287233070174;
	setAttr ".wl[667].w[14]" 0.74117455332340765;
	setAttr ".wl[667].w[18]" 0.0012125743458906413;
	setAttr -s 3 ".wl[668].w";
	setAttr ".wl[668].w[13]" 0.29869468321196957;
	setAttr ".wl[668].w[14]" 0.70104304848304144;
	setAttr ".wl[668].w[18]" 0.00026226830498909368;
	setAttr -s 3 ".wl[669].w";
	setAttr ".wl[669].w[13]" 0.22723608894728384;
	setAttr ".wl[669].w[14]" 0.77204367557505971;
	setAttr ".wl[669].w[18]" 0.00072023547765645026;
	setAttr -s 3 ".wl[670].w";
	setAttr ".wl[670].w[13]" 0.012310128644427308;
	setAttr ".wl[670].w[14]" 0.9795461542460332;
	setAttr ".wl[670].w[18]" 0.0081437171095395267;
	setAttr -s 3 ".wl[671].w";
	setAttr ".wl[671].w[13]" 0.020702816592687055;
	setAttr ".wl[671].w[14]" 0.96696751998090325;
	setAttr ".wl[671].w[18]" 0.012329663426409709;
	setAttr -s 3 ".wl[672].w";
	setAttr ".wl[672].w[13]" 0.23504616370485584;
	setAttr ".wl[672].w[14]" 0.76422070806018039;
	setAttr ".wl[672].w[18]" 0.00073312823496374561;
	setAttr -s 3 ".wl[673].w";
	setAttr ".wl[673].w[13]" 0.24783902268003327;
	setAttr ".wl[673].w[14]" 0.7520506544740897;
	setAttr ".wl[673].w[18]" 0.00011032284587712119;
	setAttr -s 3 ".wl[674].w";
	setAttr ".wl[674].w[13]" 0.064490612017408064;
	setAttr ".wl[674].w[14]" 0.90975036645128438;
	setAttr ".wl[674].w[18]" 0.025759021531307633;
	setAttr -s 3 ".wl[675].w";
	setAttr ".wl[675].w[13]" 0.48856050168294318;
	setAttr ".wl[675].w[14]" 0.5112520983588531;
	setAttr ".wl[675].w[18]" 0.00018739995820360971;
	setAttr -s 3 ".wl[676].w";
	setAttr ".wl[676].w[13]" 0.38952346708480301;
	setAttr ".wl[676].w[14]" 0.60963186142238968;
	setAttr ".wl[676].w[18]" 0.00084467149280732258;
	setAttr -s 3 ".wl[677].w";
	setAttr ".wl[677].w[13]" 0.49974070415976696;
	setAttr ".wl[677].w[14]" 0.49974070415976696;
	setAttr ".wl[677].w[18]" 0.00051859168046610056;
	setAttr -s 3 ".wl[678].w";
	setAttr ".wl[678].w[13]" 0.015918870570530201;
	setAttr ".wl[678].w[14]" 0.97692580595690237;
	setAttr ".wl[678].w[18]" 0.0071553234725674755;
	setAttr -s 3 ".wl[679].w";
	setAttr ".wl[679].w[13]" 0.49962165939296649;
	setAttr ".wl[679].w[14]" 0.50007508275876211;
	setAttr ".wl[679].w[18]" 0.00030325784827147089;
	setAttr -s 3 ".wl[680].w";
	setAttr ".wl[680].w[13]" 0.059477017875272355;
	setAttr ".wl[680].w[14]" 0.91358292625057524;
	setAttr ".wl[680].w[18]" 0.026940055874152376;
	setAttr -s 3 ".wl[681].w";
	setAttr ".wl[681].w[13]" 0.060456961871540212;
	setAttr ".wl[681].w[14]" 0.91507014249327334;
	setAttr ".wl[681].w[18]" 0.024472895635186509;
	setAttr -s 3 ".wl[682].w";
	setAttr ".wl[682].w[13]" 0.28125642667214734;
	setAttr ".wl[682].w[14]" 0.71871983811397955;
	setAttr ".wl[682].w[18]" 2.3735213873192454e-005;
	setAttr -s 3 ".wl[683].w";
	setAttr ".wl[683].w[13]" 0.23128923870163606;
	setAttr ".wl[683].w[14]" 0.76852627207175728;
	setAttr ".wl[683].w[18]" 0.0001844892266066361;
	setAttr -s 3 ".wl[684].w";
	setAttr ".wl[684].w[13]" 0.37051643971569231;
	setAttr ".wl[684].w[14]" 0.62935286730991047;
	setAttr ".wl[684].w[18]" 0.00013069297439723948;
	setAttr -s 3 ".wl[685].w";
	setAttr ".wl[685].w[13]" 0.43403934613110967;
	setAttr ".wl[685].w[14]" 0.56493829238479742;
	setAttr ".wl[685].w[18]" 0.0010223614840928505;
	setAttr -s 3 ".wl[686].w";
	setAttr ".wl[686].w[13]" 0.28758598327113921;
	setAttr ".wl[686].w[14]" 0.71189763562509045;
	setAttr ".wl[686].w[18]" 0.00051638110377038432;
	setAttr -s 3 ".wl[687].w";
	setAttr ".wl[687].w[13]" 0.0015416448968070273;
	setAttr ".wl[687].w[14]" 0.7643063937861162;
	setAttr ".wl[687].w[18]" 0.2341519613170768;
	setAttr -s 3 ".wl[688].w";
	setAttr ".wl[688].w[13]" 0.013368433938175883;
	setAttr ".wl[688].w[14]" 0.97948737827658749;
	setAttr ".wl[688].w[18]" 0.0071441877852366619;
	setAttr -s 3 ".wl[689].w";
	setAttr ".wl[689].w[13]" 0.59886183315132635;
	setAttr ".wl[689].w[14]" 0.40100932876553702;
	setAttr ".wl[689].w[18]" 0.00012883808313653906;
	setAttr -s 3 ".wl[690].w";
	setAttr ".wl[690].w[13]" 0.18768376751490357;
	setAttr ".wl[690].w[14]" 0.81216197362995524;
	setAttr ".wl[690].w[18]" 0.00015425885514120719;
	setAttr -s 3 ".wl[691].w";
	setAttr ".wl[691].w[13]" 0.75511539268330197;
	setAttr ".wl[691].w[14]" 0.2448479917518665;
	setAttr ".wl[691].w[18]" 3.6615564831615738e-005;
	setAttr -s 3 ".wl[692].w";
	setAttr ".wl[692].w[13]" 0.70201871891573042;
	setAttr ".wl[692].w[14]" 0.29790462165034515;
	setAttr ".wl[692].w[18]" 7.6659433924410657e-005;
	setAttr -s 3 ".wl[693].w";
	setAttr ".wl[693].w[13]" 0.25765078530031421;
	setAttr ".wl[693].w[14]" 0.74222261619438279;
	setAttr ".wl[693].w[18]" 0.00012659850530293237;
	setAttr -s 3 ".wl[694].w";
	setAttr ".wl[694].w[13]" 0.49879824516670279;
	setAttr ".wl[694].w[14]" 0.5005201264215855;
	setAttr ".wl[694].w[18]" 0.0006816284117117556;
	setAttr -s 3 ".wl[695].w";
	setAttr ".wl[695].w[13]" 0.49983504816574775;
	setAttr ".wl[695].w[14]" 0.49983504816574775;
	setAttr ".wl[695].w[18]" 0.00032990366850451508;
	setAttr -s 3 ".wl[696].w";
	setAttr ".wl[696].w[13]" 0.49999107153098393;
	setAttr ".wl[696].w[14]" 0.49999107153098393;
	setAttr ".wl[696].w[18]" 1.7856938032099851e-005;
	setAttr -s 3 ".wl[697].w";
	setAttr ".wl[697].w[13]" 0.49668737852288408;
	setAttr ".wl[697].w[14]" 0.50278076694912377;
	setAttr ".wl[697].w[18]" 0.00053185452799215771;
	setAttr -s 3 ".wl[698].w";
	setAttr ".wl[698].w[13]" 0.18768376751490357;
	setAttr ".wl[698].w[14]" 0.81216197362995524;
	setAttr ".wl[698].w[18]" 0.00015425885514120719;
	setAttr -s 3 ".wl[699].w";
	setAttr ".wl[699].w[13]" 0.018002274437544978;
	setAttr ".wl[699].w[14]" 0.96968006313239219;
	setAttr ".wl[699].w[18]" 0.012317662430062801;
	setAttr -s 3 ".wl[700].w";
	setAttr ".wl[700].w[13]" 0.43367170413736611;
	setAttr ".wl[700].w[14]" 0.56570487281508974;
	setAttr ".wl[700].w[18]" 0.00062342304754415157;
	setAttr -s 3 ".wl[701].w";
	setAttr ".wl[701].w[13]" 0.28758598327113921;
	setAttr ".wl[701].w[14]" 0.71189763562509045;
	setAttr ".wl[701].w[18]" 0.00051638110377038432;
	setAttr -s 3 ".wl[702].w";
	setAttr ".wl[702].w[5]" 0.38033553974004597;
	setAttr ".wl[702].w[17]" 0.091956954615317499;
	setAttr ".wl[702].w[21]" 0.52770750564463653;
	setAttr -s 3 ".wl[703].w";
	setAttr ".wl[703].w[5]" 0.11990596959087373;
	setAttr ".wl[703].w[17]" 0.39857841018957085;
	setAttr ".wl[703].w[21]" 0.48151562021955541;
	setAttr -s 3 ".wl[704].w";
	setAttr ".wl[704].w[5]" 0.31277924382306665;
	setAttr ".wl[704].w[17]" 0.25895956097888051;
	setAttr ".wl[704].w[21]" 0.42826119519805295;
	setAttr -s 3 ".wl[705].w";
	setAttr ".wl[705].w[5]" 0.24228790982258255;
	setAttr ".wl[705].w[17]" 0.29930522727899567;
	setAttr ".wl[705].w[21]" 0.45840686289842186;
	setAttr -s 3 ".wl[706].w";
	setAttr ".wl[706].w[5]" 0.069651800593386701;
	setAttr ".wl[706].w[17]" 0.38990561826740944;
	setAttr ".wl[706].w[21]" 0.54044258113920396;
	setAttr -s 3 ".wl[707].w";
	setAttr ".wl[707].w[5]" 0.29881672490744843;
	setAttr ".wl[707].w[17]" 0.22971016301060429;
	setAttr ".wl[707].w[21]" 0.47147311208194731;
	setAttr -s 3 ".wl[708].w";
	setAttr ".wl[708].w[5]" 0.047355377011417947;
	setAttr ".wl[708].w[17]" 0.45286500711997296;
	setAttr ".wl[708].w[21]" 0.49977961586860908;
	setAttr -s 3 ".wl[709].w";
	setAttr ".wl[709].w[5]" 0.31062389981024424;
	setAttr ".wl[709].w[17]" 0.031392270676648286;
	setAttr ".wl[709].w[21]" 0.65798382951310752;
	setAttr -s 3 ".wl[710].w";
	setAttr ".wl[710].w[2]" 0.07038223388260359;
	setAttr ".wl[710].w[3]" 0.46480888305869822;
	setAttr ".wl[710].w[22]" 0.46480888305869822;
	setAttr -s 3 ".wl[711].w";
	setAttr ".wl[711].w[2]" 0.045092689593044986;
	setAttr ".wl[711].w[3]" 0.47745365520347749;
	setAttr ".wl[711].w[22]" 0.47745365520347749;
	setAttr -s 3 ".wl[712].w";
	setAttr ".wl[712].w[0]" 0.073960855701294737;
	setAttr ".wl[712].w[4]" 0.49547731885338842;
	setAttr ".wl[712].w[22]" 0.43056182544531696;
	setAttr -s 3 ".wl[713].w[19:21]"  0.20894463859417436 0.39785685037286483 
		0.39319851103296077;
	setAttr -s 3 ".wl[714].w[19:21]"  0.12675335382597053 0.44233174089864452 
		0.4309149052753849;
	setAttr -s 3 ".wl[715].w";
	setAttr ".wl[715].w[2]" 0.38238898445942554;
	setAttr ".wl[715].w[3]" 0.33950830724513903;
	setAttr ".wl[715].w[5]" 0.27810270829543554;
	setAttr -s 3 ".wl[716].w";
	setAttr ".wl[716].w[2]" 0.39866210897991666;
	setAttr ".wl[716].w[5]" 0.39882514302024069;
	setAttr ".wl[716].w[21]" 0.20251274799984267;
	setAttr -s 3 ".wl[717].w";
	setAttr ".wl[717].w[2]" 0.38314882007301998;
	setAttr ".wl[717].w[5]" 0.38796209228371042;
	setAttr ".wl[717].w[21]" 0.2288890876432696;
	setAttr -s 3 ".wl[718].w";
	setAttr ".wl[718].w[2]" 0.32443494442926218;
	setAttr ".wl[718].w[5]" 0.38207956160670864;
	setAttr ".wl[718].w[21]" 0.29348549396402929;
	setAttr -s 3 ".wl[719].w";
	setAttr ".wl[719].w[2]" 0.25469938081813587;
	setAttr ".wl[719].w[5]" 0.37805377046222971;
	setAttr ".wl[719].w[21]" 0.36724684871963442;
	setAttr -s 3 ".wl[720].w";
	setAttr ".wl[720].w[2]" 0.34872714587065851;
	setAttr ".wl[720].w[5]" 0.3849746500391143;
	setAttr ".wl[720].w[21]" 0.2662982040902272;
	setAttr -s 3 ".wl[721].w";
	setAttr ".wl[721].w[0]" 0.43865996291468951;
	setAttr ".wl[721].w[4]" 0.45075680720935707;
	setAttr ".wl[721].w[22]" 0.11058322987595351;
	setAttr -s 3 ".wl[722].w";
	setAttr ".wl[722].w[0]" 0.45341501508102711;
	setAttr ".wl[722].w[4]" 0.4715159242909715;
	setAttr ".wl[722].w[22]" 0.075069060628001283;
	setAttr -s 3 ".wl[723].w";
	setAttr ".wl[723].w[0]" 0.50608580683324289;
	setAttr ".wl[723].w[1]" 0.0047399437308008659;
	setAttr ".wl[723].w[4]" 0.48917424943595633;
	setAttr -s 3 ".wl[724].w";
	setAttr ".wl[724].w[0]" 0.39051861331015864;
	setAttr ".wl[724].w[4]" 0.42396971046243598;
	setAttr ".wl[724].w[22]" 0.18551167622740536;
	setAttr -s 3 ".wl[725].w";
	setAttr ".wl[725].w[2]" 0.35374782043336894;
	setAttr ".wl[725].w[5]" 0.43439208709457239;
	setAttr ".wl[725].w[21]" 0.2118600924720587;
	setAttr -s 3 ".wl[726].w";
	setAttr ".wl[726].w[2]" 0.4226519154695324;
	setAttr ".wl[726].w[3]" 0.36092877864638973;
	setAttr ".wl[726].w[5]" 0.21641930588407784;
	setAttr -s 3 ".wl[727].w";
	setAttr ".wl[727].w[2]" 0.19784766397166254;
	setAttr ".wl[727].w[5]" 0.40142904366139553;
	setAttr ".wl[727].w[21]" 0.40072329236694204;
	setAttr -s 3 ".wl[728].w";
	setAttr ".wl[728].w[5]" 0.44493501461721519;
	setAttr ".wl[728].w[17]" 0.014482722201530757;
	setAttr ".wl[728].w[21]" 0.54058226318125413;
	setAttr -s 3 ".wl[729].w";
	setAttr ".wl[729].w[0]" 0.37499339624020728;
	setAttr ".wl[729].w[4]" 0.45418306149480281;
	setAttr ".wl[729].w[22]" 0.17082354226498991;
	setAttr -s 3 ".wl[730].w";
	setAttr ".wl[730].w[0]" 0.38831004459634783;
	setAttr ".wl[730].w[4]" 0.43873232214586982;
	setAttr ".wl[730].w[22]" 0.17295763325778238;
	setAttr -s 3 ".wl[731].w";
	setAttr ".wl[731].w[0]" 0.51176243420275525;
	setAttr ".wl[731].w[1]" 0.0022066287053586074;
	setAttr ".wl[731].w[4]" 0.48603093709188611;
	setAttr -s 3 ".wl[732].w";
	setAttr ".wl[732].w[0]" 0.43742611220795052;
	setAttr ".wl[732].w[4]" 0.45322498571090575;
	setAttr ".wl[732].w[22]" 0.10934890208114374;
	setAttr -s 3 ".wl[733].w";
	setAttr ".wl[733].w[0]" 0.47765320687289986;
	setAttr ".wl[733].w[4]" 0.48180213944090428;
	setAttr ".wl[733].w[22]" 0.040544653686195843;
	setAttr -s 3 ".wl[734].w";
	setAttr ".wl[734].w[2]" 0.34734992488842426;
	setAttr ".wl[734].w[5]" 0.378365091703458;
	setAttr ".wl[734].w[21]" 0.27428498340811774;
	setAttr -s 3 ".wl[735].w";
	setAttr ".wl[735].w[0]" 0.024133430669447727;
	setAttr ".wl[735].w[4]" 0.53112750316234669;
	setAttr ".wl[735].w[22]" 0.44473906616820552;
	setAttr -s 3 ".wl[736].w";
	setAttr ".wl[736].w[0]" 0.012127479660289202;
	setAttr ".wl[736].w[4]" 0.57752066897793519;
	setAttr ".wl[736].w[22]" 0.4103518513617756;
	setAttr -s 3 ".wl[737].w";
	setAttr ".wl[737].w[0]" 0.083913116171639171;
	setAttr ".wl[737].w[4]" 0.73497989929849095;
	setAttr ".wl[737].w[22]" 0.18110698452986979;
	setAttr -s 3 ".wl[738].w";
	setAttr ".wl[738].w[2]" 0.037965307194917051;
	setAttr ".wl[738].w[3]" 0.48101734640254151;
	setAttr ".wl[738].w[22]" 0.48101734640254151;
	setAttr -s 3 ".wl[739].w";
	setAttr ".wl[739].w[0]" 0.067377469712595797;
	setAttr ".wl[739].w[4]" 0.47276494156540433;
	setAttr ".wl[739].w[22]" 0.45985758872199994;
	setAttr -s 3 ".wl[740].w";
	setAttr ".wl[740].w[0]" 0.037494969152989374;
	setAttr ".wl[740].w[4]" 0.48764995954912688;
	setAttr ".wl[740].w[22]" 0.47485507129788374;
	setAttr -s 3 ".wl[741].w";
	setAttr ".wl[741].w[4]" 0.44103388386940356;
	setAttr ".wl[741].w[9]" 0.10810170890422977;
	setAttr ".wl[741].w[22]" 0.45086440722636661;
	setAttr -s 3 ".wl[742].w";
	setAttr ".wl[742].w[0]" 0.3686649579690276;
	setAttr ".wl[742].w[4]" 0.53073422043693319;
	setAttr ".wl[742].w[22]" 0.10060082159403923;
	setAttr -s 3 ".wl[743].w";
	setAttr ".wl[743].w[2]" 0.25902964077590435;
	setAttr ".wl[743].w[3]" 0.42446173454182196;
	setAttr ".wl[743].w[22]" 0.31650862468227381;
	setAttr -s 3 ".wl[744].w";
	setAttr ".wl[744].w[2]" 0.38954751852272845;
	setAttr ".wl[744].w[3]" 0.38952741468920526;
	setAttr ".wl[744].w[5]" 0.22092506678806623;
	setAttr -s 3 ".wl[745].w";
	setAttr ".wl[745].w[2]" 0.38685229731209086;
	setAttr ".wl[745].w[3]" 0.35374647169484402;
	setAttr ".wl[745].w[5]" 0.25940123099306506;
	setAttr -s 3 ".wl[746].w";
	setAttr ".wl[746].w[2]" 0.37813608210962313;
	setAttr ".wl[746].w[3]" 0.3666146570613989;
	setAttr ".wl[746].w[5]" 0.25524926082897803;
	setAttr -s 3 ".wl[747].w";
	setAttr ".wl[747].w[0]" 0.29386837861916981;
	setAttr ".wl[747].w[4]" 0.57546161582086319;
	setAttr ".wl[747].w[22]" 0.130670005559967;
	setAttr -s 3 ".wl[748].w";
	setAttr ".wl[748].w[0]" 0.49127056003667902;
	setAttr ".wl[748].w[4]" 0.49405457213749493;
	setAttr ".wl[748].w[22]" 0.014674867825826093;
	setAttr -s 3 ".wl[749].w";
	setAttr ".wl[749].w[0]" 0.48889481950938463;
	setAttr ".wl[749].w[4]" 0.48989418094177728;
	setAttr ".wl[749].w[22]" 0.021210999548838143;
	setAttr -s 3 ".wl[750].w";
	setAttr ".wl[750].w[0]" 0.47250004931993111;
	setAttr ".wl[750].w[4]" 0.47591544674194841;
	setAttr ".wl[750].w[22]" 0.051584503938120418;
	setAttr -s 3 ".wl[751].w";
	setAttr ".wl[751].w[0]" 0.44170432322731706;
	setAttr ".wl[751].w[4]" 0.44435322507580305;
	setAttr ".wl[751].w[22]" 0.11394245169687994;
	setAttr -s 3 ".wl[752].w";
	setAttr ".wl[752].w[2]" 0.32759366846213406;
	setAttr ".wl[752].w[5]" 0.36754201842099571;
	setAttr ".wl[752].w[21]" 0.30486431311687023;
	setAttr -s 3 ".wl[753].w";
	setAttr ".wl[753].w[2]" 0.18549372675796869;
	setAttr ".wl[753].w[5]" 0.40726582548326185;
	setAttr ".wl[753].w[21]" 0.40724044775876955;
	setAttr -s 3 ".wl[754].w";
	setAttr ".wl[754].w[0]" 0.47207995105016681;
	setAttr ".wl[754].w[4]" 0.51235690037760706;
	setAttr ".wl[754].w[22]" 0.015563148572226133;
	setAttr -s 3 ".wl[755].w";
	setAttr ".wl[755].w[0]" 0.33607968306477465;
	setAttr ".wl[755].w[4]" 0.41690183179599671;
	setAttr ".wl[755].w[22]" 0.24701848513922869;
	setAttr -s 3 ".wl[756].w";
	setAttr ".wl[756].w[2]" 0.37930435662411138;
	setAttr ".wl[756].w[3]" 0.3744674952640652;
	setAttr ".wl[756].w[5]" 0.24622814811182347;
	setAttr -s 3 ".wl[757].w";
	setAttr ".wl[757].w[2]" 0.041971834253753858;
	setAttr ".wl[757].w[3]" 0.47901408287312308;
	setAttr ".wl[757].w[22]" 0.47901408287312308;
	setAttr -s 3 ".wl[758].w";
	setAttr ".wl[758].w[0]" 0.069786866023277258;
	setAttr ".wl[758].w[4]" 0.46756704621357781;
	setAttr ".wl[758].w[22]" 0.46264608776314492;
	setAttr -s 3 ".wl[759].w";
	setAttr ".wl[759].w[0]" 0.23452909785503956;
	setAttr ".wl[759].w[4]" 0.6255828237290405;
	setAttr ".wl[759].w[22]" 0.13988807841592005;
	setAttr -s 3 ".wl[760].w";
	setAttr ".wl[760].w[2]" 0.047376498165768124;
	setAttr ".wl[760].w[3]" 0.47631175091711597;
	setAttr ".wl[760].w[22]" 0.47631175091711597;
	setAttr -s 3 ".wl[761].w";
	setAttr ".wl[761].w[0]" 0.024133430669447727;
	setAttr ".wl[761].w[4]" 0.53112750316234669;
	setAttr ".wl[761].w[22]" 0.44473906616820552;
	setAttr -s 3 ".wl[762].w";
	setAttr ".wl[762].w[0]" 0.083913116171639171;
	setAttr ".wl[762].w[4]" 0.73497989929849095;
	setAttr ".wl[762].w[22]" 0.18110698452986979;
	setAttr -s 3 ".wl[763].w";
	setAttr ".wl[763].w[0]" 0.15691753725498808;
	setAttr ".wl[763].w[4]" 0.66534120473238423;
	setAttr ".wl[763].w[22]" 0.17774125801262772;
	setAttr -s 3 ".wl[764].w";
	setAttr ".wl[764].w[0]" 0.15691753725498808;
	setAttr ".wl[764].w[4]" 0.66534120473238423;
	setAttr ".wl[764].w[22]" 0.17774125801262772;
	setAttr -s 3 ".wl[765].w";
	setAttr ".wl[765].w[4]" 0.44292200668395121;
	setAttr ".wl[765].w[9]" 0.10393057000653548;
	setAttr ".wl[765].w[22]" 0.4531474233095133;
	setAttr -s 3 ".wl[766].w";
	setAttr ".wl[766].w[4]" 0.34244938639859623;
	setAttr ".wl[766].w[9]" 0.24364926466634956;
	setAttr ".wl[766].w[22]" 0.41390134893505426;
	setAttr -s 3 ".wl[767].w";
	setAttr ".wl[767].w[0]" 0.44657745940112353;
	setAttr ".wl[767].w[4]" 0.5077753360984012;
	setAttr ".wl[767].w[22]" 0.045647204500475227;
	setAttr -s 3 ".wl[768].w";
	setAttr ".wl[768].w[0]" 0.072303972664208502;
	setAttr ".wl[768].w[4]" 0.46384801366789574;
	setAttr ".wl[768].w[22]" 0.46384801366789574;
	setAttr -s 3 ".wl[769].w";
	setAttr ".wl[769].w[0]" 0.037494969152989374;
	setAttr ".wl[769].w[4]" 0.48764995954912688;
	setAttr ".wl[769].w[22]" 0.47485507129788374;
	setAttr -s 3 ".wl[770].w";
	setAttr ".wl[770].w[0]" 0.17847800240384273;
	setAttr ".wl[770].w[4]" 0.44227757295205322;
	setAttr ".wl[770].w[22]" 0.37924442464410402;
	setAttr -s 3 ".wl[771].w";
	setAttr ".wl[771].w[4]" 0.27790577213072554;
	setAttr ".wl[771].w[9]" 0.27795298220961118;
	setAttr ".wl[771].w[22]" 0.44414124565966329;
	setAttr -s 3 ".wl[772].w";
	setAttr ".wl[772].w[2]" 0.28799671556813694;
	setAttr ".wl[772].w[3]" 0.4077316312251073;
	setAttr ".wl[772].w[22]" 0.30427165320675575;
	setAttr -s 3 ".wl[773].w";
	setAttr ".wl[773].w[2]" 0.27452858261719243;
	setAttr ".wl[773].w[3]" 0.40068292067351247;
	setAttr ".wl[773].w[22]" 0.32478849670929505;
	setAttr -s 3 ".wl[774].w";
	setAttr ".wl[774].w[11]" 0.00030906489393994746;
	setAttr ".wl[774].w[17]" 0.49984546755303;
	setAttr ".wl[774].w[21]" 0.49984546755303;
	setAttr -s 3 ".wl[775].w";
	setAttr ".wl[775].w[11]" 0.0029183309646749508;
	setAttr ".wl[775].w[17]" 0.56393607138408419;
	setAttr ".wl[775].w[21]" 0.43314559765124078;
	setAttr -s 3 ".wl[776].w[19:21]"  0.38151579509928335 0.38151579505876437 
		0.23696840984195217;
	setAttr -s 3 ".wl[777].w[19:21]"  0.39910730878362277 0.39910730878362266 
		0.2017853824327546;
	setAttr -s 3 ".wl[778].w";
	setAttr ".wl[778].w[11]" 0.0016585715382552864;
	setAttr ".wl[778].w[17]" 0.49917071423087239;
	setAttr ".wl[778].w[21]" 0.49917071423087239;
	setAttr -s 3 ".wl[779].w";
	setAttr ".wl[779].w[11]" 0.0018171858410822824;
	setAttr ".wl[779].w[17]" 0.86730812141277303;
	setAttr ".wl[779].w[21]" 0.13087469274614469;
	setAttr -s 3 ".wl[780].w";
	setAttr ".wl[780].w[11]" 0.0003996849893695716;
	setAttr ".wl[780].w[17]" 0.4998001575053152;
	setAttr ".wl[780].w[21]" 0.4998001575053152;
	setAttr -s 3 ".wl[781].w";
	setAttr ".wl[781].w[5]" 0.38033553974004597;
	setAttr ".wl[781].w[17]" 0.091956954615317499;
	setAttr ".wl[781].w[21]" 0.52770750564463653;
	setAttr -s 3 ".wl[782].w";
	setAttr ".wl[782].w[5]" 0.39398689816771632;
	setAttr ".wl[782].w[17]" 0.066547309825657347;
	setAttr ".wl[782].w[21]" 0.53946579200662637;
	setAttr -s 3 ".wl[783].w";
	setAttr ".wl[783].w[5]" 0.1848306494182734;
	setAttr ".wl[783].w[17]" 0.072919701604162557;
	setAttr ".wl[783].w[21]" 0.74224964897756418;
	setAttr -s 3 ".wl[784].w";
	setAttr ".wl[784].w[5]" 0.33270514887275321;
	setAttr ".wl[784].w[17]" 0.037810520194130427;
	setAttr ".wl[784].w[21]" 0.62948433093311629;
	setAttr -s 3 ".wl[785].w";
	setAttr ".wl[785].w[5]" 0.37207015302793495;
	setAttr ".wl[785].w[17]" 0.040896717986112177;
	setAttr ".wl[785].w[21]" 0.58703312898595295;
	setAttr -s 3 ".wl[786].w";
	setAttr ".wl[786].w[5]" 0.1101068698475028;
	setAttr ".wl[786].w[17]" 0.035574072271441645;
	setAttr ".wl[786].w[21]" 0.85431905788105555;
	setAttr -s 3 ".wl[787].w";
	setAttr ".wl[787].w[5]" 0.084393488949103881;
	setAttr ".wl[787].w[17]" 0.02498587339674882;
	setAttr ".wl[787].w[21]" 0.89062063765414734;
	setAttr -s 3 ".wl[788].w";
	setAttr ".wl[788].w[7]" 0.36869626199550098;
	setAttr ".wl[788].w[9]" 0.53071878293063013;
	setAttr ".wl[788].w[22]" 0.10058495507386887;
	setAttr -s 3 ".wl[789].w";
	setAttr ".wl[789].w[7]" 0.073973053805917122;
	setAttr ".wl[789].w[9]" 0.49548640971083974;
	setAttr ".wl[789].w[22]" 0.4305405364832432;
	setAttr -s 3 ".wl[790].w[19:21]"  0.20894463859417436 0.39785685037286483 
		0.39319851103296077;
	setAttr -s 3 ".wl[791].w";
	setAttr ".wl[791].w[14]" 0.00030917144995231376;
	setAttr ".wl[791].w[18]" 0.49984541427502388;
	setAttr ".wl[791].w[21]" 0.49984541427502388;
	setAttr -s 3 ".wl[792].w";
	setAttr ".wl[792].w[14]" 0.0018178736577435688;
	setAttr ".wl[792].w[18]" 0.86729170687304569;
	setAttr ".wl[792].w[21]" 0.13089041946921076;
	setAttr -s 3 ".wl[793].w";
	setAttr ".wl[793].w[14]" 0.0029187098905916029;
	setAttr ".wl[793].w[18]" 0.56394218851189393;
	setAttr ".wl[793].w[21]" 0.43313910159751456;
	setAttr -s 3 ".wl[794].w";
	setAttr ".wl[794].w[2]" 0.38312803311859389;
	setAttr ".wl[794].w[5]" 0.38793838461646551;
	setAttr ".wl[794].w[21]" 0.22893358226494057;
	setAttr -s 3 ".wl[795].w";
	setAttr ".wl[795].w[2]" 0.3823872477864757;
	setAttr ".wl[795].w[3]" 0.33950823651969952;
	setAttr ".wl[795].w[5]" 0.27810451569382483;
	setAttr -s 3 ".wl[796].w";
	setAttr ".wl[796].w[2]" 0.37702352322627214;
	setAttr ".wl[796].w[3]" 0.36060138630081862;
	setAttr ".wl[796].w[5]" 0.26237509047290919;
	setAttr -s 3 ".wl[797].w";
	setAttr ".wl[797].w[2]" 0.39866210897991666;
	setAttr ".wl[797].w[5]" 0.39882514302024069;
	setAttr ".wl[797].w[21]" 0.20251274799984267;
	setAttr -s 3 ".wl[798].w";
	setAttr ".wl[798].w[2]" 0.38685229731209086;
	setAttr ".wl[798].w[3]" 0.35374647169484402;
	setAttr ".wl[798].w[5]" 0.25940123099306506;
	setAttr -s 3 ".wl[799].w";
	setAttr ".wl[799].w[2]" 0.1855030035328252;
	setAttr ".wl[799].w[5]" 0.40726118655481863;
	setAttr ".wl[799].w[21]" 0.40723580991235619;
	setAttr -s 3 ".wl[800].w";
	setAttr ".wl[800].w[2]" 0.34734923809946455;
	setAttr ".wl[800].w[5]" 0.37836200664640635;
	setAttr ".wl[800].w[21]" 0.2742887552541291;
	setAttr -s 3 ".wl[801].w";
	setAttr ".wl[801].w[2]" 0.19785527233059827;
	setAttr ".wl[801].w[5]" 0.40142520781389995;
	setAttr ".wl[801].w[21]" 0.4007195198555018;
	setAttr -s 3 ".wl[802].w";
	setAttr ".wl[802].w[7]" 0.45342804901444306;
	setAttr ".wl[802].w[9]" 0.47151261852256998;
	setAttr ".wl[802].w[22]" 0.075059332462986808;
	setAttr -s 3 ".wl[803].w[7:9]"  0.50653659328754341 0.0047560456408121113 
		0.48870736107164447;
	setAttr -s 3 ".wl[804].w";
	setAttr ".wl[804].w[7]" 0.39053425407515552;
	setAttr ".wl[804].w[9]" 0.42397087978273212;
	setAttr ".wl[804].w[22]" 0.18549486614211225;
	setAttr -s 3 ".wl[805].w";
	setAttr ".wl[805].w[7]" 0.437440251495534;
	setAttr ".wl[805].w[9]" 0.45322555780235124;
	setAttr ".wl[805].w[22]" 0.10933419070211486;
	setAttr -s 3 ".wl[806].w[7:9]"  0.51246167844157442 0.0022133407412492545 
		0.48532498081717634;
	setAttr -s 3 ".wl[807].w";
	setAttr ".wl[807].w[7]" 0.47766249917485776;
	setAttr ".wl[807].w[9]" 0.48180071126386675;
	setAttr ".wl[807].w[22]" 0.040536789561275523;
	setAttr -s 3 ".wl[808].w";
	setAttr ".wl[808].w[7]" 0.44171361435797002;
	setAttr ".wl[808].w[9]" 0.44435716920886514;
	setAttr ".wl[808].w[22]" 0.11392921643316484;
	setAttr -s 3 ".wl[809].w";
	setAttr ".wl[809].w[2]" 0.32759403131198739;
	setAttr ".wl[809].w[5]" 0.36754023864910484;
	setAttr ".wl[809].w[21]" 0.30486573003890766;
	setAttr -s 3 ".wl[810].w";
	setAttr ".wl[810].w[7]" 0.024139146343944339;
	setAttr ".wl[810].w[9]" 0.53115251254844087;
	setAttr ".wl[810].w[22]" 0.44470834110761481;
	setAttr -s 3 ".wl[811].w";
	setAttr ".wl[811].w[7]" 0.083935250943738188;
	setAttr ".wl[811].w[9]" 0.73499104067678589;
	setAttr ".wl[811].w[22]" 0.18107370837947592;
	setAttr -s 3 ".wl[812].w";
	setAttr ".wl[812].w[7]" 0.012131055783873555;
	setAttr ".wl[812].w[9]" 0.57756612499223259;
	setAttr ".wl[812].w[22]" 0.41030281922389389;
	setAttr -s 3 ".wl[813].w";
	setAttr ".wl[813].w[4]" 0.10807911695855503;
	setAttr ".wl[813].w[9]" 0.44105479392944519;
	setAttr ".wl[813].w[22]" 0.45086608911199988;
	setAttr -s 3 ".wl[814].w";
	setAttr ".wl[814].w[7]" 0.38832893999653045;
	setAttr ".wl[814].w[9]" 0.43873232467641021;
	setAttr ".wl[814].w[22]" 0.17293873532705922;
	setAttr -s 3 ".wl[815].w";
	setAttr ".wl[815].w[7]" 0.33609884226149955;
	setAttr ".wl[815].w[9]" 0.4169023840291054;
	setAttr ".wl[815].w[22]" 0.2469987737093951;
	setAttr -s 3 ".wl[816].w";
	setAttr ".wl[816].w[7]" 0.37501597981429802;
	setAttr ".wl[816].w[9]" 0.4541810775761812;
	setAttr ".wl[816].w[22]" 0.17080294260952072;
	setAttr -s 3 ".wl[817].w";
	setAttr ".wl[817].w[7]" 0.29390442011961898;
	setAttr ".wl[817].w[9]" 0.57544616033666685;
	setAttr ".wl[817].w[22]" 0.13064941954371423;
	setAttr -s 3 ".wl[818].w";
	setAttr ".wl[818].w[7]" 0.48889899214768961;
	setAttr ".wl[818].w[9]" 0.4898924745192737;
	setAttr ".wl[818].w[22]" 0.021208533333036766;
	setAttr -s 3 ".wl[819].w";
	setAttr ".wl[819].w[7]" 0.49127718052123359;
	setAttr ".wl[819].w[9]" 0.49404971141548476;
	setAttr ".wl[819].w[22]" 0.01467310806328171;
	setAttr -s 3 ".wl[820].w";
	setAttr ".wl[820].w[7]" 0.43867230621107195;
	setAttr ".wl[820].w[9]" 0.4507577563254212;
	setAttr ".wl[820].w[22]" 0.11056993746350686;
	setAttr -s 3 ".wl[821].w";
	setAttr ".wl[821].w[7]" 0.4729620092237628;
	setAttr ".wl[821].w[9]" 0.47516208807478072;
	setAttr ".wl[821].w[22]" 0.051875902701456506;
	setAttr -s 3 ".wl[822].w";
	setAttr ".wl[822].w[7]" 0.47210442144338316;
	setAttr ".wl[822].w[9]" 0.51233525354757259;
	setAttr ".wl[822].w[22]" 0.015560325009044333;
	setAttr -s 3 ".wl[823].w";
	setAttr ".wl[823].w[7]" 0.15694955425588197;
	setAttr ".wl[823].w[9]" 0.66533907799577308;
	setAttr ".wl[823].w[22]" 0.17771136774834506;
	setAttr -s 3 ".wl[824].w";
	setAttr ".wl[824].w[2]" 0.28799671556813694;
	setAttr ".wl[824].w[3]" 0.4077316312251073;
	setAttr ".wl[824].w[22]" 0.30427165320675575;
	setAttr -s 3 ".wl[825].w";
	setAttr ".wl[825].w[2]" 0.39727269963341982;
	setAttr ".wl[825].w[3]" 0.39274839736153527;
	setAttr ".wl[825].w[5]" 0.20997890300504501;
	setAttr -s 3 ".wl[826].w";
	setAttr ".wl[826].w[7]" 0.067386859877179656;
	setAttr ".wl[826].w[9]" 0.47276684389140239;
	setAttr ".wl[826].w[22]" 0.45984629623141793;
	setAttr -s 3 ".wl[827].w";
	setAttr ".wl[827].w[7]" 0.23456660050149331;
	setAttr ".wl[827].w[9]" 0.62557194663434224;
	setAttr ".wl[827].w[22]" 0.13986145286416438;
	setAttr -s 3 ".wl[828].w";
	setAttr ".wl[828].w[7]" 0.44660252691860131;
	setAttr ".wl[828].w[9]" 0.5077594655834955;
	setAttr ".wl[828].w[22]" 0.045638007497903206;
	setAttr -s 3 ".wl[829].w";
	setAttr ".wl[829].w[7]" 0.069795570785563754;
	setAttr ".wl[829].w[9]" 0.4675666101409503;
	setAttr ".wl[829].w[22]" 0.462637819073486;
	setAttr -s 3 ".wl[830].w";
	setAttr ".wl[830].w[7]" 0.024139146343944339;
	setAttr ".wl[830].w[9]" 0.53115251254844087;
	setAttr ".wl[830].w[22]" 0.44470834110761481;
	setAttr -s 3 ".wl[831].w";
	setAttr ".wl[831].w[7]" 0.083935250943738188;
	setAttr ".wl[831].w[9]" 0.73499104067678589;
	setAttr ".wl[831].w[22]" 0.18107370837947592;
	setAttr -s 3 ".wl[832].w";
	setAttr ".wl[832].w[7]" 0.49127718052123359;
	setAttr ".wl[832].w[9]" 0.49404971141548476;
	setAttr ".wl[832].w[22]" 0.01467310806328171;
	setAttr -s 3 ".wl[833].w";
	setAttr ".wl[833].w[4]" 0.10390843747946582;
	setAttr ".wl[833].w[9]" 0.44294316987031157;
	setAttr ".wl[833].w[22]" 0.45314839265022266;
	setAttr -s 3 ".wl[834].w";
	setAttr ".wl[834].w[7]" 0.15694955425588197;
	setAttr ".wl[834].w[9]" 0.66533907799577308;
	setAttr ".wl[834].w[22]" 0.17771136774834506;
	setAttr -s 3 ".wl[835].w";
	setAttr ".wl[835].w[4]" 0.24361572415523741;
	setAttr ".wl[835].w[9]" 0.34248215501081719;
	setAttr ".wl[835].w[22]" 0.41390212083394545;
	setAttr -s 3 ".wl[836].w";
	setAttr ".wl[836].w[7]" 0.47250813563740279;
	setAttr ".wl[836].w[9]" 0.4759151712572029;
	setAttr ".wl[836].w[22]" 0.05157669310539436;
	setAttr -s 3 ".wl[837].w";
	setAttr ".wl[837].w[7]" 0.072310543971850647;
	setAttr ".wl[837].w[9]" 0.46384472801407467;
	setAttr ".wl[837].w[22]" 0.46384472801407467;
	setAttr -s 3 ".wl[838].w";
	setAttr ".wl[838].w[7]" 0.037501139448026535;
	setAttr ".wl[838].w[9]" 0.48765502043444003;
	setAttr ".wl[838].w[22]" 0.47484384011753344;
	setAttr -s 3 ".wl[839].w";
	setAttr ".wl[839].w[7]" 0.037501139448026535;
	setAttr ".wl[839].w[9]" 0.48765502043444003;
	setAttr ".wl[839].w[22]" 0.47484384011753344;
	setAttr -s 3 ".wl[840].w";
	setAttr ".wl[840].w[4]" 0.27790786480312601;
	setAttr ".wl[840].w[9]" 0.27795151983212879;
	setAttr ".wl[840].w[22]" 0.44414061536474508;
	setAttr -s 3 ".wl[841].w";
	setAttr ".wl[841].w[7]" 0.17849620257534896;
	setAttr ".wl[841].w[9]" 0.44227909678084981;
	setAttr ".wl[841].w[22]" 0.37922470064380115;
	setAttr -s 3 ".wl[842].w[19:21]"  0.38151579509928335 0.38151579505876437 
		0.23696840984195217;
	setAttr -s 3 ".wl[843].w";
	setAttr ".wl[843].w[14]" 0.013560062011378007;
	setAttr ".wl[843].w[18]" 0.61796833033794474;
	setAttr ".wl[843].w[21]" 0.36847160765067721;
	setAttr -s 3 ".wl[844].w";
	setAttr ".wl[844].w[14]" 0.0016587563538334722;
	setAttr ".wl[844].w[18]" 0.4991706218230833;
	setAttr ".wl[844].w[21]" 0.4991706218230833;
	setAttr -s 3 ".wl[845].w";
	setAttr ".wl[845].w[14]" 0.0003997740606537215;
	setAttr ".wl[845].w[18]" 0.49980011296967314;
	setAttr ".wl[845].w[21]" 0.49980011296967314;
	setAttr -s 3 ".wl[846].w";
	setAttr ".wl[846].w[11]" 0.011801746526873557;
	setAttr ".wl[846].w[17]" 0.61500152598226587;
	setAttr ".wl[846].w[21]" 0.37319672749086047;
	setAttr -s 3 ".wl[847].w";
	setAttr ".wl[847].w[11]" 0.0037209851376169339;
	setAttr ".wl[847].w[17]" 0.64190853767134626;
	setAttr ".wl[847].w[21]" 0.35437047719103681;
	setAttr -s 3 ".wl[848].w";
	setAttr ".wl[848].w[14]" 0.0037215162698455793;
	setAttr ".wl[848].w[18]" 0.64191458659505429;
	setAttr ".wl[848].w[21]" 0.35436389713510008;
	setAttr -s 3 ".wl[849].w";
	setAttr ".wl[849].w[14]" 0.011801001621758053;
	setAttr ".wl[849].w[18]" 0.61501046102288537;
	setAttr ".wl[849].w[21]" 0.37318853735535668;
	setAttr -s 3 ".wl[850].w";
	setAttr ".wl[850].w[11]" 0.0052595007049291674;
	setAttr ".wl[850].w[17]" 0.80654532001212353;
	setAttr ".wl[850].w[21]" 0.18819517928294732;
	setAttr -s 3 ".wl[851].w";
	setAttr ".wl[851].w[11]" 0.0085774987624257972;
	setAttr ".wl[851].w[17]" 0.77839181108219191;
	setAttr ".wl[851].w[21]" 0.21303069015538229;
	setAttr -s 3 ".wl[852].w";
	setAttr ".wl[852].w[11]" 0.013560924674575632;
	setAttr ".wl[852].w[17]" 0.61795938201468648;
	setAttr ".wl[852].w[21]" 0.36847969331073799;
	setAttr -s 3 ".wl[853].w";
	setAttr ".wl[853].w[14]" 0.0052604193113356037;
	setAttr ".wl[853].w[18]" 0.80654466806760972;
	setAttr ".wl[853].w[21]" 0.18819491262105464;
	setAttr -s 3 ".wl[854].w";
	setAttr ".wl[854].w[14]" 0.0085776947692026897;
	setAttr ".wl[854].w[18]" 0.77840624996547692;
	setAttr ".wl[854].w[21]" 0.21301605526532041;
	setAttr -s 3 ".wl[855].w";
	setAttr ".wl[855].w[14]" 0.013611366363713264;
	setAttr ".wl[855].w[18]" 0.73786087523749255;
	setAttr ".wl[855].w[21]" 0.24852775839879418;
	setAttr -s 3 ".wl[856].w";
	setAttr ".wl[856].w[11]" 0.01361234143185965;
	setAttr ".wl[856].w[17]" 0.73784633730985416;
	setAttr ".wl[856].w[21]" 0.24854132125828629;
	setAttr -s 3 ".wl[857].w";
	setAttr ".wl[857].w[0]" 0.47295419790737753;
	setAttr ".wl[857].w[4]" 0.47516119989629041;
	setAttr ".wl[857].w[22]" 0.051884602196332057;
	setAttr -s 3 ".wl[858].w";
	setAttr ".wl[858].w[2]" 0.25470299071406938;
	setAttr ".wl[858].w[5]" 0.37805164337019265;
	setAttr ".wl[858].w[21]" 0.36724536591573803;
	setAttr -s 3 ".wl[859].w";
	setAttr ".wl[859].w[2]" 0.28679498916321683;
	setAttr ".wl[859].w[5]" 0.37115542361693166;
	setAttr ".wl[859].w[21]" 0.3420495872198514;
	setAttr -s 3 ".wl[860].w";
	setAttr ".wl[860].w[0]" 0.49127056003667902;
	setAttr ".wl[860].w[4]" 0.49405457213749493;
	setAttr ".wl[860].w[22]" 0.014674867825826093;
	setAttr -s 3 ".wl[861].w";
	setAttr ".wl[861].w[2]" 0.37702589907743739;
	setAttr ".wl[861].w[3]" 0.36060288839151816;
	setAttr ".wl[861].w[5]" 0.26237121253104451;
	setAttr -s 3 ".wl[862].w";
	setAttr ".wl[862].w[2]" 0.32443494442926218;
	setAttr ".wl[862].w[5]" 0.38207956160670864;
	setAttr ".wl[862].w[21]" 0.29348549396402929;
	setAttr -s 3 ".wl[863].w";
	setAttr ".wl[863].w[4]" 0.28372724639584834;
	setAttr ".wl[863].w[9]" 0.28376807776524737;
	setAttr ".wl[863].w[22]" 0.43250467583890434;
	setAttr -s 3 ".wl[864].w";
	setAttr ".wl[864].w[4]" 0.28372724639584834;
	setAttr ".wl[864].w[9]" 0.28376807776524737;
	setAttr ".wl[864].w[22]" 0.43250467583890434;
	setAttr -s 3 ".wl[865].w";
	setAttr ".wl[865].w[2]" 0.27452760754818339;
	setAttr ".wl[865].w[3]" 0.40068038692113372;
	setAttr ".wl[865].w[22]" 0.32479200553068294;
	setAttr -s 3 ".wl[866].w";
	setAttr ".wl[866].w[2]" 0.39727285703354398;
	setAttr ".wl[866].w[3]" 0.39274853803052606;
	setAttr ".wl[866].w[5]" 0.20997860493593007;
	setAttr -s 3 ".wl[867].w";
	setAttr ".wl[867].w[2]" 0.38954583689031086;
	setAttr ".wl[867].w[3]" 0.38952573834147131;
	setAttr ".wl[867].w[5]" 0.22092842476821781;
	setAttr -s 3 ".wl[868].w";
	setAttr ".wl[868].w[2]" 0.37813446691387798;
	setAttr ".wl[868].w[3]" 0.36661373285138615;
	setAttr ".wl[868].w[5]" 0.25525180023473598;
	setAttr -s 3 ".wl[869].w";
	setAttr ".wl[869].w[2]" 0.37930230392441672;
	setAttr ".wl[869].w[3]" 0.37446569121210693;
	setAttr ".wl[869].w[5]" 0.24623200486347638;
	setAttr -s 3 ".wl[870].w";
	setAttr ".wl[870].w[2]" 0.28679716154179991;
	setAttr ".wl[870].w[5]" 0.37115355068347206;
	setAttr ".wl[870].w[21]" 0.34204928777472815;
	setAttr -s 3 ".wl[871].w";
	setAttr ".wl[871].w[2]" 0.34868303659145627;
	setAttr ".wl[871].w[5]" 0.38475113230327002;
	setAttr ".wl[871].w[21]" 0.26656583110527377;
	setAttr -s 23 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.0099976700000000002 -3.0000499999999999e-010 0.00021591700000000001 0
		 -0.00021591700000000001 0 0.0099976700000000002 0 -2.9935100000000001e-010 -0.01 0 0
		 -0.15648400000000001 -2.15504e-007 -1.5017339999999999 1;
	setAttr ".pm[1]" -type "matrix" 0.0099012800000000002 0.00138491 0.00021591700000000001 0
		 -0.000213835 -2.9909500000000002e-005 0.0099976700000000002 0 0.0013852300000000001 -0.0099035900000000003 0 0
		 -0.41813099999999997 -0.058484800000000003 -1.5017339999999999 1;
	setAttr ".pm[2]" -type "matrix" 0 -1.4623e-008 0.01 0 0.01 -7.9631800000000006e-006 0 0
		 7.9631800000000006e-006 0.01 1.4623e-008 0 -1.29389 0.00111286 3.0865799999999999e-009 1;
	setAttr ".pm[3]" -type "matrix" 0 -1.4623e-008 0.01 0 0.01 -7.9631800000000006e-006 0 0
		 7.9631800000000006e-006 0.01 1.4623e-008 0 -1.397532 0.00119936 3.3264900000000002e-009 1;
	setAttr ".pm[4]" -type "matrix" 0.0099852699999999992 -1.3136699999999999e-008 0.00054263800000000002 0
		 -0.00054263800000000002 0 0.0099852699999999992 0 -1.3117399999999999e-008 -0.01 -7.1220700000000004e-010 0
		 0.042988699999999998 2.2793800000000001e-008 -1.5060469999999999 1;
	setAttr ".pm[5]" -type "matrix" 0 -1.4623e-008 0.01 0 0.01 -7.9631800000000006e-006 0 0
		 7.9631800000000006e-006 0.01 1.4623e-008 0 -1.192796 0.0010303300000000001 2.8576800000000004e-009 1;
	setAttr ".pm[6]" -type "matrix" 0.0098259100000000002 -0.00021444699999999999 0.00184541 0
		 -0.00021220700000000001 -0.0099977 -3.1890100000000002e-005 0 0.0018456600000000001 -7.8259099999999998e-006 -0.0098282000000000005 0
		 -0.68037599999999998 1.5016609999999999 -0.091514300000000007 1;
	setAttr ".pm[7]" -type "matrix" -0.00999273 -1.3987199999999999e-008 0.00038135399999999998 0
		 -0.00038135399999999998 0 -0.00999273 0 1.39771e-008 -0.01 -5.3340900000000001e-010 0
		 -0.131608 5.9305599999999998e-009 1.5041180000000001 1;
	setAttr ".pm[8]" -type "matrix" -0.0098963899999999997 -0.0013842399999999999 0.00038135399999999998 0
		 -0.00037767699999999998 -5.2826299999999999e-005 -0.00999273 0 0.00138524 -0.0099035900000000003 -5.1956499999999995e-010 0
		 -0.39349499999999998 -0.055038700000000003 1.5041180000000001 1;
	setAttr ".pm[9]" -type "matrix" -0.0099852699999999992 -1.3089299999999999e-008 0.00054263800000000002 0
		 -0.00054263800000000002 0 -0.0099852699999999992 0 1.3069999999999999e-008 -0.01 -7.1091800000000005e-010 0
		 0.042988699999999998 2.2793800000000001e-008 1.5060469999999999 1;
	setAttr ".pm[10]" -type "matrix" -0.0097181500000000001 0.00037950100000000002 0.0023266900000000002 0
		 -0.000370875 -0.0099927899999999997 8.0824900000000006e-005 0 0.0023280800000000002 -7.7444199999999996e-006 0.0097252199999999997 0
		 -0.65090199999999998 1.5040230000000001 0.11916599999999999 1;
	setAttr ".pm[11]" -type "matrix" 0.00037384099999999997 7.5795400000000003e-005 -0.0099927200000000001 0
		 -0.0099429400000000008 -0.00099689500000000003 -0.000379541 0 -0.00099904599999999996 0.0099498999999999994 3.80949e-005 0
		 0.55302600000000002 0.0106418 0.12631200000000001 1;
	setAttr ".pm[12]" -type "matrix" 0 1.3113e-008 -0.01 0 -0.01 0 0 0 0 0.01 1.3113e-008 0
		 0.11539000000000001 6.3654799999999999e-005 0.122021 1;
	setAttr ".pm[13]" -type "matrix" 0 1.3113e-008 -0.01 0 -0.01 0 0 0 0 0.01 1.3113e-008 0
		 0.11539000000000001 6.3649e-005 -0.122021 1;
	setAttr ".pm[14]" -type "matrix" -0.00037384400000000002 -7.5767500000000003e-005 -0.0099927200000000001 0
		 -0.0099429400000000008 -0.00099689500000000003 0.000379541 0 -0.00099904500000000005 0.0099498999999999994 -3.80669e-005 0
		 0.55302600000000002 0.0106418 -0.12631200000000001 1;
	setAttr ".pm[15]" -type "matrix" -0.0097181500000000001 0.00038135399999999998 0.0023263899999999998 0
		 -0.000370875 -0.00999273 8.8782400000000006e-005 0 0.0023280800000000002 0 0.0097252299999999996 0
		 -0.76161800000000002 1.5041180000000001 0.117968 1;
	setAttr ".pm[16]" -type "matrix" 0.0098259100000000002 -0.00021591700000000001 0.00184523 0
		 -0.00021220700000000001 -0.0099976700000000002 -3.9851399999999996e-005 0 0.0018456600000000001 4.7061799999999996e-010 -0.0098282000000000005 0
		 -0.79109200000000002 1.5017339999999999 -0.090318499999999996 1;
	setAttr ".pm[17]" -type "matrix" 0.000381448 1.3899300000000001e-008 -0.0099927200000000001 0
		 -0.0099427999999999999 0.00099833499999999993 -0.000379541 0 0.00099760800000000009 0.0099500400000000003 3.8095100000000001e-005 0
		 0.98697900000000005 -0.099439600000000003 0.12631200000000001 1;
	setAttr ".pm[18]" -type "matrix" -0.000381445 1.3917999999999999e-008 -0.0099927200000000001 0
		 -0.0099427999999999999 0.00099833499999999993 0.000379541 0 0.000997609 0.0099500400000000003 -3.80671e-005 0
		 0.98697900000000005 -0.099439600000000003 -0.12631200000000001 1;
	setAttr ".pm[19]" -type "matrix" 1.3113e-008 0.01 0 0 0 0 0.01 0 0.01 -1.3113e-008 0 0
		 4.3037599999999996e-008 0 -0.99605500000000002 1;
	setAttr ".pm[20]" -type "matrix" 1.3868000000000001e-008 2.6981000000000002e-008 0.01 0
		 0.01 0 -1.3868000000000001e-008 0 0 0.01 -2.6981000000000002e-008 0 -0.99605500000000002 4.3041299999999998e-008 1.38133e-006 1;
	setAttr ".pm[21]" -type "matrix" 0 -1.4623e-008 0.01 0 0.01 -7.9631800000000006e-006 0 0
		 7.9631800000000006e-006 0.01 1.4623e-008 0 -1.097912 0.00094983600000000002 2.6344099999999998e-009 1;
	setAttr ".pm[22]" -type "matrix" 8.4640599999999998e-009 -1.5925100000000001e-008 0.01 0
		 0.0095367500000000001 -0.0030083900000000001 -1.2862800000000002e-008 0 0.0030083900000000001 0.0095367500000000001 1.2641e-008 0
		 -1.4363870000000001 0.453177 1.9375300000000001e-006 1;
	setAttr ".gm" -type "matrix" 41.322315000000003 0 0 0 0 0 -41.322315000000003 0 0 41.322315000000003 0 0
		 2.80845e-007 81.252903000000003 5.181451 1;
	setAttr -s 23 ".ma";
	setAttr -s 23 ".dpf[0:22]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4;
	setAttr -s 23 ".lw";
	setAttr -s 23 ".lw";
	setAttr ".mi" 3;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 23 ".ifcl";
	setAttr -s 23 ".ifcl";
createNode tweak -n "tweak3";
createNode objectSet -n "skinCluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:871]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "BdBip_scaleX.o" "BdBip.sx";
connectAttr "BdBip_scaleY.o" "BdBip.sy";
connectAttr "BdBip_scaleZ.o" "BdBip.sz";
connectAttr "BdBip_translateX.o" "BdBip.tx";
connectAttr "BdBip_translateY.o" "BdBip.ty";
connectAttr "BdBip_translateZ.o" "BdBip.tz";
connectAttr "BdBip_rotateX.o" "BdBip.rx";
connectAttr "BdBip_rotateY.o" "BdBip.ry";
connectAttr "BdBip_rotateZ.o" "BdBip.rz";
connectAttr "BdBip.s" "Bip02FBXASC032Footsteps.is";
connectAttr "Bip02FBXASC032Footsteps_translateX.o" "Bip02FBXASC032Footsteps.tx";
connectAttr "Bip02FBXASC032Footsteps_translateY.o" "Bip02FBXASC032Footsteps.ty";
connectAttr "Bip02FBXASC032Footsteps_translateZ.o" "Bip02FBXASC032Footsteps.tz";
connectAttr "Bip02FBXASC032Footsteps_scaleX.o" "Bip02FBXASC032Footsteps.sx";
connectAttr "Bip02FBXASC032Footsteps_scaleY.o" "Bip02FBXASC032Footsteps.sy";
connectAttr "Bip02FBXASC032Footsteps_scaleZ.o" "Bip02FBXASC032Footsteps.sz";
connectAttr "Bip02FBXASC032Footsteps_rotateX.o" "Bip02FBXASC032Footsteps.rx";
connectAttr "Bip02FBXASC032Footsteps_rotateY.o" "Bip02FBXASC032Footsteps.ry";
connectAttr "Bip02FBXASC032Footsteps_rotateZ.o" "Bip02FBXASC032Footsteps.rz";
connectAttr "BdBip.s" "Bip02FBXASC032Pelvis.is";
connectAttr "Bip02FBXASC032Pelvis_scaleX.o" "Bip02FBXASC032Pelvis.sx";
connectAttr "Bip02FBXASC032Pelvis_scaleY.o" "Bip02FBXASC032Pelvis.sy";
connectAttr "Bip02FBXASC032Pelvis_scaleZ.o" "Bip02FBXASC032Pelvis.sz";
connectAttr "Bip02FBXASC032Pelvis_translateX.o" "Bip02FBXASC032Pelvis.tx";
connectAttr "Bip02FBXASC032Pelvis_translateY.o" "Bip02FBXASC032Pelvis.ty";
connectAttr "Bip02FBXASC032Pelvis_translateZ.o" "Bip02FBXASC032Pelvis.tz";
connectAttr "Bip02FBXASC032Pelvis_rotateX.o" "Bip02FBXASC032Pelvis.rx";
connectAttr "Bip02FBXASC032Pelvis_rotateY.o" "Bip02FBXASC032Pelvis.ry";
connectAttr "Bip02FBXASC032Pelvis_rotateZ.o" "Bip02FBXASC032Pelvis.rz";
connectAttr "Bip02FBXASC032Pelvis.s" "Bip02FBXASC032Spine.is";
connectAttr "Bip02FBXASC032Spine_scaleX.o" "Bip02FBXASC032Spine.sx";
connectAttr "Bip02FBXASC032Spine_scaleY.o" "Bip02FBXASC032Spine.sy";
connectAttr "Bip02FBXASC032Spine_scaleZ.o" "Bip02FBXASC032Spine.sz";
connectAttr "Bip02FBXASC032Spine_translateX.o" "Bip02FBXASC032Spine.tx";
connectAttr "Bip02FBXASC032Spine_translateY.o" "Bip02FBXASC032Spine.ty";
connectAttr "Bip02FBXASC032Spine_translateZ.o" "Bip02FBXASC032Spine.tz";
connectAttr "Bip02FBXASC032Spine_rotateX.o" "Bip02FBXASC032Spine.rx";
connectAttr "Bip02FBXASC032Spine_rotateY.o" "Bip02FBXASC032Spine.ry";
connectAttr "Bip02FBXASC032Spine_rotateZ.o" "Bip02FBXASC032Spine.rz";
connectAttr "Bip02FBXASC032Spine.s" "Bip02FBXASC032Spine1.is";
connectAttr "Bip02FBXASC032Spine1_scaleX.o" "Bip02FBXASC032Spine1.sx";
connectAttr "Bip02FBXASC032Spine1_scaleY.o" "Bip02FBXASC032Spine1.sy";
connectAttr "Bip02FBXASC032Spine1_scaleZ.o" "Bip02FBXASC032Spine1.sz";
connectAttr "Bip02FBXASC032Spine1_translateX.o" "Bip02FBXASC032Spine1.tx";
connectAttr "Bip02FBXASC032Spine1_translateY.o" "Bip02FBXASC032Spine1.ty";
connectAttr "Bip02FBXASC032Spine1_translateZ.o" "Bip02FBXASC032Spine1.tz";
connectAttr "Bip02FBXASC032Spine1_rotateX.o" "Bip02FBXASC032Spine1.rx";
connectAttr "Bip02FBXASC032Spine1_rotateY.o" "Bip02FBXASC032Spine1.ry";
connectAttr "Bip02FBXASC032Spine1_rotateZ.o" "Bip02FBXASC032Spine1.rz";
connectAttr "Bip02FBXASC032Spine1.s" "Bip02FBXASC032Spine2.is";
connectAttr "Bip02FBXASC032Spine2_scaleX.o" "Bip02FBXASC032Spine2.sx";
connectAttr "Bip02FBXASC032Spine2_scaleY.o" "Bip02FBXASC032Spine2.sy";
connectAttr "Bip02FBXASC032Spine2_scaleZ.o" "Bip02FBXASC032Spine2.sz";
connectAttr "Bip02FBXASC032Spine2_translateX.o" "Bip02FBXASC032Spine2.tx";
connectAttr "Bip02FBXASC032Spine2_translateY.o" "Bip02FBXASC032Spine2.ty";
connectAttr "Bip02FBXASC032Spine2_translateZ.o" "Bip02FBXASC032Spine2.tz";
connectAttr "Bip02FBXASC032Spine2_rotateX.o" "Bip02FBXASC032Spine2.rx";
connectAttr "Bip02FBXASC032Spine2_rotateY.o" "Bip02FBXASC032Spine2.ry";
connectAttr "Bip02FBXASC032Spine2_rotateZ.o" "Bip02FBXASC032Spine2.rz";
connectAttr "Bip02FBXASC032Spine2.s" "Bip02FBXASC032Spine3.is";
connectAttr "Bip02FBXASC032Spine3_scaleX.o" "Bip02FBXASC032Spine3.sx";
connectAttr "Bip02FBXASC032Spine3_scaleY.o" "Bip02FBXASC032Spine3.sy";
connectAttr "Bip02FBXASC032Spine3_scaleZ.o" "Bip02FBXASC032Spine3.sz";
connectAttr "Bip02FBXASC032Spine3_translateX.o" "Bip02FBXASC032Spine3.tx";
connectAttr "Bip02FBXASC032Spine3_translateY.o" "Bip02FBXASC032Spine3.ty";
connectAttr "Bip02FBXASC032Spine3_translateZ.o" "Bip02FBXASC032Spine3.tz";
connectAttr "Bip02FBXASC032Spine3_rotateX.o" "Bip02FBXASC032Spine3.rx";
connectAttr "Bip02FBXASC032Spine3_rotateY.o" "Bip02FBXASC032Spine3.ry";
connectAttr "Bip02FBXASC032Spine3_rotateZ.o" "Bip02FBXASC032Spine3.rz";
connectAttr "Bip02FBXASC032Spine3.s" "Bip02FBXASC032Neck.is";
connectAttr "Bip02FBXASC032Neck_scaleX.o" "Bip02FBXASC032Neck.sx";
connectAttr "Bip02FBXASC032Neck_scaleY.o" "Bip02FBXASC032Neck.sy";
connectAttr "Bip02FBXASC032Neck_scaleZ.o" "Bip02FBXASC032Neck.sz";
connectAttr "Bip02FBXASC032Neck_translateX.o" "Bip02FBXASC032Neck.tx";
connectAttr "Bip02FBXASC032Neck_translateY.o" "Bip02FBXASC032Neck.ty";
connectAttr "Bip02FBXASC032Neck_translateZ.o" "Bip02FBXASC032Neck.tz";
connectAttr "Bip02FBXASC032Neck_rotateX.o" "Bip02FBXASC032Neck.rx";
connectAttr "Bip02FBXASC032Neck_rotateY.o" "Bip02FBXASC032Neck.ry";
connectAttr "Bip02FBXASC032Neck_rotateZ.o" "Bip02FBXASC032Neck.rz";
connectAttr "Bip02FBXASC032Neck.s" "Bip02FBXASC032Head.is";
connectAttr "Bip02FBXASC032Head_scaleX.o" "Bip02FBXASC032Head.sx";
connectAttr "Bip02FBXASC032Head_scaleY.o" "Bip02FBXASC032Head.sy";
connectAttr "Bip02FBXASC032Head_scaleZ.o" "Bip02FBXASC032Head.sz";
connectAttr "Bip02FBXASC032Head_translateX.o" "Bip02FBXASC032Head.tx";
connectAttr "Bip02FBXASC032Head_translateY.o" "Bip02FBXASC032Head.ty";
connectAttr "Bip02FBXASC032Head_translateZ.o" "Bip02FBXASC032Head.tz";
connectAttr "Bip02FBXASC032Head_rotateX.o" "Bip02FBXASC032Head.rx";
connectAttr "Bip02FBXASC032Head_rotateY.o" "Bip02FBXASC032Head.ry";
connectAttr "Bip02FBXASC032Head_rotateZ.o" "Bip02FBXASC032Head.rz";
connectAttr "Bip02FBXASC032Head.s" "Bip02FBXASC032HeadNub.is";
connectAttr "Bip02FBXASC032HeadNub_translateX.o" "Bip02FBXASC032HeadNub.tx";
connectAttr "Bip02FBXASC032HeadNub_translateY.o" "Bip02FBXASC032HeadNub.ty";
connectAttr "Bip02FBXASC032HeadNub_translateZ.o" "Bip02FBXASC032HeadNub.tz";
connectAttr "Bip02FBXASC032HeadNub_scaleX.o" "Bip02FBXASC032HeadNub.sx";
connectAttr "Bip02FBXASC032HeadNub_scaleY.o" "Bip02FBXASC032HeadNub.sy";
connectAttr "Bip02FBXASC032HeadNub_scaleZ.o" "Bip02FBXASC032HeadNub.sz";
connectAttr "Bip02FBXASC032HeadNub_rotateX.o" "Bip02FBXASC032HeadNub.rx";
connectAttr "Bip02FBXASC032HeadNub_rotateY.o" "Bip02FBXASC032HeadNub.ry";
connectAttr "Bip02FBXASC032HeadNub_rotateZ.o" "Bip02FBXASC032HeadNub.rz";
connectAttr "Bip02FBXASC032Neck.s" "Bip02FBXASC032LFBXASC032Clavicle.is";
connectAttr "Bip02FBXASC032LFBXASC032Clavicle_scaleX.o" "Bip02FBXASC032LFBXASC032Clavicle.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Clavicle_scaleY.o" "Bip02FBXASC032LFBXASC032Clavicle.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Clavicle_scaleZ.o" "Bip02FBXASC032LFBXASC032Clavicle.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Clavicle_translateX.o" "Bip02FBXASC032LFBXASC032Clavicle.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Clavicle_translateY.o" "Bip02FBXASC032LFBXASC032Clavicle.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Clavicle_translateZ.o" "Bip02FBXASC032LFBXASC032Clavicle.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Clavicle_rotateX.o" "Bip02FBXASC032LFBXASC032Clavicle.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Clavicle_rotateY.o" "Bip02FBXASC032LFBXASC032Clavicle.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Clavicle_rotateZ.o" "Bip02FBXASC032LFBXASC032Clavicle.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Clavicle.s" "Bip02FBXASC032LFBXASC032UpperArm.is"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm_scaleX.o" "Bip02FBXASC032LFBXASC032UpperArm.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm_scaleY.o" "Bip02FBXASC032LFBXASC032UpperArm.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm_scaleZ.o" "Bip02FBXASC032LFBXASC032UpperArm.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm_translateX.o" "Bip02FBXASC032LFBXASC032UpperArm.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm_translateY.o" "Bip02FBXASC032LFBXASC032UpperArm.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm_translateZ.o" "Bip02FBXASC032LFBXASC032UpperArm.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm_rotateX.o" "Bip02FBXASC032LFBXASC032UpperArm.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm_rotateY.o" "Bip02FBXASC032LFBXASC032UpperArm.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm_rotateZ.o" "Bip02FBXASC032LFBXASC032UpperArm.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032UpperArm.s" "Bip02FBXASC032LFBXASC032Forearm.is"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm_scaleX.o" "Bip02FBXASC032LFBXASC032Forearm.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm_scaleY.o" "Bip02FBXASC032LFBXASC032Forearm.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm_scaleZ.o" "Bip02FBXASC032LFBXASC032Forearm.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm_translateX.o" "Bip02FBXASC032LFBXASC032Forearm.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm_translateY.o" "Bip02FBXASC032LFBXASC032Forearm.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm_translateZ.o" "Bip02FBXASC032LFBXASC032Forearm.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm_rotateX.o" "Bip02FBXASC032LFBXASC032Forearm.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm_rotateY.o" "Bip02FBXASC032LFBXASC032Forearm.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm_rotateZ.o" "Bip02FBXASC032LFBXASC032Forearm.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Forearm.s" "Bip02FBXASC032LFBXASC032Hand.is"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand_scaleX.o" "Bip02FBXASC032LFBXASC032Hand.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand_scaleY.o" "Bip02FBXASC032LFBXASC032Hand.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand_scaleZ.o" "Bip02FBXASC032LFBXASC032Hand.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand_translateX.o" "Bip02FBXASC032LFBXASC032Hand.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand_translateY.o" "Bip02FBXASC032LFBXASC032Hand.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand_translateZ.o" "Bip02FBXASC032LFBXASC032Hand.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand_rotateX.o" "Bip02FBXASC032LFBXASC032Hand.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand_rotateY.o" "Bip02FBXASC032LFBXASC032Hand.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand_rotateZ.o" "Bip02FBXASC032LFBXASC032Hand.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Hand.s" "Bip02FBXASC032LFBXASC032Finger0.is"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0_scaleX.o" "Bip02FBXASC032LFBXASC032Finger0.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0_scaleY.o" "Bip02FBXASC032LFBXASC032Finger0.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0_scaleZ.o" "Bip02FBXASC032LFBXASC032Finger0.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0_translateX.o" "Bip02FBXASC032LFBXASC032Finger0.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0_translateY.o" "Bip02FBXASC032LFBXASC032Finger0.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0_translateZ.o" "Bip02FBXASC032LFBXASC032Finger0.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0_rotateX.o" "Bip02FBXASC032LFBXASC032Finger0.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0_rotateY.o" "Bip02FBXASC032LFBXASC032Finger0.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0_rotateZ.o" "Bip02FBXASC032LFBXASC032Finger0.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0.s" "Bip02FBXASC032LFBXASC032Finger0Nub.is"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0Nub_translateX.o" "Bip02FBXASC032LFBXASC032Finger0Nub.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0Nub_translateY.o" "Bip02FBXASC032LFBXASC032Finger0Nub.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0Nub_translateZ.o" "Bip02FBXASC032LFBXASC032Finger0Nub.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0Nub_scaleX.o" "Bip02FBXASC032LFBXASC032Finger0Nub.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0Nub_scaleY.o" "Bip02FBXASC032LFBXASC032Finger0Nub.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0Nub_scaleZ.o" "Bip02FBXASC032LFBXASC032Finger0Nub.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0Nub_rotateX.o" "Bip02FBXASC032LFBXASC032Finger0Nub.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0Nub_rotateY.o" "Bip02FBXASC032LFBXASC032Finger0Nub.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Finger0Nub_rotateZ.o" "Bip02FBXASC032LFBXASC032Finger0Nub.rz"
		;
connectAttr "Bip02FBXASC032Neck.s" "Bip02FBXASC032RFBXASC032Clavicle.is";
connectAttr "Bip02FBXASC032RFBXASC032Clavicle_scaleX.o" "Bip02FBXASC032RFBXASC032Clavicle.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Clavicle_scaleY.o" "Bip02FBXASC032RFBXASC032Clavicle.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Clavicle_scaleZ.o" "Bip02FBXASC032RFBXASC032Clavicle.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Clavicle_translateX.o" "Bip02FBXASC032RFBXASC032Clavicle.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Clavicle_translateY.o" "Bip02FBXASC032RFBXASC032Clavicle.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Clavicle_translateZ.o" "Bip02FBXASC032RFBXASC032Clavicle.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Clavicle_rotateX.o" "Bip02FBXASC032RFBXASC032Clavicle.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Clavicle_rotateY.o" "Bip02FBXASC032RFBXASC032Clavicle.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Clavicle_rotateZ.o" "Bip02FBXASC032RFBXASC032Clavicle.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Clavicle.s" "Bip02FBXASC032RFBXASC032UpperArm.is"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm_scaleX.o" "Bip02FBXASC032RFBXASC032UpperArm.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm_scaleY.o" "Bip02FBXASC032RFBXASC032UpperArm.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm_scaleZ.o" "Bip02FBXASC032RFBXASC032UpperArm.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm_translateX.o" "Bip02FBXASC032RFBXASC032UpperArm.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm_translateY.o" "Bip02FBXASC032RFBXASC032UpperArm.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm_translateZ.o" "Bip02FBXASC032RFBXASC032UpperArm.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm_rotateX.o" "Bip02FBXASC032RFBXASC032UpperArm.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm_rotateY.o" "Bip02FBXASC032RFBXASC032UpperArm.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm_rotateZ.o" "Bip02FBXASC032RFBXASC032UpperArm.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032UpperArm.s" "Bip02FBXASC032RFBXASC032Forearm.is"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm_scaleX.o" "Bip02FBXASC032RFBXASC032Forearm.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm_scaleY.o" "Bip02FBXASC032RFBXASC032Forearm.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm_scaleZ.o" "Bip02FBXASC032RFBXASC032Forearm.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm_translateX.o" "Bip02FBXASC032RFBXASC032Forearm.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm_translateY.o" "Bip02FBXASC032RFBXASC032Forearm.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm_translateZ.o" "Bip02FBXASC032RFBXASC032Forearm.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm_rotateX.o" "Bip02FBXASC032RFBXASC032Forearm.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm_rotateY.o" "Bip02FBXASC032RFBXASC032Forearm.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm_rotateZ.o" "Bip02FBXASC032RFBXASC032Forearm.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Forearm.s" "Bip02FBXASC032RFBXASC032Hand.is"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand_scaleX.o" "Bip02FBXASC032RFBXASC032Hand.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand_scaleY.o" "Bip02FBXASC032RFBXASC032Hand.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand_scaleZ.o" "Bip02FBXASC032RFBXASC032Hand.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand_translateX.o" "Bip02FBXASC032RFBXASC032Hand.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand_translateY.o" "Bip02FBXASC032RFBXASC032Hand.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand_translateZ.o" "Bip02FBXASC032RFBXASC032Hand.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand_rotateX.o" "Bip02FBXASC032RFBXASC032Hand.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand_rotateY.o" "Bip02FBXASC032RFBXASC032Hand.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand_rotateZ.o" "Bip02FBXASC032RFBXASC032Hand.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Hand.s" "Bip02FBXASC032RFBXASC032Finger0.is"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0_scaleX.o" "Bip02FBXASC032RFBXASC032Finger0.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0_scaleY.o" "Bip02FBXASC032RFBXASC032Finger0.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0_scaleZ.o" "Bip02FBXASC032RFBXASC032Finger0.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0_translateX.o" "Bip02FBXASC032RFBXASC032Finger0.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0_translateY.o" "Bip02FBXASC032RFBXASC032Finger0.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0_translateZ.o" "Bip02FBXASC032RFBXASC032Finger0.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0_rotateX.o" "Bip02FBXASC032RFBXASC032Finger0.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0_rotateY.o" "Bip02FBXASC032RFBXASC032Finger0.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0_rotateZ.o" "Bip02FBXASC032RFBXASC032Finger0.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0.s" "Bip02FBXASC032RFBXASC032Finger0Nub.is"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0Nub_translateX.o" "Bip02FBXASC032RFBXASC032Finger0Nub.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0Nub_translateY.o" "Bip02FBXASC032RFBXASC032Finger0Nub.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0Nub_translateZ.o" "Bip02FBXASC032RFBXASC032Finger0Nub.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0Nub_scaleX.o" "Bip02FBXASC032RFBXASC032Finger0Nub.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0Nub_scaleY.o" "Bip02FBXASC032RFBXASC032Finger0Nub.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0Nub_scaleZ.o" "Bip02FBXASC032RFBXASC032Finger0Nub.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0Nub_rotateX.o" "Bip02FBXASC032RFBXASC032Finger0Nub.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0Nub_rotateY.o" "Bip02FBXASC032RFBXASC032Finger0Nub.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Finger0Nub_rotateZ.o" "Bip02FBXASC032RFBXASC032Finger0Nub.rz"
		;
connectAttr "Bip02FBXASC032Spine.s" "Bip02FBXASC032LFBXASC032Thigh.is";
connectAttr "Bip02FBXASC032LFBXASC032Thigh_scaleX.o" "Bip02FBXASC032LFBXASC032Thigh.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Thigh_scaleY.o" "Bip02FBXASC032LFBXASC032Thigh.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Thigh_scaleZ.o" "Bip02FBXASC032LFBXASC032Thigh.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Thigh_translateX.o" "Bip02FBXASC032LFBXASC032Thigh.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Thigh_translateY.o" "Bip02FBXASC032LFBXASC032Thigh.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Thigh_translateZ.o" "Bip02FBXASC032LFBXASC032Thigh.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Thigh_rotateX.o" "Bip02FBXASC032LFBXASC032Thigh.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Thigh_rotateY.o" "Bip02FBXASC032LFBXASC032Thigh.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Thigh_rotateZ.o" "Bip02FBXASC032LFBXASC032Thigh.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Thigh.s" "Bip02FBXASC032LFBXASC032Calf.is";
connectAttr "Bip02FBXASC032LFBXASC032Calf_scaleX.o" "Bip02FBXASC032LFBXASC032Calf.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Calf_scaleY.o" "Bip02FBXASC032LFBXASC032Calf.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Calf_scaleZ.o" "Bip02FBXASC032LFBXASC032Calf.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Calf_translateX.o" "Bip02FBXASC032LFBXASC032Calf.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Calf_translateY.o" "Bip02FBXASC032LFBXASC032Calf.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Calf_translateZ.o" "Bip02FBXASC032LFBXASC032Calf.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Calf_rotateX.o" "Bip02FBXASC032LFBXASC032Calf.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Calf_rotateY.o" "Bip02FBXASC032LFBXASC032Calf.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Calf_rotateZ.o" "Bip02FBXASC032LFBXASC032Calf.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Calf.s" "Bip02FBXASC032LFBXASC032Foot.is";
connectAttr "Bip02FBXASC032LFBXASC032Foot_scaleX.o" "Bip02FBXASC032LFBXASC032Foot.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Foot_scaleY.o" "Bip02FBXASC032LFBXASC032Foot.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Foot_scaleZ.o" "Bip02FBXASC032LFBXASC032Foot.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Foot_translateX.o" "Bip02FBXASC032LFBXASC032Foot.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Foot_translateY.o" "Bip02FBXASC032LFBXASC032Foot.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Foot_translateZ.o" "Bip02FBXASC032LFBXASC032Foot.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Foot_rotateX.o" "Bip02FBXASC032LFBXASC032Foot.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Foot_rotateY.o" "Bip02FBXASC032LFBXASC032Foot.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Foot_rotateZ.o" "Bip02FBXASC032LFBXASC032Foot.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Foot.s" "Bip02FBXASC032LFBXASC032Toe0.is";
connectAttr "Bip02FBXASC032LFBXASC032Toe0_scaleX.o" "Bip02FBXASC032LFBXASC032Toe0.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0_scaleY.o" "Bip02FBXASC032LFBXASC032Toe0.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0_scaleZ.o" "Bip02FBXASC032LFBXASC032Toe0.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0_translateX.o" "Bip02FBXASC032LFBXASC032Toe0.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0_translateY.o" "Bip02FBXASC032LFBXASC032Toe0.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0_translateZ.o" "Bip02FBXASC032LFBXASC032Toe0.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0_rotateX.o" "Bip02FBXASC032LFBXASC032Toe0.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0_rotateY.o" "Bip02FBXASC032LFBXASC032Toe0.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0_rotateZ.o" "Bip02FBXASC032LFBXASC032Toe0.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0.s" "Bip02FBXASC032LFBXASC032Toe01.is";
connectAttr "Bip02FBXASC032LFBXASC032Toe01_scaleX.o" "Bip02FBXASC032LFBXASC032Toe01.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe01_scaleY.o" "Bip02FBXASC032LFBXASC032Toe01.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe01_scaleZ.o" "Bip02FBXASC032LFBXASC032Toe01.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe01_translateX.o" "Bip02FBXASC032LFBXASC032Toe01.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe01_translateY.o" "Bip02FBXASC032LFBXASC032Toe01.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe01_translateZ.o" "Bip02FBXASC032LFBXASC032Toe01.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe01_rotateX.o" "Bip02FBXASC032LFBXASC032Toe01.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe01_rotateY.o" "Bip02FBXASC032LFBXASC032Toe01.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe01_rotateZ.o" "Bip02FBXASC032LFBXASC032Toe01.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe01.s" "Bip02FBXASC032LFBXASC032Toe02.is"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02_scaleX.o" "Bip02FBXASC032LFBXASC032Toe02.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02_scaleY.o" "Bip02FBXASC032LFBXASC032Toe02.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02_scaleZ.o" "Bip02FBXASC032LFBXASC032Toe02.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02_translateX.o" "Bip02FBXASC032LFBXASC032Toe02.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02_translateY.o" "Bip02FBXASC032LFBXASC032Toe02.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02_translateZ.o" "Bip02FBXASC032LFBXASC032Toe02.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02_rotateX.o" "Bip02FBXASC032LFBXASC032Toe02.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02_rotateY.o" "Bip02FBXASC032LFBXASC032Toe02.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02_rotateZ.o" "Bip02FBXASC032LFBXASC032Toe02.rz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe02.s" "Bip02FBXASC032LFBXASC032Toe0Nub.is"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0Nub_translateX.o" "Bip02FBXASC032LFBXASC032Toe0Nub.tx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0Nub_translateY.o" "Bip02FBXASC032LFBXASC032Toe0Nub.ty"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0Nub_translateZ.o" "Bip02FBXASC032LFBXASC032Toe0Nub.tz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0Nub_scaleX.o" "Bip02FBXASC032LFBXASC032Toe0Nub.sx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0Nub_scaleY.o" "Bip02FBXASC032LFBXASC032Toe0Nub.sy"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0Nub_scaleZ.o" "Bip02FBXASC032LFBXASC032Toe0Nub.sz"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0Nub_rotateX.o" "Bip02FBXASC032LFBXASC032Toe0Nub.rx"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0Nub_rotateY.o" "Bip02FBXASC032LFBXASC032Toe0Nub.ry"
		;
connectAttr "Bip02FBXASC032LFBXASC032Toe0Nub_rotateZ.o" "Bip02FBXASC032LFBXASC032Toe0Nub.rz"
		;
connectAttr "Bip02FBXASC032Spine.s" "Bip02FBXASC032RFBXASC032Thigh.is";
connectAttr "Bip02FBXASC032RFBXASC032Thigh_scaleX.o" "Bip02FBXASC032RFBXASC032Thigh.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Thigh_scaleY.o" "Bip02FBXASC032RFBXASC032Thigh.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Thigh_scaleZ.o" "Bip02FBXASC032RFBXASC032Thigh.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Thigh_translateX.o" "Bip02FBXASC032RFBXASC032Thigh.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Thigh_translateY.o" "Bip02FBXASC032RFBXASC032Thigh.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Thigh_translateZ.o" "Bip02FBXASC032RFBXASC032Thigh.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Thigh_rotateX.o" "Bip02FBXASC032RFBXASC032Thigh.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Thigh_rotateY.o" "Bip02FBXASC032RFBXASC032Thigh.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Thigh_rotateZ.o" "Bip02FBXASC032RFBXASC032Thigh.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Thigh.s" "Bip02FBXASC032RFBXASC032Calf.is";
connectAttr "Bip02FBXASC032RFBXASC032Calf_scaleX.o" "Bip02FBXASC032RFBXASC032Calf.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Calf_scaleY.o" "Bip02FBXASC032RFBXASC032Calf.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Calf_scaleZ.o" "Bip02FBXASC032RFBXASC032Calf.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Calf_translateX.o" "Bip02FBXASC032RFBXASC032Calf.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Calf_translateY.o" "Bip02FBXASC032RFBXASC032Calf.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Calf_translateZ.o" "Bip02FBXASC032RFBXASC032Calf.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Calf_rotateX.o" "Bip02FBXASC032RFBXASC032Calf.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Calf_rotateY.o" "Bip02FBXASC032RFBXASC032Calf.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Calf_rotateZ.o" "Bip02FBXASC032RFBXASC032Calf.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Calf.s" "Bip02FBXASC032RFBXASC032Foot.is";
connectAttr "Bip02FBXASC032RFBXASC032Foot_scaleX.o" "Bip02FBXASC032RFBXASC032Foot.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Foot_scaleY.o" "Bip02FBXASC032RFBXASC032Foot.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Foot_scaleZ.o" "Bip02FBXASC032RFBXASC032Foot.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Foot_translateX.o" "Bip02FBXASC032RFBXASC032Foot.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Foot_translateY.o" "Bip02FBXASC032RFBXASC032Foot.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Foot_translateZ.o" "Bip02FBXASC032RFBXASC032Foot.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Foot_rotateX.o" "Bip02FBXASC032RFBXASC032Foot.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Foot_rotateY.o" "Bip02FBXASC032RFBXASC032Foot.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Foot_rotateZ.o" "Bip02FBXASC032RFBXASC032Foot.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Foot.s" "Bip02FBXASC032RFBXASC032Toe0.is";
connectAttr "Bip02FBXASC032RFBXASC032Toe0_scaleX.o" "Bip02FBXASC032RFBXASC032Toe0.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0_scaleY.o" "Bip02FBXASC032RFBXASC032Toe0.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0_scaleZ.o" "Bip02FBXASC032RFBXASC032Toe0.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0_translateX.o" "Bip02FBXASC032RFBXASC032Toe0.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0_translateY.o" "Bip02FBXASC032RFBXASC032Toe0.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0_translateZ.o" "Bip02FBXASC032RFBXASC032Toe0.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0_rotateX.o" "Bip02FBXASC032RFBXASC032Toe0.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0_rotateY.o" "Bip02FBXASC032RFBXASC032Toe0.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0_rotateZ.o" "Bip02FBXASC032RFBXASC032Toe0.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0.s" "Bip02FBXASC032RFBXASC032Toe01.is";
connectAttr "Bip02FBXASC032RFBXASC032Toe01_scaleX.o" "Bip02FBXASC032RFBXASC032Toe01.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe01_scaleY.o" "Bip02FBXASC032RFBXASC032Toe01.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe01_scaleZ.o" "Bip02FBXASC032RFBXASC032Toe01.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe01_translateX.o" "Bip02FBXASC032RFBXASC032Toe01.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe01_translateY.o" "Bip02FBXASC032RFBXASC032Toe01.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe01_translateZ.o" "Bip02FBXASC032RFBXASC032Toe01.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe01_rotateX.o" "Bip02FBXASC032RFBXASC032Toe01.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe01_rotateY.o" "Bip02FBXASC032RFBXASC032Toe01.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe01_rotateZ.o" "Bip02FBXASC032RFBXASC032Toe01.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe01.s" "Bip02FBXASC032RFBXASC032Toe02.is"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02_scaleX.o" "Bip02FBXASC032RFBXASC032Toe02.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02_scaleY.o" "Bip02FBXASC032RFBXASC032Toe02.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02_scaleZ.o" "Bip02FBXASC032RFBXASC032Toe02.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02_translateX.o" "Bip02FBXASC032RFBXASC032Toe02.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02_translateY.o" "Bip02FBXASC032RFBXASC032Toe02.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02_translateZ.o" "Bip02FBXASC032RFBXASC032Toe02.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02_rotateX.o" "Bip02FBXASC032RFBXASC032Toe02.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02_rotateY.o" "Bip02FBXASC032RFBXASC032Toe02.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02_rotateZ.o" "Bip02FBXASC032RFBXASC032Toe02.rz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe02.s" "Bip02FBXASC032RFBXASC032Toe0Nub.is"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0Nub_translateX.o" "Bip02FBXASC032RFBXASC032Toe0Nub.tx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0Nub_translateY.o" "Bip02FBXASC032RFBXASC032Toe0Nub.ty"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0Nub_translateZ.o" "Bip02FBXASC032RFBXASC032Toe0Nub.tz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0Nub_scaleX.o" "Bip02FBXASC032RFBXASC032Toe0Nub.sx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0Nub_scaleY.o" "Bip02FBXASC032RFBXASC032Toe0Nub.sy"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0Nub_scaleZ.o" "Bip02FBXASC032RFBXASC032Toe0Nub.sz"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0Nub_rotateX.o" "Bip02FBXASC032RFBXASC032Toe0Nub.rx"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0Nub_rotateY.o" "Bip02FBXASC032RFBXASC032Toe0Nub.ry"
		;
connectAttr "Bip02FBXASC032RFBXASC032Toe0Nub_rotateZ.o" "Bip02FBXASC032RFBXASC032Toe0Nub.rz"
		;
connectAttr "skinCluster3.og[0]" "BODYbShape.i";
connectAttr "skinCluster3GroupId.id" "BODYbShape.iog.og[0].gid";
connectAttr "skinCluster3Set.mwc" "BODYbShape.iog.og[0].gco";
connectAttr "groupId6.id" "BODYbShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "BODYbShape.iog.og[1].gco";
connectAttr "tweak3.vl[0].vt[0]" "BODYbShape.twl";
connectAttr "skinCluster2.og[0]" "HEADbShape.i";
connectAttr "skinCluster2GroupId.id" "HEADbShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "HEADbShape.iog.og[0].gco";
connectAttr "groupId4.id" "HEADbShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "HEADbShape.iog.og[1].gco";
connectAttr "tweak2.vl[0].vt[0]" "HEADbShape.twl";
connectAttr "skinCluster1.og[0]" "Ak47Shape.i";
connectAttr "skinCluster1GroupId.id" "Ak47Shape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "Ak47Shape.iog.og[0].gco";
connectAttr "groupId2.id" "Ak47Shape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "Ak47Shape.iog.og[1].gco";
connectAttr "tweak1.vl[0].vt[0]" "Ak47Shape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BODYbSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Ak47SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BODYbSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Ak47SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "MapFBXASC032FBXASC0353.oc" "bodyFBXASC032FBXASC0911FBXASC093.c";
connectAttr "bodyFBXASC032FBXASC0911FBXASC093.oc" "BODYbSG.ss";
connectAttr "BODYbShape.iog" "BODYbSG.dsm" -na;
connectAttr "HEADbShape.iog" "BODYbSG.dsm" -na;
connectAttr "BODYbSG.msg" "materialInfo1.sg";
connectAttr "bodyFBXASC032FBXASC0911FBXASC093.msg" "materialInfo1.m";
connectAttr "MapFBXASC032FBXASC0353.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "MapFBXASC032FBXASC0353.uv";
connectAttr "place2dTexture1.ofu" "MapFBXASC032FBXASC0353.ofu";
connectAttr "place2dTexture1.ofv" "MapFBXASC032FBXASC0353.ofv";
connectAttr "place2dTexture1.rf" "MapFBXASC032FBXASC0353.rf";
connectAttr "place2dTexture1.reu" "MapFBXASC032FBXASC0353.reu";
connectAttr "place2dTexture1.rev" "MapFBXASC032FBXASC0353.rev";
connectAttr "place2dTexture1.vt1" "MapFBXASC032FBXASC0353.vt1";
connectAttr "place2dTexture1.vt2" "MapFBXASC032FBXASC0353.vt2";
connectAttr "place2dTexture1.vt3" "MapFBXASC032FBXASC0353.vt3";
connectAttr "place2dTexture1.vc1" "MapFBXASC032FBXASC0353.vc1";
connectAttr "place2dTexture1.ofs" "MapFBXASC032FBXASC0353.fs";
connectAttr "MapFBXASC032FBXASC0355.oc" "FBXASC0482FBXASC032FBXASC045FBXASC032DefaultFBXASC032FBXASC0912FBXASC093.c"
		;
connectAttr "FBXASC0482FBXASC032FBXASC045FBXASC032DefaultFBXASC032FBXASC0912FBXASC093.oc" "Ak47SG.ss"
		;
connectAttr "Ak47Shape.iog" "Ak47SG.dsm" -na;
connectAttr "Ak47SG.msg" "materialInfo2.sg";
connectAttr "FBXASC0482FBXASC032FBXASC045FBXASC032DefaultFBXASC032FBXASC0912FBXASC093.msg" "materialInfo2.m"
		;
connectAttr "MapFBXASC032FBXASC0355.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture2.o" "MapFBXASC032FBXASC0355.uv";
connectAttr "place2dTexture2.ofu" "MapFBXASC032FBXASC0355.ofu";
connectAttr "place2dTexture2.ofv" "MapFBXASC032FBXASC0355.ofv";
connectAttr "place2dTexture2.rf" "MapFBXASC032FBXASC0355.rf";
connectAttr "place2dTexture2.reu" "MapFBXASC032FBXASC0355.reu";
connectAttr "place2dTexture2.rev" "MapFBXASC032FBXASC0355.rev";
connectAttr "place2dTexture2.vt1" "MapFBXASC032FBXASC0355.vt1";
connectAttr "place2dTexture2.vt2" "MapFBXASC032FBXASC0355.vt2";
connectAttr "place2dTexture2.vt3" "MapFBXASC032FBXASC0355.vt3";
connectAttr "place2dTexture2.vc1" "MapFBXASC032FBXASC0355.vc1";
connectAttr "place2dTexture2.ofs" "MapFBXASC032FBXASC0355.fs";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Bip02FBXASC032RFBXASC032Hand.wm" "skinCluster1.ma[0]";
connectAttr "Bip02FBXASC032RFBXASC032Hand.liw" "skinCluster1.lw[0]";
connectAttr "Bip02FBXASC032RFBXASC032Hand.obcc" "skinCluster1.ifcl[0]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "Ak47Shape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "Ak47Shape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "Ak47ShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "BdBip.msg" "bindPose1.m[0]";
connectAttr "Bip02FBXASC032Pelvis.msg" "bindPose1.m[1]";
connectAttr "Bip02FBXASC032Spine.msg" "bindPose1.m[2]";
connectAttr "Bip02FBXASC032Spine1.msg" "bindPose1.m[3]";
connectAttr "Bip02FBXASC032Spine2.msg" "bindPose1.m[4]";
connectAttr "Bip02FBXASC032Spine3.msg" "bindPose1.m[5]";
connectAttr "Bip02FBXASC032Neck.msg" "bindPose1.m[6]";
connectAttr "Bip02FBXASC032RFBXASC032Clavicle.msg" "bindPose1.m[7]";
connectAttr "Bip02FBXASC032RFBXASC032UpperArm.msg" "bindPose1.m[8]";
connectAttr "Bip02FBXASC032RFBXASC032Forearm.msg" "bindPose1.m[9]";
connectAttr "Bip02FBXASC032RFBXASC032Hand.msg" "bindPose1.m[10]";
connectAttr "Bip02FBXASC032Head.msg" "bindPose1.m[11]";
connectAttr "Bip02FBXASC032LFBXASC032Clavicle.msg" "bindPose1.m[12]";
connectAttr "Bip02FBXASC032LFBXASC032UpperArm.msg" "bindPose1.m[13]";
connectAttr "Bip02FBXASC032LFBXASC032Forearm.msg" "bindPose1.m[14]";
connectAttr "Bip02FBXASC032LFBXASC032Hand.msg" "bindPose1.m[15]";
connectAttr "Bip02FBXASC032LFBXASC032Thigh.msg" "bindPose1.m[16]";
connectAttr "Bip02FBXASC032LFBXASC032Calf.msg" "bindPose1.m[17]";
connectAttr "Bip02FBXASC032LFBXASC032Foot.msg" "bindPose1.m[18]";
connectAttr "Bip02FBXASC032RFBXASC032Thigh.msg" "bindPose1.m[19]";
connectAttr "Bip02FBXASC032RFBXASC032Calf.msg" "bindPose1.m[20]";
connectAttr "Bip02FBXASC032RFBXASC032Foot.msg" "bindPose1.m[21]";
connectAttr "Bip02FBXASC032RFBXASC032Finger0.msg" "bindPose1.m[22]";
connectAttr "Bip02FBXASC032LFBXASC032Finger0.msg" "bindPose1.m[23]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[6]" "bindPose1.p[11]";
connectAttr "bindPose1.m[6]" "bindPose1.p[12]";
connectAttr "Bip02FBXASC032LFBXASC032Clavicle.msg" "bindPose1.p[13]";
connectAttr "Bip02FBXASC032LFBXASC032UpperArm.msg" "bindPose1.p[14]";
connectAttr "Bip02FBXASC032LFBXASC032Forearm.msg" "bindPose1.p[15]";
connectAttr "bindPose1.m[2]" "bindPose1.p[16]";
connectAttr "Bip02FBXASC032LFBXASC032Thigh.msg" "bindPose1.p[17]";
connectAttr "Bip02FBXASC032LFBXASC032Calf.msg" "bindPose1.p[18]";
connectAttr "bindPose1.m[2]" "bindPose1.p[19]";
connectAttr "Bip02FBXASC032RFBXASC032Thigh.msg" "bindPose1.p[20]";
connectAttr "Bip02FBXASC032RFBXASC032Calf.msg" "bindPose1.p[21]";
connectAttr "bindPose1.m[10]" "bindPose1.p[22]";
connectAttr "bindPose1.m[15]" "bindPose1.p[23]";
connectAttr "BdBip.bps" "bindPose1.wm[0]";
connectAttr "Bip02FBXASC032Pelvis.bps" "bindPose1.wm[1]";
connectAttr "Bip02FBXASC032Spine.bps" "bindPose1.wm[2]";
connectAttr "Bip02FBXASC032Spine1.bps" "bindPose1.wm[3]";
connectAttr "Bip02FBXASC032Spine2.bps" "bindPose1.wm[4]";
connectAttr "Bip02FBXASC032Spine3.bps" "bindPose1.wm[5]";
connectAttr "Bip02FBXASC032Neck.bps" "bindPose1.wm[6]";
connectAttr "Bip02FBXASC032RFBXASC032Clavicle.bps" "bindPose1.wm[7]";
connectAttr "Bip02FBXASC032RFBXASC032UpperArm.bps" "bindPose1.wm[8]";
connectAttr "Bip02FBXASC032RFBXASC032Forearm.bps" "bindPose1.wm[9]";
connectAttr "Bip02FBXASC032RFBXASC032Hand.bps" "bindPose1.wm[10]";
connectAttr "Bip02FBXASC032Head.bps" "bindPose1.wm[11]";
connectAttr "Bip02FBXASC032LFBXASC032Clavicle.bps" "bindPose1.wm[12]";
connectAttr "Bip02FBXASC032LFBXASC032UpperArm.bps" "bindPose1.wm[13]";
connectAttr "Bip02FBXASC032LFBXASC032Forearm.bps" "bindPose1.wm[14]";
connectAttr "Bip02FBXASC032LFBXASC032Hand.bps" "bindPose1.wm[15]";
connectAttr "Bip02FBXASC032LFBXASC032Thigh.bps" "bindPose1.wm[16]";
connectAttr "Bip02FBXASC032LFBXASC032Calf.bps" "bindPose1.wm[17]";
connectAttr "Bip02FBXASC032LFBXASC032Foot.bps" "bindPose1.wm[18]";
connectAttr "Bip02FBXASC032RFBXASC032Thigh.bps" "bindPose1.wm[19]";
connectAttr "Bip02FBXASC032RFBXASC032Calf.bps" "bindPose1.wm[20]";
connectAttr "Bip02FBXASC032RFBXASC032Foot.bps" "bindPose1.wm[21]";
connectAttr "Bip02FBXASC032RFBXASC032Finger0.bps" "bindPose1.wm[22]";
connectAttr "Bip02FBXASC032LFBXASC032Finger0.bps" "bindPose1.wm[23]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "Bip02FBXASC032Head.wm" "skinCluster2.ma[0]";
connectAttr "Bip02FBXASC032Neck.wm" "skinCluster2.ma[1]";
connectAttr "Bip02FBXASC032Head.liw" "skinCluster2.lw[0]";
connectAttr "Bip02FBXASC032Neck.liw" "skinCluster2.lw[1]";
connectAttr "Bip02FBXASC032Head.obcc" "skinCluster2.ifcl[0]";
connectAttr "Bip02FBXASC032Neck.obcc" "skinCluster2.ifcl[1]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "HEADbShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "HEADbShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "HEADbShapeOrig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "Bip02FBXASC032LFBXASC032UpperArm.wm" "skinCluster3.ma[0]";
connectAttr "Bip02FBXASC032LFBXASC032Forearm.wm" "skinCluster3.ma[1]";
connectAttr "Bip02FBXASC032Spine2.wm" "skinCluster3.ma[2]";
connectAttr "Bip02FBXASC032Spine3.wm" "skinCluster3.ma[3]";
connectAttr "Bip02FBXASC032LFBXASC032Clavicle.wm" "skinCluster3.ma[4]";
connectAttr "Bip02FBXASC032Spine1.wm" "skinCluster3.ma[5]";
connectAttr "Bip02FBXASC032LFBXASC032Hand.wm" "skinCluster3.ma[6]";
connectAttr "Bip02FBXASC032RFBXASC032UpperArm.wm" "skinCluster3.ma[7]";
connectAttr "Bip02FBXASC032RFBXASC032Forearm.wm" "skinCluster3.ma[8]";
connectAttr "Bip02FBXASC032RFBXASC032Clavicle.wm" "skinCluster3.ma[9]";
connectAttr "Bip02FBXASC032RFBXASC032Hand.wm" "skinCluster3.ma[10]";
connectAttr "Bip02FBXASC032LFBXASC032Calf.wm" "skinCluster3.ma[11]";
connectAttr "Bip02FBXASC032LFBXASC032Foot.wm" "skinCluster3.ma[12]";
connectAttr "Bip02FBXASC032RFBXASC032Foot.wm" "skinCluster3.ma[13]";
connectAttr "Bip02FBXASC032RFBXASC032Calf.wm" "skinCluster3.ma[14]";
connectAttr "Bip02FBXASC032RFBXASC032Finger0.wm" "skinCluster3.ma[15]";
connectAttr "Bip02FBXASC032LFBXASC032Finger0.wm" "skinCluster3.ma[16]";
connectAttr "Bip02FBXASC032LFBXASC032Thigh.wm" "skinCluster3.ma[17]";
connectAttr "Bip02FBXASC032RFBXASC032Thigh.wm" "skinCluster3.ma[18]";
connectAttr "BdBip.wm" "skinCluster3.ma[19]";
connectAttr "Bip02FBXASC032Pelvis.wm" "skinCluster3.ma[20]";
connectAttr "Bip02FBXASC032Spine.wm" "skinCluster3.ma[21]";
connectAttr "Bip02FBXASC032Neck.wm" "skinCluster3.ma[22]";
connectAttr "Bip02FBXASC032LFBXASC032UpperArm.liw" "skinCluster3.lw[0]";
connectAttr "Bip02FBXASC032LFBXASC032Forearm.liw" "skinCluster3.lw[1]";
connectAttr "Bip02FBXASC032Spine2.liw" "skinCluster3.lw[2]";
connectAttr "Bip02FBXASC032Spine3.liw" "skinCluster3.lw[3]";
connectAttr "Bip02FBXASC032LFBXASC032Clavicle.liw" "skinCluster3.lw[4]";
connectAttr "Bip02FBXASC032Spine1.liw" "skinCluster3.lw[5]";
connectAttr "Bip02FBXASC032LFBXASC032Hand.liw" "skinCluster3.lw[6]";
connectAttr "Bip02FBXASC032RFBXASC032UpperArm.liw" "skinCluster3.lw[7]";
connectAttr "Bip02FBXASC032RFBXASC032Forearm.liw" "skinCluster3.lw[8]";
connectAttr "Bip02FBXASC032RFBXASC032Clavicle.liw" "skinCluster3.lw[9]";
connectAttr "Bip02FBXASC032RFBXASC032Hand.liw" "skinCluster3.lw[10]";
connectAttr "Bip02FBXASC032LFBXASC032Calf.liw" "skinCluster3.lw[11]";
connectAttr "Bip02FBXASC032LFBXASC032Foot.liw" "skinCluster3.lw[12]";
connectAttr "Bip02FBXASC032RFBXASC032Foot.liw" "skinCluster3.lw[13]";
connectAttr "Bip02FBXASC032RFBXASC032Calf.liw" "skinCluster3.lw[14]";
connectAttr "Bip02FBXASC032RFBXASC032Finger0.liw" "skinCluster3.lw[15]";
connectAttr "Bip02FBXASC032LFBXASC032Finger0.liw" "skinCluster3.lw[16]";
connectAttr "Bip02FBXASC032LFBXASC032Thigh.liw" "skinCluster3.lw[17]";
connectAttr "Bip02FBXASC032RFBXASC032Thigh.liw" "skinCluster3.lw[18]";
connectAttr "BdBip.liw" "skinCluster3.lw[19]";
connectAttr "Bip02FBXASC032Pelvis.liw" "skinCluster3.lw[20]";
connectAttr "Bip02FBXASC032Spine.liw" "skinCluster3.lw[21]";
connectAttr "Bip02FBXASC032Neck.liw" "skinCluster3.lw[22]";
connectAttr "Bip02FBXASC032LFBXASC032UpperArm.obcc" "skinCluster3.ifcl[0]";
connectAttr "Bip02FBXASC032LFBXASC032Forearm.obcc" "skinCluster3.ifcl[1]";
connectAttr "Bip02FBXASC032Spine2.obcc" "skinCluster3.ifcl[2]";
connectAttr "Bip02FBXASC032Spine3.obcc" "skinCluster3.ifcl[3]";
connectAttr "Bip02FBXASC032LFBXASC032Clavicle.obcc" "skinCluster3.ifcl[4]";
connectAttr "Bip02FBXASC032Spine1.obcc" "skinCluster3.ifcl[5]";
connectAttr "Bip02FBXASC032LFBXASC032Hand.obcc" "skinCluster3.ifcl[6]";
connectAttr "Bip02FBXASC032RFBXASC032UpperArm.obcc" "skinCluster3.ifcl[7]";
connectAttr "Bip02FBXASC032RFBXASC032Forearm.obcc" "skinCluster3.ifcl[8]";
connectAttr "Bip02FBXASC032RFBXASC032Clavicle.obcc" "skinCluster3.ifcl[9]";
connectAttr "Bip02FBXASC032RFBXASC032Hand.obcc" "skinCluster3.ifcl[10]";
connectAttr "Bip02FBXASC032LFBXASC032Calf.obcc" "skinCluster3.ifcl[11]";
connectAttr "Bip02FBXASC032LFBXASC032Foot.obcc" "skinCluster3.ifcl[12]";
connectAttr "Bip02FBXASC032RFBXASC032Foot.obcc" "skinCluster3.ifcl[13]";
connectAttr "Bip02FBXASC032RFBXASC032Calf.obcc" "skinCluster3.ifcl[14]";
connectAttr "Bip02FBXASC032RFBXASC032Finger0.obcc" "skinCluster3.ifcl[15]";
connectAttr "Bip02FBXASC032LFBXASC032Finger0.obcc" "skinCluster3.ifcl[16]";
connectAttr "Bip02FBXASC032LFBXASC032Thigh.obcc" "skinCluster3.ifcl[17]";
connectAttr "Bip02FBXASC032RFBXASC032Thigh.obcc" "skinCluster3.ifcl[18]";
connectAttr "BdBip.obcc" "skinCluster3.ifcl[19]";
connectAttr "Bip02FBXASC032Pelvis.obcc" "skinCluster3.ifcl[20]";
connectAttr "Bip02FBXASC032Spine.obcc" "skinCluster3.ifcl[21]";
connectAttr "Bip02FBXASC032Neck.obcc" "skinCluster3.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "BODYbShape.iog.og[0]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "BODYbShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "BODYbShapeOrig.w" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "BODYbSG.pa" ":renderPartition.st" -na;
connectAttr "Ak47SG.pa" ":renderPartition.st" -na;
connectAttr "bodyFBXASC032FBXASC0911FBXASC093.msg" ":defaultShaderList1.s" -na;
connectAttr "FBXASC0482FBXASC032FBXASC045FBXASC032DefaultFBXASC032FBXASC0912FBXASC093.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "MapFBXASC032FBXASC0353.msg" ":defaultTextureList1.tx" -na;
connectAttr "MapFBXASC032FBXASC0355.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"MapFBXASC032FBXASC0353\" \"fileTextureName\" \"C:/Users/William/Desktop/UAV Model/NotReady/Characters/Terrorist/Source/Terrorist_textures/JPEG/bad_guy.jpg\" 3397153578 \"C:/Users/William/Desktop/UAV Model/NotReady/Characters/Terrorist/Source/Terrorist_textures/JPEG/bad_guy.jpg\" \"sourceImages\"\n1\n\"MapFBXASC032FBXASC0355\" \"fileTextureName\" \"C:/Users/William/Desktop/UAV Model/NotReady/Characters/Terrorist/Source/Terrorist_textures/JPEG/ak-47.jpg\" 2743205693 \"C:/Users/William/Desktop/UAV Model/NotReady/Characters/Terrorist/Source/Terrorist_textures/JPEG/ak-47.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of terrorist.ma
