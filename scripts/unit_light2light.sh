nvidia-docker run --rm -it \
	-v /mnt/fcav/3D-lighting/dataset/light2light:/mnt/fcav/3D-lighting/dataset/light2light \
	-v /mnt/fcav/3D-lighting/UNIT/results:/mnt/fcav/3D-lighting/UNIT/results \
	-v `pwd`/:/root \
	unit \
python train.py \
    --config configs/unit_light2light.yaml \
    --trainer UNIT \
    --output_path /mnt/fcav/3D-lighting/UNIT/results