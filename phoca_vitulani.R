library(gdata);
library(xlsx);

# Process sheet1: Phoca Vitulani
pv = read.xls("measurements.xlsx", sheet=1);

pv_scapula_DHA = cbind(pv[3:29,7], pv[3:29,19]);
pv_scapula_GLP = cbind(pv[3:29,11], pv[3:29,23]);
pv_scapula_GLM = cbind(pv[3:29,15], pv[3:29,27]);
pv_humerus_GL = cbind(pv[3:29,31], pv[3:29,39]);
pv_humerus_SHD = cbind(pv[3:29,35], pv[3:29,43]);
pv_radius_GL = cbind(pv[3:29,47], pv[3:29,55]);
pv_radius_SBD = cbind(pv[3:29,51], pv[3:29,59]);
pv_ulna_GL = cbind(pv[3:29,63],pv[3:29,71]);
pv_ulna_SBD = cbind(pv[3:29,67],pv[3:29,75]);


wc_pv_scapula_DHA = wilcox.test(pv_scapula_DHA[,1],pv_scapula_DHA[,2], paired=TRUE);
print("pv_scapula_DHA");
print(wc_pv_scapula_DHA);

#phoca_vitulani <- createWorkbook();
#print(pv_scapula_DHA);
#write.xlsx(pv_scapula_DHA, "phoca_vitulani.xlsx");


wc_pv_scapula_GLP = wilcox.test(pv_scapula_GLP[,1],pv_scapula_GLP[,2], paired=TRUE);
print("pv_scapula_GLP");
print(wc_pv_scapula_GLP);

wc_pv_scapula_GLM = wilcox.test(pv_scapula_GLM[,1],pv_scapula_GLM[,2], paired=TRUE);
print("pv_scapula_GLM");
print(wc_pv_scapula_GLM);

wc_pv_humerus_GL = wilcox.test(pv_humerus_GL[,1],pv_humerus_GL[,2], paired=TRUE);
print("pv_humerus_GL");
print(wc_pv_humerus_GL);

wc_pv_humerus_SHD = wilcox.test(pv_humerus_SHD[,1],pv_humerus_SHD[,2], paired=TRUE);
print("pv_humerus_SHD");
print(wc_pv_humerus_SHD);

wc_pv_ulna_GL = wilcox.test(pv_ulna_GL[,1],pv_ulna_GL[,2], paired=TRUE);
print("pv_ulna_GL");
print(wc_pv_ulna_GL);

wc_pv_ulna_SBD = wilcox.test(pv_ulna_SBD[,1],pv_ulna_SBD[,2], paired=TRUE);
print("pv_ulna_SBD");
print(wc_pv_ulna_SBD);
