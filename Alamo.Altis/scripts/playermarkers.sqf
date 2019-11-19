[] spawn { 
  private ["_marker", "_unitNumber"];  
  while {true} do {
  
  
    _unitNumber = 0; 
    {
      if(side _x == playerSide) then {
       
        _unitNumber = _unitNumber + 1;
        _marker = format["um%1",_unitNumber];    
        if((getMarkerType _marker) == "") then {
            createMarkerLocal[_marker,getPos (vehicle _x)];
        } else {
          _marker setMarkerPosLocal (getPos (vehicle _x));
        };
        
        if(alive _x) then {
          if(group _x == group player) then {
            _marker setMarkerColorLocal "ColorBLUFOR";
          } else {
            _marker setMarkerColorLocal "Default";
          };
          _marker setMarkerTypeLocal "mil_dot";
          if(_x == player) then {
            _marker setMarkerSizeLocal [0.8,1];
          } else {
            _marker setMarkerSizeLocal [0.5,0.7];
          };
        } else {      
          _marker setMarkerColorLocal "ColorRed";
          _marker setMarkerTypeLocal "DestroyedVehicle";
          _marker setMarkerSizeLocal [0.7,0.7];  
        };
        if(vehicle _x == _x) then {
          _marker setMarkerTextLocal (name _x);
        } else {
          _marker setMarkerTextLocal format["%1 (%2)", name _x, getText(configFile>>"CfgVehicles">>(typeOf(vehicle _x))>>"DisplayName")];
        };
        _marker setMarkerDirLocal (getDir (vehicle _x));
      }; 
    } forEach playableUnits;
    
    _unitNumber = _unitNumber + 1;
    _marker = format["um%1",_unitNumber];
        
    while {(getMarkerType _marker) != ""} do {
      deleteMarkerLocal _marker;
      _unitNumber = _unitNumber + 1;
      _marker = format["um%1",_unitNumber];
    };
      
      
    sleep 0.5;

  }; 
};  