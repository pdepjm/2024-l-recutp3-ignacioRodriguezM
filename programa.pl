% Aquí va el código.
empleado(maria).
empleado(nora).
empleado(felipe).
empleado(hugo).
cadete(juan).
cadete(pedro).
cadete(ana).
pasante(roque).

trabajaEnVentas(maria).
trabajaEnVentas(roque).
trabajaEnVentas(juan).

trabajaEnCompras(nora).
trabajaEnCompras(pedro).

trabajaEnAdministracion(felipe).
trabajaEnAdministracion(hugo).
trabajaEnAdministracion(ana).

% consultas :
% trabajaEnConpras(Quien).    trabajaEnVentas(Quien).

trabajanJuntos(UnaPersona, OtraPersona) :- trabajaEnVentas(UnaPersona), trabajaEnVentas(OtraPersona).
trabajanJuntos(UnaPersona, OtraPersona) :- trabajaEnCompras(UnaPersona), trabajaEnCompras(OtraPersona).
trabajanJuntos(UnaPersona, OtraPersona) :- trabajaEnAdministracion(UnaPersona), trabajaEnAdministracion(OtraPersona).

puedeDarleOrdenes(Jefe, Esbirro) :- trabajanJuntos(Jefe, Esbirro), tieneCargoSuperior(Jefe, Esbirro).

tieneCargoSuperior(Jefe, Esbirro) :- empleado(Jefe), cadete(Esbirro).
tieneCargoSuperior(Jefe, Esbirro) :- empleado(Jefe), pasante(Esbirro).
tieneCargoSuperior(Jefe, Esbirro) :- cadete(Jefe), pasante(Esbirro).
