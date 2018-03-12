function [color] = obtenerColorNDVI(valorNDVI)
  if( valorNDVI < -0.33 )
    color = [255 0 0];
  end
  if( valorNDVI >= -0.33 && valorNDVI < -0.1 )
    color = [180 0 0];
  end
  if( valorNDVI >= -0.1 && valorNDVI < 0 )
    color = [51 0 0];
  end
  if( valorNDVI >= 0 && valorNDVI < 0.1 )
    color = [0 51 0];
  end
  if( valorNDVI >= 0.1 && valorNDVI < 0.2 )
    color = [0 102 0];
  end
  if( valorNDVI >= 0.2 && valorNDVI < 0.3 )
    color = [0 153 0];
  end
  if( valorNDVI >= 0.3 && valorNDVI < 0.4 )
    color = [0 204 0];
  end
  if( valorNDVI >= 0.4 )
    color = [0 255 0];
  end
endfunction