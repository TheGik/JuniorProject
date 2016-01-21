//Maya ASCII 2016 scene
//Name: Cloud2.ma
//Last modified: Sun, Jan 17, 2016 06:41:13 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.2 ";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "391A6CFA-42BC-2FDA-5F6D-6F812862E2F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 44.606699870131322 -2.7284791797720698 90.102520191393396 ;
	setAttr ".r" -type "double3" 362.06164726773966 -1413.7999999997323 -1.1077337047526125e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E8E402FE-4B50-570B-49C8-CFB163CDF0FA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 1;
	setAttr ".fcp" 1000;
	setAttr ".fd" 0.05;
	setAttr ".coi" 100.80389211181117;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 12.999999999999545 89.791751824015364 -28.606913569223153 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "25CEA57B-4D3B-B04D-E373-B0B3C1BDB728";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.0293642841506765 1124.8576426321304 2.2964440737698692e-013 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CCF15A4E-4594-9BF5-766D-E596A0927590";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 170.64487741291191;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B5CC9E2C-4969-395D-49C2-BABC922E7EA2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.594748023778694 12.580708861548079 73.008389852966346 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0321D220-438B-D9CE-AF21-B8AB19FA45AF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.000999999999999;
	setAttr ".ow" 239.91132498739881;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "DBEDD349-41BA-95C7-38CB-C88D4B704C5A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.001 63.737274016349573 0.43121355457755955 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4EAA74FF-4495-7124-1CFB-2E8CF0F9B3C6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 69.581414517265742;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "back";
	rename -uid "2C28351D-48ED-8DC6-EBC0-65AE44602353";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.0144856521503449 61.652102065334894 -124.08598860256014 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "7A5E2960-44D1-A3A2-35A5-E0978EF2AC34";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 124.08598860256014;
	setAttr ".ow" 175.17856073082359;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
createNode transform -n "Cloud2";
	rename -uid "49FAA870-4113-30D2-0673-13B0A9B91BC6";
	setAttr ".rp" -type "double3" 0.13 0.57050476074218748 -0.2860691833496094 ;
	setAttr ".sp" -type "double3" 0.13 0.57050476074218748 -0.2860691833496094 ;
createNode mesh -n "Cloud2Shape" -p "Cloud2";
	rename -uid "DE3FCA19-4170-7617-4E23-9E98722D9CFB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:239]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 210 ".uvst[0].uvsp[0:209]" -type "float2" 0 0.2 0.15000001
		 0.2 0.25 0.2 0.32500002 0 0.57499999 0 1.000000119209 0.2 0.45000005 0.2 0.6500001
		 0.2 0.90000015 0.2 0 0.40000004 0.75000012 0.30000001 1.000000119209 0.40000004 0.35000002
		 0.70000011 0.50000006 0.50000006 0.6500001 0.60000008 0.85000014 0.50000006 0 0.50000006
		 0.15000001 0.50000006 0.85000014 0.70000011 1.000000119209 0.50000006 0 0.60000008
		 0.15000001 0.70000011 0.55000007 0.80000013 1.000000119209 0.60000008 0 0.70000011
		 1.000000119209 0.70000011 0 0.80000013 0.97500002 1 1.000000119209 0.80000013 0.175
		 1 0.375 1 0.125 0 0.22500001 0 0.92500001 0 0.97500002 0 0 0.2 0.125 0 0.15000001
		 0.2 0.22500001 0 0.25 0.2 0.32500002 0 0.45000005 0.2 0.57499999 0 0.6500001 0.2
		 0.97500002 0 1.000000119209 0.2 0.90000015 0.2 0 0.40000004 0.92500001 0 0.75000012
		 0.30000001 1.000000119209 0.40000004 0.35000002 0.70000011 0.50000006 0.50000006
		 0.6500001 0.60000008 0.85000014 0.50000006 0 0.50000006 0.15000001 0.50000006 0.85000014
		 0.70000011 1.000000119209 0.50000006 0 0.60000008 0.55000007 0.80000013 1.000000119209
		 0.60000008 0 0.70000011 0.15000001 0.70000011 1.000000119209 0.70000011 0 0.80000013
		 0.97500002 1 1.000000119209 0.80000013 0.175 1 0.375 1 0 0.2 0.125 0 0.15000001 0.2
		 0.22500001 0 0.25 0.2 0.32500002 0 0.45000005 0.2 0.57499999 0 0.6500001 0.2 0.97500002
		 0 1.000000119209 0.2 0.90000015 0.2 0 0.40000004 0.92500001 0 0.75000012 0.30000001
		 1.000000119209 0.40000004 0.35000002 0.70000011 0.50000006 0.50000006 0.6500001 0.60000008
		 0.85000014 0.50000006 0 0.50000006 0.15000001 0.50000006 0.85000014 0.70000011 1.000000119209
		 0.50000006 0 0.60000008 0.55000007 0.80000013 1.000000119209 0.60000008 0 0.70000011
		 0.15000001 0.70000011 1.000000119209 0.70000011 0 0.80000013 0.97500002 1 1.000000119209
		 0.80000013 0.175 1 0.375 1 0 0.2 0.125 0 0.15000001 0.2 0.22500001 0 0.25 0.2 0.32500002
		 0 0.45000005 0.2 0.57499999 0 0.6500001 0.2 0.97500002 0 1.000000119209 0.2 0.90000015
		 0.2 0 0.40000004 0.92500001 0 0.75000012 0.30000001 1.000000119209 0.40000004 0.35000002
		 0.70000011 0.50000006 0.50000006 0.6500001 0.60000008 0.85000014 0.50000006 0 0.50000006
		 0.15000001 0.50000006 0.85000014 0.70000011 1.000000119209 0.50000006 0 0.60000008
		 0.55000007 0.80000013 1.000000119209 0.60000008 0 0.70000011 0.15000001 0.70000011
		 1.000000119209 0.70000011 0 0.80000013 0.97500002 1 1.000000119209 0.80000013 0.175
		 1 0.375 1 0 0.2 0.125 0 0.15000001 0.2 0.22500001 0 0.25 0.2 0.32500002 0 0.45000005
		 0.2 0.57499999 0 0.6500001 0.2 0.97500002 0 1.000000119209 0.2 0.90000015 0.2 0 0.40000004
		 0.92500001 0 0.75000012 0.30000001 1.000000119209 0.40000004 0.35000002 0.70000011
		 0.50000006 0.50000006 0.6500001 0.60000008 0.85000014 0.50000006 0 0.50000006 0.15000001
		 0.50000006 0.85000014 0.70000011 1.000000119209 0.50000006 0 0.60000008 0.55000007
		 0.80000013 1.000000119209 0.60000008 0 0.70000011 0.15000001 0.70000011 1.000000119209
		 0.70000011 0 0.80000013 0.97500002 1 1.000000119209 0.80000013 0.175 1 0.375 1 0
		 0.2 0.125 0 0.15000001 0.2 0.22500001 0 0.25 0.2 0.32500002 0 0.45000005 0.2 0.57499999
		 0 0.6500001 0.2 0.97500002 0 1.000000119209 0.2 0.90000015 0.2 0 0.40000004 0.92500001
		 0 0.75000012 0.30000001 1.000000119209 0.40000004 0.35000002 0.70000011 0.50000006
		 0.50000006 0.6500001 0.60000008 0.85000014 0.50000006 0 0.50000006 0.15000001 0.50000006
		 0.85000014 0.70000011 1.000000119209 0.50000006 0 0.60000008 0.55000007 0.80000013
		 1.000000119209 0.60000008 0 0.70000011 0.15000001 0.70000011 1.000000119209 0.70000011
		 0 0.80000013 0.97500002 1 1.000000119209 0.80000013 0.175 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 132 ".pt[0:131]" -type "float3"  76.591148 -20.335264 0.082758397 
		76.794533 -20.335264 0.26626155 76.990326 -20.335264 0.26626155 76.892426 -20.242399 
		-0.0055626645 77.209221 -20.335264 -0.0055626645 76.990326 -20.335264 -0.27738678 
		76.591148 -20.335264 -0.093883649 76.404938 -20.578392 0.13734381 76.75769 -20.442839 
		-0.37969649 77.245178 -21.014465 0.22566476 77.404999 -20.728653 -0.15582336 77.050819 
		-20.878914 -0.44538331 76.456413 -20.728653 -0.29137546 76.725883 -20.728653 0.45689225 
		76.53968 -21.014465 -0.23679006 76.379852 -20.728653 0.1446981 76.75769 -21.014465 
		0.36857125 77.148712 -21.122038 -0.1735592 76.404938 -20.878914 0.13734381 76.477753 
		-21.014465 0.11600082 76.892426 -21.214907 -0.0055626645 76.591148 -21.122038 0.082758397 
		75.953987 -20.304094 0.24146937 76.105263 -20.146019 0.40630382 76.249413 -20.014599 
		0.38956156 76.112251 -20.044264 0.12048513 76.408333 -19.899586 0.10090883 76.244919 
		-20.07844 -0.15030664 75.95253 -20.324837 0.066055588 75.98185 -20.600611 0.3312687 
		76.145576 -20.325336 -0.22330837 76.896286 -20.345379 0.38240486 76.817413 -20.073719 
		-0.033221949 76.655914 -20.455435 -0.27832422 76.117867 -20.726379 -0.086713515 76.322464 
		-20.457624 0.63330728 76.373016 -20.873249 -0.016504593 76.065109 -20.726557 0.35287425 
		76.538544 -20.655823 0.56600451 76.894745 -20.53574 0.0029091442 76.185188 -20.820551 
		0.35558274 76.330338 -20.873394 0.3391293 76.770271 -20.75601 0.1991671 76.486343 
		-20.87991 0.3051244 77.03669 -20.327702 0.2375043 77.141388 -20.2992 0.48902938 77.291367 
		-20.206766 0.57443827 77.238258 -20.078568 0.30454966 77.534729 -20.003393 0.42877555 
		77.442734 -20.006714 0.09213125 77.085869 -20.262701 0.080793291 77.019707 -20.630457 
		0.16812858 77.355354 -20.165068 -0.11629936 77.891411 -20.615578 0.54743034 77.95446 
		-20.170788 0.32170254 77.85083 -20.35182 -0.11229584 77.265564 -20.568764 -0.21236902 
		77.263649 -20.716887 0.56902564 77.479752 -20.778486 -0.17060989 77.08551 -20.765373 
		0.14110537 77.478195 -20.898321 0.46155155 77.990997 -20.600386 0.13498959 77.193825 
		-20.871189 0.12292212 77.334084 -20.937546 0.11535731 77.801712 -20.857597 0.15825842 
		77.492531 -20.957949 0.11915221 76.198639 -20.481157 0.054200493 76.326599 -20.481157 
		0.16964912 76.449768 -20.481157 0.16964912 76.388191 -20.422731 -0.001365551 76.587494 
		-20.481157 -0.001365551 76.449768 -20.481157 -0.17238018 76.198639 -20.481157 -0.056931548 
		76.081497 -20.634119 0.088542201 76.303421 -20.548838 -0.23674704 76.610115 -20.908466 
		0.14410818 76.710663 -20.728653 -0.095900118 76.487839 -20.823187 -0.27807301 76.113869 
		-20.728653 -0.18118097 76.283409 -20.728653 0.28958201 76.16626 -20.908466 -0.14683926 
		76.065704 -20.728653 0.093169048 76.303421 -20.908466 0.23401599 76.549431 -20.976147 
		-0.10705839 76.081497 -20.823187 0.088542201 76.127296 -20.908466 0.075114548 76.388191 
		-21.034573 -0.001365551 76.198639 -20.976147 0.054200493 77.780281 -20.392099 0.25992057 
		77.908249 -20.392099 0.37536925 78.031425 -20.392099 0.37536925 77.969841 -20.333673 
		0.20435454 78.169144 -20.392099 0.20435454 78.031425 -20.392099 0.033339906 77.780281 
		-20.392099 0.14878854 77.663139 -20.545061 0.29426232 77.885071 -20.45978 -0.031026931 
		78.191765 -20.819408 0.34982827 78.292313 -20.639595 0.10981999 78.069489 -20.734129 
		-0.072352916 77.695526 -20.639595 0.024539141 77.865059 -20.639595 0.49530208 77.74791 
		-20.819408 0.058880821 77.647354 -20.639595 0.29888913 77.885071 -20.819408 0.43973601 
		78.131073 -20.887091 0.098661721 77.663139 -20.734129 0.29426232 77.708946 -20.819408 
		0.28083465 77.969841 -20.945515 0.20435454 77.780281 -20.887091 0.25992057 78.198944 
		-20.04884 0.20388849 78.193596 -20.107288 0.041846875 78.110397 -20.12006 -0.048071537 
		78.04496 -19.993324 0.078848749 77.897224 -20.06741 -0.046941761 77.870125 -19.986206 
		0.15525278 78.12088 -20.005348 0.26995254 78.267929 -20.189999 0.32056984 77.908615 
		-20.007727 0.32317868 77.888397 -20.517412 -0.0058469046 77.692162 -20.269491 0.0027923693 
		77.693535 -20.261534 0.30562934 78.035408 -20.17424 0.48915124 78.251572 -20.376051 
		0.08553683 77.983856 -20.357533 0.4911257 78.260666 -20.276613 0.3612189 78.158737 
		-20.520802 0.16459477 77.737793 -20.474712 0.21058626 78.225571 -20.362879 0.38432431 
		78.166092 -20.440353 0.38762584 77.907867 -20.55278 0.28516227 78.088036 -20.50145 
		0.37079963;
	setAttr -s 132 ".vt[0:131]"  -74.84366608 20.22994423 -0.33471793 -75.66628265 20.22994423 -1.076900125
		 -76.45813751 20.22994423 -1.076900125 -76.062210083 19.85434341 0.022498302 -77.34346008 20.22994423 0.022498302
		 -76.45813751 20.22994423 1.12189639 -74.84366608 20.22994423 0.37971425 -74.090568542 21.213274 -0.55548972
		 -75.51725769 20.66503143 1.53569019 -77.48889923 22.97698212 -0.9127056 -78.13531494 21.82100677 0.63023067
		 -76.70283508 22.42873764 1.80136168 -74.29872131 21.82100677 1.17847371 -75.38861084 21.82100677 -1.84790981
		 -74.63552094 22.97698212 0.9577021 -73.9890976 21.82100677 -0.58523428 -75.51725769 22.97698212 -1.49069369
		 -77.098762512 23.41207123 0.7019636 -74.090568542 22.42873764 -0.55548972 -74.38503265 22.97698212 -0.46916762
		 -76.062210083 23.78767014 0.022498302 -74.84366608 23.41207123 -0.33471793 -72.26667786 20.10387421 -0.97662753
		 -72.87849426 19.46453667 -1.64330387 -73.46152496 18.93300438 -1.5755893 -72.9067688 19.052984238 -0.48730445
		 -74.10427094 18.46783257 -0.40812775 -73.44332886 19.1912117 0.60791814 -72.26076508 20.18776894 -0.26716313
		 -72.37936401 21.30313683 -1.33982265 -73.041542053 20.18979454 0.90317512 -76.077812195 20.27085114 -1.54664397
		 -75.75881958 19.17211151 0.13436684 -75.10562897 20.71597481 1.12568772 -72.92947388 21.81181717 0.35071456
		 -73.75698853 20.72482872 -2.56142402 -73.96144104 22.4058342 0.066753156 -72.7161026 21.81253624 -1.42720687
		 -74.63092041 21.52644539 -2.28921628 -76.071594238 21.040771484 -0.01176609 -73.2017746 22.19269753 -1.43816137
		 -73.78882599 22.40641594 -1.37161517 -75.56816101 21.9316597 -0.80553526 -74.41979218 22.43277168 -1.23408163
		 -76.64565277 20.19935226 -0.96059084 -77.069137573 20.08408165 -1.97788894 -77.67572021 19.71022797 -2.32332706
		 -77.46091461 19.19172287 -1.23175716 -78.66000366 18.88768387 -1.73419094 -78.28793335 18.9011116 -0.37262666
		 -76.84457397 19.93645477 -0.32677001 -76.57701111 21.42385292 -0.67999941 -77.93449402 19.54158401 0.47037506
		 -80.10261536 21.36367607 -2.21409273 -80.3576355 19.56471825 -1.3011322 -79.93850708 20.29690361 0.45418274
		 -77.57136536 21.17433548 0.85893065 -77.56360626 21.77342033 -2.30143523 -78.43764496 22.022563934 0.6900351
		 -76.84311676 21.9695282 -0.57070345 -78.43136597 22.50723076 -1.86675429 -80.50541687 21.30223083 -0.545968
		 -77.28123474 22.3975029 -0.49716094 -77.84848022 22.66588593 -0.46656495 -79.73983002 22.34252357 -0.64007932
		 -78.48931885 22.74840355 -0.48191345 -73.25616455 20.82000923 -0.21921498 -73.77370453 20.82000923 -0.6861493
		 -74.2718811 20.82000923 -0.6861493 -74.022796631 20.5837059 0.0055229985 -74.82888031 20.82000923 0.0055229985
		 -74.2718811 20.82000923 0.69719511 -73.25616455 20.82000923 0.23026077 -72.78236389 21.43865967 -0.3581107
		 -73.6799469 21.093740463 0.95752805 -74.92037964 22.54827309 -0.58284837 -75.32706451 21.82100677 0.38786995
		 -74.42583466 22.20335388 1.12467182 -72.91332245 21.82100677 0.73278999 -73.59901428 21.82100677 -1.17122006
		 -73.12521362 22.54827309 0.59389436 -72.71852875 21.82100677 -0.37682408 -73.6799469 22.54827309 -0.94648218
		 -74.67493439 22.82200432 0.43299976 -72.78236389 22.20335388 -0.3581107 -72.96762085 22.54827309 -0.30380225
		 -74.022796631 23.058307648 0.0055229985 -73.25616455 22.82200432 -0.21921498 -79.65317535 20.45981407 -1.051253915
		 -80.17071533 20.45981407 -1.51818836 -80.66889954 20.45981407 -1.51818836 -80.41980743 20.22351074 -0.82651603
		 -81.22589111 20.45981407 -0.82651603 -80.66889954 20.45981407 -0.1348439 -79.65317535 20.45981407 -0.60177827
		 -79.17937469 21.078464508 -1.19014966 -80.076957703 20.7335453 0.12548904 -81.31739044 22.18807793 -1.41488743
		 -81.72407532 21.46080971 -0.44416907 -80.82284546 21.84315872 0.29263282 -79.31033325 21.46080971 -0.099249035
		 -79.99602509 21.46080971 -2.003259182 -79.52222443 22.18807793 -0.23814465 -79.11553955 21.46080971 -1.20886302
		 -80.076957703 22.18807793 -1.77852106 -81.07194519 22.46180916 -0.39903927 -79.17937469 21.84315872 -1.19014966
		 -79.36463165 22.18807793 -1.13584125 -80.41980743 22.69811249 -0.82651603 -79.65317535 22.46180916 -1.051253915
		 -81.34642792 19.071496964 -0.82463104 -81.32482147 19.30788994 -0.16925049 -80.98828888 19.35954285 0.19442627
		 -80.72362518 18.84695816 -0.31890532 -80.12614441 19.14660454 0.18985687 -80.016532898 18.81816864 -0.62792295
		 -81.030693054 18.89559364 -1.091828346 -81.62545776 19.64241219 -1.29655123 -80.17220306 18.90521049 -1.30710268
		 -80.090423584 20.96664619 0.023647919 -79.2967453 19.96391869 -0.011293793 -79.30230713 19.93174171 -1.23612392
		 -80.68501282 19.57867622 -1.97838199 -81.55930328 20.39490509 -0.34595534 -80.47649384 20.3200016 -1.98636746
		 -81.59606171 19.99272919 -1.46095705 -81.18380737 20.98034477 -0.66570681 -79.48130035 20.79393768 -0.85172027
		 -81.45412445 20.34163475 -1.554407 -81.21354675 20.6549778 -1.56776035 -80.16918182 21.10968971 -1.15334439
		 -80.89788055 20.90208435 -1.49970639;
	setAttr -s 360 ".ed";
	setAttr ".ed[0:165]"  3 1 0 0 1 0 2 4 0 4 5 0 7 1 0 5 8 0 6 7 0 2 9 0 4 10 0
		 10 11 0 8 12 0 15 13 0 9 10 0 11 14 0 9 17 0 12 18 0 14 19 0 17 20 0 14 21 0 12 15 0
		 21 20 0 3 0 0 2 1 0 3 2 0 3 4 0 3 5 0 3 6 0 0 6 0 0 7 0 3 8 0 6 8 0 4 9 0 5 10 0
		 5 11 0 8 11 0 6 12 0 7 12 0 1 15 0 1 13 0 2 13 0 9 13 0 8 14 0 12 14 0 7 15 0 13 18 0
		 13 16 0 10 17 0 15 18 0 13 19 0 16 19 0 11 17 0 18 14 0 18 19 0 19 21 0 16 21 0 9 16 0
		 11 20 0 14 20 0 16 20 0 9 20 0 25 23 0 22 23 0 24 26 0 26 27 0 29 23 0 27 30 0 28 29 0
		 24 31 0 26 32 0 32 33 0 30 34 0 37 35 0 31 32 0 33 36 0 31 39 0 34 40 0 36 41 0 39 42 0
		 36 43 0 34 37 0 43 42 0 25 22 0 24 23 0 25 24 0 25 26 0 25 27 0 25 28 0 22 28 0 22 29 0
		 25 30 0 28 30 0 26 31 0 27 32 0 27 33 0 30 33 0 28 34 0 29 34 0 23 37 0 23 35 0 24 35 0
		 31 35 0 30 36 0 34 36 0 29 37 0 35 40 0 35 38 0 32 39 0 37 40 0 35 41 0 38 41 0 33 39 0
		 40 36 0 40 41 0 41 43 0 38 43 0 31 38 0 33 42 0 36 42 0 38 42 0 31 42 0 47 45 0 44 45 0
		 46 48 0 48 49 0 51 45 0 49 52 0 50 51 0 46 53 0 48 54 0 54 55 0 52 56 0 59 57 0 53 54 0
		 55 58 0 53 61 0 56 62 0 58 63 0 61 64 0 58 65 0 56 59 0 65 64 0 47 44 0 46 45 0 47 46 0
		 47 48 0 47 49 0 47 50 0 44 50 0 44 51 0 47 52 0 50 52 0 48 53 0 49 54 0 49 55 0 52 55 0
		 50 56 0 51 56 0 45 59 0 45 57 0 46 57 0 53 57 0 52 58 0 56 58 0 51 59 0 57 62 0 57 60 0;
	setAttr ".ed[166:331]" 54 61 0 59 62 0 57 63 0 60 63 0 55 61 0 62 58 0 62 63 0
		 63 65 0 60 65 0 53 60 0 55 64 0 58 64 0 60 64 0 53 64 0 69 67 0 66 67 0 68 70 0 70 71 0
		 73 67 0 71 74 0 72 73 0 68 75 0 70 76 0 76 77 0 74 78 0 81 79 0 75 76 0 77 80 0 75 83 0
		 78 84 0 80 85 0 83 86 0 80 87 0 78 81 0 87 86 0 69 66 0 68 67 0 69 68 0 69 70 0 69 71 0
		 69 72 0 66 72 0 66 73 0 69 74 0 72 74 0 70 75 0 71 76 0 71 77 0 74 77 0 72 78 0 73 78 0
		 67 81 0 67 79 0 68 79 0 75 79 0 74 80 0 78 80 0 73 81 0 79 84 0 79 82 0 76 83 0 81 84 0
		 79 85 0 82 85 0 77 83 0 84 80 0 84 85 0 85 87 0 82 87 0 75 82 0 77 86 0 80 86 0 82 86 0
		 75 86 0 91 89 0 88 89 0 90 92 0 92 93 0 95 89 0 93 96 0 94 95 0 90 97 0 92 98 0 98 99 0
		 96 100 0 103 101 0 97 98 0 99 102 0 97 105 0 100 106 0 102 107 0 105 108 0 102 109 0
		 100 103 0 109 108 0 91 88 0 90 89 0 91 90 0 91 92 0 91 93 0 91 94 0 88 94 0 88 95 0
		 91 96 0 94 96 0 92 97 0 93 98 0 93 99 0 96 99 0 94 100 0 95 100 0 89 103 0 89 101 0
		 90 101 0 97 101 0 96 102 0 100 102 0 95 103 0 101 106 0 101 104 0 98 105 0 103 106 0
		 101 107 0 104 107 0 99 105 0 106 102 0 106 107 0 107 109 0 104 109 0 97 104 0 99 108 0
		 102 108 0 104 108 0 97 108 0 113 111 0 110 111 0 112 114 0 114 115 0 117 111 0 115 118 0
		 116 117 0 112 119 0 114 120 0 120 121 0 118 122 0 125 123 0 119 120 0 121 124 0 119 127 0
		 122 128 0 124 129 0 127 130 0 124 131 0 122 125 0 131 130 0 113 110 0 112 111 0 113 112 0
		 113 114 0 113 115 0 113 116 0 110 116 0 110 117 0 113 118 0 116 118 0 114 119 0;
	setAttr ".ed[332:359]" 115 120 0 115 121 0 118 121 0 116 122 0 117 122 0 111 125 0
		 111 123 0 112 123 0 119 123 0 118 124 0 122 124 0 117 125 0 123 128 0 123 126 0 120 127 0
		 125 128 0 123 129 0 126 129 0 121 127 0 128 124 0 128 129 0 129 131 0 126 131 0 119 126 0
		 121 130 0 124 130 0 126 130 0 119 130 0;
	setAttr -s 240 -ch 720 ".fc[0:239]" -type "polyFaces" 
		f 3 -22 0 -2
		mu 0 3 0 31 1
		f 3 23 22 -1
		mu 0 3 32 2 1
		f 3 -24 24 -3
		mu 0 3 2 3 6
		f 3 -25 25 -4
		mu 0 3 6 4 7
		f 3 21 27 -27
		mu 0 3 34 5 8
		f 3 -29 1 -5
		mu 0 3 9 0 1
		f 3 -26 29 -6
		mu 0 3 7 33 10
		f 3 26 30 -30
		mu 0 3 33 8 10
		f 3 -28 28 -7
		mu 0 3 8 5 11
		f 3 2 31 -8
		mu 0 3 2 6 12
		f 3 3 32 -9
		mu 0 3 6 7 13
		f 3 -33 33 -10
		mu 0 3 13 7 14
		f 3 5 34 -34
		mu 0 3 7 10 14
		f 3 -31 35 -11
		mu 0 3 10 8 15
		f 3 6 36 -36
		mu 0 3 8 11 15
		f 3 4 37 -44
		mu 0 3 9 1 16
		f 3 -38 38 -12
		mu 0 3 16 1 17
		f 3 -23 39 -39
		mu 0 3 1 2 17
		f 3 7 40 -40
		mu 0 3 2 12 17
		f 3 -32 8 -13
		mu 0 3 12 6 13
		f 3 -35 41 -14
		mu 0 3 14 10 18
		f 3 10 42 -42
		mu 0 3 10 15 18
		f 3 -37 43 -20
		mu 0 3 15 11 19
		f 3 11 44 -48
		mu 0 3 16 17 20
		f 3 12 46 -15
		mu 0 3 12 13 22
		f 3 19 47 -16
		mu 0 3 15 19 23
		f 3 -45 48 -53
		mu 0 3 20 17 24
		f 3 45 49 -49
		mu 0 3 17 21 24
		f 3 -46 -41 55
		mu 0 3 21 17 12
		f 3 9 50 -47
		mu 0 3 13 14 22
		f 3 15 51 -43
		mu 0 3 15 23 18
		f 3 -52 52 -17
		mu 0 3 18 23 25
		f 3 -50 54 -54
		mu 0 3 24 21 26
		f 3 -51 56 -18
		mu 0 3 22 14 27
		f 3 13 57 -57
		mu 0 3 14 18 27
		f 3 16 53 -19
		mu 0 3 18 25 28
		f 3 -55 58 -21
		mu 0 3 26 21 29
		f 3 -56 59 -59
		mu 0 3 21 12 29
		f 3 14 17 -60
		mu 0 3 12 22 30
		f 3 18 20 -58
		mu 0 3 18 28 27
		f 3 -82 60 -62
		mu 0 3 35 36 37
		f 3 83 82 -61
		mu 0 3 38 39 37
		f 3 -84 84 -63
		mu 0 3 39 40 41
		f 3 -85 85 -64
		mu 0 3 41 42 43
		f 3 81 87 -87
		mu 0 3 44 45 46
		f 3 -89 61 -65
		mu 0 3 47 35 37
		f 3 -86 89 -66
		mu 0 3 43 48 49
		f 3 86 90 -90
		mu 0 3 48 46 49
		f 3 -88 88 -67
		mu 0 3 46 45 50
		f 3 62 91 -68
		mu 0 3 39 41 51
		f 3 63 92 -69
		mu 0 3 41 43 52
		f 3 -93 93 -70
		mu 0 3 52 43 53
		f 3 65 94 -94
		mu 0 3 43 49 53
		f 3 -91 95 -71
		mu 0 3 49 46 54
		f 3 66 96 -96
		mu 0 3 46 50 54
		f 3 64 97 -104
		mu 0 3 47 37 55
		f 3 -98 98 -72
		mu 0 3 55 37 56
		f 3 -83 99 -99
		mu 0 3 37 39 56
		f 3 67 100 -100
		mu 0 3 39 51 56
		f 3 -92 68 -73
		mu 0 3 51 41 52
		f 3 -95 101 -74
		mu 0 3 53 49 57
		f 3 70 102 -102
		mu 0 3 49 54 57
		f 3 -97 103 -80
		mu 0 3 54 50 58
		f 3 71 104 -108
		mu 0 3 55 56 59
		f 3 72 106 -75
		mu 0 3 51 52 60
		f 3 79 107 -76
		mu 0 3 54 58 61
		f 3 -105 108 -113
		mu 0 3 59 56 62
		f 3 105 109 -109
		mu 0 3 56 63 62
		f 3 -106 -101 115
		mu 0 3 63 56 51
		f 3 69 110 -107
		mu 0 3 52 53 60
		f 3 75 111 -103
		mu 0 3 54 61 57
		f 3 -112 112 -77
		mu 0 3 57 61 64
		f 3 -110 114 -114
		mu 0 3 62 63 65
		f 3 -111 116 -78
		mu 0 3 60 53 66
		f 3 73 117 -117
		mu 0 3 53 57 66
		f 3 76 113 -79
		mu 0 3 57 64 67
		f 3 -115 118 -81
		mu 0 3 65 63 68
		f 3 -116 119 -119
		mu 0 3 63 51 68
		f 3 74 77 -120
		mu 0 3 51 60 69
		f 3 78 80 -118
		mu 0 3 57 67 66
		f 3 -142 120 -122
		mu 0 3 70 71 72
		f 3 143 142 -121
		mu 0 3 73 74 72
		f 3 -144 144 -123
		mu 0 3 74 75 76
		f 3 -145 145 -124
		mu 0 3 76 77 78
		f 3 141 147 -147
		mu 0 3 79 80 81
		f 3 -149 121 -125
		mu 0 3 82 70 72
		f 3 -146 149 -126
		mu 0 3 78 83 84
		f 3 146 150 -150
		mu 0 3 83 81 84
		f 3 -148 148 -127
		mu 0 3 81 80 85
		f 3 122 151 -128
		mu 0 3 74 76 86
		f 3 123 152 -129
		mu 0 3 76 78 87
		f 3 -153 153 -130
		mu 0 3 87 78 88
		f 3 125 154 -154
		mu 0 3 78 84 88
		f 3 -151 155 -131
		mu 0 3 84 81 89
		f 3 126 156 -156
		mu 0 3 81 85 89
		f 3 124 157 -164
		mu 0 3 82 72 90
		f 3 -158 158 -132
		mu 0 3 90 72 91
		f 3 -143 159 -159
		mu 0 3 72 74 91
		f 3 127 160 -160
		mu 0 3 74 86 91
		f 3 -152 128 -133
		mu 0 3 86 76 87
		f 3 -155 161 -134
		mu 0 3 88 84 92
		f 3 130 162 -162
		mu 0 3 84 89 92
		f 3 -157 163 -140
		mu 0 3 89 85 93
		f 3 131 164 -168
		mu 0 3 90 91 94
		f 3 132 166 -135
		mu 0 3 86 87 95
		f 3 139 167 -136
		mu 0 3 89 93 96
		f 3 -165 168 -173
		mu 0 3 94 91 97
		f 3 165 169 -169
		mu 0 3 91 98 97
		f 3 -166 -161 175
		mu 0 3 98 91 86
		f 3 129 170 -167
		mu 0 3 87 88 95
		f 3 135 171 -163
		mu 0 3 89 96 92
		f 3 -172 172 -137
		mu 0 3 92 96 99
		f 3 -170 174 -174
		mu 0 3 97 98 100
		f 3 -171 176 -138
		mu 0 3 95 88 101
		f 3 133 177 -177
		mu 0 3 88 92 101
		f 3 136 173 -139
		mu 0 3 92 99 102
		f 3 -175 178 -141
		mu 0 3 100 98 103
		f 3 -176 179 -179
		mu 0 3 98 86 103
		f 3 134 137 -180
		mu 0 3 86 95 104
		f 3 138 140 -178
		mu 0 3 92 102 101
		f 3 -202 180 -182
		mu 0 3 105 106 107
		f 3 203 202 -181
		mu 0 3 108 109 107
		f 3 -204 204 -183
		mu 0 3 109 110 111
		f 3 -205 205 -184
		mu 0 3 111 112 113
		f 3 201 207 -207
		mu 0 3 114 115 116
		f 3 -209 181 -185
		mu 0 3 117 105 107
		f 3 -206 209 -186
		mu 0 3 113 118 119
		f 3 206 210 -210
		mu 0 3 118 116 119
		f 3 -208 208 -187
		mu 0 3 116 115 120
		f 3 182 211 -188
		mu 0 3 109 111 121
		f 3 183 212 -189
		mu 0 3 111 113 122
		f 3 -213 213 -190
		mu 0 3 122 113 123
		f 3 185 214 -214
		mu 0 3 113 119 123
		f 3 -211 215 -191
		mu 0 3 119 116 124
		f 3 186 216 -216
		mu 0 3 116 120 124
		f 3 184 217 -224
		mu 0 3 117 107 125
		f 3 -218 218 -192
		mu 0 3 125 107 126
		f 3 -203 219 -219
		mu 0 3 107 109 126
		f 3 187 220 -220
		mu 0 3 109 121 126
		f 3 -212 188 -193
		mu 0 3 121 111 122
		f 3 -215 221 -194
		mu 0 3 123 119 127
		f 3 190 222 -222
		mu 0 3 119 124 127
		f 3 -217 223 -200
		mu 0 3 124 120 128
		f 3 191 224 -228
		mu 0 3 125 126 129
		f 3 192 226 -195
		mu 0 3 121 122 130
		f 3 199 227 -196
		mu 0 3 124 128 131
		f 3 -225 228 -233
		mu 0 3 129 126 132
		f 3 225 229 -229
		mu 0 3 126 133 132
		f 3 -226 -221 235
		mu 0 3 133 126 121
		f 3 189 230 -227
		mu 0 3 122 123 130
		f 3 195 231 -223
		mu 0 3 124 131 127
		f 3 -232 232 -197
		mu 0 3 127 131 134
		f 3 -230 234 -234
		mu 0 3 132 133 135
		f 3 -231 236 -198
		mu 0 3 130 123 136
		f 3 193 237 -237
		mu 0 3 123 127 136
		f 3 196 233 -199
		mu 0 3 127 134 137
		f 3 -235 238 -201
		mu 0 3 135 133 138
		f 3 -236 239 -239
		mu 0 3 133 121 138
		f 3 194 197 -240
		mu 0 3 121 130 139
		f 3 198 200 -238
		mu 0 3 127 137 136
		f 3 -262 240 -242
		mu 0 3 140 141 142
		f 3 263 262 -241
		mu 0 3 143 144 142
		f 3 -264 264 -243
		mu 0 3 144 145 146
		f 3 -265 265 -244
		mu 0 3 146 147 148
		f 3 261 267 -267
		mu 0 3 149 150 151
		f 3 -269 241 -245
		mu 0 3 152 140 142
		f 3 -266 269 -246
		mu 0 3 148 153 154
		f 3 266 270 -270
		mu 0 3 153 151 154
		f 3 -268 268 -247
		mu 0 3 151 150 155
		f 3 242 271 -248
		mu 0 3 144 146 156
		f 3 243 272 -249
		mu 0 3 146 148 157
		f 3 -273 273 -250
		mu 0 3 157 148 158
		f 3 245 274 -274
		mu 0 3 148 154 158
		f 3 -271 275 -251
		mu 0 3 154 151 159
		f 3 246 276 -276
		mu 0 3 151 155 159
		f 3 244 277 -284
		mu 0 3 152 142 160
		f 3 -278 278 -252
		mu 0 3 160 142 161
		f 3 -263 279 -279
		mu 0 3 142 144 161
		f 3 247 280 -280
		mu 0 3 144 156 161
		f 3 -272 248 -253
		mu 0 3 156 146 157
		f 3 -275 281 -254
		mu 0 3 158 154 162
		f 3 250 282 -282
		mu 0 3 154 159 162
		f 3 -277 283 -260
		mu 0 3 159 155 163
		f 3 251 284 -288
		mu 0 3 160 161 164
		f 3 252 286 -255
		mu 0 3 156 157 165
		f 3 259 287 -256
		mu 0 3 159 163 166
		f 3 -285 288 -293
		mu 0 3 164 161 167
		f 3 285 289 -289
		mu 0 3 161 168 167
		f 3 -286 -281 295
		mu 0 3 168 161 156
		f 3 249 290 -287
		mu 0 3 157 158 165
		f 3 255 291 -283
		mu 0 3 159 166 162
		f 3 -292 292 -257
		mu 0 3 162 166 169
		f 3 -290 294 -294
		mu 0 3 167 168 170
		f 3 -291 296 -258
		mu 0 3 165 158 171
		f 3 253 297 -297
		mu 0 3 158 162 171
		f 3 256 293 -259
		mu 0 3 162 169 172
		f 3 -295 298 -261
		mu 0 3 170 168 173
		f 3 -296 299 -299
		mu 0 3 168 156 173
		f 3 254 257 -300
		mu 0 3 156 165 174
		f 3 258 260 -298
		mu 0 3 162 172 171
		f 3 -322 300 -302
		mu 0 3 175 176 177
		f 3 323 322 -301
		mu 0 3 178 179 177
		f 3 -324 324 -303
		mu 0 3 179 180 181
		f 3 -325 325 -304
		mu 0 3 181 182 183
		f 3 321 327 -327
		mu 0 3 184 185 186
		f 3 -329 301 -305
		mu 0 3 187 175 177
		f 3 -326 329 -306
		mu 0 3 183 188 189
		f 3 326 330 -330
		mu 0 3 188 186 189
		f 3 -328 328 -307
		mu 0 3 186 185 190
		f 3 302 331 -308
		mu 0 3 179 181 191
		f 3 303 332 -309
		mu 0 3 181 183 192
		f 3 -333 333 -310
		mu 0 3 192 183 193
		f 3 305 334 -334
		mu 0 3 183 189 193
		f 3 -331 335 -311
		mu 0 3 189 186 194
		f 3 306 336 -336
		mu 0 3 186 190 194
		f 3 304 337 -344
		mu 0 3 187 177 195
		f 3 -338 338 -312
		mu 0 3 195 177 196
		f 3 -323 339 -339
		mu 0 3 177 179 196
		f 3 307 340 -340
		mu 0 3 179 191 196
		f 3 -332 308 -313
		mu 0 3 191 181 192
		f 3 -335 341 -314
		mu 0 3 193 189 197
		f 3 310 342 -342
		mu 0 3 189 194 197
		f 3 -337 343 -320
		mu 0 3 194 190 198
		f 3 311 344 -348
		mu 0 3 195 196 199
		f 3 312 346 -315
		mu 0 3 191 192 200
		f 3 319 347 -316
		mu 0 3 194 198 201
		f 3 -345 348 -353
		mu 0 3 199 196 202
		f 3 345 349 -349
		mu 0 3 196 203 202
		f 3 -346 -341 355
		mu 0 3 203 196 191
		f 3 309 350 -347
		mu 0 3 192 193 200
		f 3 315 351 -343
		mu 0 3 194 201 197
		f 3 -352 352 -317
		mu 0 3 197 201 204
		f 3 -350 354 -354
		mu 0 3 202 203 205
		f 3 -351 356 -318
		mu 0 3 200 193 206
		f 3 313 357 -357
		mu 0 3 193 197 206
		f 3 316 353 -319
		mu 0 3 197 204 207
		f 3 -355 358 -321
		mu 0 3 205 203 208
		f 3 -356 359 -359
		mu 0 3 203 191 208
		f 3 314 317 -360
		mu 0 3 191 200 209
		f 3 318 320 -358
		mu 0 3 197 207 206;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "1AB1C0F7-45ED-E957-3772-9EBA017D3E0E";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "9F4A3D5B-4B23-A12C-C9A5-A3BE47223AAA";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "D0ACDE68-45D3-3644-C166-15BABB9DCFCC";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting global illum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "E7C3A0EB-4F6B-9086-F456-9A89A8912AB2";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "080DB4BD-4236-A332-ACF7-419500B9DE4C";
	setAttr -s 20 ".lnk";
	setAttr -s 20 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E4B4A7CA-41D6-D003-E102-46A191686162";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "96128FDD-459C-A2FE-FAFC-4BBC753B8434";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A5CF80B0-4142-85FE-2583-9F897F394C68";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "20E8B7CA-4063-0639-CCB0-0680FDCB31C4";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BCA2D619-42D2-4287-6FAE-F597B36B8CB8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 645\n                -height 253\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 253\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 644\n                -height 252\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 644\n            -height 252\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 645\n                -height 252\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 252\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1032\n                -height 550\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1032\n            -height 550\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1032\\n    -height 550\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1032\\n    -height 550\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 0.05 -size 0.12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0688101B-4D97-677C-F33B-0EB2E592EB66";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId48";
	rename -uid "50D59AEE-4B05-DEA8-9671-0A8D4946287B";
	setAttr ".ihi" 0;
createNode lambert -n "see_through";
	rename -uid "8FC620D0-46D5-482B-1971-6A839BFFA66D";
	setAttr ".c" -type "float3" 0.170194 0.15700001 0.5 ;
	setAttr ".it" -type "float3" 0.40560007 0.40560007 0.40560007 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "5A088D70-464E-A7D1-50C4-8E93799760C6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "9C030FEC-4D62-143E-0E9C-2A8E1DD9A0D5";
createNode shadingEngine -n "blinn1SG";
	rename -uid "575047F6-406D-03CD-4380-01B3D0EED7DD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "2BB5BCAA-4009-FF9F-A90C-B48305AB91A7";
createNode shadingEngine -n "mdl_material1SG";
	rename -uid "193F383C-45F9-9F65-8E11-06B07000F180";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "BD02AC87-4DEB-5D91-068D-B49294EDE6E5";
createNode shadingEngine -n "mdl_material2SG";
	rename -uid "122F24C1-45BB-C342-DA13-54AAD732C259";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "1F18D730-4959-E320-9F48-56B155A76610";
createNode shadingEngine -n "mi_metallic_paint_x1SG";
	rename -uid "3069A830-4BEA-ACF9-BA57-B293BE9CEC1F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "0B9E50F7-4D68-4427-3873-3EAFEFD5A28E";
createNode shadingEngine -n "mia_material_x1SG";
	rename -uid "028C74C6-431F-233A-C337-34B3DB155934";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "18263F10-4548-C843-0A4E-CAB902B84F5D";
createNode shadingEngine -n "mia_material_x2SG";
	rename -uid "53A2F9C8-4B28-7E1D-F7BD-71BBC2FBE2EE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "006628CF-40C7-F011-A4EA-A1A7BA9ED8CF";
createNode blinn -n "Green";
	rename -uid "9AFAC692-4B71-291F-C106-B59D011607B0";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.40099999 0.66659999 0.31369999 ;
	setAttr ".tc" 0.31707316637039185;
	setAttr ".tcf" 0.85365855693817139;
	setAttr ".trsd" 0.36585366725921631;
	setAttr ".sc" -type "float3" 0.42276645 0.42276645 0.42276645 ;
	setAttr ".rfl" 0.3333333432674408;
	setAttr ".ec" 0;
	setAttr ".sro" 0;
createNode shadingEngine -n "blinn2SG";
	rename -uid "FD460F2B-4FAA-3840-14AD-4B8D694871D0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "FF3EBAC5-4F4D-2CD0-A559-109B33469F5D";
createNode blinn -n "ShinyLavender";
	rename -uid "D8BF0527-47C5-A862-D271-F2A57CD09AD0";
	setAttr ".c" -type "float3" 0.7172122 0.55458397 0.76599997 ;
	setAttr ".ambc" -type "float3" 0.04224347 0.022541998 0.050999999 ;
	setAttr ".ic" -type "float3" 0.13008316 0.13008316 0.13008316 ;
	setAttr ".sc" -type "float3" 0.87300003 0.87300003 0.87300003 ;
	setAttr ".ec" 0.99989998340606689;
	setAttr ".sro" 0.85365855693817139;
createNode shadingEngine -n "blinn3SG";
	rename -uid "D94E4D4A-463F-30B2-FC42-88911DED48A2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "44BF8807-4C0D-5182-45FE-328101AE018C";
createNode blinn -n "WhiteCloud";
	rename -uid "FF7D8EEE-4C74-E1FA-2351-CC872E879482";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.20178002 0.33121243 0.34200001 ;
	setAttr ".sc" -type "float3" 0.5691005 0.5691005 0.5691005 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0;
	setAttr ".sro" 0;
createNode shadingEngine -n "blinn4SG";
	rename -uid "7AF17B2E-4875-B176-20A5-19AB37CFA28F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "3F7DE71E-4C42-63D3-6BD6-959A584797C5";
createNode blinn -n "Brown";
	rename -uid "A9DDA9C3-42C7-51C1-9D0A-02B945581D92";
	setAttr ".c" -type "float3" 0.3725 0.2529 0.1972 ;
	setAttr ".ambc" -type "float3" 0.58819997 0.47799999 0.4267 ;
	setAttr ".ec" 0;
	setAttr ".sro" 0;
createNode shadingEngine -n "blinn5SG";
	rename -uid "B906AF09-47EF-397C-8623-B1BAD32E6302";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "F48A6D84-47D6-9CCD-F2B4-599CC210E441";
createNode blinn -n "Brown2";
	rename -uid "BC4D9A4A-4248-D1FE-F52B-DBA8398F00B5";
	setAttr ".c" -type "float3" 0.354 0.25182354 0.20425801 ;
	setAttr ".ec" 0;
	setAttr ".sro" 0;
createNode shadingEngine -n "blinn6SG";
	rename -uid "617F3D22-4121-A858-5FEB-58B1DBD0DD17";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "45B6A640-439C-E005-0798-1FAA4ACFFAD6";
createNode blinn -n "LightMetal";
	rename -uid "9076C754-4313-960B-6AE8-A386F899E8FC";
	setAttr ".c" -type "float3" 0.72799999 0.72799999 0.72799999 ;
createNode shadingEngine -n "blinn7SG";
	rename -uid "F0ABBE7E-4497-2DEF-6793-A3A9B6D25C4A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "C19248D2-4DF9-FD87-209D-03A269E59834";
createNode blinn -n "Gold";
	rename -uid "19790C7A-49F2-2386-89FB-4ABA1E6E0413";
	setAttr ".c" -type "float3" 0.722 0.47724202 0 ;
createNode shadingEngine -n "blinn8SG";
	rename -uid "35147BEC-4C67-F151-DD6B-86A41355F4B6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "3C461210-4909-8DB7-C769-CB959DBEDFE1";
createNode blinn -n "RedBrown";
	rename -uid "E613B2D2-4379-60D9-EE2D-53987F04AEA3";
	setAttr ".c" -type "float3" 0.588 0.12700801 0.12700801 ;
createNode shadingEngine -n "blinn9SG";
	rename -uid "E1947A0B-4539-F645-CDA6-3EBAC5D85455";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "4E798263-464C-48F7-0AD7-7C9127E349F5";
createNode lambert -n "RustTexture";
	rename -uid "5E837410-4812-E780-A2B5-F79B3642A121";
createNode shadingEngine -n "lambert3SG";
	rename -uid "70B90D56-47AD-51EB-EF3A-FFA6402C2904";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "E52AD41C-4A12-FD76-A5BA-9BA7E4B12B4B";
createNode file -n "file1";
	rename -uid "F33DEBB9-4CCB-51D3-C5DE-B3AC9BF57EFA";
	setAttr ".ftn" -type "string" "C:/Users/SDanica/Desktop/Art Design Stuff for Dyson Sphere/Textures/RustTexture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "AF48BD7E-4B5F-0F27-0E7B-C09D1752DBD2";
createNode lambert -n "FoliageTexture";
	rename -uid "07367638-4393-82CC-C9F9-2C953FB0DE93";
createNode shadingEngine -n "lambert4SG";
	rename -uid "B77FECCD-4A79-85F6-CC5E-D1B56B802DAC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "D375650E-4048-803F-3D4A-C684411EA638";
createNode file -n "file2";
	rename -uid "9C3DC170-4C25-4EEA-5A2D-2A9E8F6AE64E";
	setAttr ".ftn" -type "string" "C:/Users/SDanica/Desktop/Art Design Stuff for Dyson Sphere/Textures/green texture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "60F69227-46CF-CF8F-FFD5-CE952EB26B09";
createNode lambert -n "BarkTexture";
	rename -uid "666B2DE8-4244-2AA3-25BD-3FB2E91923C0";
createNode shadingEngine -n "lambert5SG";
	rename -uid "B42853AA-4AC9-B6D2-E5C1-EAB82D214A5D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "F1E3451B-4DD9-F667-A779-99A661C7A5C0";
createNode file -n "file3";
	rename -uid "A2026DD4-461D-06E4-1D46-8881C3678647";
	setAttr ".ftn" -type "string" "C:/Users/SDanica/Desktop/Art Design Stuff for Dyson Sphere/Textures/BarkTexture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "D938A017-4E6E-ED6B-7CC2-A591076586DA";
createNode groupId -n "groupId352";
	rename -uid "26D69036-4784-163C-EB74-37B6BAD9C72F";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B4E06A8C-45B1-BA5B-5A57-BDAB27A25C2F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -215.02819786006009 -485.71426641373483 ;
	setAttr ".tgi[0].vh" -type "double2" 687.64722669891489 111.90475745806636 ;
	setAttr -s 28 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 580;
	setAttr ".tgi[0].ni[0].y" -140;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -498.57144165039062;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[2].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 262.85714721679687;
	setAttr ".tgi[0].ni[3].y" -244.28572082519531;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 262.85714721679687;
	setAttr ".tgi[0].ni[4].y" -458.57144165039062;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 262.85714721679687;
	setAttr ".tgi[0].ni[5].y" -114.28571319580078;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 580;
	setAttr ".tgi[0].ni[6].y" -97.142860412597656;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 1401.4285888671875;
	setAttr ".tgi[0].ni[7].y" -165.71427917480469;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 878.5714111328125;
	setAttr ".tgi[0].ni[8].y" -257.14285278320312;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[9].y" -125.71428680419922;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 262.85714721679687;
	setAttr ".tgi[0].ni[10].y" -255.71427917480469;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 262.85714721679687;
	setAttr ".tgi[0].ni[11].y" -65.714286804199219;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 841.4285888671875;
	setAttr ".tgi[0].ni[12].y" -252.85714721679687;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 262.85714721679687;
	setAttr ".tgi[0].ni[13].y" -161.42857360839844;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 262.85714721679687;
	setAttr ".tgi[0].ni[14].y" -251.42857360839844;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 617.14288330078125;
	setAttr ".tgi[0].ni[15].y" -280;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" 841.4285888671875;
	setAttr ".tgi[0].ni[16].y" -380;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" 262.85714721679687;
	setAttr ".tgi[0].ni[17].y" -141.42857360839844;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 580;
	setAttr ".tgi[0].ni[18].y" -311.42855834960937;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" 262.85714721679687;
	setAttr ".tgi[0].ni[19].y" -118.57142639160156;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" 1140;
	setAttr ".tgi[0].ni[20].y" -97.142860412597656;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[21].y" -184.28572082519531;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" 841.4285888671875;
	setAttr ".tgi[0].ni[22].y" -165.71427917480469;
	setAttr ".tgi[0].ni[22].nvs" 1923;
	setAttr ".tgi[0].ni[23].x" 262.85714721679687;
	setAttr ".tgi[0].ni[23].y" -172.85714721679687;
	setAttr ".tgi[0].ni[23].nvs" 1923;
	setAttr ".tgi[0].ni[24].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[24].y" -278.57144165039062;
	setAttr ".tgi[0].ni[24].nvs" 1923;
	setAttr ".tgi[0].ni[25].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[25].y" -341.42855834960937;
	setAttr ".tgi[0].ni[25].nvs" 1923;
	setAttr ".tgi[0].ni[26].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[26].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[26].nvs" 1923;
	setAttr ".tgi[0].ni[27].x" 262.85714721679687;
	setAttr ".tgi[0].ni[27].y" -238.57142639160156;
	setAttr ".tgi[0].ni[27].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 16 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".ovt" no;
	setAttr ".povt" no;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId352.id" "Cloud2Shape.iog.og[0].gid";
connectAttr "blinn4SG.mwc" "Cloud2Shape.iog.og[0].gco";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mdl_material1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mdl_material2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mi_metallic_paint_x1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mdl_material1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mdl_material2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mi_metallic_paint_x1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "see_through.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "see_through.msg" "materialInfo1.m";
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "mdl_material1SG.msg" "materialInfo3.sg";
connectAttr "mdl_material2SG.msg" "materialInfo4.sg";
connectAttr "mi_metallic_paint_x1SG.msg" "materialInfo5.sg";
connectAttr "mia_material_x1SG.msg" "materialInfo6.sg";
connectAttr "mia_material_x2SG.msg" "materialInfo7.sg";
connectAttr "Green.oc" "blinn2SG.ss";
connectAttr "blinn2SG.msg" "materialInfo8.sg";
connectAttr "Green.msg" "materialInfo8.m";
connectAttr "ShinyLavender.oc" "blinn3SG.ss";
connectAttr "blinn3SG.msg" "materialInfo9.sg";
connectAttr "ShinyLavender.msg" "materialInfo9.m";
connectAttr "WhiteCloud.oc" "blinn4SG.ss";
connectAttr "Cloud2Shape.iog.og[0]" "blinn4SG.dsm" -na;
connectAttr "groupId352.msg" "blinn4SG.gn" -na;
connectAttr "blinn4SG.msg" "materialInfo10.sg";
connectAttr "WhiteCloud.msg" "materialInfo10.m";
connectAttr "Brown.oc" "blinn5SG.ss";
connectAttr "blinn5SG.msg" "materialInfo11.sg";
connectAttr "Brown.msg" "materialInfo11.m";
connectAttr "Brown2.oc" "blinn6SG.ss";
connectAttr "blinn6SG.msg" "materialInfo12.sg";
connectAttr "Brown2.msg" "materialInfo12.m";
connectAttr "LightMetal.oc" "blinn7SG.ss";
connectAttr "blinn7SG.msg" "materialInfo13.sg";
connectAttr "LightMetal.msg" "materialInfo13.m";
connectAttr "Gold.oc" "blinn8SG.ss";
connectAttr "blinn8SG.msg" "materialInfo14.sg";
connectAttr "Gold.msg" "materialInfo14.m";
connectAttr "RedBrown.oc" "blinn9SG.ss";
connectAttr "blinn9SG.msg" "materialInfo15.sg";
connectAttr "RedBrown.msg" "materialInfo15.m";
connectAttr "file1.oc" "RustTexture.c";
connectAttr "RustTexture.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo16.sg";
connectAttr "RustTexture.msg" "materialInfo16.m";
connectAttr "file1.msg" "materialInfo16.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "FoliageTexture.c";
connectAttr "FoliageTexture.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo17.sg";
connectAttr "FoliageTexture.msg" "materialInfo17.m";
connectAttr "file2.msg" "materialInfo17.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file3.oc" "BarkTexture.c";
connectAttr "BarkTexture.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo18.sg";
connectAttr "BarkTexture.msg" "materialInfo18.m";
connectAttr "file3.msg" "materialInfo18.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "RedBrown.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "mia_material_x2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Gold.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "mdl_material1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "blinn7SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "blinn8SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "RustTexture.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Green.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "mi_metallic_paint_x1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "blinn9SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "mia_material_x1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "FoliageTexture.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "BarkTexture.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "mdl_material2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "LightMetal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "see_through.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "blinn2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "mdl_material1SG.pa" ":renderPartition.st" -na;
connectAttr "mdl_material2SG.pa" ":renderPartition.st" -na;
connectAttr "mi_metallic_paint_x1SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x1SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn5SG.pa" ":renderPartition.st" -na;
connectAttr "blinn6SG.pa" ":renderPartition.st" -na;
connectAttr "blinn7SG.pa" ":renderPartition.st" -na;
connectAttr "blinn8SG.pa" ":renderPartition.st" -na;
connectAttr "blinn9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "see_through.msg" ":defaultShaderList1.s" -na;
connectAttr "Green.msg" ":defaultShaderList1.s" -na;
connectAttr "ShinyLavender.msg" ":defaultShaderList1.s" -na;
connectAttr "WhiteCloud.msg" ":defaultShaderList1.s" -na;
connectAttr "Brown.msg" ":defaultShaderList1.s" -na;
connectAttr "Brown2.msg" ":defaultShaderList1.s" -na;
connectAttr "LightMetal.msg" ":defaultShaderList1.s" -na;
connectAttr "Gold.msg" ":defaultShaderList1.s" -na;
connectAttr "RedBrown.msg" ":defaultShaderList1.s" -na;
connectAttr "RustTexture.msg" ":defaultShaderList1.s" -na;
connectAttr "FoliageTexture.msg" ":defaultShaderList1.s" -na;
connectAttr "BarkTexture.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
// End of Cloud2.ma
