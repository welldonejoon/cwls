# Common Workflow Language EBI tool implementation
This is CWL implementation for consuming EMBL-EBI Web Services tools' clients.

### How to install cwltool
* [cwltool](https://github.com/common-workflow-language/cwltool) is required to run cwl.

### How to run
You will need cwl-runner as officially instructed here [cwltool](https://github.com/common-workflow-language/cwltool)
You could find predefined parameters in cwl (./cwls/) and mostly paired yml(./ymls/) file. 
Remember, before running cwl, you could redefined with your own values of parameters like email account. 

```
cwl-runner ./cwls/tcoffee.cwl ./ymls/tcoffee.yml
```

