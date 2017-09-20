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
      location: ../tools/psiblast.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
  database:
    type: string 
    inputBinding:
      position: 8
      prefix: --database
#    default: '$defaultValue'

  title:
    type: string       
    inputBinding:
      position: 12
      prefix: --title
#    default: '$defaultValue'

  matrix:
    type: string       
    inputBinding:
      position: 13
      prefix: --matrix
#    default: '$defaultValue'

  gapopen:
    type: int          
    inputBinding:
      position: 14
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: int          
    inputBinding:
      position: 15
      prefix: --gapext
#    default: '$defaultValue'

  expthr:
    type: double       
    inputBinding:
      position: 16
      prefix: --expthr
#    default: '$defaultValue'

  psithr:
    type: double       
    inputBinding:
      position: 17
      prefix: --psithr
#    default: '$defaultValue'

  scores:
    type: int          
    inputBinding:
      position: 18
      prefix: --scores
#    default: '$defaultValue'

  alignments:
    type: int          
    inputBinding:
      position: 19
      prefix: --alignments
#    default: '$defaultValue'

  alignView:
    type: int          
    inputBinding:
      position: 20
      prefix: --alignView
#    default: '$defaultValue'

  dropoff:
    type: int          
    inputBinding:
      position: 21
      prefix: --dropoff
#    default: '$defaultValue'

  finaldropoff:
    type: int          
    inputBinding:
      position: 22
      prefix: --finaldropoff
#    default: '$defaultValue'

  filter:
    type: string       
    inputBinding:
      position: 23
      prefix: --filter
#    default: '$defaultValue'

  seqrange:
    type: string       
    inputBinding:
      position: 24
      prefix: --seqrange
#    default: '$defaultValue'

  previousjobid:
    type: string       
    inputBinding:
      position: 25
      prefix: --previousjobid
#    default: '$defaultValue'

  selectedHits:
    type: base64Binary 
    inputBinding:
      position: 26
      prefix: --selectedHits
#    default: '$defaultValue'

  cpfile:
    type: base64Binary 
    inputBinding:
      position: 27
      prefix: --cpfile
#    default: '$defaultValue'

  umode:
    type: string       
    inputBinding:
      position: 28
      prefix: --umode
#    default: '$defaultValue'

  patfile:
    type: base64Binary 
    inputBinding:
      position: 29
      prefix: --patfile
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
