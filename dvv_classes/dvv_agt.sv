/*
*  File            :   dvv_agt.sv
*  Autor           :   Vlasov D.V.
*  Data            :   2019.12.25
*  Language        :   SystemVerilog
*  Description     :   This is dvv agent class
*  Copyright(c)    :   2019 Vlasov D.V.
*/

`ifndef DVV_AGT__SV
`define DVV_AGT__SV

class dvv_agt #(type seq_type) extends dvv_bc;

    dvv_drv #(seq_type) drv;
    dvv_mon #(seq_type) mon;

    extern         function new(string name = "", dvv_bc parent = null);
    extern virtual task     build();
    extern virtual task     run();
    
endclass : dvv_agt

function dvv_agt::new(string name = "", dvv_bc parent = null);
    super.new(name,parent);
endfunction : new

task dvv_agt::build();
endtask : build
task dvv_agt::run();
endtask : run

`endif // DVV_AGT__SV
