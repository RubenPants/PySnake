»─
ф§
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
dtypetypeѕ
Й
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
executor_typestring ѕ
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeѕ"serve*2.2.02v2.2.0-rc4-8-g2b96f3662b8ЖВ
ѓ
Conv2D_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameConv2D_1/kernel
{
#Conv2D_1/kernel/Read/ReadVariableOpReadVariableOpConv2D_1/kernel*&
_output_shapes
: *
dtype0
r
Conv2D_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameConv2D_1/bias
k
!Conv2D_1/bias/Read/ReadVariableOpReadVariableOpConv2D_1/bias*
_output_shapes
: *
dtype0
ѓ
Conv2D_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameConv2D_2/kernel
{
#Conv2D_2/kernel/Read/ReadVariableOpReadVariableOpConv2D_2/kernel*&
_output_shapes
:  *
dtype0
r
Conv2D_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameConv2D_2/bias
k
!Conv2D_2/bias/Read/ReadVariableOpReadVariableOpConv2D_2/bias*
_output_shapes
: *
dtype0
Є
Intermediate_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*&
shared_nameIntermediate_1/kernel
ђ
)Intermediate_1/kernel/Read/ReadVariableOpReadVariableOpIntermediate_1/kernel*
_output_shapes
:	ђ@*
dtype0
~
Intermediate_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameIntermediate_1/bias
w
'Intermediate_1/bias/Read/ReadVariableOpReadVariableOpIntermediate_1/bias*
_output_shapes
:@*
dtype0
z
Output_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_nameOutput_1/kernel
s
#Output_1/kernel/Read/ReadVariableOpReadVariableOpOutput_1/kernel*
_output_shapes

:@*
dtype0
r
Output_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameOutput_1/bias
k
!Output_1/bias/Read/ReadVariableOpReadVariableOpOutput_1/bias*
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
љ
Adam/Conv2D_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/Conv2D_1/kernel/m
Ѕ
*Adam/Conv2D_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv2D_1/kernel/m*&
_output_shapes
: *
dtype0
ђ
Adam/Conv2D_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/Conv2D_1/bias/m
y
(Adam/Conv2D_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv2D_1/bias/m*
_output_shapes
: *
dtype0
љ
Adam/Conv2D_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/Conv2D_2/kernel/m
Ѕ
*Adam/Conv2D_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv2D_2/kernel/m*&
_output_shapes
:  *
dtype0
ђ
Adam/Conv2D_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/Conv2D_2/bias/m
y
(Adam/Conv2D_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv2D_2/bias/m*
_output_shapes
: *
dtype0
Ћ
Adam/Intermediate_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*-
shared_nameAdam/Intermediate_1/kernel/m
ј
0Adam/Intermediate_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Intermediate_1/kernel/m*
_output_shapes
:	ђ@*
dtype0
ї
Adam/Intermediate_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/Intermediate_1/bias/m
Ё
.Adam/Intermediate_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Intermediate_1/bias/m*
_output_shapes
:@*
dtype0
ѕ
Adam/Output_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/Output_1/kernel/m
Ђ
*Adam/Output_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output_1/kernel/m*
_output_shapes

:@*
dtype0
ђ
Adam/Output_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Output_1/bias/m
y
(Adam/Output_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output_1/bias/m*
_output_shapes
:*
dtype0
љ
Adam/Conv2D_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/Conv2D_1/kernel/v
Ѕ
*Adam/Conv2D_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv2D_1/kernel/v*&
_output_shapes
: *
dtype0
ђ
Adam/Conv2D_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/Conv2D_1/bias/v
y
(Adam/Conv2D_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv2D_1/bias/v*
_output_shapes
: *
dtype0
љ
Adam/Conv2D_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/Conv2D_2/kernel/v
Ѕ
*Adam/Conv2D_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv2D_2/kernel/v*&
_output_shapes
:  *
dtype0
ђ
Adam/Conv2D_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/Conv2D_2/bias/v
y
(Adam/Conv2D_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv2D_2/bias/v*
_output_shapes
: *
dtype0
Ћ
Adam/Intermediate_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*-
shared_nameAdam/Intermediate_1/kernel/v
ј
0Adam/Intermediate_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Intermediate_1/kernel/v*
_output_shapes
:	ђ@*
dtype0
ї
Adam/Intermediate_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/Intermediate_1/bias/v
Ё
.Adam/Intermediate_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Intermediate_1/bias/v*
_output_shapes
:@*
dtype0
ѕ
Adam/Output_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/Output_1/kernel/v
Ђ
*Adam/Output_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output_1/kernel/v*
_output_shapes

:@*
dtype0
ђ
Adam/Output_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Output_1/bias/v
y
(Adam/Output_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Р0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ю0
valueЊ0Bљ0 BЅ0
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	optimizer
trainable_variables
	regularization_losses

	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
 	keras_api
h

!kernel
"bias
#trainable_variables
$regularization_losses
%	variables
&	keras_api
h

'kernel
(bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
л
-iter

.beta_1

/beta_2
	0decay
1learning_ratemZm[m\m]!m^"m_'m`(mavbvcvdve!vf"vg'vh(vi
8
0
1
2
3
!4
"5
'6
(7
 
8
0
1
2
3
!4
"5
'6
(7
Г

2layers
3metrics
trainable_variables
4layer_regularization_losses
	regularization_losses
5non_trainable_variables

	variables
6layer_metrics
 
[Y
VARIABLE_VALUEConv2D_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEConv2D_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
Г
7layer_metrics

8layers
trainable_variables
9layer_regularization_losses
regularization_losses
:non_trainable_variables
	variables
;metrics
[Y
VARIABLE_VALUEConv2D_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEConv2D_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
Г
<layer_metrics

=layers
trainable_variables
>layer_regularization_losses
regularization_losses
?non_trainable_variables
	variables
@metrics
 
 
 
Г
Alayer_metrics

Blayers
trainable_variables
Clayer_regularization_losses
regularization_losses
Dnon_trainable_variables
	variables
Emetrics
 
 
 
Г
Flayer_metrics

Glayers
trainable_variables
Hlayer_regularization_losses
regularization_losses
Inon_trainable_variables
	variables
Jmetrics
a_
VARIABLE_VALUEIntermediate_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEIntermediate_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
 

!0
"1
Г
Klayer_metrics

Llayers
#trainable_variables
Mlayer_regularization_losses
$regularization_losses
Nnon_trainable_variables
%	variables
Ometrics
[Y
VARIABLE_VALUEOutput_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEOutput_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 

'0
(1
Г
Player_metrics

Qlayers
)trainable_variables
Rlayer_regularization_losses
*regularization_losses
Snon_trainable_variables
+	variables
Tmetrics
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
*
0
1
2
3
4
5

U0
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
	Vtotal
	Wcount
X	variables
Y	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

V0
W1

X	variables
~|
VARIABLE_VALUEAdam/Conv2D_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Conv2D_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Conv2D_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Conv2D_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUEAdam/Intermediate_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ђ~
VARIABLE_VALUEAdam/Intermediate_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Output_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Output_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Conv2D_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Conv2D_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Conv2D_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Conv2D_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUEAdam/Intermediate_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ђ~
VARIABLE_VALUEAdam/Intermediate_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Output_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Output_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ѕ
serving_default_InputPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
»
StatefulPartitionedCallStatefulPartitionedCallserving_default_InputConv2D_1/kernelConv2D_1/biasConv2D_2/kernelConv2D_2/biasIntermediate_1/kernelIntermediate_1/biasOutput_1/kernelOutput_1/bias*
Tin
2	*
Tout
2*'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*/
f*R(
&__inference_signature_wrapper_41964607
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
­
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#Conv2D_1/kernel/Read/ReadVariableOp!Conv2D_1/bias/Read/ReadVariableOp#Conv2D_2/kernel/Read/ReadVariableOp!Conv2D_2/bias/Read/ReadVariableOp)Intermediate_1/kernel/Read/ReadVariableOp'Intermediate_1/bias/Read/ReadVariableOp#Output_1/kernel/Read/ReadVariableOp!Output_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/Conv2D_1/kernel/m/Read/ReadVariableOp(Adam/Conv2D_1/bias/m/Read/ReadVariableOp*Adam/Conv2D_2/kernel/m/Read/ReadVariableOp(Adam/Conv2D_2/bias/m/Read/ReadVariableOp0Adam/Intermediate_1/kernel/m/Read/ReadVariableOp.Adam/Intermediate_1/bias/m/Read/ReadVariableOp*Adam/Output_1/kernel/m/Read/ReadVariableOp(Adam/Output_1/bias/m/Read/ReadVariableOp*Adam/Conv2D_1/kernel/v/Read/ReadVariableOp(Adam/Conv2D_1/bias/v/Read/ReadVariableOp*Adam/Conv2D_2/kernel/v/Read/ReadVariableOp(Adam/Conv2D_2/bias/v/Read/ReadVariableOp0Adam/Intermediate_1/kernel/v/Read/ReadVariableOp.Adam/Intermediate_1/bias/v/Read/ReadVariableOp*Adam/Output_1/kernel/v/Read/ReadVariableOp(Adam/Output_1/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
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
!__inference__traced_save_41964890
 
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv2D_1/kernelConv2D_1/biasConv2D_2/kernelConv2D_2/biasIntermediate_1/kernelIntermediate_1/biasOutput_1/kernelOutput_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/Conv2D_1/kernel/mAdam/Conv2D_1/bias/mAdam/Conv2D_2/kernel/mAdam/Conv2D_2/bias/mAdam/Intermediate_1/kernel/mAdam/Intermediate_1/bias/mAdam/Output_1/kernel/mAdam/Output_1/bias/mAdam/Conv2D_1/kernel/vAdam/Conv2D_1/bias/vAdam/Conv2D_2/kernel/vAdam/Conv2D_2/bias/vAdam/Intermediate_1/kernel/vAdam/Intermediate_1/bias/vAdam/Output_1/kernel/vAdam/Output_1/bias/v*+
Tin$
"2 *
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
$__inference__traced_restore_41964995ду
у
г
D__inference_Output_layer_call_and_return_conditional_losses_41964761

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:::O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
О	
н
&__inference_signature_wrapper_41964607	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*,
f'R%
#__inference__wrapped_model_419643152
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         

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
: :

_output_shapes
: :

_output_shapes
: 
і

я
/__inference_sequential_1_layer_call_fn_41964698

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_419645102
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
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
: :

_output_shapes
: :

_output_shapes
: 
ч
a
E__inference_MaxPool_layer_call_and_return_conditional_losses_41964365

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Є
F
*__inference_flatten_layer_call_fn_41964730

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_419643922
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Ь-
Ў
#__inference__wrapped_model_41964315	
input8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource8
4sequential_1_conv2d_2_conv2d_readvariableop_resource9
5sequential_1_conv2d_2_biasadd_readvariableop_resource<
8sequential_1_intermediate_matmul_readvariableop_resource=
9sequential_1_intermediate_biasadd_readvariableop_resource6
2sequential_1_output_matmul_readvariableop_resource7
3sequential_1_output_biasadd_readvariableop_resource
identityѕО
+sequential_1/Conv2D_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/Conv2D_1/Conv2D/ReadVariableOpт
sequential_1/Conv2D_1/Conv2DConv2Dinput3sequential_1/Conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 *
paddingVALID*
strides
2
sequential_1/Conv2D_1/Conv2D╬
,sequential_1/Conv2D_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/Conv2D_1/BiasAdd/ReadVariableOpЯ
sequential_1/Conv2D_1/BiasAddBiasAdd%sequential_1/Conv2D_1/Conv2D:output:04sequential_1/Conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 2
sequential_1/Conv2D_1/BiasAddб
sequential_1/Conv2D_1/ReluRelu&sequential_1/Conv2D_1/BiasAdd:output:0*
T0*/
_output_shapes
:         

 2
sequential_1/Conv2D_1/ReluО
+sequential_1/Conv2D_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02-
+sequential_1/Conv2D_2/Conv2D/ReadVariableOpѕ
sequential_1/Conv2D_2/Conv2DConv2D(sequential_1/Conv2D_1/Relu:activations:03sequential_1/Conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		 *
paddingVALID*
strides
2
sequential_1/Conv2D_2/Conv2D╬
,sequential_1/Conv2D_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/Conv2D_2/BiasAdd/ReadVariableOpЯ
sequential_1/Conv2D_2/BiasAddBiasAdd%sequential_1/Conv2D_2/Conv2D:output:04sequential_1/Conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		 2
sequential_1/Conv2D_2/BiasAddб
sequential_1/Conv2D_2/ReluRelu&sequential_1/Conv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:         		 2
sequential_1/Conv2D_2/Reluя
sequential_1/MaxPool/MaxPoolMaxPool(sequential_1/Conv2D_2/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
sequential_1/MaxPool/MaxPoolЅ
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
sequential_1/flatten/Constк
sequential_1/flatten/ReshapeReshape%sequential_1/MaxPool/MaxPool:output:0#sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:         ђ2
sequential_1/flatten/Reshape▄
/sequential_1/Intermediate/MatMul/ReadVariableOpReadVariableOp8sequential_1_intermediate_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype021
/sequential_1/Intermediate/MatMul/ReadVariableOpЯ
 sequential_1/Intermediate/MatMulMatMul%sequential_1/flatten/Reshape:output:07sequential_1/Intermediate/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2"
 sequential_1/Intermediate/MatMul┌
0sequential_1/Intermediate/BiasAdd/ReadVariableOpReadVariableOp9sequential_1_intermediate_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_1/Intermediate/BiasAdd/ReadVariableOpж
!sequential_1/Intermediate/BiasAddBiasAdd*sequential_1/Intermediate/MatMul:product:08sequential_1/Intermediate/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2#
!sequential_1/Intermediate/BiasAddд
sequential_1/Intermediate/ReluRelu*sequential_1/Intermediate/BiasAdd:output:0*
T0*'
_output_shapes
:         @2 
sequential_1/Intermediate/Relu╔
)sequential_1/Output/MatMul/ReadVariableOpReadVariableOp2sequential_1_output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02+
)sequential_1/Output/MatMul/ReadVariableOpН
sequential_1/Output/MatMulMatMul,sequential_1/Intermediate/Relu:activations:01sequential_1/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_1/Output/MatMul╚
*sequential_1/Output/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*sequential_1/Output/BiasAdd/ReadVariableOpЛ
sequential_1/Output/BiasAddBiasAdd$sequential_1/Output/MatMul:product:02sequential_1/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_1/Output/BiasAddЮ
sequential_1/Output/SigmoidSigmoid$sequential_1/Output/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential_1/Output/Sigmoids
IdentityIdentitysequential_1/Output/Sigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         :::::::::V R
/
_output_shapes
:         

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
: :

_output_shapes
: :

_output_shapes
: 
└
│
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964557

inputs
conv2d_1_41964534
conv2d_1_41964536
conv2d_2_41964539
conv2d_2_41964541
intermediate_41964546
intermediate_41964548
output_41964551
output_41964553
identityѕб Conv2D_1/StatefulPartitionedCallб Conv2D_2/StatefulPartitionedCallб$Intermediate/StatefulPartitionedCallбOutput/StatefulPartitionedCallЃ
 Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_41964534conv2d_1_41964536*
Tin
2*
Tout
2*/
_output_shapes
:         

 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_1_layer_call_and_return_conditional_losses_419643272"
 Conv2D_1/StatefulPartitionedCallд
 Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall)Conv2D_1/StatefulPartitionedCall:output:0conv2d_2_41964539conv2d_2_41964541*
Tin
2*
Tout
2*/
_output_shapes
:         		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_2_layer_call_and_return_conditional_losses_419643492"
 Conv2D_2/StatefulPartitionedCall▀
MaxPool/PartitionedCallPartitionedCall)Conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_MaxPool_layer_call_and_return_conditional_losses_419643652
MaxPool/PartitionedCall¤
flatten/PartitionedCallPartitionedCall MaxPool/PartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_419643922
flatten/PartitionedCallЕ
$Intermediate/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0intermediate_41964546intermediate_41964548*
Tin
2*
Tout
2*'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_419644112&
$Intermediate/StatefulPartitionedCallў
Output/StatefulPartitionedCallStatefulPartitionedCall-Intermediate/StatefulPartitionedCall:output:0output_41964551output_41964553*
Tin
2*
Tout
2*'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_419644382 
Output/StatefulPartitionedCallЅ
IdentityIdentity'Output/StatefulPartitionedCall:output:0!^Conv2D_1/StatefulPartitionedCall!^Conv2D_2/StatefulPartitionedCall%^Intermediate/StatefulPartitionedCall^Output/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         ::::::::2D
 Conv2D_1/StatefulPartitionedCall Conv2D_1/StatefulPartitionedCall2D
 Conv2D_2/StatefulPartitionedCall Conv2D_2/StatefulPartitionedCall2L
$Intermediate/StatefulPartitionedCall$Intermediate/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
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
: :

_output_shapes
: :

_output_shapes
: 
й
▓
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964455	
input
conv2d_1_41964375
conv2d_1_41964377
conv2d_2_41964380
conv2d_2_41964382
intermediate_41964422
intermediate_41964424
output_41964449
output_41964451
identityѕб Conv2D_1/StatefulPartitionedCallб Conv2D_2/StatefulPartitionedCallб$Intermediate/StatefulPartitionedCallбOutput/StatefulPartitionedCallѓ
 Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_1_41964375conv2d_1_41964377*
Tin
2*
Tout
2*/
_output_shapes
:         

 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_1_layer_call_and_return_conditional_losses_419643272"
 Conv2D_1/StatefulPartitionedCallд
 Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall)Conv2D_1/StatefulPartitionedCall:output:0conv2d_2_41964380conv2d_2_41964382*
Tin
2*
Tout
2*/
_output_shapes
:         		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_2_layer_call_and_return_conditional_losses_419643492"
 Conv2D_2/StatefulPartitionedCall▀
MaxPool/PartitionedCallPartitionedCall)Conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_MaxPool_layer_call_and_return_conditional_losses_419643652
MaxPool/PartitionedCall¤
flatten/PartitionedCallPartitionedCall MaxPool/PartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_419643922
flatten/PartitionedCallЕ
$Intermediate/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0intermediate_41964422intermediate_41964424*
Tin
2*
Tout
2*'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_419644112&
$Intermediate/StatefulPartitionedCallў
Output/StatefulPartitionedCallStatefulPartitionedCall-Intermediate/StatefulPartitionedCall:output:0output_41964449output_41964451*
Tin
2*
Tout
2*'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_419644382 
Output/StatefulPartitionedCallЅ
IdentityIdentity'Output/StatefulPartitionedCall:output:0!^Conv2D_1/StatefulPartitionedCall!^Conv2D_2/StatefulPartitionedCall%^Intermediate/StatefulPartitionedCall^Output/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         ::::::::2D
 Conv2D_1/StatefulPartitionedCall Conv2D_1/StatefulPartitionedCall2D
 Conv2D_2/StatefulPartitionedCall Conv2D_2/StatefulPartitionedCall2L
$Intermediate/StatefulPartitionedCall$Intermediate/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:V R
/
_output_shapes
:         

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
: :

_output_shapes
: :

_output_shapes
: 
Є

П
/__inference_sequential_1_layer_call_fn_41964576	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_419645572
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         

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
: :

_output_shapes
: :

_output_shapes
: 
Ь
▓
J__inference_Intermediate_layer_call_and_return_conditional_losses_41964741

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ:::P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
і

я
/__inference_sequential_1_layer_call_fn_41964719

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_419645572
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
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
: :

_output_shapes
: :

_output_shapes
: 
┬%
┘
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964642

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource/
+intermediate_matmul_readvariableop_resource0
,intermediate_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityѕ░
Conv2D_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
Conv2D_1/Conv2D/ReadVariableOp┐
Conv2D_1/Conv2DConv2Dinputs&Conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 *
paddingVALID*
strides
2
Conv2D_1/Conv2DД
Conv2D_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
Conv2D_1/BiasAdd/ReadVariableOpг
Conv2D_1/BiasAddBiasAddConv2D_1/Conv2D:output:0'Conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 2
Conv2D_1/BiasAdd{
Conv2D_1/ReluReluConv2D_1/BiasAdd:output:0*
T0*/
_output_shapes
:         

 2
Conv2D_1/Relu░
Conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
Conv2D_2/Conv2D/ReadVariableOpн
Conv2D_2/Conv2DConv2DConv2D_1/Relu:activations:0&Conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		 *
paddingVALID*
strides
2
Conv2D_2/Conv2DД
Conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
Conv2D_2/BiasAdd/ReadVariableOpг
Conv2D_2/BiasAddBiasAddConv2D_2/Conv2D:output:0'Conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		 2
Conv2D_2/BiasAdd{
Conv2D_2/ReluReluConv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:         		 2
Conv2D_2/Reluи
MaxPool/MaxPoolMaxPoolConv2D_2/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
MaxPool/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/Constњ
flatten/ReshapeReshapeMaxPool/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         ђ2
flatten/Reshapeх
"Intermediate/MatMul/ReadVariableOpReadVariableOp+intermediate_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02$
"Intermediate/MatMul/ReadVariableOpг
Intermediate/MatMulMatMulflatten/Reshape:output:0*Intermediate/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
Intermediate/MatMul│
#Intermediate/BiasAdd/ReadVariableOpReadVariableOp,intermediate_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#Intermediate/BiasAdd/ReadVariableOpх
Intermediate/BiasAddBiasAddIntermediate/MatMul:product:0+Intermediate/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
Intermediate/BiasAdd
Intermediate/ReluReluIntermediate/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
Intermediate/Reluб
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
Output/MatMul/ReadVariableOpА
Output/MatMulMatMulIntermediate/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
Output/MatMulА
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Output/BiasAdd/ReadVariableOpЮ
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
Output/BiasAddv
Output/SigmoidSigmoidOutput/BiasAdd:output:0*
T0*'
_output_shapes
:         2
Output/Sigmoidf
IdentityIdentityOutput/Sigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         :::::::::W S
/
_output_shapes
:         
 
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
: :

_output_shapes
: :

_output_shapes
: 
Т
ђ
+__inference_Conv2D_1_layer_call_fn_41964337

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_1_layer_call_and_return_conditional_losses_419643272
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ѓ
F
*__inference_MaxPool_layer_call_fn_41964371

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_MaxPool_layer_call_and_return_conditional_losses_419643652
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
тM
г
!__inference__traced_save_41964890
file_prefix.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop4
0savev2_intermediate_1_kernel_read_readvariableop2
.savev2_intermediate_1_bias_read_readvariableop.
*savev2_output_1_kernel_read_readvariableop,
(savev2_output_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop;
7savev2_adam_intermediate_1_kernel_m_read_readvariableop9
5savev2_adam_intermediate_1_bias_m_read_readvariableop5
1savev2_adam_output_1_kernel_m_read_readvariableop3
/savev2_adam_output_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop;
7savev2_adam_intermediate_1_kernel_v_read_readvariableop9
5savev2_adam_intermediate_1_bias_v_read_readvariableop5
1savev2_adam_output_1_kernel_v_read_readvariableop3
/savev2_adam_output_1_bias_v_read_readvariableop
savev2_1_const

identity_1ѕбMergeV2CheckpointsбSaveV2бSaveV2_1Ј
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
ConstЇ
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_b44f3567801048179a50505608a2b15a/part2	
Const_1І
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
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename╝
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╬
value─B┴B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_namesк
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesШ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop0savev2_intermediate_1_kernel_read_readvariableop.savev2_intermediate_1_bias_read_readvariableop*savev2_output_1_kernel_read_readvariableop(savev2_output_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop7savev2_adam_intermediate_1_kernel_m_read_readvariableop5savev2_adam_intermediate_1_bias_m_read_readvariableop1savev2_adam_output_1_kernel_m_read_readvariableop/savev2_adam_output_1_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop7savev2_adam_intermediate_1_kernel_v_read_readvariableop5savev2_adam_intermediate_1_bias_v_read_readvariableop1savev2_adam_output_1_kernel_v_read_readvariableop/savev2_adam_output_1_bias_v_read_readvariableop"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	2
SaveV2Ѓ
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shardг
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1б
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_namesј
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slices¤
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1с
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesг
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

IdentityЂ

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*џ
_input_shapesѕ
Ё: : : :  : :	ђ@:@:@:: : : : : : : : : :  : :	ђ@:@:@:: : :  : :	ђ@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :%!

_output_shapes
:	ђ@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::	
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
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :%!

_output_shapes
:	ђ@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :%!

_output_shapes
:	ђ@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
:: 

_output_shapes
: 
ЦЅ
к
$__inference__traced_restore_41964995
file_prefix$
 assignvariableop_conv2d_1_kernel$
 assignvariableop_1_conv2d_1_bias&
"assignvariableop_2_conv2d_2_kernel$
 assignvariableop_3_conv2d_2_bias,
(assignvariableop_4_intermediate_1_kernel*
&assignvariableop_5_intermediate_1_bias&
"assignvariableop_6_output_1_kernel$
 assignvariableop_7_output_1_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count.
*assignvariableop_15_adam_conv2d_1_kernel_m,
(assignvariableop_16_adam_conv2d_1_bias_m.
*assignvariableop_17_adam_conv2d_2_kernel_m,
(assignvariableop_18_adam_conv2d_2_bias_m4
0assignvariableop_19_adam_intermediate_1_kernel_m2
.assignvariableop_20_adam_intermediate_1_bias_m.
*assignvariableop_21_adam_output_1_kernel_m,
(assignvariableop_22_adam_output_1_bias_m.
*assignvariableop_23_adam_conv2d_1_kernel_v,
(assignvariableop_24_adam_conv2d_1_bias_v.
*assignvariableop_25_adam_conv2d_2_kernel_v,
(assignvariableop_26_adam_conv2d_2_bias_v4
0assignvariableop_27_adam_intermediate_1_kernel_v2
.assignvariableop_28_adam_intermediate_1_bias_v.
*assignvariableop_29_adam_output_1_kernel_v,
(assignvariableop_30_adam_output_1_bias_v
identity_32ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9б	RestoreV2бRestoreV2_1┬
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╬
value─B┴B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names╠
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesК
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*љ
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	2
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identityљ
AssignVariableOpAssignVariableOp assignvariableop_conv2d_1_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1ќ
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_1_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2ў
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_2_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3ќ
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_2_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4ъ
AssignVariableOp_4AssignVariableOp(assignvariableop_4_intermediate_1_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5ю
AssignVariableOp_5AssignVariableOp&assignvariableop_5_intermediate_1_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6ў
AssignVariableOp_6AssignVariableOp"assignvariableop_6_output_1_kernelIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7ќ
AssignVariableOp_7AssignVariableOp assignvariableop_7_output_1_biasIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0	*
_output_shapes
:2

Identity_8њ
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:2

Identity_9ћ
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10ў
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11Ќ
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11_
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:2
Identity_12Ъ
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_12_
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:2
Identity_13њ
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_13_
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:2
Identity_14њ
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_14_
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:2
Identity_15Б
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_conv2d_1_kernel_mIdentity_15:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_15_
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:2
Identity_16А
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_conv2d_1_bias_mIdentity_16:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_16_
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:2
Identity_17Б
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_conv2d_2_kernel_mIdentity_17:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_17_
Identity_18IdentityRestoreV2:tensors:18*
T0*
_output_shapes
:2
Identity_18А
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_conv2d_2_bias_mIdentity_18:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_18_
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:2
Identity_19Е
AssignVariableOp_19AssignVariableOp0assignvariableop_19_adam_intermediate_1_kernel_mIdentity_19:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_19_
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:2
Identity_20Д
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_intermediate_1_bias_mIdentity_20:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_20_
Identity_21IdentityRestoreV2:tensors:21*
T0*
_output_shapes
:2
Identity_21Б
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_output_1_kernel_mIdentity_21:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_21_
Identity_22IdentityRestoreV2:tensors:22*
T0*
_output_shapes
:2
Identity_22А
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_output_1_bias_mIdentity_22:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_22_
Identity_23IdentityRestoreV2:tensors:23*
T0*
_output_shapes
:2
Identity_23Б
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_1_kernel_vIdentity_23:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_23_
Identity_24IdentityRestoreV2:tensors:24*
T0*
_output_shapes
:2
Identity_24А
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_1_bias_vIdentity_24:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_24_
Identity_25IdentityRestoreV2:tensors:25*
T0*
_output_shapes
:2
Identity_25Б
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_2_kernel_vIdentity_25:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_25_
Identity_26IdentityRestoreV2:tensors:26*
T0*
_output_shapes
:2
Identity_26А
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_2_bias_vIdentity_26:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_26_
Identity_27IdentityRestoreV2:tensors:27*
T0*
_output_shapes
:2
Identity_27Е
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_intermediate_1_kernel_vIdentity_27:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_27_
Identity_28IdentityRestoreV2:tensors:28*
T0*
_output_shapes
:2
Identity_28Д
AssignVariableOp_28AssignVariableOp.assignvariableop_28_adam_intermediate_1_bias_vIdentity_28:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_28_
Identity_29IdentityRestoreV2:tensors:29*
T0*
_output_shapes
:2
Identity_29Б
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_output_1_kernel_vIdentity_29:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_29_
Identity_30IdentityRestoreV2:tensors:30*
T0*
_output_shapes
:2
Identity_30А
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_output_1_bias_vIdentity_30:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_30е
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_namesћ
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slices─
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
NoOpѕ
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_31Ћ
Identity_32IdentityIdentity_31:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2
Identity_32"#
identity_32Identity_32:output:0*њ
_input_shapesђ
~: :::::::::::::::::::::::::::::::2$
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
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
у
г
D__inference_Output_layer_call_and_return_conditional_losses_41964438

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:::O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
Є

П
/__inference_sequential_1_layer_call_fn_41964529	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_419645102
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         

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
: :

_output_shapes
: :

_output_shapes
: 
┬%
┘
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964677

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource/
+intermediate_matmul_readvariableop_resource0
,intermediate_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityѕ░
Conv2D_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
Conv2D_1/Conv2D/ReadVariableOp┐
Conv2D_1/Conv2DConv2Dinputs&Conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 *
paddingVALID*
strides
2
Conv2D_1/Conv2DД
Conv2D_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
Conv2D_1/BiasAdd/ReadVariableOpг
Conv2D_1/BiasAddBiasAddConv2D_1/Conv2D:output:0'Conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 2
Conv2D_1/BiasAdd{
Conv2D_1/ReluReluConv2D_1/BiasAdd:output:0*
T0*/
_output_shapes
:         

 2
Conv2D_1/Relu░
Conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
Conv2D_2/Conv2D/ReadVariableOpн
Conv2D_2/Conv2DConv2DConv2D_1/Relu:activations:0&Conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		 *
paddingVALID*
strides
2
Conv2D_2/Conv2DД
Conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
Conv2D_2/BiasAdd/ReadVariableOpг
Conv2D_2/BiasAddBiasAddConv2D_2/Conv2D:output:0'Conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		 2
Conv2D_2/BiasAdd{
Conv2D_2/ReluReluConv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:         		 2
Conv2D_2/Reluи
MaxPool/MaxPoolMaxPoolConv2D_2/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
MaxPool/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/Constњ
flatten/ReshapeReshapeMaxPool/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         ђ2
flatten/Reshapeх
"Intermediate/MatMul/ReadVariableOpReadVariableOp+intermediate_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02$
"Intermediate/MatMul/ReadVariableOpг
Intermediate/MatMulMatMulflatten/Reshape:output:0*Intermediate/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
Intermediate/MatMul│
#Intermediate/BiasAdd/ReadVariableOpReadVariableOp,intermediate_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#Intermediate/BiasAdd/ReadVariableOpх
Intermediate/BiasAddBiasAddIntermediate/MatMul:product:0+Intermediate/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
Intermediate/BiasAdd
Intermediate/ReluReluIntermediate/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
Intermediate/Reluб
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
Output/MatMul/ReadVariableOpА
Output/MatMulMatMulIntermediate/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
Output/MatMulА
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Output/BiasAdd/ReadVariableOpЮ
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
Output/BiasAddv
Output/SigmoidSigmoidOutput/BiasAdd:output:0*
T0*'
_output_shapes
:         2
Output/Sigmoidf
IdentityIdentityOutput/Sigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         :::::::::W S
/
_output_shapes
:         
 
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
: :

_output_shapes
: :

_output_shapes
: 
└
│
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964510

inputs
conv2d_1_41964487
conv2d_1_41964489
conv2d_2_41964492
conv2d_2_41964494
intermediate_41964499
intermediate_41964501
output_41964504
output_41964506
identityѕб Conv2D_1/StatefulPartitionedCallб Conv2D_2/StatefulPartitionedCallб$Intermediate/StatefulPartitionedCallбOutput/StatefulPartitionedCallЃ
 Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_41964487conv2d_1_41964489*
Tin
2*
Tout
2*/
_output_shapes
:         

 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_1_layer_call_and_return_conditional_losses_419643272"
 Conv2D_1/StatefulPartitionedCallд
 Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall)Conv2D_1/StatefulPartitionedCall:output:0conv2d_2_41964492conv2d_2_41964494*
Tin
2*
Tout
2*/
_output_shapes
:         		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_2_layer_call_and_return_conditional_losses_419643492"
 Conv2D_2/StatefulPartitionedCall▀
MaxPool/PartitionedCallPartitionedCall)Conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_MaxPool_layer_call_and_return_conditional_losses_419643652
MaxPool/PartitionedCall¤
flatten/PartitionedCallPartitionedCall MaxPool/PartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_419643922
flatten/PartitionedCallЕ
$Intermediate/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0intermediate_41964499intermediate_41964501*
Tin
2*
Tout
2*'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_419644112&
$Intermediate/StatefulPartitionedCallў
Output/StatefulPartitionedCallStatefulPartitionedCall-Intermediate/StatefulPartitionedCall:output:0output_41964504output_41964506*
Tin
2*
Tout
2*'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_419644382 
Output/StatefulPartitionedCallЅ
IdentityIdentity'Output/StatefulPartitionedCall:output:0!^Conv2D_1/StatefulPartitionedCall!^Conv2D_2/StatefulPartitionedCall%^Intermediate/StatefulPartitionedCall^Output/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         ::::::::2D
 Conv2D_1/StatefulPartitionedCall Conv2D_1/StatefulPartitionedCall2D
 Conv2D_2/StatefulPartitionedCall Conv2D_2/StatefulPartitionedCall2L
$Intermediate/StatefulPartitionedCall$Intermediate/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
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
: :

_output_shapes
: :

_output_shapes
: 
ѕ
ё
/__inference_Intermediate_layer_call_fn_41964750

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_419644112
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
х

«
F__inference_Conv2D_2_layer_call_and_return_conditional_losses_41964349

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpХ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpџ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                            2
Reluђ
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                            :::i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
Ь
▓
J__inference_Intermediate_layer_call_and_return_conditional_losses_41964411

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ:::P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
щ
~
)__inference_Output_layer_call_fn_41964770

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_419644382
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
й
a
E__inference_flatten_layer_call_and_return_conditional_losses_41964725

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
й
▓
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964481	
input
conv2d_1_41964458
conv2d_1_41964460
conv2d_2_41964463
conv2d_2_41964465
intermediate_41964470
intermediate_41964472
output_41964475
output_41964477
identityѕб Conv2D_1/StatefulPartitionedCallб Conv2D_2/StatefulPartitionedCallб$Intermediate/StatefulPartitionedCallбOutput/StatefulPartitionedCallѓ
 Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_1_41964458conv2d_1_41964460*
Tin
2*
Tout
2*/
_output_shapes
:         

 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_1_layer_call_and_return_conditional_losses_419643272"
 Conv2D_1/StatefulPartitionedCallд
 Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall)Conv2D_1/StatefulPartitionedCall:output:0conv2d_2_41964463conv2d_2_41964465*
Tin
2*
Tout
2*/
_output_shapes
:         		 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_2_layer_call_and_return_conditional_losses_419643492"
 Conv2D_2/StatefulPartitionedCall▀
MaxPool/PartitionedCallPartitionedCall)Conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_MaxPool_layer_call_and_return_conditional_losses_419643652
MaxPool/PartitionedCall¤
flatten/PartitionedCallPartitionedCall MaxPool/PartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU2*0J 8*N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_419643922
flatten/PartitionedCallЕ
$Intermediate/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0intermediate_41964470intermediate_41964472*
Tin
2*
Tout
2*'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*S
fNRL
J__inference_Intermediate_layer_call_and_return_conditional_losses_419644112&
$Intermediate/StatefulPartitionedCallў
Output/StatefulPartitionedCallStatefulPartitionedCall-Intermediate/StatefulPartitionedCall:output:0output_41964475output_41964477*
Tin
2*
Tout
2*'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_419644382 
Output/StatefulPartitionedCallЅ
IdentityIdentity'Output/StatefulPartitionedCall:output:0!^Conv2D_1/StatefulPartitionedCall!^Conv2D_2/StatefulPartitionedCall%^Intermediate/StatefulPartitionedCall^Output/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         ::::::::2D
 Conv2D_1/StatefulPartitionedCall Conv2D_1/StatefulPartitionedCall2D
 Conv2D_2/StatefulPartitionedCall Conv2D_2/StatefulPartitionedCall2L
$Intermediate/StatefulPartitionedCall$Intermediate/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:V R
/
_output_shapes
:         

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
: :

_output_shapes
: :

_output_shapes
: 
Т
ђ
+__inference_Conv2D_2_layer_call_fn_41964359

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_Conv2D_2_layer_call_and_return_conditional_losses_419643492
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                            ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
х

«
F__inference_Conv2D_1_layer_call_and_return_conditional_losses_41964327

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpХ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpџ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                            2
Reluђ
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           :::i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
й
a
E__inference_flatten_layer_call_and_return_conditional_losses_41964392

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs"»L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Г
serving_defaultЎ
?
Input6
serving_default_Input:0         :
Output0
StatefulPartitionedCall:0         tensorflow/serving/predict:▒л
▓5
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	optimizer
trainable_variables
	regularization_losses

	variables
	keras_api

signatures
j_default_save_signature
k__call__
*l&call_and_return_all_conditional_losses"▒2
_tf_keras_sequentialњ2{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential_1", "layers": [{"class_name": "Conv2D", "config": {"name": "Conv2D_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 11, 1]}}}, {"class_name": "Conv2D", "config": {"name": "Conv2D_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "Intermediate", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Output", "trainable": true, "dtype": "float32", "units": 3, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 11, 1]}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 11, 1]}, "is_graph_network": true, "keras_version": "2.3.0-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "Conv2D", "config": {"name": "Conv2D_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 11, 1]}}}, {"class_name": "Conv2D", "config": {"name": "Conv2D_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "Intermediate", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Output", "trainable": true, "dtype": "float32", "units": 3, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 11, 1]}}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "sample_weight_mode": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
┴	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
m__call__
*n&call_and_return_all_conditional_losses"ю
_tf_keras_layerѓ{"class_name": "Conv2D", "name": "Conv2D_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Conv2D_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 11, 1]}}
├	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
o__call__
*p&call_and_return_all_conditional_losses"ъ
_tf_keras_layerё{"class_name": "Conv2D", "name": "Conv2D_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Conv2D_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 10, 32]}}
╠
trainable_variables
regularization_losses
	variables
	keras_api
q__call__
*r&call_and_return_all_conditional_losses"й
_tf_keras_layerБ{"class_name": "MaxPooling2D", "name": "MaxPool", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "MaxPool", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
┐
trainable_variables
regularization_losses
	variables
 	keras_api
s__call__
*t&call_and_return_all_conditional_losses"░
_tf_keras_layerќ{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
┘

!kernel
"bias
#trainable_variables
$regularization_losses
%	variables
&	keras_api
u__call__
*v&call_and_return_all_conditional_losses"┤
_tf_keras_layerџ{"class_name": "Dense", "name": "Intermediate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Intermediate", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
═

'kernel
(bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
w__call__
*x&call_and_return_all_conditional_losses"е
_tf_keras_layerј{"class_name": "Dense", "name": "Output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Output", "trainable": true, "dtype": "float32", "units": 3, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
с
-iter

.beta_1

/beta_2
	0decay
1learning_ratemZm[m\m]!m^"m_'m`(mavbvcvdve!vf"vg'vh(vi"
	optimizer
X
0
1
2
3
!4
"5
'6
(7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
!4
"5
'6
(7"
trackable_list_wrapper
╩

2layers
3metrics
trainable_variables
4layer_regularization_losses
	regularization_losses
5non_trainable_variables

	variables
6layer_metrics
k__call__
j_default_save_signature
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
,
yserving_default"
signature_map
):' 2Conv2D_1/kernel
: 2Conv2D_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Г
7layer_metrics

8layers
trainable_variables
9layer_regularization_losses
regularization_losses
:non_trainable_variables
	variables
;metrics
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
):'  2Conv2D_2/kernel
: 2Conv2D_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Г
<layer_metrics

=layers
trainable_variables
>layer_regularization_losses
regularization_losses
?non_trainable_variables
	variables
@metrics
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Alayer_metrics

Blayers
trainable_variables
Clayer_regularization_losses
regularization_losses
Dnon_trainable_variables
	variables
Emetrics
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Flayer_metrics

Glayers
trainable_variables
Hlayer_regularization_losses
regularization_losses
Inon_trainable_variables
	variables
Jmetrics
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
(:&	ђ@2Intermediate_1/kernel
!:@2Intermediate_1/bias
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
Г
Klayer_metrics

Llayers
#trainable_variables
Mlayer_regularization_losses
$regularization_losses
Nnon_trainable_variables
%	variables
Ometrics
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
!:@2Output_1/kernel
:2Output_1/bias
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
Г
Player_metrics

Qlayers
)trainable_variables
Rlayer_regularization_losses
*regularization_losses
Snon_trainable_variables
+	variables
Tmetrics
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
J
0
1
2
3
4
5"
trackable_list_wrapper
'
U0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
╗
	Vtotal
	Wcount
X	variables
Y	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
.
V0
W1"
trackable_list_wrapper
-
X	variables"
_generic_user_object
.:, 2Adam/Conv2D_1/kernel/m
 : 2Adam/Conv2D_1/bias/m
.:,  2Adam/Conv2D_2/kernel/m
 : 2Adam/Conv2D_2/bias/m
-:+	ђ@2Adam/Intermediate_1/kernel/m
&:$@2Adam/Intermediate_1/bias/m
&:$@2Adam/Output_1/kernel/m
 :2Adam/Output_1/bias/m
.:, 2Adam/Conv2D_1/kernel/v
 : 2Adam/Conv2D_1/bias/v
.:,  2Adam/Conv2D_2/kernel/v
 : 2Adam/Conv2D_2/bias/v
-:+	ђ@2Adam/Intermediate_1/kernel/v
&:$@2Adam/Intermediate_1/bias/v
&:$@2Adam/Output_1/kernel/v
 :2Adam/Output_1/bias/v
у2С
#__inference__wrapped_model_41964315╝
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *,б)
'і$
Input         
і2Є
/__inference_sequential_1_layer_call_fn_41964698
/__inference_sequential_1_layer_call_fn_41964529
/__inference_sequential_1_layer_call_fn_41964719
/__inference_sequential_1_layer_call_fn_41964576└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ш2з
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964677
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964642
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964481
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964455└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
і2Є
+__inference_Conv2D_1_layer_call_fn_41964337О
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *7б4
2і/+                           
Ц2б
F__inference_Conv2D_1_layer_call_and_return_conditional_losses_41964327О
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *7б4
2і/+                           
і2Є
+__inference_Conv2D_2_layer_call_fn_41964359О
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *7б4
2і/+                            
Ц2б
F__inference_Conv2D_2_layer_call_and_return_conditional_losses_41964349О
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *7б4
2і/+                            
њ2Ј
*__inference_MaxPool_layer_call_fn_41964371Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
Г2ф
E__inference_MaxPool_layer_call_and_return_conditional_losses_41964365Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
н2Л
*__inference_flatten_layer_call_fn_41964730б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_flatten_layer_call_and_return_conditional_losses_41964725б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┘2о
/__inference_Intermediate_layer_call_fn_41964750б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
З2ы
J__inference_Intermediate_layer_call_and_return_conditional_losses_41964741б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_Output_layer_call_fn_41964770б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_Output_layer_call_and_return_conditional_losses_41964761б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
3B1
&__inference_signature_wrapper_41964607Input█
F__inference_Conv2D_1_layer_call_and_return_conditional_losses_41964327љIбF
?б<
:і7
inputs+                           
ф "?б<
5і2
0+                            
џ │
+__inference_Conv2D_1_layer_call_fn_41964337ЃIбF
?б<
:і7
inputs+                           
ф "2і/+                            █
F__inference_Conv2D_2_layer_call_and_return_conditional_losses_41964349љIбF
?б<
:і7
inputs+                            
ф "?б<
5і2
0+                            
џ │
+__inference_Conv2D_2_layer_call_fn_41964359ЃIбF
?б<
:і7
inputs+                            
ф "2і/+                            Ф
J__inference_Intermediate_layer_call_and_return_conditional_losses_41964741]!"0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         @
џ Ѓ
/__inference_Intermediate_layer_call_fn_41964750P!"0б-
&б#
!і
inputs         ђ
ф "і         @У
E__inference_MaxPool_layer_call_and_return_conditional_losses_41964365ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ └
*__inference_MaxPool_layer_call_fn_41964371ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ц
D__inference_Output_layer_call_and_return_conditional_losses_41964761\'(/б,
%б"
 і
inputs         @
ф "%б"
і
0         
џ |
)__inference_Output_layer_call_fn_41964770O'(/б,
%б"
 і
inputs         @
ф "і         џ
#__inference__wrapped_model_41964315s!"'(6б3
,б)
'і$
Input         
ф "/ф,
*
Output і
Output         ф
E__inference_flatten_layer_call_and_return_conditional_losses_41964725a7б4
-б*
(і%
inputs          
ф "&б#
і
0         ђ
џ ѓ
*__inference_flatten_layer_call_fn_41964730T7б4
-б*
(і%
inputs          
ф "і         ђ┐
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964455q!"'(>б;
4б1
'і$
Input         
p

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964481q!"'(>б;
4б1
'і$
Input         
p 

 
ф "%б"
і
0         
џ └
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964642r!"'(?б<
5б2
(і%
inputs         
p

 
ф "%б"
і
0         
џ └
J__inference_sequential_1_layer_call_and_return_conditional_losses_41964677r!"'(?б<
5б2
(і%
inputs         
p 

 
ф "%б"
і
0         
џ Ќ
/__inference_sequential_1_layer_call_fn_41964529d!"'(>б;
4б1
'і$
Input         
p

 
ф "і         Ќ
/__inference_sequential_1_layer_call_fn_41964576d!"'(>б;
4б1
'і$
Input         
p 

 
ф "і         ў
/__inference_sequential_1_layer_call_fn_41964698e!"'(?б<
5б2
(і%
inputs         
p

 
ф "і         ў
/__inference_sequential_1_layer_call_fn_41964719e!"'(?б<
5б2
(і%
inputs         
p 

 
ф "і         д
&__inference_signature_wrapper_41964607|!"'(?б<
б 
5ф2
0
Input'і$
Input         "/ф,
*
Output і
Output         