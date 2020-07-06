
import os

file_names = ['train', 'dev', 'test', 'train_notypes', 'dev_notypes', 'test_notypes']

for file_name in file_names:
    with open(file_name, 'r') as file:
        input = []
        label = []
        for line in file:
            if line == '\n':
                input_line = ' '.join(input)
                label_line = ' '.join(label)
                print('Input:')
                print(input_line)
                print('Label:')
                print(label_line)
                with open(file_name + '.input', 'a+') as output_file:
                    output_file.write(input_line + '\n')
                with open(file_name + '.label', 'a+') as output_file:
                    output_file.write(label_line + '\n')
                input = []
                label = []

            else:
                fields = line.strip().split('\t')
                input.append(fields[0])
                label.append(fields[1])
