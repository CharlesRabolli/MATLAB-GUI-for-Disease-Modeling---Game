function Vac = Vaccine(t,y, Population, Vir, VaccineDispersal)

D = y(1);
I = y(2);
V = y(3);

if V < Population - D - I
Vac = [I; 0.0005*(Population - D - V)*Vir*t/7;(Population - D)/VaccineDispersal];
else Vac = [0, -I, 0];
end