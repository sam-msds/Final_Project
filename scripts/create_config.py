import yaml

with open('custom_config.yaml','r') as f:
    contents = yaml.load(f, Loader=yaml.Loader)
    for i in range(0,19):
        contents['n_class_custom'] = i
        newFileName = "custom_config_class"+str(i)+".yaml"
        with open(newFileName,'w') as outputFile:
            yaml.dump(contents, outputFile)
