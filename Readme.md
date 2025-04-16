# OpenSees 3.7.1 预编译版本（Linux 64-bit）

本项目提供 OpenSees（Open System for Earthquake Engineering Simulation）**3.7.1 版本** 在 Linux 系统下的预编译二进制文件，包含主程序与相关静态链接库，适用于科研人员快速部署与运行地震模拟分析。

---

## 📁 项目结构

```bash
# OpenSees 预编译版本（Linux）

本项目提供 OpenSees（Open System for Earthquake Engineering Simulation）在 Linux 系统下的预编译版本，包含主程序与相关静态链接库，适用于科研人员快速部署与运行地震模拟分析。

---

## 📁 项目结构

```bash
.
├── opensees/
│   ├── bin/                     # OpenSees 可执行文件
│   │   └── OpenSees
│   └── lib/                     # OpenSees 所需静态链接库（如自定义编译使用）
│       ├── libOpenSees.a
│       ├── libOpenSeesTclCommands.a
│       ├── libBlas.a
│       ├── libLapack.a
│       ├── libSuperLU.a
│       ├── libArpack.a
│       ├── libCSparse.a
│       ├── libCBlas.a
│       ├── libAMD.a
│       ├── libUmfpack.a
│       └── libMetis.a
├── scripts/                    # 示例 Tcl 输入脚本
├── install_opensees_deps.sh   # 一键安装系统依赖
└── README.md                  # 项目说明

```

## ✅ 系统依赖

OpenSees 依赖以下系统级共享库：

- `libgfortran.so.5`
    
- `libtcl8.6.so`
    
- `libtk8.6.so`（可选，用于图形界面）
    

### 一键安装依赖（推荐）

你可以运行随附的安装脚本来快速安装依赖项（适用于 Ubuntu / Debian / WSL）：
```bash
chmod +x install_opensees_deps.sh
./install_opensees_deps.sh
```

或者手动安装：
```bash
sudo apt update
sudo apt update sudo apt install -y libgfortran5 libtcl8.6 libtk8.6`
```

## 🚀 快速开始

### 1. 克隆仓库或下载 release
```bash
git clone https://github.com/fegvebhtrbtr/OpenSees_Linux.git
cd OpenSees_Linux
```

### 2. 运行 OpenSees

运行示例脚本：
```bash
./bin/OpenSees scripts/example.tcl
```

也可以进入 bin 目录运行：
```bash
cd bin
./OpenSees
```

## 🧪 示例脚本

项目中的 `scripts/` 目录下包含一个简单的模型脚本，可用于测试是否安装成功。
```bash
./bin/OpenSees scripts/example.tcl
```

## 🐍 可选：Jupyter + Python 环境（高级用户）

如果你希望在 Jupyter Notebook 中集成 OpenSees 分析结果，建议安装以下 Python 依赖：
```bash
pip install notebook numpy matplotlib
```


## ⚠️ 常见问题

- **缺少共享库**：若运行时报错缺失某个 `.so` 文件，说明系统中尚未安装相关依赖，请参照上文执行安装。
    
- **无法执行文件**：确保 OpenSees 可执行文件具有执行权限，可通过以下命令赋予权限：
```bash
chmod +x bin/OpenSees
```
- **WSL 用户**：在 Windows 子系统（WSL）中使用也完全兼容，确保使用 Ubuntu 20.04+，并已更新 apt 包。
    

---

## 📄 License

本项目仅封装 OpenSees 可执行程序，遵循原 OpenSees 项目的开源协议（BSD License）。

OpenSees 官网：https://opensees.berkeley.edu/

---

## 🧾 版本信息

- OpenSees 版本：**3.7.1**
- 架构：**64-bit**
- 编译平台：Linux
- 官方地址：[https://opensees.berkeley.edu](https://opensees.berkeley.edu)

该版本由官方源码编译，包含常用数值库（Blas、Lapack、Arpack、SuperLU、Metis 等）。

---

## 🙌 鸣谢

感谢 OpenSees 开发团队提供的强大工具，支持本地建模与地震模拟研究工作。
