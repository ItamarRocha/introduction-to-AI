�	nLOX�6@nLOX�6@!nLOX�6@	�����?�����?!�����?"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6nLOX�6@�#��S�4@1��H�[�?A�h9�Cm�?I F�6�?Y5a���?*	X9��vV\@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate����?N�?!晞ٍ<@) c�ZB>�?1h�d��4@:Preprocessing2F
Iterator::ModelPoF�W�?!� ��=@)f�-���?1�~R'�1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�d��ҝ?!������9@)L��T���?1���o	�0@:Preprocessing2U
Iterator::Model::ParallelMapV2�'��Q�?!�f\Yf(@)�'��Q�?1�f\Yf(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�a���X�?!{��Jx�Q@)6=((E+�?1�B�~�#@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor��st�?!���'�!@)��st�?1���'�!@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�{�E{��?!�Ig�}�@)�{�E{��?1�Ig�}�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapqh�.��?!}<�4�8A@)Y���tw}?1R|?>�b@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"�6.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9�����?>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�#��S�4@�#��S�4@!�#��S�4@      ��!       "	��H�[�?��H�[�?!��H�[�?*      ��!       2	�h9�Cm�?�h9�Cm�?!�h9�Cm�?:	 F�6�? F�6�?! F�6�?B      ��!       J	5a���?5a���?!5a���?R      ��!       Z	5a���?5a���?!5a���?JGPUY�����?b �"7
sequential_2/dense_7/MatMulMatMul��OK�I�?!��OK�I�?"E
)gradient_tape/sequential_2/dense_8/MatMulMatMul�S �I�?!��7&�ɳ?"E
)gradient_tape/sequential_2/dense_7/MatMulMatMulo30�7�?!Z�G���?"7
sequential_2/dense_8/MatMulMatMul��5[n�?!"~h,h��?"G
+gradient_tape/sequential_2/dense_7/MatMul_1MatMul�}���n�?!׍�\?<�?"E
)gradient_tape/sequential_2/dense_6/MatMulMatMul����C��?!�Rӧ��?"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamr���aܙ?!���4��?"G
+gradient_tape/sequential_2/dense_8/MatMul_1MatMul#5�G:��?!�J�M���?"R
/gradient_tape/mean_absolute_error/DynamicStitchDynamicStitch?�~�	J�?!44@��?"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdamN�6U���?!ف��g��?Q      Y@Y      4@a      T@qf���Q@y�d�n<�?"�
both�Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
moderate�6.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).:
Refer to the TF2 Profiler FAQb�70.376% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 