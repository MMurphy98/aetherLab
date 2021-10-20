import os
import shutil


def get_schematic(pwd, sorted_pwd):
    #   get all the schematics from the each directory
    name_list = os.listdir(pwd)
    file_count = 0
    src_dir = 'competition\\Miller#2dOTA\\schematic'
    target_dir = os.path.abspath(sorted_pwd)

    for i in name_list:
        print(i)
        source_path = os.path.join(os.path.abspath(pwd), i, src_dir)
        sch_ren = 'schematic_' + str(i)
        target_path = os.path.join(target_dir, sch_ren)
        
        if not os.path.exists(target_path):
            os.makedirs(target_path)

        if os.path.exists(source_path):
            for root, dirs, files in os.walk(source_path):
                for file in files:
                    src_file = os.path.join(root, file)
                    shutil.copy(src_file, target_path)
                    file_count += 1
    
    return int(file_count)
        






if __name__ == '__main__':
    # doc = os.listdir()
    # for i in doc:
    #     print(i)
    getschematic('./source/schematic', './source/schematic/Miller#2dOTA')
    print("hello world")