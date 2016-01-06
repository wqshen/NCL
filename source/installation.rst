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

    `https://www.earthsystemgrid.org/dataset/ncl.630.html <https://www.earthsystemgrid.org/dataset/ncl.630.html>`_

3. *在你希望的安装目录中解压*

.. code:: sh

    tar -zvxf  ncl_ncarg-6.3.0.Linux*.gz

4. *设置对应的环境变量*

.. code:: sh

    export NCARG_ROOT=<path_to_install>
    export PATH=$NCARG_ROOT/bin:$PATH

.. note:: 当你的Linux平台上有一个较高版本的gcc时，你可以下载NCL预编译包中的较低gcc版本编译包。通常它们具有向后的兼容性。

- **Ubuntu上通过apt-get安装**
Ubuntu将NCL加入了其代码仓库，因此安装NCL将变得异常方便，你只需要下面这行代码

.. code:: bash

    sudo apt-get install ncl-ncarg

_________

Windows
-----------
由于一些库的缺乏，使得NCL无法在Windows操作系统中编译。我们只能借助cygwin或者虚拟
机虚拟Linux系统的方式来安装NCL，这多少给NCL的广泛普及带来了障碍。退而求其次，在
cygwin和虚拟机之间，我们该如何选择？目前个人电脑的配置已经普遍较好，运行个虚拟机
并不会造成你多大的困扰，因此虚拟机虚拟Linux系统方式较于cygwin来说要稍稍好上那么
一点。如果你是在开发Windows应用程序的话，那么我想你大概没有别的选择，老实地用
cygwin吧。

使用虚拟机操作系统来学习NCL，这里有一个推荐的组合，使用VMware虚拟机软件和Ubuntu
操作系统可能会给你打来不错的体验。由于Windows下虚拟机软件的安装和添加虚拟系统的操作十分的简单，这里并不赘述。

由于Cygwin镜像资源的限制，在Windows中安装Cygwin需要耗费大量的时间，这里有个讨巧的方法，那就是下载别人的Cygwin和NCL整合包，解压即可。

_________

Mac OX
-----------