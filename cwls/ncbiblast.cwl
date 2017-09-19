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
      location: tools/ncbiblast.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
  program:
    type: string        
    inputBinding:
      position: 8
      prefix: --program
#    default: '$defaultValue'

  stype:
    type: string        
    inputBinding:
      position: 16
      prefix: --stype
#    default: '$defaultValue'

  database:
    type: string
    inputBinding:
      position: 24
      prefix: --database
#    default: '$defaultValue'

  title:
    type: string  
    inputBinding:
      position: 28
      prefix: --title
#    default: '$defaultValue'

  task:
    type: string  
    inputBinding:
      position: 29
      prefix: --task
#    default: '$defaultValue'

  matrix:
    type: string  
    inputBinding:
      position: 30
      prefix: --matrix
#    default: '$defaultValue'

  alignments:
    type: int     
    inputBinding:
      position: 31
      prefix: --alignments
#    default: '$defaultValue'

  scores:
    type: int     
    inputBinding:
      position: 32
      prefix: --scores
#    default: '$defaultValue'

  exp:
    type: string  
    inputBinding:
      position: 33
      prefix: --exp
#    default: '$defaultValue'

  dropoff:
    type: int     
    inputBinding:
      position: 34
      prefix: --dropoff
#    default: '$defaultValue'

  match_scores:
    type: string  
    inputBinding:
      position: 35
      prefix: --match_scores
#    default: '$defaultValue'

  gapopen:
    type: int     
    inputBinding:
      position: 36
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: int     
    inputBinding:
      position: 37
      prefix: --gapext
#    default: '$defaultValue'

  filter:
    type: string  
    inputBinding:
      position: 38
      prefix: --filter
#    default: '$defaultValue'

  seqrange:
    type: string  
    inputBinding:
      position: 39
      prefix: --seqrange
#    default: '$defaultValue'

  gapalign:
    type: boolean 
    inputBinding:
      position: 40
      prefix: --gapalign
#    default: '$defaultValue'

  compstats:
    type: string  
    inputBinding:
      position: 41
      prefix: --compstats
#    default: '$defaultValue'

  align:
    type: int     
    inputBinding:
      position: 42
      prefix: --align
#    default: '$defaultValue'

  transltable:
    type: int     
    inputBinding:
      position: 43
      prefix: --transltable
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
