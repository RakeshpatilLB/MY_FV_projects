#TCL fil compatible with JASPER FPV 
#loads design, package, system verilog assertion files and runs the proof 
analyze -sv {/home/vlsilab/cva6/core/include/config_pkg.sv}
analyze -sv {/home/vlsilab/cva6/core/include/cv32a65x_config_pkg.sv}
analyze -sv {/home/vlsilab/cva6/core/include/riscv_pkg.sv}
analyze -sv {/home/vlsilab/cva6/core/include/ariane_pkg.sv}
analyze -sv {/home/vlsilab/cva6/core/include/build_config_pkg.sv}
analyze -sv {/home/vlsilab/cva6/vendor/pulp-platform/common_cells/src/cf_math_pkg.sv}
analyze -sv {/home/vlsilab/cva6/vendor/pulp-platform/common_cells/src/popcount.sv}
analyze -sv {/home/vlsilab/cva6/vendor/pulp-platform/common_cells/src/lzc.sv}


analyze -sv {/home/vlsilab/CVA_jg_example/formal_pkg.sv}
analyze -sv {/home/vlsilab/CVA_jg_example/alu.sv}
analyze -sv {/home/vlsilab/CVA_jg_example/alu_fv.sva}


elaborate -top alu
clock -none 
reset -none
prove -bg -all


