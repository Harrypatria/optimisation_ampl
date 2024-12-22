# Declaration of variables
var wrenches >= 0; # Number of wrenches to produce
var pliers >= 0; # Number of pliers to produce

# Objective function to maximize profits
maximize earnings: 0.13 * wrenches + 0.10 * pliers;

# Constraints
subject to steel: 1.5 * wrenches + 1.0 * pliers <= 29000;
subject to molding: 1.0 * wrenches + 1.0 * pliers <= 21000;
subject to assembly: 0.3 * wrenches + 0.5 * pliers <= 9000;
subject to demand1: wrenches <= 15000;
subject to demand2: pliers <= 16000;

# Solve the 
#option solver minos;
#solve;


### shadow price
# reset;
# option solver cplex;
# option cplex_options 'sensitivity';
# solve;
# display steel.down, steel.up;

# Display the results
#display wrenches, pliers, earnings;
#display steel, assembly, demand1, demand2;

#display steel.slack;
#display assembly.slack;

#display demand1, demand2;
# positive shadow price: demand1 changed from 0 to 0.03 due to changes on steel from 2700 to 29000
# display demand1.slack;
# demand1.slack = 0 so we produced as many as wrenches 
# display wrenches, pliers;
#wrenches = 15000
#pliers = 6000
