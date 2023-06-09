//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;

//------------------------------------------------------------------------------
// Clocked THREAD: record_ro (test_reg_cthread0.cpp:44:5) 

// Thread-local constants
logic signed [31:0] a;
logic signed [31:0] r_sin;

// Next-state combinational logic
always_comb begin : record_ro_comb     // test_reg_cthread0.cpp:44:5
    record_ro_func;
end
function void record_ro_func;
    integer r_cos;
    integer b;
    b = a;
    b = r_sin;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_ro_ff
    if ( ~rstn ) begin
        integer r_cos;
        r_sin = 1;
        r_cos = 2;
        a = 1;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: record_comb (test_reg_cthread0.cpp:57:5) 

// Next-state combinational logic
always_comb begin : record_comb_comb     // test_reg_cthread0.cpp:57:5
    record_comb_func;
end
function void record_comb_func;
    integer r_sin_1;
    integer r_cos;
    integer b;
    r_sin_1 = 1;
    r_cos = 2;
    r_sin_1 = 3;
    b = r_sin_1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_comb_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: record_reg (test_reg_cthread0.cpp:69:5) 

// Thread-local variables
logic signed [31:0] r_sin0;
logic signed [31:0] r_sin_next;
logic record_reg_PROC_STATE;
logic record_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : record_reg_comb     // test_reg_cthread0.cpp:69:5
    record_reg_func;
end
function void record_reg_func;
    integer r_cos;
    integer b;
    r_sin_next = r_sin0;
    record_reg_PROC_STATE_next = record_reg_PROC_STATE;
    
    case (record_reg_PROC_STATE)
        0: begin
            r_sin_next = 1;
            r_cos = 2;
            record_reg_PROC_STATE_next = 1; return;    // test_reg_cthread0.cpp:74:13;
        end
        1: begin
            b = r_sin_next;
            r_sin_next = 3;
            r_sin_next = 1;
            r_cos = 2;
            record_reg_PROC_STATE_next = 1; return;    // test_reg_cthread0.cpp:74:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_reg_ff
    if ( ~rstn ) begin
        record_reg_PROC_STATE <= 0;    // test_reg_cthread0.cpp:70:9;
    end
    else begin
        r_sin0 <= r_sin_next;
        record_reg_PROC_STATE <= record_reg_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: record_reg1 (test_reg_cthread0.cpp:81:5) 

// Thread-local variables
logic signed [31:0] r_sin1;
logic signed [31:0] r_sin_next0;

// Next-state combinational logic
always_comb begin : record_reg1_comb     // test_reg_cthread0.cpp:81:5
    record_reg1_func;
end
function void record_reg1_func;
    integer b;
    r_sin_next0 = r_sin1;
    b = r_sin_next0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_reg1_ff
    if ( ~rstn ) begin
        integer r_cos;
        r_sin1 <= 1;
        r_cos = 2;
    end
    else begin
        r_sin1 <= r_sin_next0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: record_reg2 (test_reg_cthread0.cpp:93:5) 

// Thread-local variables
logic signed [31:0] s_cos;
logic signed [31:0] s_cos_next;
logic signed [31:0] r_sin2;
logic signed [31:0] r_sin_next1;

// Next-state combinational logic
always_comb begin : record_reg2_comb     // test_reg_cthread0.cpp:93:5
    record_reg2_func;
end
function void record_reg2_func;
    integer b;
    r_sin_next1 = r_sin2;
    s_cos_next = s_cos;
    b = r_sin_next1 + s_cos_next;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_reg2_ff
    if ( ~rstn ) begin
        integer r_cos;
        integer s_sin;
        r_sin2 <= 1;
        r_cos = 2;
        s_sin = 1;
        s_cos <= 2;
    end
    else begin
        s_cos <= s_cos_next;
        r_sin2 <= r_sin_next1;
    end
end

endmodule


