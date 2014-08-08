# This is the 2-sided version of the Cuzick test
# REF: Cuzick J. A Wilcoxon-type test for trend. Stat Med. 1985;4(1):87-90

cuzick = function(x, z) {
N = length(z)
n = unique(z)
ranks = rank(x)
T = sum(ranks*z)
p = (table(z)/N)
E_Z = sum(unique(z)*p)
E_T = 0.5*N*(N+1)*E_Z
Var_Z = sum(unique(z)^2*p) - E_Z^2
Var_T = N^2*(N+1)/12*Var_Z
Zscore = (T-E_T)/sqrt(Var_T)
pval = 2*pnorm(-abs(Zscore))
out = data.frame(cbind(Zscore, pval))
colnames(out) = c("Z-Score","P value")
return(out)
}