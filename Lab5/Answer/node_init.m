function node_init

ttInitKernel('prioFP')
tasks_name = {'t1', 't2', 't3'};
handler_name = {'a11', 'a12', 'a13'};

data.K = [0.3303    0.6881   12.1816    1.5564];
data.exectime = 0.01;
starttime = 0.0;       % control task start time
period = 0.034;          % control task period
data.uChan = 1;
data.yChan = 1;
ttCreatePeriodicTask('t1', starttime, period, 'ctrl_code', data);
ttCreateHandler(handler_name{1}, 1, 'hdlcode');
ttAttachDLHandler(tasks_name{1}, handler_name{1});


data.u = 0;
data.K = [0.3853    0.8028   12.6125    1.8560];
data.exectime = 0.014;
starttime = 0.0;       % control task start time
period = 0.02;          % control task period
data.uChan = 2;
data.yChan = 5;
ttCreatePeriodicTask('t2', starttime, period, 'ctrl_code', data);
ttCreateHandler(handler_name{2}, 1, 'hdlcode');
ttAttachDLHandler('t2', handler_name{2});





data.u = 0;
data.K = [0.4404    0.9174   13.8336    2.1670];
data.exectime = 0.017;
starttime = 0.0;       % control task start time
period = 0.017;          % control task period
data.uChan = 3;
data.yChan = 9;
ttCreatePeriodicTask('t3', starttime, period, 'ctrl_code', data);
ttCreateHandler(handler_name{3}, 1, 'hdlcode');
ttAttachDLHandler('t3', handler_name{3});