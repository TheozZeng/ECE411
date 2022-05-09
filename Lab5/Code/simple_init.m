function simple_init

ttInitKernel('prioFP')
data.K = F1;
data.exectime = 0.01;
starttime = 0;
period = 0.014;

ttCreatePeriodicTask('ctrl_task_A', starttime, period, 'ctrl_code', data);
ttCreateHandler('dl_handler_A');
ttAttachDLHandler('ctrl_task_A', 'dl_handler_A');
