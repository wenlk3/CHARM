# CHARM: Collaborative Harmonization across Arbitrary Modalities for Modality-agnostic Semantic Segmentation

[![AAAI 2025](https://img.shields.io/badge/AAAI-2025-blue)](https://aaai.org/conference/aaai/aaai-25/)
[![arXiv](https://img.shields.io/badge/arXiv-xxxx.xxxxx-b31b1b.svg)](https://arxiv.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

**[Paper]()** | **[Project Page]()** | **[Demo]()**

> **Accepted at AAAI 2025** 🎉  
> Acceptance Date: November 8, 2024

## 📋 Table of Contents

- [Overview](#overview)
- [News](#news)
- [Installation](#installation)
- [Dataset Preparation](#dataset-preparation)
- [Training](#training)
- [Evaluation](#evaluation)
- [Pre-trained Models](#pre-trained-models)
- [Results](#results)
- [Citation](#citation)
- [Acknowledgments](#acknowledgments)
- [License](#license)

## 🔍 Overview

CHARM (Collaborative Harmonization across Arbitrary Modalities) is a novel framework for modality-agnostic semantic segmentation. This repository contains the official implementation of our AAAI 2025 paper.

### Key Features

- **Modality-Agnostic Design**: Works seamlessly across different input modalities (RGB, depth, thermal, etc.)
- **Collaborative Harmonization**: Novel mechanism for harmonizing features from arbitrary modalities
- **State-of-the-Art Performance**: Achieves competitive results on multiple benchmark datasets
- **Flexible Architecture**: Easy to adapt to different modality combinations

### Abstract

*[Add your paper abstract here]*

## 📰 News

- **[2024-11-08]** 🎉 Our paper has been accepted to AAAI 2025!
- **[2024-11-XX]** Code and pre-trained models released
- **[2024-XX-XX]** Project page is online

## 🛠️ Installation

### Requirements

- Python >= 3.8
- PyTorch >= 1.10.0
- CUDA >= 11.1 (for GPU support)

### Setup

```bash
# Clone the repository
git clone https://github.com/wenlk3/CHARM.git
cd CHARM

# Create a virtual environment
conda create -n charm python=3.8
conda activate charm

# Install PyTorch (modify according to your CUDA version)
pip install torch==1.12.0+cu113 torchvision==0.13.0+cu113 --extra-index-url https://download.pytorch.org/whl/cu113

# Install other dependencies
pip install -r requirements.txt
```

## 📊 Dataset Preparation

### Supported Datasets

We evaluate our method on the following datasets:

- **Dataset 1**: [Brief description and download link]
- **Dataset 2**: [Brief description and download link]
- **Dataset 3**: [Brief description and download link]

### Data Structure

Organize your datasets as follows:

```
CHARM/
├── data/
│   ├── dataset1/
│   │   ├── images/
│   │   ├── labels/
│   │   └── ...
│   ├── dataset2/
│   │   └── ...
│   └── ...
```

### Download and Preprocessing

```bash
# Download datasets
bash scripts/download_datasets.sh

# Preprocess data
python tools/prepare_data.py --dataset [dataset_name]
```

## 🚀 Training

### Train from Scratch

```bash
# Single GPU training
python train.py --config configs/charm_config.yaml

# Multi-GPU training (e.g., 4 GPUs)
python -m torch.distributed.launch --nproc_per_node=4 train.py --config configs/charm_config.yaml
```

### Configuration

Modify `configs/charm_config.yaml` to adjust training parameters:

- Batch size
- Learning rate
- Number of epochs
- Model architecture
- Data augmentation

## 🔬 Evaluation

### Test Pre-trained Models

```bash
# Evaluate on a single dataset
python test.py --config configs/charm_config.yaml --checkpoint checkpoints/charm_best.pth --dataset [dataset_name]

# Evaluate on all datasets
bash scripts/eval_all.sh
```

### Inference on Custom Images

```bash
python inference.py --config configs/charm_config.yaml --checkpoint checkpoints/charm_best.pth --input /path/to/image --output /path/to/output
```

## 📥 Pre-trained Models

We provide pre-trained models for different configurations:

| Model | Backbone | Dataset | mIoU | Download |
|-------|----------|---------|------|----------|
| CHARM-Base | ResNet-50 | Dataset1 | XX.X% | [model]() |
| CHARM-Large | ResNet-101 | Dataset1 | XX.X% | [model]() |
| CHARM-Base | ResNet-50 | Dataset2 | XX.X% | [model]() |

Download and place the models in the `checkpoints/` directory.

## 📈 Results

### Quantitative Results

#### Performance on Dataset 1

| Method | mIoU | FPS | Params |
|--------|------|-----|--------|
| Method A | XX.X | XX | XXM |
| Method B | XX.X | XX | XXM |
| **CHARM (Ours)** | **XX.X** | **XX** | **XXM** |

#### Performance on Dataset 2

| Method | mIoU | FPS | Params |
|--------|------|-----|--------|
| Method A | XX.X | XX | XXM |
| Method B | XX.X | XX | XXM |
| **CHARM (Ours)** | **XX.X** | **XX** | **XXM** |

### Qualitative Results

*[Add visualizations and qualitative comparisons here]*

## 📝 Citation

If you find this work useful for your research, please cite our paper:

```bibtex
@inproceedings{charm2025,
  title={CHARM: Collaborative Harmonization across Arbitrary Modalities for Modality-agnostic Semantic Segmentation},
  author={[Author Names]},
  booktitle={Proceedings of the AAAI Conference on Artificial Intelligence (AAAI)},
  year={2025}
}
```

## 🙏 Acknowledgments

This work was supported by [funding sources]. We thank [collaborators/institutions] for their valuable contributions and feedback.

We also acknowledge the following open-source projects:

- [Project 1]()
- [Project 2]()
- [Project 3]()

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📧 Contact

For questions and discussions, please open an issue or contact:

- **Author Name**: [email@example.com]
- **Project Maintainer**: [email@example.com]

## 🌟 Star History

If you find this project helpful, please consider giving it a star ⭐!

[![Star History Chart](https://api.star-history.com/svg?repos=wenlk3/CHARM&type=Date)](https://star-history.com/#wenlk3/CHARM&Date)
