
*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov_cost_urban(t,i,"marginal") = vm_cost_urban.m(i);
 oq34_urban(t,i,"marginal")    = q34_urban.m(i);
 oq34_cost(t,i,"marginal")     = q34_cost.m(i);
 ov_cost_urban(t,i,"level")    = vm_cost_urban.l(i);
 oq34_urban(t,i,"level")       = q34_urban.l(i);
 oq34_cost(t,i,"level")        = q34_cost.l(i);
 ov_cost_urban(t,i,"upper")    = vm_cost_urban.up(i);
 oq34_urban(t,i,"upper")       = q34_urban.up(i);
 oq34_cost(t,i,"upper")        = q34_cost.up(i);
 ov_cost_urban(t,i,"lower")    = vm_cost_urban.lo(i);
 oq34_urban(t,i,"lower")       = q34_urban.lo(i);
 oq34_cost(t,i,"lower")        = q34_cost.lo(i);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################

