function simple_init

ttInitKernel('prioFP')
tasks_name = {'t1', 't2', 't3', 't4'};
handler_name = {'a11', 'a12', 'a13', 'a14'};
F1 = [0.3303    0.6881   12.1816    1.5564];
F2 = [0.0161    0.0642    7.9157    0.6525];
F3 = [0.0183    0.0734    8.4448    0.7494];

data.K = F3;           % controller proportional gain
starttime = 0.0;       % control task start time

data.exectime = 0.017 %0.014 %0.01;   % control task execution time
period =        0.024 %0.02 %0.014;  % control task period

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