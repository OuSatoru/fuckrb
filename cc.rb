require 'continuation'

yin, yang =
    callcc{|c| c}.tap{print '@'},
    callcc{|c| c}.tap{print '*'}

yin.(yang)