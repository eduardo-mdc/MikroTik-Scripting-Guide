/interface bridge add name=bridge1;
/interface bridge port remove [find where interface=ether23];
/interface bridge port remove [find where interface=ether24];
/interface bridge port add bridge=bridge1 interface=ether23;
/interface bridge port add bridge=bridge1 interface=ether24;
/interface bridge port print