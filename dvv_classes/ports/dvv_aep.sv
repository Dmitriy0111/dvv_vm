/*
*  File            :   dvv_aep.sv
*  Autor           :   Vlasov D.V.
*  Data            :   2020.01.10
*  Language        :   SystemVerilog
*  Description     :   This is dvv analysis export class
*  Copyright(c)    :   2019 - 2020 Vlasov D.V.
*/

`ifndef DVV_AEP__SV
`define DVV_AEP__SV

class dvv_aep #(type item_type) extends dvv_bp #(item_type);

    extern function void write(item_type item);

endclass : dvv_aep

function void dvv_aep::write(item_type item);
    foreach(bp_list[i])
        bp_list[i].write(item);
endfunction : write

`endif // DVV_AEP__SV