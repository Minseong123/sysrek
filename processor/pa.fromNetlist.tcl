
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name processor -dir "/home/vka/Programming/VHDL/workspace/sysrek/processor/planAhead_run_1" -part xc6slx45csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/vka/Programming/VHDL/workspace/sysrek/processor/processor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/vka/Programming/VHDL/workspace/sysrek/processor} }
set_property target_constrs_file "AtlysGeneralCPU.ucf" [current_fileset -constrset]
add_files [list {AtlysGeneralCPU.ucf}] -fileset [get_property constrset [current_run]]
link_design
