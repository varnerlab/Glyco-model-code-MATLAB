function [idxRedundant] = idx_redundant_genes(model);
% ------------------------------------------------------------------------------------- 
% idx_redundant_genes.m
% Returns vector of gene indices that 
% ------------------------------------------------------------------------------------- 

if (strcmp(model,'Ec_iAF1260_glyco')==1)
	% Palsson - iAF1260 + glyco
	allIdx = {
		[5:8],		% mal
		[24:27],	% opp
		[46:47],	% ato
		[54:57],	% acc
		[68:69],	% ilv
		[70:71],	% ilv
		[76:78],	% man
		[112:114],	% btu
		[117:118],	% exb
		[135:138],	% cus
		[143:144],	% suc
		[147:151],	% dpp
		[152:156],	% ddp
		[165:169],	% liv
		[183:185],	% als
		[212:214],	% fhu
		[215:217],	% ara
		[228:230],	% his
		[231:235],	% art
		[239:241],	% ula
		[251:252],	% pyr
		[260:263],	% glt
		[273:281],	% atp
		[285:287],	% ssu
		[288:290],	% tau
		[300:301],	% car
		[309:311],	% yeh
		[319:322],	% hca
		[323:326],	% cit
		[340:342],	% pro
		[363:364],	% cyd
		[365:366],	% app
		[367:368],	% cyd
		[369:372],	% cyo
		[397:399],	% dha
		[420:423],	% ynf
		[424:426],	% dms
		[427:428],	% tor
		[436:437], 	% dsb
		[457:458],	% wzyE/wzzE
		[481:482],	% cys
		[493:495],	% fdo
		[496:498],	% fdn
		[502:505],	% fec
		[507:510],	% fep
		[517:526],	% hyf
		[527:532],	% hyc
		[541:544],	% frd
		[551:552],	% fru
		[566:569],	% ugp
		[571:573],	% glp
		[590:592],	% gat
		[595:597],	% mgl
		[631:633],	% gln
		[645:646],	% glt
		[656:658],	% gcv
		[661:663],	% glp
		[665:666],	% gly
		[684:687],	% gsi
		[732:734],	% xdh
		[735:737],	% hya
		[738:739],	% hyb
		[746:747],	% his
		[753:754],	% acr
		[759:760],	% leu
		[769:771],	% kdp
		[840:842],	% met
		[864:866],	% mod
		[880:892],	% nuo
		[897:898],	% pnt
		[904:905],	% nor
		[906:910],	% nik
		[919:920],	% nap
		[924:927],	% nar
		[928:931],	% nar
		[947:948],	% nir
		[949:952],	% nrf
		[986:987],	% ace
		[989:990],	% pdx
		[995:996],	% pfl
		[1010:1012],	% ccm
		[1013:1014],	% phe
		[1018:1021],	% pst
		[1059:1062],	% pot
		[1063:1066],	% pot
		[1067:1070],	% ydc
		[1089:1092],	% ytf
		[1093:1096],	% rbs
		[1099:1100],	% nrd
		[1101:1102],	% nrd
		[1111:1112],	% cys
		[1114:1116],	% srl
		[1149:1152],	% sdh
		[1153:1154],	% suc
		[1158:1159],	% ttd
		[1169:1170],	% kba
		[1171:1172],	% gat
		[1175:1177],	% tbp/thi
		[1184:1188],	% thi
		[1191:1192],	% tor
		[1206:1207], 	% trp
		[1251:1253],	% yia
		[1254:1256],	% xyl
		[1258:1260],	% znu
	};
elseif (strcmp(model,'Ec_iJR904_glyco')==1)
	% Palsson - iJR904 + glyco
	allIdx = {
		[10:11],	% car
		[21:22],	% thi
		[24:25],	% leuCD
		[28:29],	% ilvHI
		[42:43],	% aceEF
		[70:72],	% met
		[104:106],	% tau
		[123:126],	% cyo
		[154:156],	% cit
		[160:163],	% glt
		[172:174],	% kdp
		[176:179],	% sdh
		[180:181],	% sucAB
		[182:183],	% sucCD
		[184:185],	% cyd
		[197:199],	% gln
		[202:205],	% pot
		[206:209],	% art
		[213:215],	% dms
		[216:217],	% pfl
		[229:231],	% hya
		[232:233],	% tor
		[249:252],	% pot
		[259:261],	% dha
		[268:271],	% nar
		[277:278],	% trp
		[297:298],	% gapC_12
		[299:302],	% ydc
		[304:306],	% fdn
		[314:315],	% pnt
		[334:335],	% btu
		[354:356],	% man
		[364:365],	% tor
		[368:369],	% arH12
		[410:412],	% yeh
		[417:419],	% mgl
		[422:424],	% fru
		[426:427],	% ato
		[431:432],	% nrd
		[435:437],	% glpABC
		[443:455],	% nuo
		[458:460],	% his
		[481:482],	% ptsHI
		[492:493],	% eut
		[513:515],	% hca
		[532:533],	% nrdEF
		[534:536],	% pro
		[540:542],	% srl
		[544:549],	% hyc
		[554:555],	% cysND
		[557:558],	% cysIJ
		[581:583],	% gcv
		[604:605],	% glcED
		[608:609],	% hyb
		[616:617],	% ttdAB
		[624:625],	% tdG12
		[635:636],	% kbaYZ
		[643:644],	% gltBD
		[650:651],	% accBC
		[656:657],	% nirBD
		[677:680],	% ugp
		[681:682],	% livFG
		[697:699],	% xylFGH
		[716:721],	% waa
		[731:732],	% ilvNB
		[738:741],	% pst
		[744:752],	% atp
		[754:757],	% rbs
		[759:761],	% ilv
		[792:794],	% fdo
		[815:816],	% pflCD
		[827:829],	% thi
		[842:845],	% mal
		[867:870],	% frd
		[878:882],	% ytf
		[887:888],	% pyrIB
	};
elseif (strcmp(model,'Ec_core_glyco')==1)
	% Palsson - core metabolism + glyco
	allIdx = {};
else
	allIdx = {};
end

nIdx = length(allIdx);
idxRedundant = [];
for ix = 1:nIdx
	idxRedundant = [idxRedundant, allIdx{ix}(2:end)];
end

return;
