ћС
лљ
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5‘Љ

global_step/Initializer/zerosConst*
dtype0	*
value	B	 R *
_output_shapes
: *
_class
loc:@global_step
П
global_step
VariableV2*
shared_name *
_output_shapes
: *
_class
loc:@global_step*
dtype0	*
	container *
shape: 
≤
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
validate_shape(*
_class
loc:@global_step*
use_locking(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
k
featuresPlaceholder*
dtype0*
shape:€€€€€€€€€*'
_output_shapes
:€€€€€€€€€
Б
9dnn/input_from_feature_columns/input_layer/features/ShapeShapefeatures*
_output_shapes
:*
out_type0*
T0
С
Gdnn/input_from_feature_columns/input_layer/features/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
У
Idnn/input_from_feature_columns/input_layer/features/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
У
Idnn/input_from_feature_columns/input_layer/features/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
э
Adnn/input_from_feature_columns/input_layer/features/strided_sliceStridedSlice9dnn/input_from_feature_columns/input_layer/features/ShapeGdnn/input_from_feature_columns/input_layer/features/strided_slice/stackIdnn/input_from_feature_columns/input_layer/features/strided_slice/stack_1Idnn/input_from_feature_columns/input_layer/features/strided_slice/stack_2*
end_mask *
_output_shapes
: *
ellipsis_mask *
shrink_axis_mask*
T0*
new_axis_mask *
Index0*

begin_mask 
Е
Cdnn/input_from_feature_columns/input_layer/features/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
Л
Adnn/input_from_feature_columns/input_layer/features/Reshape/shapePackAdnn/input_from_feature_columns/input_layer/features/strided_sliceCdnn/input_from_feature_columns/input_layer/features/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
”
;dnn/input_from_feature_columns/input_layer/features/ReshapeReshapefeaturesAdnn/input_from_feature_columns/input_layer/features/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€*
Tshape0
З
<dnn/input_from_feature_columns/input_layer/concat/concat_dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
ђ
1dnn/input_from_feature_columns/input_layer/concatIdentity;dnn/input_from_feature_columns/input_layer/features/Reshape*'
_output_shapes
:€€€€€€€€€*
T0
≈
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*
valueB"   2   *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
:
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *≥ЮЊ*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *≥Ю>*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ю
Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:2*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*

seed *
T0*
seed2 
Ъ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
ђ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes

:2
Ю
:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:2*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
я
dnn/hiddenlayer_0/kernel/part_0VarHandleOp*
	container *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: *0
shared_name!dnn/hiddenlayer_0/kernel/part_0*
shape
:2
П
@dnn/hiddenlayer_0/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Ў
&dnn/hiddenlayer_0/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0
«
3dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:2*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ѓ
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:2*
valueB2*    
’
dnn/hiddenlayer_0/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
shape:2*
_output_shapes
: *.
shared_namednn/hiddenlayer_0/bias/part_0*
	container *
dtype0
Л
>dnn/hiddenlayer_0/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
: 
«
$dnn/hiddenlayer_0/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0
љ
1dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:2
З
'dnn/hiddenlayer_0/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:2
v
dnn/hiddenlayer_0/kernelIdentity'dnn/hiddenlayer_0/kernel/ReadVariableOp*
T0*
_output_shapes

:2
«
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
transpose_a( *
transpose_b( *'
_output_shapes
:€€€€€€€€€2*
T0

%dnn/hiddenlayer_0/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
:2*
dtype0
n
dnn/hiddenlayer_0/biasIdentity%dnn/hiddenlayer_0/bias/ReadVariableOp*
_output_shapes
:2*
T0
Я
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
data_formatNHWC*
T0*'
_output_shapes
:€€€€€€€€€2
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*'
_output_shapes
:€€€€€€€€€2*
T0
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
_output_shapes
: *
out_type0	*
T0
c
dnn/zero_fraction/LessEqual/yConst*
valueB	 R€€€€*
_output_shapes
: *
dtype0	
А
dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
Д
dnn/zero_fraction/cond/SwitchSwitchdnn/zero_fraction/LessEqualdnn/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
m
dnn/zero_fraction/cond/switch_tIdentitydnn/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
k
dnn/zero_fraction/cond/switch_fIdentitydnn/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
h
dnn/zero_fraction/cond/pred_idIdentitydnn/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
С
*dnn/zero_fraction/cond/count_nonzero/zerosConst ^dnn/zero_fraction/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
ѕ
-dnn/zero_fraction/cond/count_nonzero/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1*dnn/zero_fraction/cond/count_nonzero/zeros*'
_output_shapes
:€€€€€€€€€2*
T0
ж
4dnn/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*
T0*:
_output_shapes(
&:€€€€€€€€€2:€€€€€€€€€2*)
_class
loc:@dnn/hiddenlayer_0/Relu
±
)dnn/zero_fraction/cond/count_nonzero/CastCast-dnn/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*'
_output_shapes
:€€€€€€€€€2*
Truncate( *

DstT0
Э
*dnn/zero_fraction/cond/count_nonzero/ConstConst ^dnn/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
:*
valueB"       
ќ
2dnn/zero_fraction/cond/count_nonzero/nonzero_countSum)dnn/zero_fraction/cond/count_nonzero/Cast*dnn/zero_fraction/cond/count_nonzero/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
Ч
dnn/zero_fraction/cond/CastCast2dnn/zero_fraction/cond/count_nonzero/nonzero_count*
Truncate( *

SrcT0*
_output_shapes
: *

DstT0	
У
,dnn/zero_fraction/cond/count_nonzero_1/zerosConst ^dnn/zero_fraction/cond/switch_f*
dtype0*
valueB
 *    *
_output_shapes
: 
”
/dnn/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch,dnn/zero_fraction/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:€€€€€€€€€2
и
6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€2:€€€€€€€€€2*)
_class
loc:@dnn/hiddenlayer_0/Relu*
T0
µ
+dnn/zero_fraction/cond/count_nonzero_1/CastCast/dnn/zero_fraction/cond/count_nonzero_1/NotEqual*'
_output_shapes
:€€€€€€€€€2*

DstT0	*
Truncate( *

SrcT0

Я
,dnn/zero_fraction/cond/count_nonzero_1/ConstConst ^dnn/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
‘
4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countSum+dnn/zero_fraction/cond/count_nonzero_1/Cast,dnn/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
§
dnn/zero_fraction/cond/MergeMerge4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countdnn/zero_fraction/cond/Cast*
_output_shapes
: : *
T0	*
N
Ж
(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
Ы
)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

DstT0*
_output_shapes
: *

SrcT0	*
Truncate( 
Л
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*
_output_shapes
: *

DstT0*
Truncate( *

SrcT0	
∞
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
†
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values
ѓ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *
dtype0*1
value(B& B dnn/dnn/hiddenlayer_0/activation
У
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: *
T0
≈
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*
valueB"2      *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
:
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
valueB
 *феХЊ
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *феХ>
Ю
Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:2*
dtype0*
seed2 *

seed *
T0
Ъ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: *
T0
ђ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:2
Ю
:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:2*
T0
я
dnn/hiddenlayer_1/kernel/part_0VarHandleOp*
shape
:2*
	container *0
shared_name!dnn/hiddenlayer_1/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: *
dtype0
П
@dnn/hiddenlayer_1/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Ў
&dnn/hiddenlayer_1/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0
«
3dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:2*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0
Ѓ
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
valueB*    *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:
’
dnn/hiddenlayer_1/bias/part_0VarHandleOp*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
: *
shape:*.
shared_namednn/hiddenlayer_1/bias/part_0*
	container 
Л
>dnn/hiddenlayer_1/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 
«
$dnn/hiddenlayer_1/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0
љ
1dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
:*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
З
'dnn/hiddenlayer_1/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:2
v
dnn/hiddenlayer_1/kernelIdentity'dnn/hiddenlayer_1/kernel/ReadVariableOp*
T0*
_output_shapes

:2
ђ
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*'
_output_shapes
:€€€€€€€€€*
T0*
transpose_b( *
transpose_a( 

%dnn/hiddenlayer_1/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
:*
dtype0
n
dnn/hiddenlayer_1/biasIdentity%dnn/hiddenlayer_1/bias/ReadVariableOp*
T0*
_output_shapes
:
Я
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R€€€€
Ж
dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
_output_shapes
: *
T0	
К
dnn/zero_fraction_1/cond/SwitchSwitchdnn/zero_fraction_1/LessEqualdnn/zero_fraction_1/LessEqual*
_output_shapes
: : *
T0

q
!dnn/zero_fraction_1/cond/switch_tIdentity!dnn/zero_fraction_1/cond/Switch:1*
_output_shapes
: *
T0

o
!dnn/zero_fraction_1/cond/switch_fIdentitydnn/zero_fraction_1/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_1/cond/pred_idIdentitydnn/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: 
Х
,dnn/zero_fraction_1/cond/count_nonzero/zerosConst"^dnn/zero_fraction_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
’
/dnn/zero_fraction_1/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_1/cond/count_nonzero/zeros*'
_output_shapes
:€€€€€€€€€*
T0
к
6dnn/zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*)
_class
loc:@dnn/hiddenlayer_1/Relu*
T0
µ
+dnn/zero_fraction_1/cond/count_nonzero/CastCast/dnn/zero_fraction_1/cond/count_nonzero/NotEqual*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0

°
,dnn/zero_fraction_1/cond/count_nonzero/ConstConst"^dnn/zero_fraction_1/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
‘
4dnn/zero_fraction_1/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_1/cond/count_nonzero/Cast,dnn/zero_fraction_1/cond/count_nonzero/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
Ы
dnn/zero_fraction_1/cond/CastCast4dnn/zero_fraction_1/cond/count_nonzero/nonzero_count*

DstT0	*
_output_shapes
: *
Truncate( *

SrcT0
Ч
.dnn/zero_fraction_1/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_1/cond/switch_f*
dtype0*
valueB
 *    *
_output_shapes
: 
ў
1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_1/cond/count_nonzero_1/zeros*'
_output_shapes
:€€€€€€€€€*
T0
м
8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*
T0*)
_class
loc:@dnn/hiddenlayer_1/Relu
є
-dnn/zero_fraction_1/cond/count_nonzero_1/CastCast1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*'
_output_shapes
:€€€€€€€€€*
Truncate( 
£
.dnn/zero_fraction_1/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_1/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
Џ
6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_1/cond/count_nonzero_1/Cast.dnn/zero_fraction_1/cond/count_nonzero_1/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
™
dnn/zero_fraction_1/cond/MergeMerge6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_1/cond/Cast*
N*
T0	*
_output_shapes
: : 
М
*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Sizednn/zero_fraction_1/cond/Merge*
T0	*
_output_shapes
: 
Я
+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

DstT0*
Truncate( *
_output_shapes
: *

SrcT0	
П
-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
ґ
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 
†
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0
±
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_1/activation/tagConst*
dtype0*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
Ј
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB"      *
dtype0*
_output_shapes
:
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: *
valueB
 *w÷њ
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *w÷?*
_output_shapes
: 
Й
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:*
dtype0*
seed2 *
T0*

seed 
ю
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *+
_class!
loc:@dnn/logits/kernel/part_0*
T0
Р
7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0*
T0
В
3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0*
T0
 
dnn/logits/kernel/part_0VarHandleOp*
shape
:*
	container *
_output_shapes
: *)
shared_namednn/logits/kernel/part_0*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
Б
9dnn/logits/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel/part_0*
_output_shapes
: 
Љ
dnn/logits/kernel/part_0/AssignAssignVariableOpdnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
≤
,dnn/logits/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:*
dtype0
†
(dnn/logits/bias/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*)
_class
loc:@dnn/logits/bias/part_0
ј
dnn/logits/bias/part_0VarHandleOp*'
shared_namednn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
	container *
_output_shapes
: *
dtype0*
shape:
}
7dnn/logits/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias/part_0*
_output_shapes
: 
Ђ
dnn/logits/bias/part_0/AssignAssignVariableOpdnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*)
_class
loc:@dnn/logits/bias/part_0*
dtype0
®
*dnn/logits/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:*
dtype0
y
 dnn/logits/kernel/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:
h
dnn/logits/kernelIdentity dnn/logits/kernel/ReadVariableOp*
_output_shapes

:*
T0
Ю
dnn/logits/MatMulMatMuldnn/hiddenlayer_1/Reludnn/logits/kernel*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
T0*
transpose_b( 
q
dnn/logits/bias/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
_output_shapes
:*
dtype0
`
dnn/logits/biasIdentitydnn/logits/bias/ReadVariableOp*
T0*
_output_shapes
:
К
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*'
_output_shapes
:€€€€€€€€€*
T0*
data_formatNHWC
e
dnn/zero_fraction_2/SizeSizednn/logits/BiasAdd*
out_type0	*
_output_shapes
: *
T0
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
valueB	 R€€€€*
dtype0	
Ж
dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 
К
dnn/zero_fraction_2/cond/SwitchSwitchdnn/zero_fraction_2/LessEqualdnn/zero_fraction_2/LessEqual*
_output_shapes
: : *
T0

q
!dnn/zero_fraction_2/cond/switch_tIdentity!dnn/zero_fraction_2/cond/Switch:1*
_output_shapes
: *
T0

o
!dnn/zero_fraction_2/cond/switch_fIdentitydnn/zero_fraction_2/cond/Switch*
_output_shapes
: *
T0

l
 dnn/zero_fraction_2/cond/pred_idIdentitydnn/zero_fraction_2/LessEqual*
_output_shapes
: *
T0

Х
,dnn/zero_fraction_2/cond/count_nonzero/zerosConst"^dnn/zero_fraction_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
’
/dnn/zero_fraction_2/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_2/cond/count_nonzero/zeros*'
_output_shapes
:€€€€€€€€€*
T0
в
6dnn/zero_fraction_2/cond/count_nonzero/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_2/cond/pred_id*
T0*%
_class
loc:@dnn/logits/BiasAdd*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
µ
+dnn/zero_fraction_2/cond/count_nonzero/CastCast/dnn/zero_fraction_2/cond/count_nonzero/NotEqual*

SrcT0
*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0
°
,dnn/zero_fraction_2/cond/count_nonzero/ConstConst"^dnn/zero_fraction_2/cond/switch_t*
_output_shapes
:*
valueB"       *
dtype0
‘
4dnn/zero_fraction_2/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_2/cond/count_nonzero/Cast,dnn/zero_fraction_2/cond/count_nonzero/Const*
_output_shapes
: *

Tidx0*
T0*
	keep_dims( 
Ы
dnn/zero_fraction_2/cond/CastCast4dnn/zero_fraction_2/cond/count_nonzero/nonzero_count*
Truncate( *
_output_shapes
: *

SrcT0*

DstT0	
Ч
.dnn/zero_fraction_2/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_2/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
ў
1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_2/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:€€€€€€€€€
д
8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_2/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*
T0*%
_class
loc:@dnn/logits/BiasAdd
є
-dnn/zero_fraction_2/cond/count_nonzero_1/CastCast1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual*

SrcT0
*'
_output_shapes
:€€€€€€€€€*

DstT0	*
Truncate( 
£
.dnn/zero_fraction_2/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_2/cond/switch_f*
dtype0*
valueB"       *
_output_shapes
:
Џ
6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_2/cond/count_nonzero_1/Cast.dnn/zero_fraction_2/cond/count_nonzero_1/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0	
™
dnn/zero_fraction_2/cond/MergeMerge6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_2/cond/Cast*
T0	*
_output_shapes
: : *
N
М
*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Sizednn/zero_fraction_2/cond/Merge*
_output_shapes
: *
T0	
Я
+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*
_output_shapes
: *
Truncate( *

SrcT0	*

DstT0
П
-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

DstT0*

SrcT0	*
Truncate( *
_output_shapes
: 
ґ
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Т
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
_output_shapes
: *
dtype0
£
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
_output_shapes
: *
T0
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 
Б
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
g
dnn/head/logits/ShapeShapednn/logits/BiasAdd*
out_type0*
T0*
_output_shapes
:
k
)dnn/head/logits/assert_rank_at_least/rankConst*
dtype0*
value	B :*
_output_shapes
: 
[
Sdnn/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
L
Ddnn/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
_output_shapes
: *
dtype0
r
save/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
:2*
dtype0
X
save/IdentityIdentitysave/Read/ReadVariableOp*
_output_shapes
:2*
T0
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
_output_shapes
:2*
T0
z
save/Read_1/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:2
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
_output_shapes

:2*
T0
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:2
t
save/Read_2/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
:*
dtype0
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
_output_shapes
:*
T0
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
_output_shapes
:*
T0
z
save/Read_3/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:2
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
_output_shapes

:2*
T0
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:2
m
save/Read_4/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
\
save/Identity_8Identitysave/Read_4/ReadVariableOp*
T0*
_output_shapes
:
`
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
_output_shapes
:*
T0
s
save/Read_5/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
_output_shapes

:*
T0
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_de824ec904d946c6bb03400e54ffc33c/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:* 
valueBBglobal_step
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Р
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
value	B :*
_output_shapes
: 
Р
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Г
save/Read_6/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:2
l
save/Identity_12Identitysave/Read_6/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:2
b
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes
:2
Й
save/Read_7/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:2
p
save/Identity_14Identitysave/Read_7/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:2
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
_output_shapes

:2*
T0
Г
save/Read_8/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
l
save/Identity_16Identitysave/Read_8/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
_output_shapes
:*
T0
Й
save/Read_9/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0"/device:CPU:0*
_output_shapes

:2*
dtype0
p
save/Identity_18Identitysave/Read_9/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:2
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
_output_shapes

:2*
T0
}
save/Read_10/ReadVariableOpReadVariableOpdnn/logits/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_20Identitysave/Read_10/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes
:
Г
save/Read_11/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_22Identitysave/Read_11/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes

:
ы
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Э
valueУBРBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernel
Њ
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*]
valueTBRB50 0,50B13 50 0,13:0,50B20 0,20B50 20 0,50:0,20B1 0,1B20 1 0,20:0,1*
dtype0*
_output_shapes
:
ь
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_13save/Identity_15save/Identity_17save/Identity_19save/Identity_21save/Identity_23"/device:CPU:0*
dtypes

2
®
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save/ShardedFilename_1
а
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
:*
N*

axis 
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
®
save/Identity_24Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:* 
valueBBglobal_step*
dtype0
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Я
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*
_output_shapes
:
Ь
save/AssignAssignglobal_stepsave/RestoreV2*
use_locking(*
T0	*
_output_shapes
: *
_class
loc:@global_step*
validate_shape(
(
save/restore_shardNoOp^save/Assign
ю
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*Э
valueУBРBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernel*
_output_shapes
:*
dtype0
Ѕ
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*]
valueTBRB50 0,50B13 50 0,13:0,50B20 0,20B50 20 0,50:0,20B1 0,1B20 1 0,20:0,1*
dtype0
÷
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*D
_output_shapes2
0:2:2::2::*
dtypes

2
b
save/Identity_25Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:2
v
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/bias/part_0save/Identity_25"/device:CPU:0*
dtype0
h
save/Identity_26Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes

:2
z
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernel/part_0save/Identity_26"/device:CPU:0*
dtype0
d
save/Identity_27Identitysave/RestoreV2_1:2"/device:CPU:0*
_output_shapes
:*
T0
x
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/bias/part_0save/Identity_27"/device:CPU:0*
dtype0
h
save/Identity_28Identitysave/RestoreV2_1:3"/device:CPU:0*
_output_shapes

:2*
T0
z
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernel/part_0save/Identity_28"/device:CPU:0*
dtype0
d
save/Identity_29Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes
:
q
save/AssignVariableOp_4AssignVariableOpdnn/logits/bias/part_0save/Identity_29"/device:CPU:0*
dtype0
h
save/Identity_30Identitysave/RestoreV2_1:5"/device:CPU:0*
_output_shapes

:*
T0
s
save/AssignVariableOp_5AssignVariableOpdnn/logits/kernel/part_0save/Identity_30"/device:CPU:0*
dtype0
≈
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"&?
save/Const:0save/Identity_24:0save/restore_all (5 @F8"%
saved_model_main_op


group_deps"€

	variablesс
о

Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
м
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kernel2  "2(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/bias2 "2(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
м
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kernel2  "2(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/bias "(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
…
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel  "(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
≥
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08"≠

trainable_variablesХ
Т

м
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kernel2  "2(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/bias2 "2(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
м
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kernel2  "2(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/bias "(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
…
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel  "(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
≥
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08"В
	summariesф
с
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0"я 
cond_contextќ Ћ 
ђ
 dnn/zero_fraction/cond/cond_text dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_t:0 *ј
dnn/hiddenlayer_0/Relu:0
dnn/zero_fraction/cond/Cast:0
+dnn/zero_fraction/cond/count_nonzero/Cast:0
,dnn/zero_fraction/cond/count_nonzero/Const:0
6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
/dnn/zero_fraction/cond/count_nonzero/NotEqual:0
4dnn/zero_fraction/cond/count_nonzero/nonzero_count:0
,dnn/zero_fraction/cond/count_nonzero/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_t:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0R
dnn/hiddenlayer_0/Relu:06dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ы
"dnn/zero_fraction/cond/cond_text_1 dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_f:0*ѓ
dnn/hiddenlayer_0/Relu:0
-dnn/zero_fraction/cond/count_nonzero_1/Cast:0
.dnn/zero_fraction/cond/count_nonzero_1/Const:0
8dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
1dnn/zero_fraction/cond/count_nonzero_1/NotEqual:0
6dnn/zero_fraction/cond/count_nonzero_1/nonzero_count:0
.dnn/zero_fraction/cond/count_nonzero_1/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_f:0T
dnn/hiddenlayer_0/Relu:08dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0
 
"dnn/zero_fraction_1/cond/cond_text"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_t:0 *Ў
dnn/hiddenlayer_1/Relu:0
dnn/zero_fraction_1/cond/Cast:0
-dnn/zero_fraction_1/cond/count_nonzero/Cast:0
.dnn/zero_fraction_1/cond/count_nonzero/Const:0
8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_1/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_1/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_1/cond/count_nonzero/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_t:0H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0T
dnn/hiddenlayer_1/Relu:08dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
Ј
$dnn/zero_fraction_1/cond/cond_text_1"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_f:0*≈
dnn/hiddenlayer_1/Relu:0
/dnn/zero_fraction_1/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_1/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_1/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_f:0H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0V
dnn/hiddenlayer_1/Relu:0:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
¬
"dnn/zero_fraction_2/cond/cond_text"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_t:0 *–
dnn/logits/BiasAdd:0
dnn/zero_fraction_2/cond/Cast:0
-dnn/zero_fraction_2/cond/count_nonzero/Cast:0
.dnn/zero_fraction_2/cond/count_nonzero/Const:0
8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_2/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_2/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_2/cond/count_nonzero/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_t:0H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0P
dnn/logits/BiasAdd:08dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1
ѓ
$dnn/zero_fraction_2/cond/cond_text_1"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_f:0*љ
dnn/logits/BiasAdd:0
/dnn/zero_fraction_2/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_2/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_2/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_f:0H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0R
dnn/logits/BiasAdd:0:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H*У
predictЗ
-
features!

features:0€€€€€€€€€:
predictions+
dnn/logits/BiasAdd:0€€€€€€€€€tensorflow/serving/predict