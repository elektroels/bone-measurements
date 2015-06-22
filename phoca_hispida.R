library(gdata);

# Process sheet3: Phoca hispida
ph = read.xls("measurements.xlsx", sheet=3);
range = 3:23;

ph_scapula_DHA = cbind(ph[range,7], ph[range,19]);
ph_scapula_GLP = cbind(ph[range,11], ph[range,23]);
ph_scapula_GLM = cbind(ph[range,15], ph[range,27]);
ph_humerus_GL = cbind(ph[range,31], ph[range,39]);
ph_humerus_SHD = cbind(ph[range,35], ph[range,43]);
ph_radius_GL = cbind(ph[range,47], ph[range,55]);
ph_radius_SBD  = cbind(ph[range,51], ph[range,59]);
ph_ulna_GL = cbind(ph[range,63], ph[range,71]);
ph_ulna_SBD = cbind(ph[range,67], ph[range,75]);

wc_ph_scapula_DHA = wilcox.test(ph_scapula_DHA[,1],ph_scapula_DHA[,2], paired=TRUE);
print("ph_scapula_DHA");
print(wc_ph_scapula_DHA);

wc_ph_scapula_GLP = wilcox.test(ph_scapula_GLP[,1],ph_scapula_GLP[,2], paired=TRUE);
print("ph_scapula_GLP");
print(wc_ph_scapula_GLP);

wc_ph_scapula_GLM = wilcox.test(ph_scapula_GLM[,1],ph_scapula_GLM[,2], paired=TRUE);
print("ph_scapula_GLM");
print(wc_ph_scapula_GLM);

wc_ph_humerus_GL = wilcox.test(ph_humerus_GL[,1],ph_humerus_GL[,2], paired=TRUE);
print("ph_humerus_GL");
print(wc_ph_humerus_GL);

wc_ph_humerus_SHD = wilcox.test(ph_humerus_SHD[,1],ph_humerus_SHD[,2], paired=TRUE);
print("ph_humerus_SHD");
print(wc_ph_humerus_SHD);

wc_ph_ulna_GL = wilcox.test(ph_ulna_GL[,1],ph_ulna_GL[,2], paired=TRUE);
print("ph_ulna_GL");
print(wc_ph_ulna_GL);

wc_ph_ulna_SBD = wilcox.test(ph_ulna_SBD[,1],ph_ulna_SBD[,2], paired=TRUE);
print("ph_ulna_SBD");
print(wc_ph_ulna_SBD);
