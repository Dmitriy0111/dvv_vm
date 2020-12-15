/*
*  File            :   dvv_root.sv
*  Autor           :   Vlasov D.V.
*  Data            :   2020.12.15
*  Language        :   SystemVerilog
*  Description     :   This is dvv root class
*  Copyright(c)    :   2019 - 2020 Vlasov D.V.
*/

`ifndef DVV_ROOT__SV
`define DVV_ROOT__SV

class dvv_root extends dvv_bc;

    dvv_phase   phase;
    dvv_bc      test;
    string      test_name;

    extern function new(string name = "", dvv_bc parent = null);

    extern virtual task run_test(string name = "");
    
endclass : dvv_root

function dvv_root::new(string name = "", dvv_bc parent = null);
    super.new(name,parent);
    phase = new("test_phase", this);
    fp = $fopen("sim.log","w");
endfunction : new

task dvv_root::run_test(string name = "");

    if( test_name != "" )
        test = type_bc[test_name].create_obj(test_name,this);
    else if( $value$plusargs("DVV_TEST=%s", test_name) ) 
        test = type_bc[test_name].create_obj(test_name,this);
    else
        $fatal;

    phase.build();
    print("Testbench map:\n");
    this.print_map();
    phase.connect();
    phase.run();
    phase.clean_up();
    phase.report();
endtask : run_test

`endif // DVV_ROOT__SV