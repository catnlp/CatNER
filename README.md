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
| clip+charlstm+lstm+crf | 50.0_50_200 | 0.912119 |
| batch+charlstm+lstm+crf | 16_50_200 | 0.911215 |



#### 3.3 cove+charlstm+lstm+crf

```
     Char embedding size: 30
     Norm   word     emb: False
     Norm   char     emb: False
     Train instance number: 14041
     Dev   instance number: 3250
     Test  instance number: 3453
     Raw   instance number: 0
     Hyper       iteration: 100
     Hyper      batch size: 10
     Hyper   average batch: False
     Hyper              lr: 0.015
     Hyper        lr_decay: 0.05
     Hyper         HP_clip: None
     Hyper        momentum: 0
     Hyper      hidden_dim: 1000
     Hyper         dropout: 0.5
     Hyper      lstm_layer: 1
     Hyper          bilstm: True
     Hyper             GPU: True
     Hyper        use_char: True
             Char_features: LSTM
```

#### 3.4 训练100个epoch:

| 模型 | 超参数 | F1 |
|:-------------:|:-------------:|:-----:|
| char+cove+word2vec | 30_300_300-50_1000 | 0.905241 |
| char+cove+noword2vec | 30_300-50_650 | 0.877579 |
| char+nocove+word2vec | 30_300-50_350 | 0.910298 |
| char+cove+word2vec | 30_300_300-50_350 | 0.906286 |

