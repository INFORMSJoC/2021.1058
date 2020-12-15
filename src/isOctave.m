% --------------------------------------------------------------------------
%
% Copyright (C) 2018-2020 David Papp and Sercan Yildiz.
%
% Redistribution and use of this software are subject to conditions.
% See LICENSE for details.
%
% --------------------------------------------------------------------------

function isoct = isOctave()
% Returns true if function is called from Octave (as opposed to Matlab)

    isoct = exist('OCTAVE_VERSION', 'builtin') ~= 0;

return
