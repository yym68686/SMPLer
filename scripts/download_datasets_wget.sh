# for filename in Tax-H36m-coco40k-Muco-UP-Mpii.tar human3.6m.tar coco_smpl.tar muco.tar up3d.tar mpii.tar 3dpw.tar
for filename in Tax-H36m-coco40k-Muco-UP-Mpii.tar coco_smpl.tar muco.tar up3d.tar mpii.tar 3dpw.tar
do
    # 获取文件夹名称（假设文件夹名称与 tar 文件名相同，只是去掉 .tar 后缀）
    foldername="${filename%.tar}"

    # 检查文件夹是否存在
    if [ -d "$foldername" ]; then
        echo "Folder $foldername already exists, skipping download."
        continue
    fi

    # 下载、解压和删除 tar 文件
    wget "https://datarelease.blob.core.windows.net/metro/datasets/${filename}"
    tar xvf ${filename}
    rm ${filename}
done