## CatNER

CatNER基于[NCRF++](https://github.com/jiesutd/NCRFpp.git)和[cove](https://github.com/salesforce/cove.git),打算探究中间向量对NER的影响。

### 1 安装环境

```
Ubuntu：14.04（测试系统）
Python: 2.7
Pytorch：0.3
pip install -r requirements.txt
```

### 2 使用

```
>>> ./run[_cove]_main.sh
```

<font color=red>**注意:**</font> 运行前需要更改权限
```
>>> chmod 755 run[_cove]_main.sh
```

### 3 实验

#### 3.1 charlstm+lstm+crf
```
pretrain word:400000, prefect match:11415, case_match:11656, oov:2233, oov%:0.0882434301521
     Hyper       iteration: 100
     Hyper      batch size: 10
     Hyper   average batch: False
     Hyper              lr: 0.015
     Hyper        lr_decay: 0.05
     Hyper         HP_clip: None
     Hyper        momentum: 0
     Hyper      hidden_dim: 200
     Hyper         dropout: 0.5
     Hyper      lstm_layer: 1
     Hyper          bilstm: True
     Hyper             GPU: True
     Hyper        use_char: True
             Char_features: LSTM
best F1: 0.913147
```

#### 3.2 训练100个epoch:

| 模型 | 超参数 | F1 |
| :-------------: |:-------------:| :-----:|
| charlstm+lstm+crf | 50_200 | 0.913147 |
| average_batch_loss | 50_200 | 0.897811 |
| cnnlstm+lstm+crf | 50_200 | 0.912601 |



