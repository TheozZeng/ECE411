function node_init

ttInitKernel('prioFP')
%ttInitKernel('prioDM');
%ttInitKernel('prioEDF');
tasks_name = {'t1', 't2', 't3'};
handler_name = {'a11', 'a12', 'a13'};

data.K = [0.0138    0.0550    8.1716    0.5565];
data.exectime = 0.01;
starttime = 0.0;       % control task start time
period = 0.05;%0.041;%0.04;%0.014;          % control task period
data.uChan = 1;
data.yChan = 1;
ttCreatePeriodicTask('t1', starttime, period, 'ctrl_code', data);

ttCreateHandler(handler_name{1}, 1, 'hdlcode');
ttSetPriority(1, 't1');
ttAttachDLHandler(tasks_name{1}, handler_name{1});


data.u = 0;
data.K = [0.0161    0.0642    7.9157    0.6525];
data.exectime = 0.014;
starttime = 0.0;       % control task start time
period = 0.056;%0.041;%0.056;%0.02;          % control task period
data.uChan = 2;
data.yChan = 5;
ttCreatePeriodicTask('t2', starttime, period, 'ctrl_code', data);

ttCreateHandler(handler_name{2}, 1, 'hdlcode');
ttSetPriority(2, 't2');
ttAttachDLHandler('t2', handler_name{2});





data.u = 0;
data.K = [0.0183    0.0734    8.4448    0.7494];
data.exectime = 0.017;
starttime = 0.0;       % control task start time
period = 0.0567;%;0.041;%0.068;%0.024;          % control task period
data.uChan = 3;
data.yChan = 9;
ttCreatePeriodicTask('t3', starttime, period, 'ctrl_code', data);

ttCreateHandler(handler_name{3}, 1, 'hdlcode');
ttSetPriority(3, 't3');
ttAttachDLHandler('t3', handler_name{3});