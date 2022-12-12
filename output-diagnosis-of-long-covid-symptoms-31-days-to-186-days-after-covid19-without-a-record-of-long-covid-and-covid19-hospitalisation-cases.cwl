$namespaces:
  s: http://phenomics.kcl.ac.uk/phenoflow/
baseCommand: python
class: CommandLineTool
cwlVersion: v1.0
doc: Output cases
id: output-diagnosis-of-long-covid-symptoms-31-days-to-186-days-after-covid19-without-a-record-of-long-covid-and-covid19-hospitalisation-cases
inputs:
- doc: Python implementation unit
  id: inputModule
  inputBinding:
    position: 1
  type: File
- doc: Potential cases of Long covid
  id: potentialCases
  inputBinding:
    position: 2
  type: File
outputs:
- doc: Output containing patients flagged as having this type of Long covid
  id: output
  outputBinding:
    glob: '*.csv'
  type: File
requirements:
  DockerRequirement:
    dockerPull: kclhi/python:latest
s:type: output
