#!/bin/bash

# Script to evaluate CHARM on all supported datasets

echo "Starting evaluation on all datasets..."

# Checkpoint path
CHECKPOINT="checkpoints/charm_best.pth"
CONFIG="configs/charm_config.yaml"

# Check if checkpoint exists
if [ ! -f "$CHECKPOINT" ]; then
    echo "Error: Checkpoint not found at $CHECKPOINT"
    exit 1
fi

# Evaluate on each dataset
datasets=("cityscapes" "ade20k" "nyu_v2")

for dataset in "${datasets[@]}"; do
    echo "======================================"
    echo "Evaluating on $dataset..."
    echo "======================================"
    
    python test.py \
        --config $CONFIG \
        --checkpoint $CHECKPOINT \
        --dataset $dataset \
        --output_dir outputs/$dataset
    
    if [ $? -eq 0 ]; then
        echo "✓ Evaluation on $dataset completed successfully"
    else
        echo "✗ Evaluation on $dataset failed"
    fi
done

echo "======================================"
echo "All evaluations completed!"
echo "======================================"
