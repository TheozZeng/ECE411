function simple_init_1(arg)

ttInitKernel('prioFP')

data.K = 2;            % controller proportional gain
data.exectime = 0.5;   % control task execution time
starttime = 0.0;       % control task start time
period = 0.5;          % control task period

ttCreatePeriodicTask('ctrl_task', starttime, period, 'ctrl_code_1', data)
