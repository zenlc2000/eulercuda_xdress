import os
from xdress.utils import apiname



package = 'eulercuda'     # top-level python package name
packagedir = 'eulercuda'  # location of the python package
includes = ['src']

plugins = ('xdress.autoall', 'xdress.pep8names', 'xdress.cythongen', 
           'xdress.extratypes')

_fromsrcdir = lambda x: os.path.join('src', x)

_fromgpu = {'srcfiles': _fromsrcdir('*.cu'),
			'language': 'c'}
_incommon = {'srcfiles': _fromsrcdir('common*'),
                'incfiles': 'common.h',
                'language': 'c'
                }


variables = [ 
    apiname('*', **_incommon)
    ]
# stlcontainers = [
#     ('vector', 'str'),
#     ('set', 'uint'),
#     ('map', 'int', 'float'),
#     ]

# will be used later, but need to be present now
# classes = []

functions = [
	apiname('constructDebruijnGraphDevice',**_fromgpu),
	apiname('findComponentDevice',**_fromgpu),
	apiname('encodeLmer',**_fromgpu),
	apiname('encodeLmerComplement',**_fromgpu),
	apiname('computeKmer',**_fromgpu),
	apiname('findEulerDevice',**_fromgpu),
	apiname('executeSwipeDevice',**_fromgpu),
	apiname('markContigStart',**_fromgpu)
	]