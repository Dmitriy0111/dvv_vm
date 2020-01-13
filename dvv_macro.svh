/*
*  File            :   dvv_macro.svh
*  Autor           :   Vlasov D.V.
*  Data            :   2019.12.26
*  Language        :   SystemVerilog
*  Description     :   This is dvv macroses
*  Copyright(c)    :   2019 - 2020 Vlasov D.V.
*/

`ifndef DVV_MACRO__SV
`define DVV_MACRO__SV

`define OBJ_BEGIN(T) \
    typedef dvv_cc #(T) create;

/*
    MACRO `dvv_ap_decl(SCR)
    -- Example of using dvv_ap_decl macro:

    `ifndef EXAMPLE__SV
    `define EXAMPLE__SV

    `dvv_ap_decl(_oth_1)
    `dvv_ap_decl(_oth_2)

    class example extends dvv_scr #(int);
        `OBJ_BEGIN( example )

        typedef example example_t;

        int                                 item_0;
        int                                 item_1;
        int                                 item_2;
        
        dvv_ap_oth_1    #(int,example_t)    ex_ap_1;
        dvv_ap_oth_2    #(int,example_t)    ex_ap_2;

        extern function new(string name = "", dvv_bc parent = null);

        extern function write(int item);

        extern function write_oth_1(int item);
        extern function write_oth_2(int item);
        
    endclass : example

    function example::new(string name = "", dvv_bc parent = null);
        super.new(name,parent);
        item_ap = new(this);
        ex_ap_1 = new(this);
        ex_ap_2 = new(this);
    endfunction : new

    function example::write(int item);
        item_0 = item;
        $info("Received item = %h", this.item_0);
    endfunction : write

    function example::write_oth_1(int item);
        item_1 = item;
        $info("Received item = %h", this.item_1);
    endfunction : write_oth_1

    function example::write_oth_2(int item);
        item_2 = item;
        $info("Received item = %h", this.item_2);
    endfunction : write_oth_2

    `endif // EXAMPLE__SV
*/

`define dvv_ap_decl(SCR) \
    class dvv_ap``SCR #(type item_type, type scr_type) extends dvv_bp #(item_type); \
 \
        scr_type        scr; \
 \
        extern         function new(scr_type scr = null); \
 \
        extern virtual function write(item_type item); \
 \
    endclass : dvv_ap``SCR \
 \
    function dvv_ap``SCR::new(scr_type scr = null); \
        this.scr = scr; \
    endfunction : new \
 \
    function dvv_ap``SCR::write(item_type item); \
        this.scr.write``SCR(item); \
    endfunction : write \

`endif // DVV_MACRO__SV
