#! /bin/csh

set N = $1
set S = ($N 'a' 'b' 'c' 0)
while ($#S > 0)
  set disks = $S[1]; shift S
  set from  = $S[1]; shift S
  set to    = $S[1]; shift S
  set via   = $S[1]; shift S
  set act   = $S[1]; shift S
  set sub_disks = `expr $disks - 1`
  if ($act == 0) then
    if ($disks == 1) then
      echo "$from -> $to"
    else
      set S = ($sub_disks $from $via $to 0 $disks $from $to $via 1 $S)
    endif
  else
    echo "$from -> $to"
    set S = ($sub_disks $via $to $from 0 $S)
  endif
end
