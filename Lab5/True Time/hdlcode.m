function [exectime, data] = hdlcode(seg, data)


% Returns task that got an overrun.
task = sscanf(ttGetInvoker,'DLtimer:%s'); 

if ~isempty(task)
  ttKillJob(task)   % Enforce hard deadlines by 
                    % terminating job at deadline.
end
  exectime = -1;
end
