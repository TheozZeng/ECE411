function [exectime, data] = ctrl_code(segment, data)

switch segment
 case 1
     
  y(1) = ttAnalogIn(data.yChan);
  y(2) = ttAnalogIn(data.yChan + 1);
  y(3) = ttAnalogIn(data.yChan + 2);
  y(4) = ttAnalogIn(data.yChan + 3);
  data.u = data.K * y';
  exectime = data.exectime;
 case 2
  ttAnalogOut(data.uChan, data.u)
  exectime = -1;
end
