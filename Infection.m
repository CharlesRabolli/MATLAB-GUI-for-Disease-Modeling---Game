function dI = Infection(t,y, Population, Vir)

D = y(1);
I = y(2);

% I am claiming that 1 infected person infects 0.005 percent of the
% population of their country per week. This is multiplied by the virulence
% of the strain because a more virulent strain would allow more people to
% catch it than a less virulent strain

% I can also say that the death toll is equal to I because the disease is
% 100% lethal
dI = [I; 0.0005*(Population-D)*Vir*t/7];