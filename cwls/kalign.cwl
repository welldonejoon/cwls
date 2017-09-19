# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: perl 
inputs:

  command: 
    type: File
    inputBinding:
      position: 0
       
    default:
      class: File
      location: tools/kalign.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
  stype:
    type: string 
    inputBinding:
      position: 8
      prefix: --stype
#    default: '$defaultValue'

  title:
    type: string 
    inputBinding:
      position: 12
      prefix: --title
#    default: '$defaultValue'

  format:
    type: string 
    inputBinding:
      position: 13
      prefix: --format
#    default: '$defaultValue'

  gapopen:
    type: float  
    inputBinding:
      position: 14
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: float  
    inputBinding:
      position: 15
      prefix: --gapext
#    default: '$defaultValue'

  termgap:
    type: float  
    inputBinding:
      position: 16
      prefix: --termgap
#    default: '$defaultValue'

  bonus:
    type: float  
    inputBinding:
      position: 17
      prefix: --bonus
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
