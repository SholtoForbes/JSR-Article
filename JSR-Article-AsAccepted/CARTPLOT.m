% CART3D Data plotting
clear all

ncells = [27824 41824 62629 122699 236178 456738 884220];
error = [6.9872671e-003 1.0584100e-002 7.2187595e-003  4.3609885e-003 3.9033413e-003 3.5313933e-003 3.0400666e-003];
func = [7.7276233e-002 8.5828604e-002 7.9795358e-002  7.2958829e-002 7.2286981e-002 7.0283202e-002 6.7937442e-002];
func_cor = [7.9306642e-002 9.5714225e-002 6.6218919e-002  7.1581603e-002 7.0282358e-002 6.8465749e-002 6.6203613e-002];


ax1 = subplot(2,1,1);
plot(ncells,error,'k-o','MarkerEdgeColor','none','MarkerFaceColor','k','MarkerSize',8);
xlim([ncells(1) ncells(end)])
ylabel('Error Estimate')

subplot(2,1,2)
hold on
plot(ncells,func,'k-o','MarkerEdgeColor','none','MarkerFaceColor','k','MarkerSize',8)
plot(ncells,func_cor,'k--d','MarkerEdgeColor','none','MarkerFaceColor','k','MarkerSize',8)
xlim([ncells(1) ncells(end)])
legend('Functional','Corrected Functional');
xlabel('No. of Cells')