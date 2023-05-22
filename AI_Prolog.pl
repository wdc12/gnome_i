% Facts about hospitals
hospital(st_mary).
hospital(city_general).
hospital(community_medical).

% Facts about medical facilities
medical_facility(pharmacy).
medical_facility(laboratory).
medical_facility(radiology).

% Relationships between hospitals and medical facilities
has_facility(st_mary, pharmacy).
has_facility(st_mary, laboratory).
has_facility(city_general, pharmacy).
has_facility(city_general, radiology).
has_facility(community_medical, pharmacy).
has_facility(community_medical, laboratory).
has_facility(community_medical, radiology).

% Rules to check if a hospital has a specific medical facility
has_medical_facility(Hospital, Facility) :-
    hospital(Hospital),
    medical_facility(Facility),
    has_facility(Hospital, Facility).

% Query examples
% Check if St. Mary Hospital has a pharmacy
% has_medical_facility(st_mary, pharmacy).
%
% Check if City General Hospital has a radiology department
% has_medical_facility(city_general, radiology).
