analyze -sv {/home/vlsilab/cva6/core/include/config_pkg.sv}
analyze -sv {/home/vlsilab/cva6/core/include/cv32a6_imac_sv32_config_pkg.sv}
analyze -sv {/home/vlsilab/cva6/core/include/riscv_pkg.sv}
analyze -sv {/home/vlsilab/cva6/core/include/ariane_pkg.sv}
analyze -sv {/home/vlsilab/cva6/core/include/build_config_pkg.sv}
analyze -sv {/home/vlsilab/cva6/vendor/pulp-platform/common_cells/src/cf_math_pkg.sv}

analyze -sv {/home/vlsilab/CVA_jg_example/PMP_FV/pmp_formal_pkg.sv}
analyze -sv {/home/vlsilab/CVA_jg_example/PMP_FV/pmp_data_if.sv}
analyze -sv {/home/vlsilab/cva6/core/pmp/src/pmp.sv}
analyze -sv {/home/vlsilab/cva6/core/pmp/src/pmp_entry.sv}


analyze -sv {/home/vlsilab/cva6/vendor/pulp-platform/common_cells/src/popcount.sv}
analyze -sv {/home/vlsilab/cva6/vendor/pulp-platform/common_cells/src/lzc.sv}

#analyze -sv {/home/vlsilab/CVA_jg_example/PMP_FV/pmp_data_if_fv.sva}
analyze -sv {/home/vlsilab/CVA_jg_example/PMP_FV/props.sva}

elaborate -top pmp_data_if

clock clk_i -factor 1 -phase 1
reset -expression !(rst_ni)




