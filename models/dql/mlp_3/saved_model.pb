вс
Њ§
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"serve*2.2.02v2.2.0-rc4-8-g2b96f3662b8ФЫ
v
Start/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђ*
shared_nameStart/kernel
o
 Start/kernel/Read/ReadVariableOpReadVariableOpStart/kernel* 
_output_shapes
:
ђ*
dtype0
m

Start/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Start/bias
f
Start/bias/Read/ReadVariableOpReadVariableOp
Start/bias*
_output_shapes	
:*
dtype0

Intermediate/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameIntermediate/kernel
}
'Intermediate/kernel/Read/ReadVariableOpReadVariableOpIntermediate/kernel* 
_output_shapes
:
*
dtype0
{
Intermediate/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameIntermediate/bias
t
%Intermediate/bias/Read/ReadVariableOpReadVariableOpIntermediate/bias*
_output_shapes	
:*
dtype0
w
Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_nameOutput/kernel
p
!Output/kernel/Read/ReadVariableOpReadVariableOpOutput/kernel*
_output_shapes
:	*
dtype0
n
Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameOutput/bias
g
Output/bias/Read/ReadVariableOpReadVariableOpOutput/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

Adam/Start/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђ*$
shared_nameAdam/Start/kernel/m
}
'Adam/Start/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Start/kernel/m* 
_output_shapes
:
ђ*
dtype0
{
Adam/Start/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Start/bias/m
t
%Adam/Start/bias/m/Read/ReadVariableOpReadVariableOpAdam/Start/bias/m*
_output_shapes	
:*
dtype0

Adam/Intermediate/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/Intermediate/kernel/m

.Adam/Intermediate/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Intermediate/kernel/m* 
_output_shapes
:
*
dtype0

Adam/Intermediate/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Intermediate/bias/m

,Adam/Intermediate/bias/m/Read/ReadVariableOpReadVariableOpAdam/Intermediate/bias/m*
_output_shapes	
:*
dtype0

Adam/Output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/Output/kernel/m
~
(Adam/Output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/m*
_output_shapes
:	*
dtype0
|
Adam/Output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Output/bias/m
u
&Adam/Output/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output/bias/m*
_output_shapes
:*
dtype0

Adam/Start/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђ*$
shared_nameAdam/Start/kernel/v
}
'Adam/Start/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Start/kernel/v* 
_output_shapes
:
ђ*
dtype0
{
Adam/Start/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Start/bias/v
t
%Adam/Start/bias/v/Read/ReadVariableOpReadVariableOpAdam/Start/bias/v*
_output_shapes	
:*
dtype0

Adam/Intermediate/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/Intermediate/kernel/v

.Adam/Intermediate/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Intermediate/kernel/v* 
_output_shapes
:
*
dtype0

Adam/Intermediate/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Intermediate/bias/v

,Adam/Intermediate/bias/v/Read/ReadVariableOpReadVariableOpAdam/Intermediate/bias/v*
_output_shapes	
:*
dtype0

Adam/Output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/Output/kernel/v
~
(Adam/Output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/v*
_output_shapes
:	*
dtype0
|
Adam/Output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Output/bias/v
u
&Adam/Output/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ќ%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ч$
valueн$Bк$ Bг$
ѓ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
Ќ
!iter

"beta_1

#beta_2
	$decay
%learning_ratemDmEmFmGmHmIvJvKvLvMvNvO
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
­

&layers
	variables
trainable_variables
'non_trainable_variables
regularization_losses
(layer_regularization_losses
)layer_metrics
*metrics
 
 
 
 
­

+layers
	variables
trainable_variables
,non_trainable_variables
regularization_losses
-layer_regularization_losses
.layer_metrics
/metrics
XV
VARIABLE_VALUEStart/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Start/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

0layers
	variables
trainable_variables
1non_trainable_variables
regularization_losses
2layer_regularization_losses
3layer_metrics
4metrics
_]
VARIABLE_VALUEIntermediate/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEIntermediate/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

5layers
	variables
trainable_variables
6non_trainable_variables
regularization_losses
7layer_regularization_losses
8layer_metrics
9metrics
YW
VARIABLE_VALUEOutput/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEOutput/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

:layers
	variables
trainable_variables
;non_trainable_variables
regularization_losses
<layer_regularization_losses
=layer_metrics
>metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 
 
 

?0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	@total
	Acount
B	variables
C	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

B	variables
{y
VARIABLE_VALUEAdam/Start/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Start/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Intermediate/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Intermediate/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Start/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Start/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Intermediate/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Intermediate/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_InputPlaceholder*/
_output_shapes
:џџџџџџџџџ*
dtype0*$
shape:џџџџџџџџџ
§
StatefulPartitionedCallStatefulPartitionedCallserving_default_InputStart/kernel
Start/biasIntermediate/kernelIntermediate/biasOutput/kernelOutput/bias*
Tin
	2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*/
f*R(
&__inference_signature_wrapper_20487661
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ь	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename Start/kernel/Read/ReadVariableOpStart/bias/Read/ReadVariableOp'Intermediate/kernel/Read/ReadVariableOp%Intermediate/bias/Read/ReadVariableOp!Output/kernel/Read/ReadVariableOpOutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/Start/kernel/m/Read/ReadVariableOp%Adam/Start/bias/m/Read/ReadVariableOp.Adam/Intermediate/kernel/m/Read/ReadVariableOp,Adam/Intermediate/bias/m/Read/ReadVariableOp(Adam/Output/kernel/m/Read/ReadVariableOp&Adam/Output/bias/m/Read/ReadVariableOp'Adam/Start/kernel/v/Read/ReadVariableOp%Adam/Start/bias/v/Read/ReadVariableOp.Adam/Intermediate/kernel/v/Read/ReadVariableOp,Adam/Intermediate/bias/v/Read/ReadVariableOp(Adam/Output/kernel/v/Read/ReadVariableOp&Adam/Output/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8**
f%R#
!__inference__traced_save_20487922
г
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameStart/kernel
Start/biasIntermediate/kernelIntermediate/biasOutput/kernelOutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/Start/kernel/mAdam/Start/bias/mAdam/Intermediate/kernel/mAdam/Intermediate/bias/mAdam/Output/kernel/mAdam/Output/bias/mAdam/Start/kernel/vAdam/Start/bias/vAdam/Intermediate/kernel/vAdam/Intermediate/bias/vAdam/Output/kernel/vAdam/Output/bias/v*%
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*-
f(R&
$__inference__traced_restore_20488009у
э
Ћ
C__inference_Start_layer_call_and_return_conditional_losses_20487771

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџђ:::P L
(
_output_shapes
:џџџџџџџџџђ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 

F
*__inference_Flatten_layer_call_fn_20487760

inputs
identityЅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_Flatten_layer_call_and_return_conditional_losses_204874492
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


/__inference_Intermediate_layer_call_fn_20487800

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_204874952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ъ
Ќ
D__inference_Output_layer_call_and_return_conditional_losses_20487522

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:::P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
є
В
J__inference_Intermediate_layer_call_and_return_conditional_losses_20487495

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:::P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ъ
Ќ
D__inference_Output_layer_call_and_return_conditional_losses_20487811

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:::P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ћ
}
(__inference_Start_layer_call_fn_20487780

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_Start_layer_call_and_return_conditional_losses_204874682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџђ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџђ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
І 

#__inference__wrapped_model_20487439	
input3
/sequential_start_matmul_readvariableop_resource4
0sequential_start_biasadd_readvariableop_resource:
6sequential_intermediate_matmul_readvariableop_resource;
7sequential_intermediate_biasadd_readvariableop_resource4
0sequential_output_matmul_readvariableop_resource5
1sequential_output_biasadd_readvariableop_resource
identity
sequential/Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџђ   2
sequential/Flatten/Const 
sequential/Flatten/ReshapeReshapeinput!sequential/Flatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџђ2
sequential/Flatten/ReshapeТ
&sequential/Start/MatMul/ReadVariableOpReadVariableOp/sequential_start_matmul_readvariableop_resource* 
_output_shapes
:
ђ*
dtype02(
&sequential/Start/MatMul/ReadVariableOpФ
sequential/Start/MatMulMatMul#sequential/Flatten/Reshape:output:0.sequential/Start/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential/Start/MatMulР
'sequential/Start/BiasAdd/ReadVariableOpReadVariableOp0sequential_start_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'sequential/Start/BiasAdd/ReadVariableOpЦ
sequential/Start/BiasAddBiasAdd!sequential/Start/MatMul:product:0/sequential/Start/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential/Start/BiasAdd
sequential/Start/ReluRelu!sequential/Start/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential/Start/Reluз
-sequential/Intermediate/MatMul/ReadVariableOpReadVariableOp6sequential_intermediate_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02/
-sequential/Intermediate/MatMul/ReadVariableOpй
sequential/Intermediate/MatMulMatMul#sequential/Start/Relu:activations:05sequential/Intermediate/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
sequential/Intermediate/MatMulе
.sequential/Intermediate/BiasAdd/ReadVariableOpReadVariableOp7sequential_intermediate_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential/Intermediate/BiasAdd/ReadVariableOpт
sequential/Intermediate/BiasAddBiasAdd(sequential/Intermediate/MatMul:product:06sequential/Intermediate/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
sequential/Intermediate/BiasAddЁ
sequential/Intermediate/ReluRelu(sequential/Intermediate/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential/Intermediate/ReluФ
'sequential/Output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02)
'sequential/Output/MatMul/ReadVariableOpЭ
sequential/Output/MatMulMatMul*sequential/Intermediate/Relu:activations:0/sequential/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential/Output/MatMulТ
(sequential/Output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/Output/BiasAdd/ReadVariableOpЩ
sequential/Output/BiasAddBiasAdd"sequential/Output/MatMul:product:00sequential/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential/Output/BiasAdd
sequential/Output/SigmoidSigmoid"sequential/Output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential/Output/Sigmoidq
IdentityIdentitysequential/Output/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ:::::::V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Н
a
E__inference_Flatten_layer_call_and_return_conditional_losses_20487755

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџђ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџђ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ж
H__inference_sequential_layer_call_and_return_conditional_losses_20487539	
input
start_20487479
start_20487481
intermediate_20487506
intermediate_20487508
output_20487533
output_20487535
identityЂ$Intermediate/StatefulPartitionedCallЂOutput/StatefulPartitionedCallЂStart/StatefulPartitionedCallД
Flatten/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_Flatten_layer_call_and_return_conditional_losses_204874492
Flatten/PartitionedCall
Start/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0start_20487479start_20487481*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_Start_layer_call_and_return_conditional_losses_204874682
Start/StatefulPartitionedCallА
$Intermediate/StatefulPartitionedCallStatefulPartitionedCall&Start/StatefulPartitionedCall:output:0intermediate_20487506intermediate_20487508*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_204874952&
$Intermediate/StatefulPartitionedCall
Output/StatefulPartitionedCallStatefulPartitionedCall-Intermediate/StatefulPartitionedCall:output:0output_20487533output_20487535*
Tin
2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_204875222 
Output/StatefulPartitionedCallу
IdentityIdentity'Output/StatefulPartitionedCall:output:0%^Intermediate/StatefulPartitionedCall^Output/StatefulPartitionedCall^Start/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::2L
$Intermediate/StatefulPartitionedCall$Intermediate/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2>
Start/StatefulPartitionedCallStart/StatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Н
a
E__inference_Flatten_layer_call_and_return_conditional_losses_20487449

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџђ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџђ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

і
H__inference_sequential_layer_call_and_return_conditional_losses_20487688

inputs(
$start_matmul_readvariableop_resource)
%start_biasadd_readvariableop_resource/
+intermediate_matmul_readvariableop_resource0
,intermediate_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityo
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџђ   2
Flatten/Const
Flatten/ReshapeReshapeinputsFlatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџђ2
Flatten/ReshapeЁ
Start/MatMul/ReadVariableOpReadVariableOp$start_matmul_readvariableop_resource* 
_output_shapes
:
ђ*
dtype02
Start/MatMul/ReadVariableOp
Start/MatMulMatMulFlatten/Reshape:output:0#Start/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Start/MatMul
Start/BiasAdd/ReadVariableOpReadVariableOp%start_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
Start/BiasAdd/ReadVariableOp
Start/BiasAddBiasAddStart/MatMul:product:0$Start/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Start/BiasAddk

Start/ReluReluStart/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Start/ReluЖ
"Intermediate/MatMul/ReadVariableOpReadVariableOp+intermediate_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"Intermediate/MatMul/ReadVariableOp­
Intermediate/MatMulMatMulStart/Relu:activations:0*Intermediate/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Intermediate/MatMulД
#Intermediate/BiasAdd/ReadVariableOpReadVariableOp,intermediate_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#Intermediate/BiasAdd/ReadVariableOpЖ
Intermediate/BiasAddBiasAddIntermediate/MatMul:product:0+Intermediate/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Intermediate/BiasAdd
Intermediate/ReluReluIntermediate/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Intermediate/ReluЃ
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
Output/MatMul/ReadVariableOpЁ
Output/MatMulMatMulIntermediate/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Output/MatMulЁ
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Output/BiasAdd/ReadVariableOp
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Output/BiasAddv
Output/SigmoidSigmoidOutput/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Output/Sigmoidf
IdentityIdentityOutput/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ:::::::W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

і
H__inference_sequential_layer_call_and_return_conditional_losses_20487715

inputs(
$start_matmul_readvariableop_resource)
%start_biasadd_readvariableop_resource/
+intermediate_matmul_readvariableop_resource0
,intermediate_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityo
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџђ   2
Flatten/Const
Flatten/ReshapeReshapeinputsFlatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџђ2
Flatten/ReshapeЁ
Start/MatMul/ReadVariableOpReadVariableOp$start_matmul_readvariableop_resource* 
_output_shapes
:
ђ*
dtype02
Start/MatMul/ReadVariableOp
Start/MatMulMatMulFlatten/Reshape:output:0#Start/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Start/MatMul
Start/BiasAdd/ReadVariableOpReadVariableOp%start_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
Start/BiasAdd/ReadVariableOp
Start/BiasAddBiasAddStart/MatMul:product:0$Start/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Start/BiasAddk

Start/ReluReluStart/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Start/ReluЖ
"Intermediate/MatMul/ReadVariableOpReadVariableOp+intermediate_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"Intermediate/MatMul/ReadVariableOp­
Intermediate/MatMulMatMulStart/Relu:activations:0*Intermediate/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Intermediate/MatMulД
#Intermediate/BiasAdd/ReadVariableOpReadVariableOp,intermediate_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#Intermediate/BiasAdd/ReadVariableOpЖ
Intermediate/BiasAddBiasAddIntermediate/MatMul:product:0+Intermediate/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Intermediate/BiasAdd
Intermediate/ReluReluIntermediate/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Intermediate/ReluЃ
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
Output/MatMul/ReadVariableOpЁ
Output/MatMulMatMulIntermediate/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Output/MatMulЁ
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Output/BiasAdd/ReadVariableOp
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Output/BiasAddv
Output/SigmoidSigmoidOutput/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Output/Sigmoidf
IdentityIdentityOutput/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ:::::::W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
О
-__inference_sequential_layer_call_fn_20487749

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_204876192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

з
H__inference_sequential_layer_call_and_return_conditional_losses_20487619

inputs
start_20487603
start_20487605
intermediate_20487608
intermediate_20487610
output_20487613
output_20487615
identityЂ$Intermediate/StatefulPartitionedCallЂOutput/StatefulPartitionedCallЂStart/StatefulPartitionedCallЕ
Flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_Flatten_layer_call_and_return_conditional_losses_204874492
Flatten/PartitionedCall
Start/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0start_20487603start_20487605*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_Start_layer_call_and_return_conditional_losses_204874682
Start/StatefulPartitionedCallА
$Intermediate/StatefulPartitionedCallStatefulPartitionedCall&Start/StatefulPartitionedCall:output:0intermediate_20487608intermediate_20487610*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_204874952&
$Intermediate/StatefulPartitionedCall
Output/StatefulPartitionedCallStatefulPartitionedCall-Intermediate/StatefulPartitionedCall:output:0output_20487613output_20487615*
Tin
2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_204875222 
Output/StatefulPartitionedCallу
IdentityIdentity'Output/StatefulPartitionedCall:output:0%^Intermediate/StatefulPartitionedCall^Output/StatefulPartitionedCall^Start/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::2L
$Intermediate/StatefulPartitionedCall$Intermediate/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2>
Start/StatefulPartitionedCallStart/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

ж
H__inference_sequential_layer_call_and_return_conditional_losses_20487559	
input
start_20487543
start_20487545
intermediate_20487548
intermediate_20487550
output_20487553
output_20487555
identityЂ$Intermediate/StatefulPartitionedCallЂOutput/StatefulPartitionedCallЂStart/StatefulPartitionedCallД
Flatten/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_Flatten_layer_call_and_return_conditional_losses_204874492
Flatten/PartitionedCall
Start/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0start_20487543start_20487545*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_Start_layer_call_and_return_conditional_losses_204874682
Start/StatefulPartitionedCallА
$Intermediate/StatefulPartitionedCallStatefulPartitionedCall&Start/StatefulPartitionedCall:output:0intermediate_20487548intermediate_20487550*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_204874952&
$Intermediate/StatefulPartitionedCall
Output/StatefulPartitionedCallStatefulPartitionedCall-Intermediate/StatefulPartitionedCall:output:0output_20487553output_20487555*
Tin
2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_204875222 
Output/StatefulPartitionedCallу
IdentityIdentity'Output/StatefulPartitionedCall:output:0%^Intermediate/StatefulPartitionedCall^Output/StatefulPartitionedCall^Start/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::2L
$Intermediate/StatefulPartitionedCall$Intermediate/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2>
Start/StatefulPartitionedCallStart/StatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
шo

$__inference__traced_restore_20488009
file_prefix!
assignvariableop_start_kernel!
assignvariableop_1_start_bias*
&assignvariableop_2_intermediate_kernel(
$assignvariableop_3_intermediate_bias$
 assignvariableop_4_output_kernel"
assignvariableop_5_output_bias 
assignvariableop_6_adam_iter"
assignvariableop_7_adam_beta_1"
assignvariableop_8_adam_beta_2!
assignvariableop_9_adam_decay*
&assignvariableop_10_adam_learning_rate
assignvariableop_11_total
assignvariableop_12_count+
'assignvariableop_13_adam_start_kernel_m)
%assignvariableop_14_adam_start_bias_m2
.assignvariableop_15_adam_intermediate_kernel_m0
,assignvariableop_16_adam_intermediate_bias_m,
(assignvariableop_17_adam_output_kernel_m*
&assignvariableop_18_adam_output_bias_m+
'assignvariableop_19_adam_start_kernel_v)
%assignvariableop_20_adam_start_bias_v2
.assignvariableop_21_adam_intermediate_kernel_v0
,assignvariableop_22_adam_intermediate_bias_v,
(assignvariableop_23_adam_output_kernel_v*
&assignvariableop_24_adam_output_bias_v
identity_26ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ђ	RestoreV2ЂRestoreV2_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_namesР
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЈ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_start_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1
AssignVariableOp_1AssignVariableOpassignvariableop_1_start_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2
AssignVariableOp_2AssignVariableOp&assignvariableop_2_intermediate_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3
AssignVariableOp_3AssignVariableOp$assignvariableop_3_intermediate_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4
AssignVariableOp_4AssignVariableOp assignvariableop_4_output_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5
AssignVariableOp_5AssignVariableOpassignvariableop_5_output_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0	*
_output_shapes
:2

Identity_6
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:2

Identity_8
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11_
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:2
Identity_12
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_12_
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:2
Identity_13 
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_start_kernel_mIdentity_13:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_13_
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:2
Identity_14
AssignVariableOp_14AssignVariableOp%assignvariableop_14_adam_start_bias_mIdentity_14:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_14_
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:2
Identity_15Ї
AssignVariableOp_15AssignVariableOp.assignvariableop_15_adam_intermediate_kernel_mIdentity_15:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_15_
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:2
Identity_16Ѕ
AssignVariableOp_16AssignVariableOp,assignvariableop_16_adam_intermediate_bias_mIdentity_16:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_16_
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:2
Identity_17Ё
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_output_kernel_mIdentity_17:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_17_
Identity_18IdentityRestoreV2:tensors:18*
T0*
_output_shapes
:2
Identity_18
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_output_bias_mIdentity_18:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_18_
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:2
Identity_19 
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_start_kernel_vIdentity_19:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_19_
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:2
Identity_20
AssignVariableOp_20AssignVariableOp%assignvariableop_20_adam_start_bias_vIdentity_20:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_20_
Identity_21IdentityRestoreV2:tensors:21*
T0*
_output_shapes
:2
Identity_21Ї
AssignVariableOp_21AssignVariableOp.assignvariableop_21_adam_intermediate_kernel_vIdentity_21:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_21_
Identity_22IdentityRestoreV2:tensors:22*
T0*
_output_shapes
:2
Identity_22Ѕ
AssignVariableOp_22AssignVariableOp,assignvariableop_22_adam_intermediate_bias_vIdentity_22:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_22_
Identity_23IdentityRestoreV2:tensors:23*
T0*
_output_shapes
:2
Identity_23Ё
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_output_kernel_vIdentity_23:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_23_
Identity_24IdentityRestoreV2:tensors:24*
T0*
_output_shapes
:2
Identity_24
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_output_bias_vIdentity_24:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_24Ј
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slicesФ
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_25
Identity_26IdentityIdentity_25:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2
Identity_26"#
identity_26Identity_26:output:0*y
_input_shapesh
f: :::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
Н
-__inference_sequential_layer_call_fn_20487597	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_204875822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
л
Ж
&__inference_signature_wrapper_20487661	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*,
f'R%
#__inference__wrapped_model_204874392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
э
Ћ
C__inference_Start_layer_call_and_return_conditional_losses_20487468

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџђ:::P L
(
_output_shapes
:џџџџџџџџџђ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
є
В
J__inference_Intermediate_layer_call_and_return_conditional_losses_20487791

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:::P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
­B
Ь

!__inference__traced_save_20487922
file_prefix+
'savev2_start_kernel_read_readvariableop)
%savev2_start_bias_read_readvariableop2
.savev2_intermediate_kernel_read_readvariableop0
,savev2_intermediate_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_start_kernel_m_read_readvariableop0
,savev2_adam_start_bias_m_read_readvariableop9
5savev2_adam_intermediate_kernel_m_read_readvariableop7
3savev2_adam_intermediate_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop2
.savev2_adam_start_kernel_v_read_readvariableop0
,savev2_adam_start_bias_v_read_readvariableop9
5savev2_adam_intermediate_kernel_v_read_readvariableop7
3savev2_adam_intermediate_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_1_const

identity_1ЂMergeV2CheckpointsЂSaveV2ЂSaveV2_1
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Const
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_e01835c1ce474b14bd58a53838d8eb1b/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_namesК
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЈ

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_start_kernel_read_readvariableop%savev2_start_bias_read_readvariableop.savev2_intermediate_kernel_read_readvariableop,savev2_intermediate_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_start_kernel_m_read_readvariableop,savev2_adam_start_bias_m_read_readvariableop5savev2_adam_intermediate_kernel_m_read_readvariableop3savev2_adam_intermediate_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop.savev2_adam_start_kernel_v_read_readvariableop,savev2_adam_start_bias_v_read_readvariableop5savev2_adam_intermediate_kernel_v_read_readvariableop3savev2_adam_intermediate_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableop"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
SaveV2
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shardЌ
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1Ђ
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slicesЯ
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1у
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЌ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ь
_input_shapesК
З: :
ђ::
::	:: : : : : : : :
ђ::
::	::
ђ::
::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
ђ:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
ђ:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::&"
 
_output_shapes
:
ђ:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: 
	
О
-__inference_sequential_layer_call_fn_20487732

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_204875822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

з
H__inference_sequential_layer_call_and_return_conditional_losses_20487582

inputs
start_20487566
start_20487568
intermediate_20487571
intermediate_20487573
output_20487576
output_20487578
identityЂ$Intermediate/StatefulPartitionedCallЂOutput/StatefulPartitionedCallЂStart/StatefulPartitionedCallЕ
Flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_Flatten_layer_call_and_return_conditional_losses_204874492
Flatten/PartitionedCall
Start/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0start_20487566start_20487568*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_Start_layer_call_and_return_conditional_losses_204874682
Start/StatefulPartitionedCallА
$Intermediate/StatefulPartitionedCallStatefulPartitionedCall&Start/StatefulPartitionedCall:output:0intermediate_20487571intermediate_20487573*
Tin
2*
Tout
2*(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_204874952&
$Intermediate/StatefulPartitionedCall
Output/StatefulPartitionedCallStatefulPartitionedCall-Intermediate/StatefulPartitionedCall:output:0output_20487576output_20487578*
Tin
2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_204875222 
Output/StatefulPartitionedCallу
IdentityIdentity'Output/StatefulPartitionedCall:output:0%^Intermediate/StatefulPartitionedCall^Output/StatefulPartitionedCall^Start/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::2L
$Intermediate/StatefulPartitionedCall$Intermediate/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2>
Start/StatefulPartitionedCallStart/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ћ
~
)__inference_Output_layer_call_fn_20487820

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_204875222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
	
Н
-__inference_sequential_layer_call_fn_20487634	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_204876192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "ЏL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*­
serving_default
?
Input6
serving_default_Input:0џџџџџџџџџ:
Output0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:њ
б"
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
P_default_save_signature
Q__call__
*R&call_and_return_all_conditional_losses" 
_tf_keras_sequentialх{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential", "layers": [{"class_name": "Flatten", "config": {"name": "Flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 11, 2]}}}, {"class_name": "Dense", "config": {"name": "Start", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Intermediate", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Output", "trainable": true, "dtype": "float32", "units": 3, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 11, 2]}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 11, 2]}, "is_graph_network": true, "keras_version": "2.3.0-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "Flatten", "config": {"name": "Flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 11, 2]}}}, {"class_name": "Dense", "config": {"name": "Start", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Intermediate", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Output", "trainable": true, "dtype": "float32", "units": 3, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 11, 2]}}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "sample_weight_mode": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
П
	variables
trainable_variables
regularization_losses
	keras_api
S__call__
*T&call_and_return_all_conditional_losses"А
_tf_keras_layer{"class_name": "Flatten", "name": "Flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
Ь

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
U__call__
*V&call_and_return_all_conditional_losses"Ї
_tf_keras_layer{"class_name": "Dense", "name": "Start", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Start", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 242}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 242]}}
к

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
W__call__
*X&call_and_return_all_conditional_losses"Е
_tf_keras_layer{"class_name": "Dense", "name": "Intermediate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Intermediate", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
Я

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"Њ
_tf_keras_layer{"class_name": "Dense", "name": "Output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Output", "trainable": true, "dtype": "float32", "units": 3, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
П
!iter

"beta_1

#beta_2
	$decay
%learning_ratemDmEmFmGmHmIvJvKvLvMvNvO"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ

&layers
	variables
trainable_variables
'non_trainable_variables
regularization_losses
(layer_regularization_losses
)layer_metrics
*metrics
Q__call__
P_default_save_signature
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
,
[serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

+layers
	variables
trainable_variables
,non_trainable_variables
regularization_losses
-layer_regularization_losses
.layer_metrics
/metrics
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
 :
ђ2Start/kernel
:2
Start/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­

0layers
	variables
trainable_variables
1non_trainable_variables
regularization_losses
2layer_regularization_losses
3layer_metrics
4metrics
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
':%
2Intermediate/kernel
 :2Intermediate/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­

5layers
	variables
trainable_variables
6non_trainable_variables
regularization_losses
7layer_regularization_losses
8layer_metrics
9metrics
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
 :	2Output/kernel
:2Output/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­

:layers
	variables
trainable_variables
;non_trainable_variables
regularization_losses
<layer_regularization_losses
=layer_metrics
>metrics
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Л
	@total
	Acount
B	variables
C	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
.
@0
A1"
trackable_list_wrapper
-
B	variables"
_generic_user_object
%:#
ђ2Adam/Start/kernel/m
:2Adam/Start/bias/m
,:*
2Adam/Intermediate/kernel/m
%:#2Adam/Intermediate/bias/m
%:#	2Adam/Output/kernel/m
:2Adam/Output/bias/m
%:#
ђ2Adam/Start/kernel/v
:2Adam/Start/bias/v
,:*
2Adam/Intermediate/kernel/v
%:#2Adam/Intermediate/bias/v
%:#	2Adam/Output/kernel/v
:2Adam/Output/bias/v
ч2ф
#__inference__wrapped_model_20487439М
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *,Ђ)
'$
Inputџџџџџџџџџ
2џ
-__inference_sequential_layer_call_fn_20487597
-__inference_sequential_layer_call_fn_20487749
-__inference_sequential_layer_call_fn_20487634
-__inference_sequential_layer_call_fn_20487732Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
H__inference_sequential_layer_call_and_return_conditional_losses_20487559
H__inference_sequential_layer_call_and_return_conditional_losses_20487539
H__inference_sequential_layer_call_and_return_conditional_losses_20487688
H__inference_sequential_layer_call_and_return_conditional_losses_20487715Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
д2б
*__inference_Flatten_layer_call_fn_20487760Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_Flatten_layer_call_and_return_conditional_losses_20487755Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_Start_layer_call_fn_20487780Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_Start_layer_call_and_return_conditional_losses_20487771Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
й2ж
/__inference_Intermediate_layer_call_fn_20487800Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
є2ё
J__inference_Intermediate_layer_call_and_return_conditional_losses_20487791Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_Output_layer_call_fn_20487820Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_Output_layer_call_and_return_conditional_losses_20487811Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
3B1
&__inference_signature_wrapper_20487661InputЊ
E__inference_Flatten_layer_call_and_return_conditional_losses_20487755a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџђ
 
*__inference_Flatten_layer_call_fn_20487760T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "џџџџџџџџџђЌ
J__inference_Intermediate_layer_call_and_return_conditional_losses_20487791^0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 
/__inference_Intermediate_layer_call_fn_20487800Q0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЅ
D__inference_Output_layer_call_and_return_conditional_losses_20487811]0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
)__inference_Output_layer_call_fn_20487820P0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЅ
C__inference_Start_layer_call_and_return_conditional_losses_20487771^0Ђ-
&Ђ#
!
inputsџџџџџџџџџђ
Њ "&Ђ#

0џџџџџџџџџ
 }
(__inference_Start_layer_call_fn_20487780Q0Ђ-
&Ђ#
!
inputsџџџџџџџџџђ
Њ "џџџџџџџџџ
#__inference__wrapped_model_20487439q6Ђ3
,Ђ)
'$
Inputџџџџџџџџџ
Њ "/Њ,
*
Output 
OutputџџџџџџџџџЛ
H__inference_sequential_layer_call_and_return_conditional_losses_20487539o>Ђ;
4Ђ1
'$
Inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Л
H__inference_sequential_layer_call_and_return_conditional_losses_20487559o>Ђ;
4Ђ1
'$
Inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 М
H__inference_sequential_layer_call_and_return_conditional_losses_20487688p?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 М
H__inference_sequential_layer_call_and_return_conditional_losses_20487715p?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
-__inference_sequential_layer_call_fn_20487597b>Ђ;
4Ђ1
'$
Inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
-__inference_sequential_layer_call_fn_20487634b>Ђ;
4Ђ1
'$
Inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_layer_call_fn_20487732c?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
-__inference_sequential_layer_call_fn_20487749c?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџЄ
&__inference_signature_wrapper_20487661z?Ђ<
Ђ 
5Њ2
0
Input'$
Inputџџџџџџџџџ"/Њ,
*
Output 
Outputџџџџџџџџџ