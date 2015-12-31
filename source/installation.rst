安装
======

Linux
-----------
在Linux系统上安装NCL有两种方式，一种是直接使用官网预编译的二进制文件，另一种是下
载NCL源代码后自己手工编译。后一种方式较前一种方式要复杂的多的多。由于在常见平台上，NCL都有预编译，因此通常情况下，我们只需要下载对应于自己的Linux平台的预编译包解
压就能完美解决问题。

通常我们需要做的是一下几步

1. *查看Linux平台和gcc版本*

.. code:: sh
    cat /proc/version

2. *下载对应的预编译包*

    `ncl-6.3.0 <https://www.earthsystemgrid.org/dataset/ncl.630.html>`_

3. *在你希望的安装目录中解压*

.. code:: sh
    tar -zvxf  ncl_ncarg-6.3.0.Linux*.gz

4. *设置对应的环境变量*

.. code:: sh

    export NCARG_ROOT=/usr/local/ncl-6.3.0
    export PATH=$NCARG_ROOT/bin:$PATH

.. note:: 当你的Linux平台上有一个较高版本的gcc时，你可以下载NCL预编译包中的较低
gcc版本编译包，通常它们具有先后的兼容性。

- **Ubuntu上通过apt-get安装**
Ubuntu将NCL加入了其代码仓库，因此安装NCL将变得异常方便，你只需要下面这行代码

.. code:: bash

    sudo apt-get install ncl-ncarg

_________

Windows
-----------

_________

Mac OX
-----------