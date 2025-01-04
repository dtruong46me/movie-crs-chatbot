#!/bin/bash

# Function to display help message
show_help() {
    echo "Usage: $0 [-d DATASET] [-m MODEL] [-e EPOCHS]"
    echo "  -d DATASET   Path to the dataset"
    echo "  -m MODEL     Model name or path"
    echo "  -e EPOCHS    Number of epochs for training"
}

# Default values
DATASET=""
MODEL=""
EPOCHS=10

# Parse command line arguments
while getopts ":d:m:e:h" opt; do
    case ${opt} in
        d )
            DATASET=$OPTARG
            ;;
        m )
            MODEL=$OPTARG
            ;;
        e )
            EPOCHS=$OPTARG
            ;;
        h )
            show_help
            exit 0
            ;;
        \? )
            echo "Invalid option: -$OPTARG" 1>&2
            show_help
            exit 1
            ;;
        : )
            echo "Invalid option: -$OPTARG requires an argument" 1>&2
            show_help
            exit 1
            ;;
    esac
done

# Check if required arguments are provided
if [ -z "$DATASET" ] || [ -z "$MODEL" ]; then
    echo "Error: Dataset and Model are required." 1>&2
    show_help
    exit 1
fi

# Training process (dummy command)
echo "Starting training with the following parameters:"
echo "Dataset: $DATASET"
echo "Model: $MODEL"
echo "Epochs: $EPOCHS"

# Replace the following line with the actual training command
python train.py --dataset "$DATASET" --model "$MODEL" --epochs "$EPOCHS"