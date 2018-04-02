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