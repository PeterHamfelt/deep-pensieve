
H
inputsPlaceholder*$
shape:ÿÿÿÿÿÿÿÿÿ  *
dtype0
1
labelsPlaceholder*
dtype0*
shape:
S
truncated_normal/shapeConst*%
valueB"            *
dtype0
?
truncated_normal/meanConst*
value	B j *
dtype0
B
truncated_normal/stddevConst*
value
B jÍ)*
dtype0
z
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
T0*
dtype0*
seed2*

seed
_
truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0
M
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0
d
Variable
VariableV2*
shared_name *
dtype0*
	container *
shape:

Variable/AssignAssignVariabletruncated_normal*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
C
zeros/shape_as_tensorConst*
valueB:*
dtype0
5
zeros/ConstConst*
value	B j *
dtype0
L
zerosFillzeros/shape_as_tensorzeros/Const*
T0*

index_type0
Z

Variable_1
VariableV2*
shared_name *
dtype0*
	container *
shape:

Variable_1/AssignAssign
Variable_1zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
O
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1

Conv2DConv2DinputsVariable/read*
paddingVALID*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
,
addAddConv2DVariable_1/read*
T0

ReluReluadd*
T0
t
MaxPoolMaxPoolRelu*
ksize
*
paddingVALID*
T0*
data_formatNHWC*
strides

U
truncated_normal_1/shapeConst*
dtype0*%
valueB"            
A
truncated_normal_1/meanConst*
value	B j *
dtype0
D
truncated_normal_1/stddevConst*
value
B jÍ)*
dtype0
~
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*

seed*
T0*
dtype0*
seed2
e
truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0
S
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0
f

Variable_2
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_2/AssignAssign
Variable_2truncated_normal_1*
T0*
_class
loc:@Variable_2*
validate_shape(*
use_locking(
O
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2
E
zeros_1/shape_as_tensorConst*
dtype0*
valueB:
7
zeros_1/ConstConst*
value	B j *
dtype0
R
zeros_1Fillzeros_1/shape_as_tensorzeros_1/Const*
T0*

index_type0
Z

Variable_3
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_3/AssignAssign
Variable_3zeros_1*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_3
O
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3
¤
Conv2D_1Conv2DMaxPoolVariable_2/read*
paddingVALID*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
0
add_1AddConv2D_1Variable_3/read*
T0

Relu_1Reluadd_1*
T0
x
	MaxPool_1MaxPoolRelu_1*
ksize
*
paddingVALID*
T0*
data_formatNHWC*
strides

B
Flatten/flatten/ShapeShape	MaxPool_1*
T0*
out_type0
Q
#Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0
S
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0
S
%Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0
±
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
Index0*
T0
R
Flatten/flatten/Reshape/shape/1Const*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ

Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
T0*

axis *
N
c
Flatten/flatten/ReshapeReshape	MaxPool_1Flatten/flatten/Reshape/shape*
T0*
Tshape0
M
truncated_normal_2/shapeConst*
dtype0*
valueB"  x   
A
truncated_normal_2/meanConst*
dtype0*
value	B j 
D
truncated_normal_2/stddevConst*
dtype0*
value
B jÍ)
~
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*

seed*
T0*
dtype0*
seed23
e
truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
T0
S
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0
_

Variable_4
VariableV2*
dtype0*
	container *
shape:	x*
shared_name 

Variable_4/AssignAssign
Variable_4truncated_normal_2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_4
O
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4
E
zeros_2/shape_as_tensorConst*
valueB:x*
dtype0
7
zeros_2/ConstConst*
value	B j *
dtype0
R
zeros_2Fillzeros_2/shape_as_tensorzeros_2/Const*
T0*

index_type0
Z

Variable_5
VariableV2*
dtype0*
	container *
shape:x*
shared_name 

Variable_5/AssignAssign
Variable_5zeros_2*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(
O
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5
i
MatMulMatMulFlatten/flatten/ReshapeVariable_4/read*
transpose_a( *
transpose_b( *
T0
.
add_2AddMatMulVariable_5/read*
T0

Relu_2Reluadd_2*
T0
M
truncated_normal_3/shapeConst*
valueB"x   T   *
dtype0
A
truncated_normal_3/meanConst*
value	B j *
dtype0
D
truncated_normal_3/stddevConst*
dtype0*
value
B jÍ)
~
"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
dtype0*
seed2E*

seed*
T0
e
truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0
S
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0
^

Variable_6
VariableV2*
shared_name *
dtype0*
	container *
shape
:xT

Variable_6/AssignAssign
Variable_6truncated_normal_3*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(
O
Variable_6/readIdentity
Variable_6*
T0*
_class
loc:@Variable_6
E
zeros_3/shape_as_tensorConst*
dtype0*
valueB:T
7
zeros_3/ConstConst*
dtype0*
value	B j 
R
zeros_3Fillzeros_3/shape_as_tensorzeros_3/Const*
T0*

index_type0
Z

Variable_7
VariableV2*
dtype0*
	container *
shape:T*
shared_name 

Variable_7/AssignAssign
Variable_7zeros_3*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(
O
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7
Z
MatMul_1MatMulRelu_2Variable_6/read*
T0*
transpose_a( *
transpose_b( 
0
add_3AddMatMul_1Variable_7/read*
T0

Relu_3Reluadd_3*
T0
M
truncated_normal_4/shapeConst*
valueB"T   
   *
dtype0
A
truncated_normal_4/meanConst*
value	B j *
dtype0
D
truncated_normal_4/stddevConst*
dtype0*
value
B jÍ)
~
"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*
T0*
dtype0*
seed2W*

seed
e
truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
T0
S
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*
T0
^

Variable_8
VariableV2*
dtype0*
	container *
shape
:T
*
shared_name 

Variable_8/AssignAssign
Variable_8truncated_normal_4*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(
O
Variable_8/readIdentity
Variable_8*
T0*
_class
loc:@Variable_8
E
zeros_4/shape_as_tensorConst*
dtype0*
valueB:

7
zeros_4/ConstConst*
dtype0*
value	B j 
R
zeros_4Fillzeros_4/shape_as_tensorzeros_4/Const*
T0*

index_type0
Z

Variable_9
VariableV2*
dtype0*
	container *
shape:
*
shared_name 

Variable_9/AssignAssign
Variable_9zeros_4*
T0*
_class
loc:@Variable_9*
validate_shape(*
use_locking(
O
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9
Z
MatMul_2MatMulRelu_3Variable_8/read*
transpose_b( *
T0*
transpose_a( 
0
add_4AddMatMul_2Variable_9/read*
T0
"
logitsIdentityadd_4*
T0
S
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapelabels*
T0*
out_type0

GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslogitslabels*
T0*
Tlabels0
3
ConstConst*
valueB: *
dtype0

loss_operationMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
T0*

Tidx0*
	keep_dims( 
8
gradients/ShapeConst*
valueB *
dtype0
?
gradients/grad_ys_0Const*
valueB	 j*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
Y
+gradients/loss_operation_grad/Reshape/shapeConst*
valueB:*
dtype0

%gradients/loss_operation_grad/ReshapeReshapegradients/Fill+gradients/loss_operation_grad/Reshape/shape*
T0*
Tshape0

#gradients/loss_operation_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0

"gradients/loss_operation_grad/TileTile%gradients/loss_operation_grad/Reshape#gradients/loss_operation_grad/Shape*
T0*

Tmultiples0

%gradients/loss_operation_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0
N
%gradients/loss_operation_grad/Shape_2Const*
valueB *
dtype0
Q
#gradients/loss_operation_grad/ConstConst*
valueB: *
dtype0

"gradients/loss_operation_grad/ProdProd%gradients/loss_operation_grad/Shape_1#gradients/loss_operation_grad/Const*

Tidx0*
	keep_dims( *
T0
S
%gradients/loss_operation_grad/Const_1Const*
valueB: *
dtype0
 
$gradients/loss_operation_grad/Prod_1Prod%gradients/loss_operation_grad/Shape_2%gradients/loss_operation_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
Q
'gradients/loss_operation_grad/Maximum/yConst*
dtype0*
value	B :

%gradients/loss_operation_grad/MaximumMaximum$gradients/loss_operation_grad/Prod_1'gradients/loss_operation_grad/Maximum/y*
T0

&gradients/loss_operation_grad/floordivFloorDiv"gradients/loss_operation_grad/Prod%gradients/loss_operation_grad/Maximum*
T0
z
"gradients/loss_operation_grad/CastCast&gradients/loss_operation_grad/floordiv*
Truncate( *

DstT0*

SrcT0

%gradients/loss_operation_grad/truedivRealDiv"gradients/loss_operation_grad/Tile"gradients/loss_operation_grad/Cast*
T0
u
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0

fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*´
message¨¥Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()

egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0

agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims%gradients/loss_operation_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0
µ
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0
F
gradients/add_4_grad/ShapeShapeMatMul_2*
T0*
out_type0
J
gradients/add_4_grad/Shape_1Const*
dtype0*
valueB:


*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0
Í
gradients/add_4_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0
Ñ
gradients/add_4_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
¹
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape
¿
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1

gradients/MatMul_2_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyVariable_8/read*
T0*
transpose_a( *
transpose_b(

 gradients/MatMul_2_grad/MatMul_1MatMulRelu_3-gradients/add_4_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
Ã
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
É
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1
m
gradients/Relu_3_grad/ReluGradReluGrad0gradients/MatMul_2_grad/tuple/control_dependencyRelu_3*
T0
F
gradients/add_3_grad/ShapeShapeMatMul_1*
T0*
out_type0
J
gradients/add_3_grad/Shape_1Const*
valueB:T*
dtype0

*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0

gradients/add_3_grad/SumSumgradients/Relu_3_grad/ReluGrad*gradients/add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
Tshape0

gradients/add_3_grad/Sum_1Sumgradients/Relu_3_grad/ReluGrad,gradients/add_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
¹
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape
¿
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1

gradients/MatMul_1_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyVariable_6/read*
transpose_a( *
transpose_b(*
T0

 gradients/MatMul_1_grad/MatMul_1MatMulRelu_2-gradients/add_3_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
Ã
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
É
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
m
gradients/Relu_2_grad/ReluGradReluGrad0gradients/MatMul_1_grad/tuple/control_dependencyRelu_2*
T0
D
gradients/add_2_grad/ShapeShapeMatMul*
T0*
out_type0
J
gradients/add_2_grad/Shape_1Const*
valueB:x*
dtype0

*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0

gradients/add_2_grad/SumSumgradients/Relu_2_grad/ReluGrad*gradients/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0

gradients/add_2_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad,gradients/add_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
¹
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape
¿
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1

gradients/MatMul_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyVariable_4/read*
transpose_b(*
T0*
transpose_a( 

gradients/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape-gradients/add_2_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
»
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
Á
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
Y
,gradients/Flatten/flatten/Reshape_grad/ShapeShape	MaxPool_1*
T0*
out_type0
®
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0
Ò
$gradients/MaxPool_1_grad/MaxPoolGradMaxPoolGradRelu_1	MaxPool_1.gradients/Flatten/flatten/Reshape_grad/Reshape*
ksize
*
paddingVALID*
T0*
data_formatNHWC*
strides

a
gradients/Relu_1_grad/ReluGradReluGrad$gradients/MaxPool_1_grad/MaxPoolGradRelu_1*
T0
F
gradients/add_1_grad/ShapeShapeConv2D_1*
T0*
out_type0
J
gradients/add_1_grad/Shape_1Const*
valueB:*
dtype0

*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0

gradients/add_1_grad/SumSumgradients/Relu_1_grad/ReluGrad*gradients/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0

gradients/add_1_grad/Sum_1Sumgradients/Relu_1_grad/ReluGrad,gradients/add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
¹
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
¿
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
d
gradients/Conv2D_1_grad/ShapeNShapeNMaxPoolVariable_2/read*
T0*
out_type0*
N

+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_2/read-gradients/add_1_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID

,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool gradients/Conv2D_1_grad/ShapeN:1-gradients/add_1_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
	dilations


(gradients/Conv2D_1_grad/tuple/group_depsNoOp-^gradients/Conv2D_1_grad/Conv2DBackpropFilter,^gradients/Conv2D_1_grad/Conv2DBackpropInput
Ý
0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput
á
2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter
Î
"gradients/MaxPool_grad/MaxPoolGradMaxPoolGradReluMaxPool0gradients/Conv2D_1_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*
T0
[
gradients/Relu_grad/ReluGradReluGrad"gradients/MaxPool_grad/MaxPoolGradRelu*
T0
B
gradients/add_grad/ShapeShapeConv2D*
T0*
out_type0
H
gradients/add_grad/Shape_1Const*
valueB:*
dtype0

(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0

gradients/add_grad/SumSumgradients/Relu_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0

gradients/add_grad/Sum_1Sumgradients/Relu_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
±
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
·
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
_
gradients/Conv2D_grad/ShapeNShapeNinputsVariable/read*
T0*
out_type0*
N

)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/read+gradients/add_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID

*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinputsgradients/Conv2D_grad/ShapeN:1+gradients/add_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
	dilations


&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput
Õ
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput
Ù
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter
a
beta1_power/initial_valueConst*
value
B jÍy*
_class
loc:@Variable*
dtype0
t
beta1_power
VariableV2*
_class
loc:@Variable*
dtype0*
	container *
shape: *
shared_name 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
O
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Variable
a
beta2_power/initial_valueConst*
value
B jø*
_class
loc:@Variable*
dtype0
t
beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@Variable*
dtype0*
	container 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
O
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable
v
Variable/Adam/Initializer/zerosConst*"
valueBj *
_class
loc:@Variable*
dtype0

Variable/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@Variable

Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
S
Variable/Adam/readIdentityVariable/Adam*
T0*
_class
loc:@Variable
x
!Variable/Adam_1/Initializer/zerosConst*"
valueBj *
_class
loc:@Variable*
dtype0

Variable/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@Variable*
dtype0*
	container 
£
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
W
Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_class
loc:@Variable
n
!Variable_1/Adam/Initializer/zerosConst*
valueBj *
_class
loc:@Variable_1*
dtype0
~
Variable_1/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@Variable_1
¥
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
Y
Variable_1/Adam/readIdentityVariable_1/Adam*
T0*
_class
loc:@Variable_1
p
#Variable_1/Adam_1/Initializer/zerosConst*
valueBj *
_class
loc:@Variable_1*
dtype0

Variable_1/Adam_1
VariableV2*
_class
loc:@Variable_1*
dtype0*
	container *
shape:*
shared_name 
«
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(
]
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_class
loc:@Variable_1

1Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*%
valueB"            *
_class
loc:@Variable_2
p
'Variable_2/Adam/Initializer/zeros/ConstConst*
value	B j *
_class
loc:@Variable_2*
dtype0
¿
!Variable_2/Adam/Initializer/zerosFill1Variable_2/Adam/Initializer/zeros/shape_as_tensor'Variable_2/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_2

Variable_2/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@Variable_2
¥
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
Y
Variable_2/Adam/readIdentityVariable_2/Adam*
T0*
_class
loc:@Variable_2

3Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"            *
_class
loc:@Variable_2*
dtype0
r
)Variable_2/Adam_1/Initializer/zeros/ConstConst*
dtype0*
value	B j *
_class
loc:@Variable_2
Å
#Variable_2/Adam_1/Initializer/zerosFill3Variable_2/Adam_1/Initializer/zeros/shape_as_tensor)Variable_2/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_2

Variable_2/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@Variable_2*
dtype0*
	container 
«
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_2*
validate_shape(*
use_locking(
]
Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0*
_class
loc:@Variable_2
n
!Variable_3/Adam/Initializer/zerosConst*
dtype0*
valueBj *
_class
loc:@Variable_3
~
Variable_3/Adam
VariableV2*
shared_name *
_class
loc:@Variable_3*
dtype0*
	container *
shape:
¥
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
Y
Variable_3/Adam/readIdentityVariable_3/Adam*
T0*
_class
loc:@Variable_3
p
#Variable_3/Adam_1/Initializer/zerosConst*
valueBj *
_class
loc:@Variable_3*
dtype0

Variable_3/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_3*
dtype0*
	container *
shape:
«
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
]
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
T0*
_class
loc:@Variable_3

1Variable_4/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"  x   *
_class
loc:@Variable_4
p
'Variable_4/Adam/Initializer/zeros/ConstConst*
value	B j *
_class
loc:@Variable_4*
dtype0
¿
!Variable_4/Adam/Initializer/zerosFill1Variable_4/Adam/Initializer/zeros/shape_as_tensor'Variable_4/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_4

Variable_4/Adam
VariableV2*
_class
loc:@Variable_4*
dtype0*
	container *
shape:	x*
shared_name 
¥
Variable_4/Adam/AssignAssignVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(
Y
Variable_4/Adam/readIdentityVariable_4/Adam*
T0*
_class
loc:@Variable_4

3Variable_4/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"  x   *
_class
loc:@Variable_4*
dtype0
r
)Variable_4/Adam_1/Initializer/zeros/ConstConst*
dtype0*
value	B j *
_class
loc:@Variable_4
Å
#Variable_4/Adam_1/Initializer/zerosFill3Variable_4/Adam_1/Initializer/zeros/shape_as_tensor)Variable_4/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_4

Variable_4/Adam_1
VariableV2*
dtype0*
	container *
shape:	x*
shared_name *
_class
loc:@Variable_4
«
Variable_4/Adam_1/AssignAssignVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_4*
validate_shape(*
use_locking(
]
Variable_4/Adam_1/readIdentityVariable_4/Adam_1*
T0*
_class
loc:@Variable_4
n
!Variable_5/Adam/Initializer/zerosConst*
valueBxj *
_class
loc:@Variable_5*
dtype0
~
Variable_5/Adam
VariableV2*
_class
loc:@Variable_5*
dtype0*
	container *
shape:x*
shared_name 
¥
Variable_5/Adam/AssignAssignVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(
Y
Variable_5/Adam/readIdentityVariable_5/Adam*
T0*
_class
loc:@Variable_5
p
#Variable_5/Adam_1/Initializer/zerosConst*
dtype0*
valueBxj *
_class
loc:@Variable_5

Variable_5/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_5*
dtype0*
	container *
shape:x
«
Variable_5/Adam_1/AssignAssignVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(
]
Variable_5/Adam_1/readIdentityVariable_5/Adam_1*
T0*
_class
loc:@Variable_5

1Variable_6/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"x   T   *
_class
loc:@Variable_6*
dtype0
p
'Variable_6/Adam/Initializer/zeros/ConstConst*
value	B j *
_class
loc:@Variable_6*
dtype0
¿
!Variable_6/Adam/Initializer/zerosFill1Variable_6/Adam/Initializer/zeros/shape_as_tensor'Variable_6/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_6

Variable_6/Adam
VariableV2*
dtype0*
	container *
shape
:xT*
shared_name *
_class
loc:@Variable_6
¥
Variable_6/Adam/AssignAssignVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
T0*
_class
loc:@Variable_6*
validate_shape(*
use_locking(
Y
Variable_6/Adam/readIdentityVariable_6/Adam*
T0*
_class
loc:@Variable_6

3Variable_6/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"x   T   *
_class
loc:@Variable_6*
dtype0
r
)Variable_6/Adam_1/Initializer/zeros/ConstConst*
value	B j *
_class
loc:@Variable_6*
dtype0
Å
#Variable_6/Adam_1/Initializer/zerosFill3Variable_6/Adam_1/Initializer/zeros/shape_as_tensor)Variable_6/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_6

Variable_6/Adam_1
VariableV2*
_class
loc:@Variable_6*
dtype0*
	container *
shape
:xT*
shared_name 
«
Variable_6/Adam_1/AssignAssignVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(
]
Variable_6/Adam_1/readIdentityVariable_6/Adam_1*
T0*
_class
loc:@Variable_6
n
!Variable_7/Adam/Initializer/zerosConst*
dtype0*
valueBTj *
_class
loc:@Variable_7
~
Variable_7/Adam
VariableV2*
shared_name *
_class
loc:@Variable_7*
dtype0*
	container *
shape:T
¥
Variable_7/Adam/AssignAssignVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(
Y
Variable_7/Adam/readIdentityVariable_7/Adam*
T0*
_class
loc:@Variable_7
p
#Variable_7/Adam_1/Initializer/zerosConst*
valueBTj *
_class
loc:@Variable_7*
dtype0

Variable_7/Adam_1
VariableV2*
shape:T*
shared_name *
_class
loc:@Variable_7*
dtype0*
	container 
«
Variable_7/Adam_1/AssignAssignVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(
]
Variable_7/Adam_1/readIdentityVariable_7/Adam_1*
T0*
_class
loc:@Variable_7
r
!Variable_8/Adam/Initializer/zerosConst*
valueBT
j *
_class
loc:@Variable_8*
dtype0

Variable_8/Adam
VariableV2*
_class
loc:@Variable_8*
dtype0*
	container *
shape
:T
*
shared_name 
¥
Variable_8/Adam/AssignAssignVariable_8/Adam!Variable_8/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(
Y
Variable_8/Adam/readIdentityVariable_8/Adam*
T0*
_class
loc:@Variable_8
t
#Variable_8/Adam_1/Initializer/zerosConst*
valueBT
j *
_class
loc:@Variable_8*
dtype0

Variable_8/Adam_1
VariableV2*
shape
:T
*
shared_name *
_class
loc:@Variable_8*
dtype0*
	container 
«
Variable_8/Adam_1/AssignAssignVariable_8/Adam_1#Variable_8/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_8*
validate_shape(*
use_locking(
]
Variable_8/Adam_1/readIdentityVariable_8/Adam_1*
T0*
_class
loc:@Variable_8
n
!Variable_9/Adam/Initializer/zerosConst*
dtype0*
valueB
j *
_class
loc:@Variable_9
~
Variable_9/Adam
VariableV2*
shared_name *
_class
loc:@Variable_9*
dtype0*
	container *
shape:

¥
Variable_9/Adam/AssignAssignVariable_9/Adam!Variable_9/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
Y
Variable_9/Adam/readIdentityVariable_9/Adam*
T0*
_class
loc:@Variable_9
p
#Variable_9/Adam_1/Initializer/zerosConst*
valueB
j *
_class
loc:@Variable_9*
dtype0

Variable_9/Adam_1
VariableV2*
dtype0*
	container *
shape:
*
shared_name *
_class
loc:@Variable_9
«
Variable_9/Adam_1/AssignAssignVariable_9/Adam_1#Variable_9/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
]
Variable_9/Adam_1/readIdentityVariable_9/Adam_1*
T0*
_class
loc:@Variable_9
K
 training_operation/learning_rateConst*
value
B j*
dtype0
C
training_operation/beta1Const*
value
B jÍy*
dtype0
C
training_operation/beta2Const*
value
B jø*
dtype0
E
training_operation/epsilonConst*
value
B j©*
dtype0
ø
,training_operation/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable*
use_nesterov( 
ÿ
.training_operation/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon-gradients/add_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1*
use_nesterov( *
use_locking( 

.training_operation/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_2*
use_nesterov( *
use_locking( 

.training_operation/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon/gradients/add_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_3*
use_nesterov( 

.training_operation/update_Variable_4/ApplyAdam	ApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_4*
use_nesterov( *
use_locking( 

.training_operation/update_Variable_5/ApplyAdam	ApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon/gradients/add_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_5*
use_nesterov( 

.training_operation/update_Variable_6/ApplyAdam	ApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_6*
use_nesterov( 

.training_operation/update_Variable_7/ApplyAdam	ApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon/gradients/add_3_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_7*
use_nesterov( *
use_locking( 

.training_operation/update_Variable_8/ApplyAdam	ApplyAdam
Variable_8Variable_8/AdamVariable_8/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon2gradients/MatMul_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_8*
use_nesterov( 

.training_operation/update_Variable_9/ApplyAdam	ApplyAdam
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_power/readbeta2_power/read training_operation/learning_ratetraining_operation/beta1training_operation/beta2training_operation/epsilon/gradients/add_4_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_9*
use_nesterov( 
×
training_operation/mulMulbeta1_power/readtraining_operation/beta1-^training_operation/update_Variable/ApplyAdam/^training_operation/update_Variable_1/ApplyAdam/^training_operation/update_Variable_2/ApplyAdam/^training_operation/update_Variable_3/ApplyAdam/^training_operation/update_Variable_4/ApplyAdam/^training_operation/update_Variable_5/ApplyAdam/^training_operation/update_Variable_6/ApplyAdam/^training_operation/update_Variable_7/ApplyAdam/^training_operation/update_Variable_8/ApplyAdam/^training_operation/update_Variable_9/ApplyAdam*
T0*
_class
loc:@Variable

training_operation/AssignAssignbeta1_powertraining_operation/mul*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
Ù
training_operation/mul_1Mulbeta2_power/readtraining_operation/beta2-^training_operation/update_Variable/ApplyAdam/^training_operation/update_Variable_1/ApplyAdam/^training_operation/update_Variable_2/ApplyAdam/^training_operation/update_Variable_3/ApplyAdam/^training_operation/update_Variable_4/ApplyAdam/^training_operation/update_Variable_5/ApplyAdam/^training_operation/update_Variable_6/ApplyAdam/^training_operation/update_Variable_7/ApplyAdam/^training_operation/update_Variable_8/ApplyAdam/^training_operation/update_Variable_9/ApplyAdam*
T0*
_class
loc:@Variable

training_operation/Assign_1Assignbeta2_powertraining_operation/mul_1*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking( 
¼
training_operationNoOp^training_operation/Assign^training_operation/Assign_1-^training_operation/update_Variable/ApplyAdam/^training_operation/update_Variable_1/ApplyAdam/^training_operation/update_Variable_2/ApplyAdam/^training_operation/update_Variable_3/ApplyAdam/^training_operation/update_Variable_4/ApplyAdam/^training_operation/update_Variable_5/ApplyAdam/^training_operation/update_Variable_6/ApplyAdam/^training_operation/update_Variable_7/ApplyAdam/^training_operation/update_Variable_8/ApplyAdam/^training_operation/update_Variable_9/ApplyAdam
:
ArgMax/dimensionConst*
value	B :*
dtype0
R
ArgMaxArgMaxlogitsArgMax/dimension*
T0*
output_type0*

Tidx0
'
EqualEqualArgMaxlabels*
T0
;
CastCastEqual*

SrcT0
*
Truncate( *

DstT0

RankRankCast*
T0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
:
rangeRangerange/startRankrange/delta*

Tidx0
M
accuracy_operationMeanCastrange*

Tidx0*
	keep_dims( *
T0
>
Cast_1Castlogits*

SrcT0*
Truncate( *

DstT0
=
in_top_k/InTopKV2/kConst*
value	B :*
dtype0
K
in_top_k/InTopKV2InTopKV2Cast_1labelsin_top_k/InTopKV2/k*
T0
I
Cast_2Castin_top_k/InTopKV2*
Truncate( *

DstT0*

SrcT0

5
Const_1Const*
valueB: *
dtype0
C
MeanMeanCast_2Const_1*
T0*

Tidx0*
	keep_dims( 
8

save/ConstConst*
valueB Bmodel*
dtype0
º
save/SaveV2/tensor_namesConst*
dtype0*
valueÿBü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power

save/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ý
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power*.
dtypes$
"2 
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
Ì
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
valueÿBü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
¤
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*.
dtypes$
"2 
~
save/AssignAssignVariablesave/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(

save/Assign_1AssignVariable/Adamsave/RestoreV2:1*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(

save/Assign_2AssignVariable/Adam_1save/RestoreV2:2*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(

save/Assign_3Assign
Variable_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(

save/Assign_4AssignVariable_1/Adamsave/RestoreV2:4*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(

save/Assign_5AssignVariable_1/Adam_1save/RestoreV2:5*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1

save/Assign_6Assign
Variable_2save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(

save/Assign_7AssignVariable_2/Adamsave/RestoreV2:7*
T0*
_class
loc:@Variable_2*
validate_shape(*
use_locking(

save/Assign_8AssignVariable_2/Adam_1save/RestoreV2:8*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_2

save/Assign_9Assign
Variable_3save/RestoreV2:9*
T0*
_class
loc:@Variable_3*
validate_shape(*
use_locking(

save/Assign_10AssignVariable_3/Adamsave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(

save/Assign_11AssignVariable_3/Adam_1save/RestoreV2:11*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_3

save/Assign_12Assign
Variable_4save/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(

save/Assign_13AssignVariable_4/Adamsave/RestoreV2:13*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_4

save/Assign_14AssignVariable_4/Adam_1save/RestoreV2:14*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(

save/Assign_15Assign
Variable_5save/RestoreV2:15*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(

save/Assign_16AssignVariable_5/Adamsave/RestoreV2:16*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_5

save/Assign_17AssignVariable_5/Adam_1save/RestoreV2:17*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_5

save/Assign_18Assign
Variable_6save/RestoreV2:18*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(

save/Assign_19AssignVariable_6/Adamsave/RestoreV2:19*
T0*
_class
loc:@Variable_6*
validate_shape(*
use_locking(

save/Assign_20AssignVariable_6/Adam_1save/RestoreV2:20*
T0*
_class
loc:@Variable_6*
validate_shape(*
use_locking(

save/Assign_21Assign
Variable_7save/RestoreV2:21*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_7

save/Assign_22AssignVariable_7/Adamsave/RestoreV2:22*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(

save/Assign_23AssignVariable_7/Adam_1save/RestoreV2:23*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(

save/Assign_24Assign
Variable_8save/RestoreV2:24*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(

save/Assign_25AssignVariable_8/Adamsave/RestoreV2:25*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(

save/Assign_26AssignVariable_8/Adam_1save/RestoreV2:26*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(

save/Assign_27Assign
Variable_9save/RestoreV2:27*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(

save/Assign_28AssignVariable_9/Adamsave/RestoreV2:28*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_9

save/Assign_29AssignVariable_9/Adam_1save/RestoreV2:29*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_9

save/Assign_30Assignbeta1_powersave/RestoreV2:30*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(

save/Assign_31Assignbeta2_powersave/RestoreV2:31*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
¬
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9

initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^Variable_4/Adam/Assign^Variable_4/Adam_1/Assign^Variable_4/Assign^Variable_5/Adam/Assign^Variable_5/Adam_1/Assign^Variable_5/Assign^Variable_6/Adam/Assign^Variable_6/Adam_1/Assign^Variable_6/Assign^Variable_7/Adam/Assign^Variable_7/Adam_1/Assign^Variable_7/Assign^Variable_8/Adam/Assign^Variable_8/Adam_1/Assign^Variable_8/Assign^Variable_9/Adam/Assign^Variable_9/Adam_1/Assign^Variable_9/Assign^beta1_power/Assign^beta2_power/Assign"