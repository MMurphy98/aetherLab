# AetherLab 

> The project is aimed to run aether simulation and record results automatically. 

## Supported Simulations
- `DC Analysis` \- calculate the power consumptions in DC state;
- `AC Analysis` \- run the AC analysis to get the **Frequency Response** of the amplifiers, including **GBW, PM**;
- `Noise Analysis` \- get the noise reports to estimate the noise performance of the systems, including **Input Noise, Output Noise**;
- `Area Counting` \- calculate the total area occupied of the systems;

## Branch TA202101
> modified version of the project for the **Teaching Assistor** in *2021/09 - 2022/01*

### Exam Questions
- According to the basic schematic design, the students need to calculate the size (W/L) of each transistors and set up the DC current.

![](source/img/2021-10-20-14-53-03.png)

- the OTA is a **two-order Miller OTA**, which is consisted of a normal P-type five-transistor-OTA and CS stage.

### Exam Requiremenets
![](source/img/2021-10-20-14-56-53.png)

1. PM larger than **60 degrees**
2. the DC gain is larger than **90dB**
3. the GBW is larger than **50MHz**
4. Power consumption **as small as possible**

> *ps. You are not expect to edit the testbench.*