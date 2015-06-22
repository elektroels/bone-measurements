library(gdata);

# Process sheet2: Halichoerus grypus
hg = read.xls("measurements_reduceddecimals.xlsx", sheet=2);
range = 3:16;

hg_scapula_DHA = cbind(hg[range,7], hg[range,19]);
hg_scapula_GLP = cbind(hg[range,11], hg[range,23]);
hg_scapula_GLM = cbind(hg[range,15], hg[range,27]);
hg_humerus_GL = cbind(hg[range,31], hg[range,39]);
hg_humerus_SHD = cbind(hg[range,35], hg[range,43]);
hg_radius_GL = cbind(hg[range,47],hg[range,55]);
hg_radius_SBD = cbind(hg[range,51],hg[range,59]);
hg_ulna_GL = cbind(hg[range,63],hg[range,71]);
hg_ulna_SBD = cbind(hg[range,67],hg[range,75]);

wc_hg_scapula_DHA = wilcox.test(hg_scapula_DHA[,1],hg_scapula_DHA[,2], paired=TRUE);
print("ph_scapula_DHA");
print(wc_hg_scapula_DHA);

wc_hg_scapula_GLP = wilcox.test(hg_scapula_GLP[,1],hg_scapula_GLP[,2], paired=TRUE);
print("ph_scapula_GLP");
print(wc_hg_scapula_GLP);

wc_hg_scapula_GLM = wilcox.test(hg_scapula_GLM[,1],hg_scapula_GLM[,2], paired=TRUE);
print("ph_scapula_GLM");
print(wc_hg_scapula_GLM);

wc_hg_humerus_GL = wilcox.test(hg_humerus_GL[,1],hg_humerus_GL[,2], paired=TRUE);
print("ph_humerus_GL");
print(wc_hg_humerus_GL);

wc_hg_humerus_SHD = wilcox.test(hg_humerus_SHD[,1],hg_humerus_SHD[,2], paired=TRUE);
print("ph_humerus_SHD");
print(wc_hg_humerus_SHD);

wc_hg_ulna_GL = wilcox.test(hg_ulna_GL[,1],hg_ulna_GL[,2], paired=TRUE);
print("ph_ulna_GL");
print(wc_hg_ulna_GL);

wc_hg_ulna_SBD = wilcox.test(hg_ulna_SBD[,1],hg_ulna_SBD[,2], paired=TRUE);
print("ph_ulna_SBD");
print(wc_hg_ulna_SBD);
