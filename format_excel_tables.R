library(gdata);

# source("format_excel_tables.R", print.eval  = TRUE);

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


# Process sheet2: Halichoerus grypus
hg = read.xls("measurements.xlsx", sheet=2);
range = 3:15;
hg_scapula_DHA = cbind(hg[range,7], hg[range,19]);
hg_scapula_GLP = cbind(hg[range,11], hg[range,23]);
hg_scapula_GLM = cbind(hg[range,15], hg[range,27]);
hg_humerus_GL = cbind(hg[range,31], hg[range,39]);
hg_humerus_SHD = cbind(hg[range,35], hg[range,43]);
hg_radius_GL = cbind(hg[range,47],hg[range,55]);
hg_radius_SBD = cbind(hg[range,51],hg[range,59]);
hg_ulna_GL = cbind(hg[range,63],hg[range,71]);
hg_ulna_SBD = cbind(hg[range,67],hg[range,75]);

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
