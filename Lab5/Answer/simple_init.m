function simple_init

ttInitKernel('prioFP')
tasks_name = {'t1', 't2', 't3', 't4'};
handler_name = {'a11', 'a12', 'a13', 'a14'};
F = [0.3303    0.6881   12.1816    1.5564];
data.K = F;           % controller proportional gain
data.exectime = 0.01;   % control task execution time
starttime = 0.0;       % control task start time
period = 0.014;          % control task period
data.uChan = 1;
data.yChan = 1;
ttCreatePeriodicTask('t1', starttime, period, 'ctrl_code', data);
ttCreateHandler('h1', 1, 'hdlcode');
ttAttachDLHandler('t1', 'h1');



%    data.yChan = i;
%    ttCreatePeriodicTask(tasks_name{i}, starttime, period, 'ctrl_code', data);
%    ttCreateHandler(handler_name{i}, 1, 'hdlcode');
%    ttAttachDLHandler(tasks_name{i}, handler_name{i});
%end