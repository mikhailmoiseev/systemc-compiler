//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
    input logic clk
);

// Variables generated for SystemC signals
logic arstn;
logic signed [31:0] out;
logic signed [31:0] in;
logic s;
logic signed [31:0] s1;
logic signed [31:0] s2;
logic signed [31:0] s3;
logic signed [31:0] s4;

//------------------------------------------------------------------------------
// Clocked THREAD: const1 (test_if_const.cpp:41:5) 

// Thread-local variables
logic signed [31:0] s1_next;

// Thread-local constants
logic A;
logic B;

// Next-state combinational logic
always_comb begin : const1_comb     // test_if_const.cpp:41:5
    const1_func;
end
function void const1_func;
    s1_next = s1;
    if (A || s)
    begin
        s1_next = 1;
    end
    if (s || A)
    begin
        s1_next = 2;
    end
    if (s && B && s)
    begin
        s1_next = 3;
    end
    if (A || B && |s1 || 0)
    begin
        s1_next = 4;
    end
    if (|s1 && B && (|s2 || 0))
    begin
        s1_next = 5;
    end
    if ((|s1 && |s2 || B && |s3 && (!A && !B)))
    begin
        s1_next = 6;
    end
    if ((|s1 || |s2 && !B) || A || |s3)
    begin
        s1_next = 7;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : const1_ff
    if ( ~arstn ) begin
        A = 0;
        B = 1;
        s1 <= 0;
    end
    else begin
        s1 <= s1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: const_wait1 (test_if_const.cpp:77:5) 

// Thread-local variables
logic signed [31:0] s4_next;
logic [2:0] const_wait1_PROC_STATE;
logic [2:0] const_wait1_PROC_STATE_next;

// Thread-local constants
logic A0;
logic B0;

// Next-state combinational logic
always_comb begin : const_wait1_comb     // test_if_const.cpp:77:5
    const_wait1_func;
end
function void const_wait1_func;
    s4_next = s4;
    const_wait1_PROC_STATE_next = const_wait1_PROC_STATE;
    
    case (const_wait1_PROC_STATE)
        0: begin
            if (s || A0)
            begin
                s4_next = 1;
                const_wait1_PROC_STATE_next = 1; return;    // test_if_const.cpp:88:17;
            end
            if (0 || s == 1)
            begin
                s4_next = 3;
                const_wait1_PROC_STATE_next = 2; return;    // test_if_const.cpp:96:17;
            end
            const_wait1_PROC_STATE_next = 3; return;    // test_if_const.cpp:99:13;
        end
        1: begin
            if (0 || s == 1)
            begin
                s4_next = 3;
                const_wait1_PROC_STATE_next = 2; return;    // test_if_const.cpp:96:17;
            end
            const_wait1_PROC_STATE_next = 3; return;    // test_if_const.cpp:99:13;
        end
        2: begin
            const_wait1_PROC_STATE_next = 3; return;    // test_if_const.cpp:99:13;
        end
        3: begin
            if ((|s1 || !(|s2 && B0) && s3 < 3))
            begin
                s4_next = 5;
                const_wait1_PROC_STATE_next = 4; return;    // test_if_const.cpp:107:17;
            end
            if (s || A0)
            begin
                s4_next = 1;
                const_wait1_PROC_STATE_next = 1; return;    // test_if_const.cpp:88:17;
            end
            if (0 || s == 1)
            begin
                s4_next = 3;
                const_wait1_PROC_STATE_next = 2; return;    // test_if_const.cpp:96:17;
            end
            const_wait1_PROC_STATE_next = 3; return;    // test_if_const.cpp:99:13;
        end
        4: begin
            if (s || A0)
            begin
                s4_next = 1;
                const_wait1_PROC_STATE_next = 1; return;    // test_if_const.cpp:88:17;
            end
            if (0 || s == 1)
            begin
                s4_next = 3;
                const_wait1_PROC_STATE_next = 2; return;    // test_if_const.cpp:96:17;
            end
            const_wait1_PROC_STATE_next = 3; return;    // test_if_const.cpp:99:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : const_wait1_ff
    if ( ~arstn ) begin
        A0 = 0;
        B0 = 1;
        s4 <= 0;
        const_wait1_PROC_STATE <= 0;    // test_if_const.cpp:82:9;
    end
    else begin
        s4 <= s4_next;
        const_wait1_PROC_STATE <= const_wait1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: compl_if (test_if_const.cpp:118:5) 

// Thread-local variables
logic signed [31:0] out_next;

// Next-state combinational logic
always_comb begin : compl_if_comb     // test_if_const.cpp:118:5
    compl_if_func;
end
function void compl_if_func;
    integer ii;
    out_next = out;
    if (|in)
    begin
        for (logic [63:0] i = 0; i < 3; ++i)
        begin
            if (|in)
            begin
                ii = 1;
            end
        end
    end
    out_next = -2'sd1;
    if (|in)
    begin
        out_next = 0;
    end
    if (in > 2)
    begin
        out_next = 1;
    end else begin
        out_next = 2;
    end
    if (in + in > 2)
    begin
    end else begin
        if (in < 0)
        begin
            out_next = 3;
        end else begin
            out_next = 4;
        end
    end
    case (in)
    0 : begin
        out_next = 5 + 0;
    end
    1 : begin
    end
    2 : begin
        out_next = 6;
    end
    default : begin
        if (in > 2)
        begin
            out_next = 7;
        end
    end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : compl_if_ff
    if ( ~arstn ) begin
        out <= 0;
    end
    else begin
        out <= out_next;
    end
end

endmodule


