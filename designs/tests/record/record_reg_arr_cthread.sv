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
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Clocked THREAD: record_arr_reg (test_reg_arr_cthread.cpp:35:5) 

// Thread-local variables
logic signed [31:0] r_sin[2];
logic signed [31:0] r_sin_next[2];
logic record_arr_reg_PROC_STATE;
logic record_arr_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : record_arr_reg_comb     // test_reg_arr_cthread.cpp:35:5
    record_arr_reg_func;
end
function void record_arr_reg_func;
    integer r_cos[2];
    integer i;
    integer b;
    r_sin_next = r_sin;
    record_arr_reg_PROC_STATE_next = record_arr_reg_PROC_STATE;
    
    case (record_arr_reg_PROC_STATE)
        0: begin
            i = s;
            b = r_sin_next[i];
            record_arr_reg_PROC_STATE_next = 1; return;    // test_reg_arr_cthread.cpp:43:13;
        end
        1: begin
            r_sin_next[1] = 3;
            i = s;
            b = r_sin_next[i];
            record_arr_reg_PROC_STATE_next = 1; return;    // test_reg_arr_cthread.cpp:43:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_arr_reg_ff
    if ( ~rstn ) begin
        integer r_cos[2];
        record_arr_reg_PROC_STATE <= 0;    // test_reg_arr_cthread.cpp:38:9;
    end
    else begin
        r_sin <= r_sin_next;
        record_arr_reg_PROC_STATE <= record_arr_reg_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: record_arr_glob_reg (test_reg_arr_cthread.cpp:51:5) 

// Thread-local variables
logic signed [31:0] gra_sin[2];
logic signed [31:0] gra_sin_next[2];
logic record_arr_glob_reg_PROC_STATE;
logic record_arr_glob_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : record_arr_glob_reg_comb     // test_reg_arr_cthread.cpp:51:5
    record_arr_glob_reg_func;
end
function void record_arr_glob_reg_func;
    integer b;
    gra_sin_next = gra_sin;
    record_arr_glob_reg_PROC_STATE_next = record_arr_glob_reg_PROC_STATE;
    
    case (record_arr_glob_reg_PROC_STATE)
        0: begin
            gra_sin_next[0] = 1;
            record_arr_glob_reg_PROC_STATE_next = 1; return;    // test_reg_arr_cthread.cpp:56:13;
        end
        1: begin
            b = gra_sin_next[0];
            gra_sin_next[0] = 1;
            record_arr_glob_reg_PROC_STATE_next = 1; return;    // test_reg_arr_cthread.cpp:56:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_arr_glob_reg_ff
    if ( ~rstn ) begin
        record_arr_glob_reg_PROC_STATE <= 0;    // test_reg_arr_cthread.cpp:52:9;
    end
    else begin
        gra_sin <= gra_sin_next;
        record_arr_glob_reg_PROC_STATE <= record_arr_glob_reg_PROC_STATE_next;
    end
end

endmodule


