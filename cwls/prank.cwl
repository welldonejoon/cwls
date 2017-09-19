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
      location: tools/prank.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
  title:
    type: string       
    inputBinding:
      position: 4
      prefix: --title
#    default: '$defaultValue'

  data_file:
    type: base64Binary 
    inputBinding:
      position: 5
      prefix: --data_file
#    default: '$defaultValue'

  tree_file:
    type: base64Binary 
    inputBinding:
      position: 6
      prefix: --tree_file
#    default: '$defaultValue'

  do_njtree:
    type: boolean      
    inputBinding:
      position: 7
      prefix: --do_njtree
#    default: '$defaultValue'

  do_clustalw_tree:
    type: boolean      
    inputBinding:
      position: 8
      prefix: --do_clustalw_tree
#    default: '$defaultValue'

  model_file:
    type: base64Binary 
    inputBinding:
      position: 9
      prefix: --model_file
#    default: '$defaultValue'

  output_format:
    type: string       
    inputBinding:
      position: 10
      prefix: --output_format
#    default: '$defaultValue'

  trust_insertions:
    type: boolean      
    inputBinding:
      position: 11
      prefix: --trust_insertions
#    default: '$defaultValue'

  show_insertions_with_dots:
    type: boolean      
    inputBinding:
      position: 12
      prefix: --show_insertions_with_dots
#    default: '$defaultValue'

  use_log_space:
    type: boolean      
    inputBinding:
      position: 13
      prefix: --use_log_space
#    default: '$defaultValue'

  use_codon_model:
    type: boolean      
    inputBinding:
      position: 14
      prefix: --use_codon_model
#    default: '$defaultValue'

  translate_DNA:
    type: boolean      
    inputBinding:
      position: 15
      prefix: --translate_DNA
#    default: '$defaultValue'

  mt_translate_DNA:
    type: boolean      
    inputBinding:
      position: 16
      prefix: --mt_translate_DNA
#    default: '$defaultValue'

  gap_rate:
    type: float        
    inputBinding:
      position: 17
      prefix: --gap_rate
#    default: '$defaultValue'

  gap_extension:
    type: float        
    inputBinding:
      position: 18
      prefix: --gap_extension
#    default: '$defaultValue'

  tn93_kappa:
    type: float        
    inputBinding:
      position: 19
      prefix: --tn93_kappa
#    default: '$defaultValue'

  tn93_rho:
    type: float        
    inputBinding:
      position: 20
      prefix: --tn93_rho
#    default: '$defaultValue'

  guide_pairwise_distance:
    type: float        
    inputBinding:
      position: 21
      prefix: --guide_pairwise_distance
#    default: '$defaultValue'

  max_pairwise_distance:
    type: float        
    inputBinding:
      position: 22
      prefix: --max_pairwise_distance
#    default: '$defaultValue'

  branch_length_scaling:
    type: float        
    inputBinding:
      position: 23
      prefix: --branch_length_scaling
#    default: '$defaultValue'

  branch_length_fixed:
    type: float        
    inputBinding:
      position: 24
      prefix: --branch_length_fixed
#    default: '$defaultValue'

  branch_length_maximum:
    type: float        
    inputBinding:
      position: 25
      prefix: --branch_length_maximum
#    default: '$defaultValue'

  use_real_branch_lengths:
    type: boolean      
    inputBinding:
      position: 26
      prefix: --use_real_branch_lengths
#    default: '$defaultValue'

  do_no_posterior:
    type: boolean      
    inputBinding:
      position: 27
      prefix: --do_no_posterior
#    default: '$defaultValue'

  run_once:
    type: boolean      
    inputBinding:
      position: 28
      prefix: --run_once
#    default: '$defaultValue'

  run_twice:
    type: boolean      
    inputBinding:
      position: 29
      prefix: --run_twice
#    default: '$defaultValue'

  penalise_terminal_gaps:
    type: boolean      
    inputBinding:
      position: 30
      prefix: --penalise_terminal_gaps
#    default: '$defaultValue'

  do_posterior_only:
    type: boolean      
    inputBinding:
      position: 31
      prefix: --do_posterior_only
#    default: '$defaultValue'

  use_chaos_anchors:
    type: boolean      
    inputBinding:
      position: 32
      prefix: --use_chaos_anchors
#    default: '$defaultValue'

  minimum_anchor_distance:
    type: int          
    inputBinding:
      position: 33
      prefix: --minimum_anchor_distance
#    default: '$defaultValue'

  maximum_anchor_distance:
    type: int          
    inputBinding:
      position: 34
      prefix: --maximum_anchor_distance
#    default: '$defaultValue'

  skip_anchor_distance:
    type: int          
    inputBinding:
      position: 35
      prefix: --skip_anchor_distance
#    default: '$defaultValue'

  drop_anchor_distance:
    type: int          
    inputBinding:
      position: 36
      prefix: --drop_anchor_distance
#    default: '$defaultValue'

  output_ancestors:
    type: boolean      
    inputBinding:
      position: 37
      prefix: --output_ancestors
#    default: '$defaultValue'

  noise_level:
    type: int          
    inputBinding:
      position: 38
      prefix: --noise_level
#    default: '$defaultValue'

  stay_quiet:
    type: boolean      
    inputBinding:
      position: 39
      prefix: --stay_quiet
#    default: '$defaultValue'

  random_seed:
    type: int          
    inputBinding:
      position: 40
      prefix: --random_seed
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
