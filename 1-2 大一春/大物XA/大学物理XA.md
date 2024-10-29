# 大学物理 XA

[toc]

## 运动学、力学

> **章节细分**
>
> * 质点运动学
> * 牛顿运动定律
> * 动量与能量
> * 刚体转动
> * 流体运动
> * 振动
> * 波动

### 质点运动学

#### 位置矢量

> **位置矢量**简称**位矢**：
> $$
> \overrightarrow r = x\overrightarrow i + y\overrightarrow j+ z\overrightarrow k
> $$

> 若在直角坐标系中，有：
> $$
> \begin{cases}
> x = x(t), \\ 
> y = y(t), \\
> z = z(t). \\
> \end{cases}
> $$
> 称**运动方程**：
> $$
> \overrightarrow{r}(t) = x(t)\overrightarrow{i} + y(t)\overrightarrow{j} + z(t)\overrightarrow{k}
> $$
> 将三式中的参数 $t$ 消去得到**轨迹方程**：
> $$
> f(x, y, z) = 0
> $$
> 其中 $\overrightarrow{i}$，$\overrightarrow{j}$，$\overrightarrow{k}$ 为单位矢量，大小为 $1$，方向分别沿 $x$ 轴，$y$ 轴，$z$ 轴正方向，与时间无关，即：
> $$
> \frac{\text{d}\overrightarrow{i}}{\text{d}t} = \frac{\text{d}\overrightarrow{j}}{\text{d}t} = \frac{\text{d}\overrightarrow{k}}{\text{d}t} = 0
> $$
> 位矢的模：
> $$
> |\overrightarrow{r}\ | = \sqrt{x^2+y^2+z^2}
> $$
> 方向余弦：
> $$
> \cos \alpha = \frac{x}{|\overrightarrow{r}\ |}, \quad 
> \cos \beta = \frac{y}{|\overrightarrow{r}\ |}, \quad
> \cos \gamma = \frac{z}{|\overrightarrow{r}\ |}
> $$
> 其中 $\alpha$，$\beta$，$\gamma$ 是$\overrightarrow{r}$ 与 $Ox$ 轴，$Oy$ 轴，$Oz$ 轴正方向之间的夹角，易知：$\cos^2\alpha+\cos^2\beta+\cos^2\gamma = 1$​

> 点 $A$ 到点 $B$ 的**位移矢量** $\Delta \overrightarrow{r}$，简称**位移**
> $$
> \Delta \overrightarrow{r} = \overrightarrow{r}_B - \overrightarrow{r}_A
> $$
> 有
> $$
> \Delta \overrightarrow{r} = \overrightarrow{r}_B - \overrightarrow{r}_A = (x_B - x_A)\overrightarrow{i} + (y_B - y_A)\overrightarrow{j} + (z_B - z_A)\overrightarrow{k}
> $$

> [!caution]
>
> 位矢大小的变化 $\Delta |\overrightarrow{r}\ | \neq$ 位矢变化（位移）的大小 $|\Delta \overrightarrow{r}\ |$
> $$
> \Delta|\overrightarrow{r}\ | = \sqrt{x_B^2+y_B^2+z_B^2} - \sqrt{x_A^2+y_A^2+z_A^2}, \\
> |\Delta\overrightarrow{r}\ | = \sqrt{(x_B - x_A)^2+(y_B - y_A)^2+(z_B - z_A)^2}.
> $$

#### 速度

> 平均速度
> $$
> \bar{\overrightarrow{v}} = \frac{\Delta \overrightarrow{r}}{\Delta t} = \frac{\Delta x}{\Delta t}\overrightarrow{i} + \frac{\Delta y}{\Delta t}\overrightarrow{j} + \frac{\Delta z}{\Delta t}\overrightarrow{k}
> $$
> 实际中某一时刻的瞬时速度无法直接测量，令 $\Delta t \to 0$：
> $$
> \overrightarrow{v} = \displaystyle\lim_{\Delta t \to 0}\frac{\Delta \overrightarrow{r}}{\Delta t} = \frac{\text{d}\overrightarrow{r}}{\text{d}t} = v_x\overrightarrow{i} + v_y\overrightarrow{j} + v_z\overrightarrow{k}
> $$
> 曲线运动中的物体瞬时速度方向沿切线方向
>
> ==微分后得到的物理量方向不一定与原来的相同==

#### 加速度

> 平均加速度
> $$
> \bar{\overrightarrow{a}} = \frac{\Delta \overrightarrow{v}}{\Delta t}
> $$
> $\bar{\overrightarrow{a}}$ 与 $\overrightarrow{v}$ 方向相同

> 瞬时加速度
> $$
> \overrightarrow{a} = \displaystyle\lim_{\Delta t \to 0}\frac{\Delta \overrightarrow{v}}{\Delta t} = \frac{\text{d}\overrightarrow{v}}{\text{d}t} = \frac{\text{d}^2\ \overrightarrow{r}}{\text{d}t^2}
> $$
> 由于微分后方向不一定相同：
>
> $\overrightarrow{a}$ 的方向不一定与 $\overrightarrow{v}$ 相同

#### 圆周运动

> | 圆周运动中的物理量     | 直线运动中对应的物理量          |
> | ---------------------- | ------------------------------- |
> | 角坐标 $\theta(t)$     | 位矢 $\overrightarrow r(t)$     |
> | 角位移 $\Delta \theta$ | 位移 $\Delta \overrightarrow r$ |
> | 角速度 $\omega$        | 速度 $\overrightarrow v$        |
> | 角加速度 $\alpha$      | 加速度 $\overrightarrow a$      |
>
> 角位移 $\Delta \theta$：
> $$
> \Delta \theta = \theta(t_2) - \theta(t_1)
> $$
> 角速度 $\omega$：
> $$
> \omega = \frac{\text{d}\theta}{\text{d}t}
> $$
> 角加速度 $\alpha$：
> $$
> \alpha = \frac{\text{d}\omega}{\text{d}t} = \frac{\text{d}^2\theta}{\text{d}t^2}
> $$

#### 圆周运动中的加速度

> 加速度 $\overrightarrow a$：
> $$
> \overrightarrow a = \frac{\text{d}\overrightarrow{v}}{\text{d}t} = \frac{\text{d}v}{\text{d}t}\overrightarrow{e}_t + v\frac{\text{d}\overrightarrow{e}_t}{\text{d}t}
> $$
> 切向加速度 $\overrightarrow{a}_t$：
> $$
> a_t = \frac{\text{d}v}{\text{d}t} = r\frac{\text{d}\omega}{\text{d}t} = r\alpha
> $$
>  法向加速度 $\overrightarrow a_n$：
> $$
> a_n = \frac{v^2}{r} = \omega^2r = v\omega
> $$
> 有加速度：
> $$
> \overrightarrow a = r\alpha\  \overrightarrow e_t + \frac{v^2}{r}\ \overrightarrow e_n
> $$

### 牛顿运动定律

#### 牛顿第二定律

> 即**力是动量的时间变化率**
> $$
> \overrightarrow p = m\overrightarrow v\\
> \overrightarrow a = \frac{\text{d}\overrightarrow v}{\text{d}t}\\
> \overrightarrow F = \frac{\text{d}\overrightarrow p}{\text{d}t} = m\overrightarrow a
> $$
> 有：
> $$
> \overrightarrow F = m\overrightarrow a
> $$

#### 其他的力

> **万有引力**
> $$
> \overrightarrow F = -\frac{Gm_1m_2}{r^2}\ \overrightarrow e_r
> $$
> **弹簧弹性力**
>
> 胡克定律
> $$
> F = -kx
> $$
> 
>
> **滑动摩擦力**
> $$
> F_f = \mu F_N
> $$
> 在非惯性系中引入”**惯性力**“：
> $$
> \overrightarrow F = -m\overrightarrow a
> $$
> **科里奥利力**
>
> 物体在非惯性系中做圆周运动，在惯性系中来看受到的力除却向心力与引入的惯性力（离心力），还有科里奥利力，物体总受力为：
> $$
> F = m\frac{v'^2}{r} + 2mv'\omega + mr\omega^2
> $$
> 后两项即惯性力：
> $$
> \overrightarrow F_0 = 2m\overrightarrow v'\times\overrightarrow \omega + m\omega^2\overrightarrow r
> $$
> 其中科里奥利力：
> $$
> \overrightarrow F_c = 2m\overrightarrow v' \times \overrightarrow \omega
> $$

### 动量与能量

#### 动量

> **力对时间的累积**

> **动量定理**
>
> 质点：
> $$
> \overrightarrow I = \int_{t_1}^{t_2}\overrightarrow F\ \text{d}t = \overrightarrow p_2 - \overrightarrow p_1 = m\overrightarrow v_2 - m\overrightarrow v_1
> $$
> 质点系：合外力等于质点系随时间的变化率
> $$
> \overrightarrow F^\text{ex} = \frac{\text{d}\overrightarrow p}{\text{d}t}
> $$
> 常用于碰撞问题

> **质点系动量守恒定律**
>
> 系统合外力为零或内力远大于合外力时，即当
> $$
> \displaystyle\sum_i\overrightarrow F^\text{ex}_i = 0/\ \overrightarrow F^\text{ex} \ll \overrightarrow F^
> \text{in}
> $$
> 时，质点系动量守恒
>
> 只在惯性参考系中成立

#### 功与动能

> **力对空间的累积**
>
> 元功：
> $$
> \text{d}W = \overrightarrow F \cdot \text{d}\overrightarrow r
> $$
> 功：
> $$
> W = \int_A^B \overrightarrow F \cdot \text{d} \overrightarrow r = \int_A^B F\cos\theta \text{d}s
> $$
> 功率：
> $$
> P = \frac{\text{d}W}{\text{d}t} = \overrightarrow F \cdot \overrightarrow v = Fv\cos\theta
> $$
> 动能：
> $$
> E_k = \frac{1}{2}mv^2 = \frac{p^2}{2m}
> $$

> **动能定理**
> $$
> W = E_{k2} - E_{k1} = \frac{1}{2}mv_2^2 - \frac{1}{2}mv_1^2
> $$

> 万有引力做功
>
> 从 $A$ 到 $B$ 点：
> $$
> W = Gm'm(\frac{1}{r_B} - \frac{1}{r_A})
> $$
> 重力、弹簧弹性力做功略
>
> 保守力：物体沿闭合路径运动一周保守力做功为零
> $$
> W = \oint_L \overrightarrow F\cdot \text{d} \overrightarrow r = 0
> $$
> 重力势能：
> $$
> E_p = mgz
> $$
> 万有引力势能：
> $$
> E_p = -\frac{Gm'm}{r}
> $$
> 弹性势能：
> $$
> E_p = \frac{1}{2}kx^2
> $$
> 保守力做功与势能：
> $$
> W = -\Delta E_p
> $$

> **质点系的功能原理**
>
> ==外力和非保守内力做功之和等于质点系机械能的增量==
> $$
> W^\text{ex} + W^\text{in}_{nc} = E - E_0
> $$
> **机械能守恒定律**
>
> 外力和飞保守力均不做功或外力和非保守力做功的代数和为零时，质点系的总机械能是守恒的

#### 碰撞

##### 完全弹性碰撞

> 动量守恒，机械能守恒
> $$
> v_1' = \frac{m_1 - m_2}{m_1 + m_2}(v_1 - v_2) + v_2\\
> v_2' = \frac{2m_1}{m_1 + m_2}(v_1 - v_2) + v_2\\
> $$

##### 非弹性碰撞

> 动量守恒，机械能不守恒
>
> **完全非弹性碰撞**
>
> 动量守恒，机械能不守恒，但是碰撞后速度相同
> $$
> \frac{1}{2}m_1v_1^2 + \frac{1}{2}m_2v_2^2 = \frac{1}{2}\frac{m_1m_2}{m_1+m_2}v^2
> $$

#### 质心

> 对于质量离散分布的物体：
> $$
> x_C = \frac{1}{m'}\displaystyle\sum_{i=1}^n m_ix_i\\
> y_C = \frac{1}{m'}\displaystyle\sum_{i=1}^n m_iy_i\\
> z_C = \frac{1}{m'}\displaystyle\sum_{i=1}^n m_iz_i\\
> $$
> 对于质量连续分布的物体：
> $$
> x_C = \frac{1}{m'}\int x\ \text{d}m\\
> y_C = \frac{1}{m'}\int y\ \text{d}m\\
> z_C = \frac{1}{m'}\int z\ \text{d}m\\
> $$

> **质心运动定理**
>
> 作用在系统上的合外力等于系统总质量乘以质心加速度
> $$
> \overrightarrow F^\text{ex} = m'\ \overrightarrow a_C
> $$

### 刚体转动

> **物理量对应关系**
>
> | 角量                                  | 线量                                                     |
> | ------------------------------------- | -------------------------------------------------------- |
> | 角度 $\theta$、角位移 $\Delta \theta$ | 位矢 $\overrightarrow r$、位移 $\Delta\overrightarrow r$ |
> | 角速度 $\omega$                       | 速度 $\overrightarrow v$                                 |
> | 角加速度 $\alpha$                     | 加速度 $\overrightarrow a$                               |
> | 角动量 $\overrightarrow L$            | 动量 $\overrightarrow p$                                 |
> | 转动惯量 $J$                          | 质量 $m$                                                 |
> | 力矩 $\overrightarrow M$              | 力 $\overrightarrow F$                                   |
>
> 角动量定义：
> $$
> \overrightarrow L = \overrightarrow r \times \overrightarrow p\\
> L = rmv\sin\theta
> $$
> 质点的角动量定理：
> $$
> \overrightarrow M = \frac{\text{d}\overrightarrow L}{\text{d}t}\\
> (\overrightarrow F = \frac{\text{d}\overrightarrow p}{\text{d}t})
> $$
> 质点系的角动量定理：
> $$
> \overrightarrow M^\text{ex} = \frac{\text{d}\overrightarrow L}{\text{d}t}
> $$

> 角速度矢量 $\overrightarrow \omega$ 方向：右手螺旋定则
>
> 角加速度 $\overrightarrow \alpha$ 方向：与 $\overrightarrow \omega$ 同向或反向

> **转动定律**
> $$
> \overrightarrow M = J\overrightarrow \alpha\\
> (\overrightarrow F = m\overrightarrow a\ )
> $$
> 转动惯量计算：
>
> 分立质点组：
> $$
> J = \displaystyle\sum_im_ir_i^2
> $$
> 质量连续分布：
> $$
> J = \int r^2\ \text{d}m
> $$
> 例：（假设质量皆是均匀分布）
>
> 细棒
>
> 以一端为轴：
> $$
> J = \frac{ml^2}{3}
> $$
> 以中点为轴：
> $$
> J = \frac{ml^2}{12}
> $$
> 实心圆柱体：
> $$
> J = \frac{mR^2}{2}
> $$
> 薄圆环：
> $$
> J = mR^2
> $$
> 球：
> $$
> J = \frac{2mR^2}{5}
> $$
> 圆筒：
> $$
> J = \frac{m(R_1^2 + R_2^2)}{2}
> $$
> **平行轴定理**
>
> 若轴 $A$ 与过质心的轴 $C$ 平行，则：
> $$
> J_A = J_C + md^2
> $$

> **刚体定轴转动的角动量定理**
> $$
> \int_{t_1}^{t_2}M\ \text{d}t = J\omega_2 - J\omega_1\\
> \int_{t_1}^{t_2}\overrightarrow F\ \text{d}t = m\overrightarrow v_2 - m\overrightarrow v_1
> $$
> 对非刚体也成立

> 力矩做功
> $$
> W = \int_{\theta_1}^{\theta_1}M\ \text{d}\theta\\
> (W = \int_{r_1}^{r_2}\overrightarrow F \cdot\ \text{d}\overrightarrow r\ )
> $$
> 力矩功率
> $$
> P = M\omega\\
> (P = \overrightarrow F\cdot \overrightarrow v\ )
> $$

> **刚体定轴转动的动能定理**
> $$
> W^\text{ex} = \frac{1}{2}J\omega_2 - \frac{1}{2}J\omega_1\\
> (W^\text{ex} = \frac{1}{2}mv_2^2 - \frac{1}{2}mv_1^2)\\
> $$
> 

### 流体运动

> 流体中静压强与面元取向无关
>
> 作用在流体上的力可以分为两类：
>
> * 面积力
> * 体积力/质量力

> 记单位流体上的体积力为 $\overrightarrow f$，有：
> $$
> \text{d}\overrightarrow f = -\nabla p \text{d}x \text{d}y \text{d}z\\
> \text{d}\overrightarrow F = \rho \overrightarrow f\text{d}x\text{d}y\text{d}z
> $$
> 故体积力与等压面垂直

> 帕斯卡定律
>
> 作用在密闭容器中流体上的压强等值地传到流体各处和容器壁上去

> 阿基米德原理
> $$
> \overrightarrow F_浮 = \int_V(-\nabla p)\text{d}V
> $$

> 表面张力
> $$
> \Delta f = \sigma\Delta l
> $$
> 其中 $\sigma$ 称为表面张力系数，单位：$\text{N}/\text{m}$​

#### 理想流体

> 牛顿粘性定律
>
> 流体的粘性：流体流动时，各流层存在着阻碍相对运动的内摩擦力
> $$
> F = \eta S\frac{\text{d}v_x}{\text{d}y}\\
> \tau = \frac{F}{S} = \eta\frac{\text{d}v_x}{\text{d}y}
> $$
> 满足上式的流体称为牛顿流体
>
> 流体的压缩性
> $$
> k = - \frac{1}{V}\frac{\text{d}V}{\text{d}p}\\
> K = \frac{1}{k}\\
> $$
> **不可压缩、无粘性的流体称为理想流体**

#### 流体的连续性原理

> 对于一般流体：
> $$
> \oint_S\rho\overrightarrow v\cdot \text{d}\overrightarrow S = -\int_V\frac{\partial\rho}{\partial t} \text{d}V
> $$
> 对于不可压缩流体：
> $$
> \oint_S\overrightarrow v\cdot\text{d}\overrightarrow S = 0
> $$
> 稳定流动的连续性原理：
> $$
> \rho v\text{d}S = \text{const}
> $$
> 对于不可压缩流体：
> $$
> v\text{d}S = \text{const}
> $$

#### 伯努利方程

> $$
> p + \rho gh + \frac{1}{2}\rho v^2 = \text{const}
> $$

#### 泊肃叶公式

> 粘性流体在水平圆管中稳定分层流动时的流量
> $$
> v(r) = \frac{p_1 - p_2}{4\eta l}(R^2 - r^2)
> $$
>
> $$
> Q_V = \int_0^Rv(r)2\pi r\text{d}r = \frac{p_1 - p_2}{8\eta l}\pi R^4
> $$
>
> 平均流速：
> $$
> \bar v = \frac{\int_Sv\text{d}S}{\int_S\text{d}S} = \frac{Q_V}{S}
> $$

#### 其他公式

> 层流变湍流：雷诺数
> $$
> R_e = \frac{\rho vr}{\eta}
> $$

> 粘性阻力：斯托克斯公式
>
> 牛顿流体中作低速运动的小球所受的阻力大小
> $$
> f = 6\pi\eta rv
> $$
> 压差阻力

> 非对称物体在粘性流体中做平动可产生升力
>
> 马格纳斯效应：平动 + 转动，可能使高速旋转的球在空中改变方向，走出弧线

### 振动

#### 简谐振动

> 微分方程
> $$
> \frac{\text{d}^2x}{\text{d}t^2} = -\omega^2x
> $$
> 由初值 $x = x_0$，$v = v_0$，$\varphi = \varphi_0$：
> $$
> x = A\cos(\omega t + \varphi)\\
> v = -A\omega\sin(\omega t + \varphi)\\
> a = -A\omega^2\cos(\omega t + \varphi)\\
> $$
> 回复力
> $$
> F = -kx
> $$
> 加速度
> $$
> a = -\omega^2x
> $$

> 弹簧振子周期
> $$
> \omega = \sqrt{\frac{k}{m}}, \quad
> T = 2\pi\sqrt{\frac{m}{k}}
> $$
> 常量确定：
> $$
> A = \sqrt{x_0^2 + \frac{v_0^2}{\omega^2}}\\
> \tan \varphi = -\frac{v_0}{\omega x_0}
> $$

> 步调差异：
> $$
> \Delta\varphi = 0
> $$
> 称为同步
> $$
> \Delta\varphi = \pi
> $$
> 称为反相
>
> 否则成为超前/滞后

#### 单摆与复摆

> $$
> \theta < 5 ^\circ,\quad \sin \theta \approx \theta
> $$

> 单摆
> $$
> \omega = \sqrt{\frac{g}{l}}, \quad
> T = 2\pi\sqrt\frac{l}{g}
> $$
> 复摆
> $$
> \omega = \sqrt{\frac{mgl}{J}}, \quad
> T = 2\pi\sqrt{\frac{J}{mgl}}\\
> \theta = \theta_m\cos(\omega t + \varphi)
> $$
> 为角谐振动

#### 能量

> 动能
> $$
> E_k = \frac{1}{2}kA^2\sin[2](\omega t + \varphi)
> $$
> 势能
> $$
> E_p = \frac{1}{2}kA^2\cos[2](\omega t + \varphi)
> $$
> 机械能
> $$
> E = \frac{1}{2}kA^2
> $$
> 机械能守恒

#### 合成

> 1. **两个同方向同频率简谐振动合成后仍为同频率的简谐振动**
>
> 2. 两个同方向不同频率简谐振动的合成
>    $$
>    A = \sqrt{A_1^2 + A_2^2 + 2A_1A_2\cos\ [(\omega_2 - \omega_1)t + (\varphi_2 - \varphi_1)]}
>    $$
>    最简单的情况：频率较大而频率之差很小的两个同方向简谐振动的合成，其合振动的振幅时而加强时而减弱的现象叫**拍**
>
>    讨论 $A_1 = A_2$，$|\nu_2 - \nu_1| \ll \nu_1 + \nu_2$ 的情况
>    $$
>    x = (2A_1\cos 2\pi\frac{\nu_2 - \nu_1}{2}t)\cos2\pi\frac{\nu_1 + \nu_2}{2}t
>    $$
>    由此式有：
>    $$
>    \Bigg\{
>    \begin{align*}
>    & \nu = \frac{\nu_1 + \nu_2}{2}\\
>                                  
>    & A = |2A_1\cos 2\pi\frac{\nu_2 - \nu_1}{2}t|
>    \end{align*}
>    $$
>    拍频 $\nu = \nu_2 - \nu_1$
>
>    周期
>    $$
>    T = \frac{1}{\nu_2 - \nu_1}
>    $$
>
> 3. 多个同方向同频率的简谐运动合成仍为简谐运动
>
>    借用旋转矢量图分析
>
> 4. 两个相互垂直的同频率的简谐振动的合成
>    $$
>    \Bigg\{
>    \begin{align*}
>    x = A_1\cos(\omega t + \varphi_1)\\\\
>    y = A_2\cos(\omega t + \varphi_2)\\
>    \end{align*}
>    $$
>    可以解出质点运动轨迹为椭圆：
>    $$
>    \frac{x^2}{A_1^2} + \frac{y^2}{A_2^2} - \frac{2xy}{A_1A_2}\cos(\varphi_2 - \varphi_1) = \sin[2](\varphi_2 - \varphi_1)
>    $$
>    两频率为整数比时，可用李萨如图形判断频率比

#### 阻尼振动

> 阻尼力 
> $$
> F_r = -Cv
> $$
> 固有角频率
> $$
> \omega_0 = \sqrt{\frac{k}{m}}
> $$
> 阻尼系数
> $$
> \delta = \frac{C}{2m}
> $$
> 运动方程
> $$
> x = Ae^{-\delta t}\cos(\omega t + \varphi)
> $$
> 角频率与周期
> $$
> \omega = \sqrt{\omega_0^2 - \delta^2},\quad
> T = \frac{2\pi}{\sqrt{\omega_0^2 - \delta^2}}
> $$
>
> * 欠阻尼：$\omega_0^2 > \delta^2$
> * 过阻尼：$\omega_0^2 < \delta^2$
> * 临界阻尼：$\omega_0^2 = \delta^2$

#### 受迫振动

> 若驱动力为 $F\cos\omega_p t$，记
> $$
> f = \frac{F}{m}
> $$
> 有：
> $$
> A = \frac{f}{\sqrt{(\omega_0^2 - \omega_p^2)^2 + 4\delta^2\omega_p^2}}\\
> \tan \psi = -\frac{2\delta\omega_p}{\omega_0^2 - \omega_p^2}\\
> $$
> 共振时由
> $$
> A = \frac{f}{\sqrt{(\omega_0^2 - \omega_p^2)^2 + 4\delta^2\omega_p^2}}\\
> \frac{\text{d}A}{\text{d}\omega_p} = 0\\
> $$
> 有共振频率与振幅：
> $$
> \omega_r = \sqrt{\omega_0^2 - 2\delta^2}\\
> A = \frac{f}{2\delta\sqrt{\omega_0^2 - \delta^2}}\\
> $$

### 波动

> 分类：机械波、电磁波、物质波
>
> 横波只能在具有切变弹性的介质中传播，即有切变弹性产生（存在于固体、稠液体中）
>
> 纵波由介质发生体变或长变弹性产生（存在于固体、液体、气体中）
>
> **波线**：沿波的传播方向画的一些带箭头的线
>
> **波面**：不同波线上振动相位相同的点组成的面称为波面，也称为同相面
>
> **波前**：在某一时刻，由波源最初振动状态传到的各点所连成的曲面，也称为波阵面

> **波速**
>
> 固体中的横波：
> $$
> u = \sqrt{\frac{G}{\rho}}
> $$
> 固体中的纵波：
> $$
> u = \sqrt{\frac{E}{\rho}}
> $$
> 液体中的纵波：
> $$
> u = \sqrt{\frac{K}{\rho}}
> $$
> 式中参数：
>
> * $\rho$：介质的质量体密度
> * $G$：固体切变弹性模量
> * $E$：固体杨式弹性模量
> * $K$：体积弹性模量

#### 波函数

> 平面简谐波的波函数（波动方程）
> $$
> y = A\cos {[\omega(t - \frac{x}{u}) + \varphi]}
> $$
> 由此有：
> $$
> v = \frac{\partial y}{\partial t} = -\omega A\sin{[\omega(t - \frac{x}{u}) + \varphi]}\\
> a = \frac{\partial^2 y}{\partial t^2} = -\omega^2A\cos{[\omega(t - \frac{x}{u}) + \varphi]}\\
> $$
> 物理含义：
>
> 1. 当 $x$ 为定值而 $t$ 变化时：
>
>    令 $\varphi' = -\frac{2\pi}{\lambda}x + \varphi$ 则得到
>    $$
>    y = A\cos(\omega t + \varphi')
>    $$
>    表示的是在 $x$ 点处质点的振动方程
>
> 2. 当 $t$ 为定值而 $x$ 变化时：
>
>    令 $\varphi'' = \omega T + \varphi$ 则得到
>    $$
>    y = A\cos(-\frac{2\pi}{\lambda}x + \varphi'')
>    $$
>    该方程表示 $t$ 时刻波形传播方向上各质点的位移，即 $t$ 时刻的波形图
>
> 3. 当 $x$ 与 $t$ 都变化时：
>
>    方程表示在不同时刻波线上所有质点的位移，即不同时刻的波形，体现了波的传播
>
>    因此这种波也称为**行波**
>
> 不同形式的波动方程：
>
> * 沿 $x$ 轴正方向传播
>   $$
>   \begin{align*}
>   y & = A\cos{[\omega(t - \frac{x}{u}) + \varphi]}\\
>   & = A\cos{[(\omega t - \frac{2\pi}{\lambda}x)] + \varphi}\\
>   & = A\cos{[2\pi(\frac{t}{T} - \frac{x}{\lambda}) + \varphi]}
>   \end{align*}
>   $$
>
> * 沿 $x$ 轴负方向传播
>   $$
>   \begin{align*}
>   y & = A\cos{[\omega(t + \frac{x}{u}) + \varphi]}\\
>   & = A\cos{[(\omega t + \frac{2\pi}{\lambda}x)] + \varphi}\\
>   & = A\cos{[2\pi(\frac{t}{T} + \frac{x}{\lambda}) + \varphi]}
>   \end{align*}
>   $$

#### 波的能量

> 动能与弹性势能：
> $$
> \text{d}W_k = \text{d}W_p = \frac{1}{2}\rho\text{d}VA^2\omega^2\sin[2]\omega(t - \frac{x}{u})
> $$
> 总机械能：
> $$
> \text{d}W = \rho\text{d}VA^2\omega^2\sin[2]\omega(t - \frac{x}{u})
> $$
> **能量密度**：单位体积介质中的波动能量
> $$
> w = \frac{\text{d}W}{\text{d}V} = \rho A^2\omega^2\sin[2]\omega(t - \frac{x}{u})
> $$
> 平均能量密度：能量密度在一个周期内的平均值
> $$
> \bar w = \frac{1}{T}\int_0^Tw\ \text dt = \frac{1}{2}\rho\omega^2A^2
> $$
> **能流**：单位时间内垂直通过某一面积的能量
> $$
> P = wuS
> $$
> 平均能流（波的功率）：单位时间内垂直通过某一面积的平均能量
> $$
> \bar P = \bar wuS
> $$
> 单位：瓦特（$\text W$）
>
> **能流密度**（波的强度）：通过垂直于波传播方向的单位面积的平均能流
> $$
> I = \frac{\bar P}{S} = \bar wu = \frac{1}{2}\rho A^2\omega^2u
> $$
> 单位：$\text{W/m}^2$
>
> 对于波动中的两点 $S_1$ 与 $S_2$
>
> 若介质对波动能量无吸收有：$\bar P_{S_1} = \bar P_{S_2}$
>
> 平面波：
> $$
> S_1 = S_2,\ A_1 = A_2
> $$
> 振幅不变
>
> 球面波：
> $$
> \frac{\bar P_{S_1}}{\bar P_{S_2}} = \frac{S_1A_1^2}{S_2A_2^2} = \frac{r_1^2A_1^2}{r_2^2A_2^2}\\
> $$
> 可知：
> $$
> \frac{A_1}{A_2} = \frac{r_2}{r_1}
> $$

#### 惠更斯原理、衍射与干涉

>**惠更斯原理**
>
>介质中波动传播到的各点都可以看作是发射子波的波源，而在其后的任意时刻，这些子波的包络就是新的波面
>
>**波的衍射**
>
>波在传播过程中遇到障碍物，能绕过障碍物的边缘，在障碍物的阴影区内继续传播
>
>衍射是否明显决定于障碍物的线度与波长的比较
>
>对于一定波长的波，线度小的障碍物衍射现象明显，线度大的障碍物衍射现象不明显
>
>**波的干涉**
>
>频率相同、振动方向平行或有平行分量、相位相同或相位差恒定的两列波相遇时，使某些地方振动始终加强，而是另一些地方振动始终减弱的现象，称为波的干涉现象
>
>对于到点 $P$ 处距离分别为 $r_1$，$r_2$ 的两个波源 $S_1$，$S_2$
>$$
>y_{1P} = A_1\cos(\omega t + \varphi_1 - 2\pi\frac{r_1}{\lambda})\\
>y_{2P} = A_2\cos(\omega t + \varphi_2 - 2\pi\frac{r_2}{\lambda})\\
>$$
>有
>$$
>y_P = y_{1P} + y_{2P} = A\cos(\omega t + \varphi)\\
>\tan \varphi
>= \frac
>{A_1\sin(\varphi_1 - 2\pi\frac{r_1}{\lambda}) + A_2\sin(\varphi_2 - 2\pi\frac{r_2}{\lambda})}
>{A_1\cos(\varphi_1 - 2\pi\frac{r_1}{\lambda}) + A_2\cos(\varphi_2 - 2\pi\frac{r_2}{\lambda})}\\
>A = \sqrt{A_1^2 + A_2^2 + 2A_1A_2\cos\Delta\varphi}\\
>$$
>其中相位差 $\Delta\varphi = \varphi_2 - \varphi_1 - 2\pi\displaystyle\frac{r_2 - r_1}{\lambda}$ 为定值
>
>相位差决定了合振幅的大小
>
>* $\Delta\varphi = \pm2k\pi$：
> $$
>  A = A_1 + A_2 = A_{\max}
> $$
>  为干涉加强的点
>
>* $\Delta\varphi = \pm(2k+1)\pi$：
> $$
>  A = |A_1 - A_2| = A_{\min}
> $$
>  为干涉减弱的点，此时若 $A_1 = A_2$，$A = 0$ 干涉相消
>
>* 不满足上述两条件的点，振动介于两者之间
>
>* 若初相位相等，则
> $$
>  \Delta\varphi = \frac{2\pi}{\lambda}\delta
> $$
>  其中 $\delta = r_1 - r_2$，即波程差
>
>  此时干涉加强和减弱的条件为
> $$
>  \delta = r_1 - r_2 = 
>  \begin{cases}
>  \pm k\lambda,  \\
>  \\
>  \pm(2k+1)\frac{\lambda}{2}, \\
>  \end{cases}
>  & k = 0, 1, 2, 3\cdots
> $$

#### 驻波

> 驻波是一种特殊的干涉现象
>
> 驻波是由两列振幅相同的相干波在同一介质中的同一直线上沿相反方向传播时相遇叠加而成
>
> 驻波方程：
> $$
> y = 2A \cos2\pi\frac{x}{\lambda} \cos 2\pi\nu t
> $$
>
> * 当 $\cos2\pi\displaystyle\frac{x}{\lambda} = 0$ 时，$A' = 0$ 为**波节**
>   $$
>   x = (2k+1)\frac{\lambda}{4}, k = 0, \pm1, \pm2, \cdots
>   $$
>   
> * 
>
>
> * 当 $\cos2\pi\displaystyle\frac{x}{\lambda} = \pm1$ 时，$|A'| = 2A$ 为**波腹**
>   $$
>   x = 2k\frac{\lambda}{4}, k = 0, \pm1, \pm2, \cdots
>   $$

> 波节、波腹间的距离：
>
> * 相邻两波腹：
>   $$
>   \Delta x = \frac{\lambda}{2}
>   $$
>
> * 相邻两波节：
>   $$
>   \Delta x = \frac{\lambda}{2}
>   $$
>
> * 相邻节点与腹点：
>   $$
>   \Delta x = \frac{\lambda}{4}
>   $$

> **驻波的能量**
>
> 驻波的能量在相邻的波腹和波节间往复变化
>
> 在相邻的波节间发生动能和势能间的转换，动能主要集中在波腹，势能主要集中在波节
>
> ==**没有能量的定向传播，即驻波不传播能量**==

> **相位跃变**
>
> 驻波可以由入射波与反射波叠加而成，反射发生在两种介质的交界面上
>
> 在交界面处出现波节还是波腹，取决于介质的性质
>
> * 波密介质：介质密度 $\rho$ 与波速 $u$ 的乘积 $\rho u$ 较大的介质
> * 波疏介质：介质密度 $\rho$ 与波速 $u$ 的乘积 $\rho u$ 较小的介质
>
> ---
>
> * 波从波疏介质传向波密介质：
>
>   反射点为节点 => 半波反射
>
> * 波从波疏介质传向波密介质：
>
>   反射波无“半波损失”
>
>   反射点为腹点 => 全波反射

#### 多普勒效应

> 物理量约定：
>
> * $u$：介质中的波速
> * $v_s$：波源运动速率
> * $v_o$：观察者运动速率
> * $\nu$：波源振动频率
> * $\nu'$：观察者接收到的波的频率
>
> 则：
> $$
> \nu' = \frac{u \pm v_o}{u \mp v_s}\nu
> $$
>
> * 波源、观察者二者相互靠近时：$v_o$，$v_s$ 前分别取正号、负号
> * 波源、观察者二者相互远离时：$v_o$，$v_s$ 前分别取负号、正号
>
> ==**波源与观察者相向运动时，观察者接收到的频率增加，背向运动时频率减小**==
>
> 要求：$\nu$ 与 $u$ 不变，$v_s < u$



## 相对论

> 牛顿时空观：经典力学的绝对时空观
>
> 空间先于运动存在
>
> 时间、空间彼此独立，且与物质、运动无关
>
> 时间间隔、空间距离的测量与参考系的选择无关

#### 伽利略坐标变换

> 若参考系 $S'$ 关于参考系 $S$ 沿 $x$ 轴方向以速度 $v$​ 运动
>
> ![image-20240617204905792](C:\Users\69165\AppData\Roaming\Typora\typora-user-images\image-20240617204905792.png)
>
> 正、负变换如下：
> $$
> \begin{align*}
> &\begin{cases}
> x' = x - vt\\
> y' = y\\
> z' = z\\
> t' = t\\
> \end{cases} 
> &\begin{cases}
> x = x' + vt\\
> y = y'\\
> z = z'\\
> t = t'
> \end{cases}\\
> &\overrightarrow r' = \overrightarrow r -\overrightarrow {oo'}
> &\overrightarrow r = \overrightarrow r' + \overrightarrow {oo'}\\
> &\overrightarrow u' = \overrightarrow u - \overrightarrow v
> &\overrightarrow u = \overrightarrow u' + \overrightarrow v\\
> \end{align*}
> $$
> **力学相对性原理**
>
> 宏观低速运动物体的力学规律在任何惯性系中形式都相同
>
> 或者说，在彼此做匀速直线运动的所有惯性系中，一切力学规律都是相同的
>
> 含义：
>
> * 在一个惯性系中，无法通过力学实验来确定这个惯性系相对于另一惯性系的运动
> * 从力学规律来讲，所有惯性系是等价的，不存在一个比其他惯性系更特殊的惯性系

> 伽利略变换的问题
>
> * 电磁规律
> * 光速不变
> * 寻找光以太（绝对参考系）失败：迈克尔逊 - 莫雷实验没有看到预期结果

#### 狭义相对论

> 基本原理
>
> * 爱因斯坦相对性原理
>
>   物理定律在所有的惯性系中都具有相同的表达形式，即所有的惯性参考系对运动的描述都是等效的
>
> * 光速不变原理
>
>   真空中的光速是常量，沿各个方向都等于 $c$​ ，与光源或观测者的运动状态无关，即不依赖于惯性系的选择

> **洛伦兹变换式**
>
> 若参考系 $S'$ 关于参考系 $S$ 沿 $x$ 轴方向以速度 $v$​ 运动
>
> 令：
> $$
> \beta = \frac{v}{c}\\
> \gamma = \frac{1}{\sqrt{1 - \beta^2}}
> $$
>
> * 洛伦兹坐标变换式
>   $$
>   \begin{cases}
>   x' = \displaystyle\frac{x - vt}{\sqrt{1 - \beta^2}} = \gamma(x - vt)\\
>   y' = y\\
>   z' = z\\
>   t' = \displaystyle\frac{t - \displaystyle\frac{v}{c^2}x}{\sqrt{1 - \beta^2}} = \gamma(t - \frac{v}{c^2}x)\\
>   \end{cases} \qquad
>   \begin{cases}
>   x = \displaystyle\frac{x' + vt'}{\sqrt{1 - \beta^2}} = \gamma(x' + vt')\\
>   y = y'\\
>   z = z'\\
>   t = \displaystyle\frac{t' + \displaystyle\frac{v}{c^2}x'}{\sqrt{1 - \beta^2}} = \gamma(t' + \frac{v}{c^2}x')\\
>   \end{cases}\\
>   $$
>   当 $v\ll c$ 时，$\beta \ll 1$，转变为伽利略变换式
>
> * 洛伦兹速度变换式
>
>   有洛伦兹坐标变换式求导：
>   $$
>   \begin{cases}
>   u'_x = \displaystyle\frac{u_x - v}{1 - \displaystyle\frac{v}{c^2}u_x}\\
>   u'_y = \displaystyle\frac{u_y}{\gamma(1 - \displaystyle\frac{v}{c^2}u_x)}\\
>   u'_z = \displaystyle\frac{u_z}{\gamma(1 - \displaystyle\frac{v}{c^2}u_x)}\\
>   \end{cases} \qquad
>   \begin{cases}
>   u_x = \displaystyle\frac{u'_x + v}{1 + \displaystyle\frac{v}{c^2}u'_x}\\
>   u_y = \displaystyle\frac{u'_y}{\gamma(1 + \displaystyle\frac{v}{c^2}u'_x)}\\
>   u_z = \displaystyle\frac{u'_z}{\gamma(1 + \displaystyle\frac{v}{c^2}u'_x)}\\
>   \end{cases}
>   $$

> 在狭义相对论时空观中，同时具有相对性
>
> 沿两个惯性系运动方向，不同地点发生的两个事件，在其中一个惯性系中是同时的，在另一惯性系中观察则不同时，所以同时具有相对意义
>
> 只有在同一地点 ，同一时刻发生的两个事件，在其他惯性系中观察也是同时的
>
> 相互关联的事件之间的因果关系、时间顺序，不会由于参考系改变为颠倒

> **尺缩钟慢**
>
> * 运动长度小于固有长度（本征长度）
>   $$
>   l = l_0\sqrt{1 - \beta^2} < l_0
>   $$
>
> * 相对于物体运动的参考系，观测物体经历的时间延缓（膨胀）了
>   $$
>   \tau = \frac{\tau_0}{\sqrt{1 - \beta^2}} = \gamma\tau_0 > \tau_0
>   $$
>
> * 
>
> 两种变化都是相对的

> **动量与能量**
>
> 质量：
> $$
> m = \frac{m_0}{\sqrt{1 - \displaystyle\frac{u^2}{c^2}}} = \gamma m_0
> $$
> 虚质量是没有意义的，由此也可以看出速度的极限是光速 $c$
>
> 动量：
> $$
> \overrightarrow p = m\overrightarrow v = \gamma m_0\overrightarrow v
> $$
> 合外力：
> $$
> \overrightarrow F = m\frac{\text d\overrightarrow v}{\text dt} + \overrightarrow v\ \frac{\text dm}{\text dt}
> $$
> 合外力 $\overrightarrow F$ 与加速度 $\displaystyle\frac{\text d\overrightarrow v}{\text dt}$​ 不在同一方向上，相互不成正比
>
> 相对论动能：
> $$
> E_k = mc^2 - m_0c^2 = (\gamma - 1)m_0c^2
> $$
> 静能量：
> $$
> E_0 = m_0c^2
> $$
> 总能量：
> $$
> E = mc^2
> $$
> 动量与能量：
> $$
> E^2 = E_0^2 + p^2c^2
> $$
> 

## 电磁学

### 静电场

> 电荷守恒定律

#### 库仑定律

> $$
> \overrightarrow F = \frac{1}{4\pi\varepsilon_0}\frac{q_1q_2}{r^2}\ \overrightarrow e_r
> $$
>
> 其中，真空电容率 $\varepsilon \approx 8.85 \times 10^{-12}\text{C}^2/(\text{N}\cdot \text{m}^2)$

#### 电场强度

> 定义：
> $$
> \overrightarrow E = \frac{\overrightarrow F}{q_0}
> $$
> 点电荷电场强度：
> $$
> \overrightarrow E = \frac{1}{4\pi\varepsilon_0}\frac{Q}{r^2}\ \overrightarrow e_r\\
> E = \frac{1}{4\pi\varepsilon_0}\frac{Q}{r^2}\\
> $$
> 电场强度可以叠加
>
> 若电荷体密度为 $\rho$，则
> $$
> \overrightarrow E = \int_V\frac{1}{4\pi\varepsilon_0}\frac{\rho\overrightarrow e_r}{r^2}\ \text dV
> $$
> 若电荷面密度为 $\sigma$，则
> $$
> \overrightarrow E = \int_S\frac{1}{4\pi\varepsilon_0}\frac{\sigma\overrightarrow e_r}{r^2}\ \text dS
> $$
> 若电荷线密度为 $\lambda$，则
> $$
> \overrightarrow E = \int_V\frac{1}{4\pi\varepsilon_0}\frac{\lambda\overrightarrow e_r}{r^2}\ \text dV
> $$
> **电偶极子的电场强度**
>
> 电偶极子的轴：$\overrightarrow r_0$，方向由负电荷指向正电荷
>
> 电偶极矩（电矩）：
> $$
> \overrightarrow p = q\overrightarrow r_0
> $$
>
> * 轴延长线上的电场强度：
>   $$
>   \overrightarrow E = \frac{q}{4\pi\varepsilon_0}\Bigg[\frac{2xr_0}{(x^2 - \displaystyle\frac{r_0^2}{4})^2}\Bigg]\ \overrightarrow i
>   $$
>   若 $x \gg r_0$：
>   $$
>   \overrightarrow E = \frac{1}{4\pi\varepsilon_0}\frac{2r_0q}{x^3}\ \overrightarrow i = \frac{1}{4\pi\varepsilon_0}\frac{2\overrightarrow p}{x^3}
>   $$
>
> * 中垂线上的电场强度：
>   $$
>   \overrightarrow E = -\frac{1}{4\pi\varepsilon_0}\frac{\overrightarrow p}{r^3}
>   $$
>   当 $y \gg r_0$ 时：
>   $$
>   \overrightarrow E = -\frac{1}{4\pi\varepsilon_0}\frac{\overrightarrow p}{y^3}
>   $$
>
> **圆环在中轴线上的电场强度**
> $$
> E = \frac{qx}{4\pi\varepsilon_0(x^2 + R^2)^{\frac{3}{2}}}
> $$
> **薄圆盘在中轴线上的电场强度**
> $$
> E = \frac{\sigma}{2\varepsilon_0}(1 - \frac{x}{\sqrt{R^2 + x^2}})
> $$
> 当 $R \to \infty$ 或 $x \to \infty$ 时：即无限大均匀带电平板的电场
> $$
> E = \frac{\sigma}{2\varepsilon_0}
> $$
> **两个带等量异号均匀分布的无限大平行板的空间电场分布**
> $$
> E = 
> \begin{cases}
> \displaystyle\frac{\sigma}{\varepsilon_0}, &两板之间\\
> \\
> 0, &两板外侧\\
> \end{cases}
> $$
> **无限长带电直线周围的电场**
> $$
> \overrightarrow E = \frac{\lambda}{2\pi\varepsilon_0r}\overrightarrow e_r
> $$

#### 电场强度通量与高斯定理

> **电场强度通量**
> $$
> \varPhi_e = \int_S\overrightarrow E \cdot \text d \overrightarrow S
> $$
> **高斯定理**
>
> 由库仑定律导出，但是比库仑定律应用范围更加广泛
> $$
> \varPhi_e = \oint_S\overrightarrow E \cdot \text d\overrightarrow S = \frac{1}{\varepsilon_0}\displaystyle\sum_{i=1}^n q^{in}_i
> $$
> 可以得出：静电场是有源场

#### 静电力做功

> **点电荷的电场**
> $$
> W = \frac{qq_0}{4\pi\varepsilon_0}(\frac{1}{r_A} - \frac{1}{r_B})
> $$
> 静电力做功与与路径无关
>
> **静电场的环路定理**
> $$
> \oint_l\overrightarrow E \cdot \text d\overrightarrow l = 0
> $$
> 即静电场力是保守力、静电场是保守场
>
> **电势**
> $$
> V_A = \int_{A\infty}\overrightarrow E \cdot \text d\overrightarrow l\\
> V_A = \int_{AB} \overrightarrow E \cdot \text dl + V_B
> $$
> **点电荷电场的电势**
> $$
> V = \frac{q}{4\pi\varepsilon_0r}
> $$
> 电势是可叠加的
>
> **细圆环环轴线上的电势**
> $$
> V_P = \frac{q}{4\pi\varepsilon_0\sqrt{x^2 + R^2}}
> $$
>
> * 当 $x = 0$ 时，
>   $$
>   V_0 = \frac{q}{4\pi\varepsilon_0R}
>   $$
>
> * 当 $x \gg R$ 时，
>   $$
>   V_P = \frac{q}{4\pi\varepsilon_0x}
>   $$
>
> **薄圆盘轴线上的电势**
> $$
> V = \frac{\sigma}{2\varepsilon_0}(\sqrt{x^2 + R^2} - x)
> $$
> 当 $x \gg R$ 时，$\sqrt{x^2 + R^2} \approx x + \displaystyle\frac{R^2}{2x}$
> $$
> V \approx \frac{Q}{4\pi\varepsilon_0x}
> $$
> **无限长带电直导线的电势**
> $$
> V_P = \frac{\lambda}{2\pi\varepsilon_0}\ln\frac{r_B}{r}
> $$
> 这里不能选取 $V_\infty = 0$，因为导线上的电势与无穷远处的电势相等
>
> 电场强度与电势梯度的关系：
> $$
> \overrightarrow E = - \nabla V
> $$

#### 静电场中的导体

> 空腔导体内部电场为 $0$，内部感应电场与外电场抵消
>
> 导体表面附近场强与电荷面密度的关系：
> $$
> E = \frac{\sigma}{\varepsilon_0}
> $$

#### 静电场中的电介质

> **相对电容率**
> $$
> E = \frac{E_0}{\varepsilon_r}\\
> \varepsilon = \varepsilon_0\varepsilon_r\\
> \varepsilon_r > 1
> $$
> **电介质的极化**
>
> 电偶极矩：$\overrightarrow p_e = q\ \overrightarrow l$
>
> 极化电荷的场：
> $$
> \overrightarrow E = \overrightarrow E_0 + \overrightarrow E'
> $$
> 决定介质极化的不是外电场，而是介质内的实际电场
>
> 极化电荷的场总会削弱外电场带来的影响，因此极化电荷的场又称退极化场
>
> 定义电极化强度：
> $$
> P = \frac{\sum p}{\Delta V} = \sigma'
> $$

> 极化电荷与自由电荷之间的关系
> $$
> \overrightarrow P = (\varepsilon_r - 1)\varepsilon_0\overrightarrow E
> $$
> 记 $\chi_e = \varepsilon_r - 1$：
> $$
> \overrightarrow P = \chi_e\varepsilon_0\overrightarrow E
> $$
> **电位移与有电介质的高斯定理**
> $$
> \overrightarrow D = \varepsilon_r\varepsilon_0\overrightarrow E = \varepsilon\overrightarrow E\\
> \oint_S\overrightarrow D \cdot \text d\overrightarrow S = \displaystyle\sum_{i=1}^nQ_{0i}
> $$
> 电位移是一个辅助矢量，实际上并不存在，只是用于简化对电场规律的描述
> $$
> \overrightarrow D = \varepsilon_0\overrightarrow E + \overrightarrow P
> $$
> **电介质中均匀带电导体球壳外的场强和电势**
> $$
> \overrightarrow E = \frac{q}{4\pi\varepsilon_0, \varepsilon_rr^2}\overrightarrow e_r\\
> V_P = \frac{q}{4\pi\varepsilon_0\varepsilon_rr}
> $$
> **电介质中均匀带电球体的场强**
> $$
> E = 
> \begin{cases}
> \displaystyle\frac{q}{4\pi\varepsilon_1R^3}, &r < R\\
> \\
> \displaystyle\frac{q}{4\pi\varepsilon_2r^2}, &r \geqslant R
> \end{cases}
> $$

#### 电容器

> **球形孤立导体电容**
> $$
> C = 4\pi\varepsilon_0R
> $$
> **圆柱形电容器**
>
> ![image-20240618170109280](C:\Users\69165\AppData\Roaming\Typora\typora-user-images\image-20240618170109280.png)
> $$
> C = \frac{2\pi\varepsilon_0l}{\ln\displaystyle\frac{R_B}{R_A}}
> $$
> **球形电容器**
>
> ![image-20240618170122863](C:\Users\69165\AppData\Roaming\Typora\typora-user-images\image-20240618170122863.png)
>
> **两条平行导线之间的电容**
>
> ![image-20240618170301183](C:\Users\69165\AppData\Roaming\Typora\typora-user-images\image-20240618170301183.png)
> $$
> C = \frac{\pi\varepsilon}{\ln\displaystyle\frac{d}{R}}
> $$
> **电容器串并联**
>
> 串联
> $$
> \frac{1}{C} = \frac{1}{C_1} + \frac{1}{C_2}
> $$
> 并联
> $$
> C = C_1 + C_2
> $$

#### 静电场的能量

> $$
> W_e = \frac{1}{2}\frac{Q^2}{C} = \frac{1}{2}CU^2 = \frac{1}{2}UQ
> $$
>
> **电场的能量密度**
> $$
> w_e = \frac{1}{2}\varepsilon E^2
> $$
> 整个空间中的电场能量
> $$
> W_e = \int_V\frac{1}{2}\varepsilon E^2\text dV
> $$

### 恒定磁场

> 电流密度：单位时间内，通过某点附近且垂直于正电荷运动方向的单位面积的电荷，是一个矢量
> $$
> I = \int_S \overrightarrow j \cdot d\overrightarrow S
> $$
> **电流连续性方程**
> $$
> \oint_S\overrightarrow j \cdot \text d\overrightarrow S = -\frac{\text dQ_i}{\text dt}
> $$
> **电源与电动势**
> $$
> E = \frac{W}{q} = \frac{\oint_lq\overrightarrow E_k \cdot \text d\overrightarrow l}{q}\\
> E = \int_{in}\overrightarrow E_k \cdot \text d\overrightarrow l
> $$

#### 磁感强度

> 定义：
> $$
> B =\frac{F_{\max}}{qv}
> $$
> 运动电荷在磁场中受力
> $$
> \overrightarrow F = q\overrightarrow v \times \overrightarrow B
> $$

#### 毕奥 - 萨伐尔定律

> $$
> \text dB = \frac{\mu_0}{4\pi}\frac{I\text dl\sin\theta}{r^2}\\
> \text d\overrightarrow B = \frac{\mu_0}{4\pi}\frac{I\text d\overrightarrow l \times \overrightarrow e_r}{r^2} = \frac{\mu_0}{4\pi}\frac{I\text d\overrightarrow l \times \overrightarrow r}{r^3}\\
> $$
>
> 其中真空磁导率 $\mu_0 = 4\pi \times 10^{-7}\text N/\text A^2$
>
> **无限长载流直导线**
> $$
> B = \frac{\mu_0I}{2\pi r_0}
> $$
> 由此有**半无限长载流长直导线**
> $$
> B_P = \frac{\mu_0I}{4\pi r}
> $$
> **圆形载流导线轴线上的磁场**
> $$
> B = \frac{\mu_0IR^2}{2(x^2 + R^2)^{\frac{3}{2}}}
> $$

#### 磁矩与磁场

> $$
> \overrightarrow m = NIS\overrightarrow e_n
> $$
>
> 方向与圆电流的单位正法矢的方向相同

##### 载流螺线管内部的磁场

> 螺线管可以看成圆形电路的组合
> $$
> B = \frac{\mu_0nI}{2}(\cos\beta_2 - \cos\beta_1)
>$$
> 
>* 若 $P$ 点位于管内轴线中点，有 $\beta_1 \pi - \beta_2$
>   $$
>   B = \frac{\mu_0nI}{2}\frac{1}{\sqrt{\displaystyle\frac{l^2}{4} + R^2}}
>   $$
>   当 $l \gg R$ 时，
>   $$
>   B = \mu_0nI
> $$
> * 对于无限长的螺线管
> $$
>   B = \mu_0nI
> $$
> * 半无限长的螺线管的一端
> $$
>  B = \frac{\mu_0nI}{2}
>   $$
> 

##### 运动电荷的磁场

> $$
> B = \frac{\mu_0}{4\pi}\frac{qv\sin<\overrightarrow v, \overrightarrow e_r>}{r^2}
> $$
>**转动圆盘中心的磁场**
> $$
>B = \frac{\mu_0\sigma\omega R}{2}
> $$

#### 磁场的高斯定理

> 磁感线不相交，不中断，是无头无尾的闭合曲线

> **磁通量**
> $$
> \varPhi = \int_S\overrightarrow B \cdot \text d\overrightarrow S
> $$
> **磁场的高斯定理**
> $$
> \oint_S \overrightarrow B \cdot \text d\overrightarrow S = 0
> $$
> 说明磁场是**无源场**

#### 安培环路定理

> 对于**圆形环路**
>
> 若闭合环路 $l$ 与 $I$ 成右手螺旋，否则应加上负号：
> $$
> \oint_l \overrightarrow B \cdot \text d\overrightarrow l = \mu_0I
> $$
> 对于**任意形状环路**
>
> * 若电路在环路之内，且环路 $L$ 与 $I$ 成右手螺旋，否则应加上负号：
>   $$
>   \oint_L \overrightarrow B \cdot \text d\overrightarrow l = \mu_0I
>   $$
>
> * 若电路在环路之外，不对环路中磁通量产生影响，即：
>   $$
>   \oint_L \overrightarrow B \cdot \text d\overrightarrow l = 0
>   $$
>
> 推广为**安培环路定理**：
> $$
> \oint_L\overrightarrow B \cdot \text d\overrightarrow l = \mu_0\displaystyle\sum_{i=1}^nI_i
> $$
> 若 $I$ 与 $L$ 成右手螺旋则为正，否则取负
>
> 安培环路定理说明磁场是**涡旋场**

> **载流螺绕环内的磁场**
> $$
> B = \frac{\mu_0nI}{L}
> $$
> **无限长载流圆柱体的磁场**
> $$
> B = 
> \begin{cases}
> \displaystyle\frac{\mu_0Ir}{2\pi R^2}, &0 < r < R, \\
> \\
> \displaystyle\frac{\mu_0I}{2\pi r}, &r > R. \\
> \end{cases}
> $$
> **无限长载流圆柱面的磁场**
> $$
> B = 
> \begin{cases}
> 0, & 0 < r < R, \\
> \\
> \displaystyle\frac{\mu_0I}{2\pi r}, &r > R .
> \end{cases}
> $$
> **无限大均匀通电平面的磁场**
> $$
> B = \frac{\mu_0}{2}
> $$

#### 带电粒子在电场与磁场中的运动

> 电场力
> $$
> \overrightarrow F_e = q\overrightarrow E
> $$
> 磁场力（洛伦兹力）
> $$
> F_m = q\overrightarrow v \times \overrightarrow B
> $$
> 故合力
> $$
> \overrightarrow F = q\overrightarrow E + q\overrightarrow v \times \overrightarrow B
> $$

##### 应用

> **回旋加速器**
>
> **磁聚焦**
>
> **质谱仪**
>
> **霍尔效应**

#### 载流导线在磁场中的受力

> **安培力**
> $$
> \overrightarrow F = \int_lI\text d\overrightarrow l \times \overrightarrow B
> $$
> 作用于导线，而非某个点
>
> **作用于载流线圈的磁力矩**
>
> * 矩形载流线圈
>   $$
>   \overrightarrow M = NIS\ \overrightarrow e_n \times\overrightarrow B
>   $$
>
> * 任意形状平面线圈的受力矩
>   $$
>   \overrightarrow M = \overrightarrow m \times \overrightarrow B
>   $$

#### 磁力做功

> $$
> W = \int_{\varPhi_1}^{\varPhi_2} I\text d\varPhi
> $$

#### 磁场中的磁介质

>  * 顺磁质
>
>    弱磁性，$\mu_r > 1$，$\mu_r \approx 1$
>
>    $B'$ 与 $B_0$ 同向，但是 $B' \ll B_0$， 则 $B > B_0$ 且 $B \approx B_0$ 
>
>  * 抗磁质
>
>    弱磁性，$\mu_r < 1$，$\mu_r \approx 1$
>
>    $B'$ 与 $B_0$ 反向，但是 $B'\ll B_0$，则 $B < B_0$ 且 $B \approx B_0$
>
>  * 铁磁质
>
>    介质磁化后呈强磁性，$\mu_r \gg 1$
>
>    $B'$ 与 $B_0$ 同向，且 $B' \gg B_0$，则 $B \gg B_0$
>
>  * 完全抗磁质
>
>    磁介质内的磁场等于零，$\mu_r = 0$
>
>    $\overrightarrow B = 0$，$\overrightarrow B' = -\overrightarrow B_0$

##### 磁化强度

> 磁化强度：
> $$
> \overrightarrow M = \frac{\displaystyle\sum_i\overrightarrow m_i}{V}
> $$
> 

> 说明：沿轴线单位长度上的磁化电流的面密度 $\overrightarrow j$ 实际上是线密度

> 磁化强度矢量沿任意闭合回路的限积分等于穿过回路面积的总磁化电流，即
> $$
> \oint_L \overrightarrow M \cdot \text d\overrightarrow l = \displaystyle\sum_{(L_{in})}I'
> $$
> 

##### 磁介质中的安培定理

> 有介质时的总磁场
> $$
> \overrightarrow B = \overrightarrow B_0 + \overrightarrow B'
> $$
> 其中 $\overrightarrow B_0$ 为传到电流 $I$ 产生的磁场，$\overrightarrow B'$ 为磁化电流 $I'$ 产生的磁场
>
> 定义磁化电场强度矢量：
> $$
> \overrightarrow H = \frac{\overrightarrow B}{\mu_0} - \overrightarrow M
> $$
> 单位：$\text {A/m}$
>
> 则有磁介质中的安培环路定理
> $$
> \oint_L \overrightarrow H \cdot \text d\overrightarrow l = \displaystyle\sum_{L_{in}}I
> $$
> 实验指出：在各向同性线性磁介质中：
> $$
> \overrightarrow M = \chi_m\overrightarrow H
> $$
> 其中 $\chi_m$ 称为磁化率
>
> $\mu_r = 1 + \chi_m$称为相对磁导率，$\mu = \mu_0\mu_r$ 称为磁导率 ，则有：
> $$
> \overrightarrow M = (\mu_r - 1)\overrightarrow H\\
> \overrightarrow B = \mu_0(1 + \chi_m)\overrightarrow H = \mu_0\mu_r\overrightarrow H = \mu\overrightarrow H\\
> $$
> 真空中：$\mu_r = 1$
>
> 弱磁质中：$\mu_r \approx 1$

##### 磁介质中的高斯定理

> $$
> \oiint_S\overrightarrow B \cdot\text d\overrightarrow S = 0
> $$

### 电磁感应与电磁场

#### 法拉第电磁感应定律

> $$
> E_i = -\frac{\text d\varPhi}{\text dt}
> $$
>
> 对于 $N$ 匝密绕线圈：
> $$
> E_i = -\frac{\text d\varPsi}{\text dt}
> $$
> 感应电流：
> $$
> I_i = -\frac{1}{R}\frac{\text d\varPhi}{\text dt}
> $$
> 感应电荷：
> $$
> q = \frac{\Delta\varPhi}{R}
> $$

#### 楞次定律

> 感应电动势总是阻碍磁通量的变化

#### 动生电动势与感生电动势

> 电动势求法：
> $$
> E = \int_-^+\overrightarrow E_k \cdot \text d\overrightarrow l
> $$
> 其中 $\overrightarrow E_k$ 为非静电电场强度
>
> 闭合电路的总电动势：
> $$
> E = \oint_l\overrightarrow E_k\cdot \text d\overrightarrow l
> $$

##### 动生电动势

> 切割磁感线时非静电力来源=>洛伦兹力：
> $$
> \overrightarrow F_m = (-e)\overrightarrow v \times \overrightarrow B
> $$
> 电场：
> $$
> \overrightarrow E_k = \frac{\overrightarrow F_m}{-e} = \overrightarrow v \times \overrightarrow B
> $$
> 电动势：
> $$
> E_i = \int_{OP} \overrightarrow E_k\cdot \text d\overrightarrow l = \int_{OP}(\overrightarrow v \times\overrightarrow B) \cdot \text d\overrightarrow l
> $$
> 设杆长为 $L$，则
> $$
> E_i = \int_0^LvB\text dl = vBL
> $$
> 洛伦兹力在其中不提供能量，但是传递了能量

##### 感生电动势

> 感生电场：
> $$
> E = \oint_L\overrightarrow E_感 \cdot\text d\overrightarrow l = -\frac{\text d}{\text dt}\iint_S\overrightarrow B \cdot \text d\overrightarrow S = -\iint_S\frac{\partial \overrightarrow B}{\partial t}\cdot d\overrightarrow S
> $$
> 感生电场线是类似于磁感线，是无头无尾的闭合曲线，故感生电场是有旋电场
>
> 感生电场是非保守场

##### 求法归纳

> * 只有动生电动势：
>
> $$
> E_i = \int_L(\overrightarrow V\times \overrightarrow B) \cdot \text d\overrightarrow l
> $$
>
> * 只有感生电动势：
>
> $$
> E_i = -\iint_S\frac{\partial \overrightarrow B}{\partial t}\cdot \text d\overrightarrow S
> $$
>
> * 同时有动生电动势和感生电动势：
>
> $$
> E_i = -\frac{\text d\varPhi}{\text dt}
> $$

#### 自感与互感

##### 自感

> $$
> \varPhi = LI\\
> E_L = -L\frac{\text dI}{\text dt}
> $$
>
> 表征回路电磁惯性的大小
>
> 对于 $N$ 匝线圈：
> $$
> B = \mu\frac{N}{l}I = \mu nI\\
> L = \frac{\varPsi}{I} = \mu\frac{N^2}{l}S = \mu n^2 V
> $$
> 其中 $n = \frac{N}{l}$

##### 互感

> * $\varPhi_{21}$：线圈 $1$ 产生，穿过线圈 $2$ 的磁通量
>   $$
>   \varPhi_{21} = M_{21}I_1
>   $$
>
> * $\varPhi_{12}$：线圈 $2$ 产生，穿过线圈 $1$ 的磁通量
>   $$
>   \varPhi_{12} = M_{12}I_2
>   $$
>
> 互感电动势：
> $$
> E_{21} = -M\frac{\text dI_1}{\text dt}\\
> E_{12} - -M\frac{\text dI_2}{\text dt}\\
> $$
> 对于匝数分别为 $N_1$、$N_2$ 的线圈：
> $$
> M = \mu\frac{N_1N_2}{l}S = \mu n_1n_2V
> $$

#### 磁场能量

> 自感线圈磁能
> $$
> W_m = \frac{1}{2}LI^2 = \frac{1}{2}\frac{B^2}{\mu}V
> $$
> 磁场能量密度
> $$
> w_m = \frac{B^2}{2\mu} = \frac{1}{2}\mu H^2 = \frac{1}{2}BH\\
> W_m = \int_Vw_m\text dV = \int_V\frac{B^2}{2\mu}\text dV\\
> $$

#### 位移电流

> 麦克斯韦预言电磁波：真空中：
> $$
> c = \frac{1}{\sqrt{\varepsilon_0\mu_0}}
> $$

> 将稳恒电路的安培环路定理直接用于非稳恒电路时，出现矛盾
>
> 于是麦克斯韦引入位移电流来表示电场的变化
> $$
> I_d = \frac{\text d}{\text dt}\iint_S \overrightarrow D \cdot \text d\overrightarrow S = \iint_S\frac{\partial \overrightarrow D}{\partial t}\cdot \text d\overrightarrow S
> $$
> 全电流安培环路定理：
> $$
> \oint_L\overrightarrow H \cdot \text d\overrightarrow l = \iint_S(\overrightarrow j_c + \frac{\partial \overrightarrow D}{\partial t})\cdot \text d\overrightarrow S
> $$
> 位移电流不具有热效应

#### 麦克斯韦方程组

> 有电磁场的高斯定理和环路定理得到麦克斯韦方程组的积分形式：
> $$
> \begin{cases}
> \displaystyle\oiint_S\overrightarrow D \cdot \text d\overrightarrow S = \sum q\\
> \displaystyle\oiint_S\overrightarrow B\cdot\text d\overrightarrow S = 0\\
> \displaystyle\oint_L\overrightarrow E \cdot \text d\overrightarrow l = -\iint_S\frac{\partial \overrightarrow B}{\partial t}\cdot\text d\overrightarrow S\\
> \displaystyle\oint_L\overrightarrow H \cdot \text d\overrightarrow l = \sum I + \iint_S\frac{\partial \overrightarrow D}{\partial t}\cdot \text d\overrightarrow S
> \end{cases}
> $$
> 由数学上的斯托克斯公式和高斯公式得到麦克斯韦方程组的微分形式：
> $$
> \begin{cases}
> \nabla \cdot \overrightarrow D  =\rho\\
> \nabla \cdot \overrightarrow B = 0\\
> \nabla \times \overrightarrow E = -\displaystyle\frac{\partial \overrightarrow B}{\partial t}\\
> \nabla \times \overrightarrow H = \overrightarrow j + \displaystyle\frac{\partial\overrightarrow D}{\partial t}
> \end{cases}
> $$
> 其中：
> $$
> \overrightarrow D = \varepsilon\overrightarrow E\\
> \overrightarrow H = \frac{1}{\mu}\overrightarrow B\\
> \overrightarrow j = \gamma\overrightarrow E
> $$
> 适用于一切宏观电磁现象

#### 电磁波

> 平面电磁波方程
> $$
> \begin{cases}
> E = E_0\cos\omega(t - \frac{x}{v})\\
> \\
> H = H_0\cos\omega(t - \frac{x}{v})\\
> \end{cases}
> $$
> 振幅关系：$\sqrt{\varepsilon}E_0 = \sqrt{\mu}H_0$
>
> 波速：
> $$
> v = \frac{1}{\sqrt{\varepsilon\mu}} = \frac{c}{\sqrt{\varepsilon_r\mu_r}}
> $$

> 能量
>
> 电磁场的能量密度：
> $$
> w = \frac{\overrightarrow D \times \overrightarrow E + \overrightarrow B \cdot \overrightarrow H}{2} = \frac{\varepsilon E^2 + \mu H^2}{2}
> $$
> 能流密度矢量 - 波印廷矢量
> $$
> S = wv = EH\\
> \overrightarrow S = \overrightarrow E \times \overrightarrow H
> $$
> 方向与电磁波传递方向一致
>
> 电磁场的动量密度：
> $$
> p = \frac{w}{c} = \frac{1}{c^2}\overrightarrow S = \frac{1}{c^2}\overrightarrow E \times \overrightarrow H
> $$
