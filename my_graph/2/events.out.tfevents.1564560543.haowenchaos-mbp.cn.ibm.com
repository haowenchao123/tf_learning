       �K"	  �'SP�Abrain.Event:2נB��      q���	��'SP�A"�
N
hidden/alphaConst*
dtype0*
_output_shapes
: *
value	B :
l
hidden/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
^
hidden/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *  ��
^
hidden/random_uniform/maxConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
#hidden/random_uniform/RandomUniformRandomUniformhidden/random_uniform/shape*
dtype0*
_output_shapes

:*
seed2 *

seed *
T0
w
hidden/random_uniform/subSubhidden/random_uniform/maxhidden/random_uniform/min*
T0*
_output_shapes
: 
�
hidden/random_uniform/mulMul#hidden/random_uniform/RandomUniformhidden/random_uniform/sub*
T0*
_output_shapes

:
{
hidden/random_uniformAddhidden/random_uniform/mulhidden/random_uniform/min*
T0*
_output_shapes

:
�
hidden/weights
VariableV2*
dtype0*
_output_shapes

:*
	container *
shape
:*
shared_name 
�
hidden/weights/AssignAssignhidden/weightshidden/random_uniform*
T0*!
_class
loc:@hidden/weights*
validate_shape(*
_output_shapes

:*
use_locking(
{
hidden/weights/readIdentityhidden/weights*
T0*!
_class
loc:@hidden/weights*
_output_shapes

:
Y
hidden/zerosConst*
valueB*    *
dtype0*
_output_shapes
:
y
hidden/biases
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
�
hidden/biases/AssignAssignhidden/biaseshidden/zeros*
T0* 
_class
loc:@hidden/biases*
validate_shape(*
_output_shapes
:*
use_locking(
t
hidden/biases/readIdentityhidden/biases*
T0* 
_class
loc:@hidden/biases*
_output_shapes
:
l
conv1/weights/initial_valueConst*
valueB"  �?   @*
dtype0*
_output_shapes
:
y
conv1/weights
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
conv1/weights/AssignAssignconv1/weightsconv1/weights/initial_value*
T0* 
_class
loc:@conv1/weights*
validate_shape(*
_output_shapes
:*
use_locking(
t
conv1/weights/readIdentityconv1/weights*
T0* 
_class
loc:@conv1/weights*
_output_shapes
:
g
conv1/biases/initial_valueConst*
valueB*���>*
dtype0*
_output_shapes
:
x
conv1/biases
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
conv1/biases/AssignAssignconv1/biasesconv1/biases/initial_value*
use_locking(*
T0*
_class
loc:@conv1/biases*
validate_shape(*
_output_shapes
:
q
conv1/biases/readIdentityconv1/biases*
T0*
_class
loc:@conv1/biases*
_output_shapes
:"�͊