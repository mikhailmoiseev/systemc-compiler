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
module A // "a_mod"
(
    input logic clk,
    input logic [3:0] in,
    output logic [3:0] qout,
    input logic [32:0] iarr1[4]
);

// Variables generated for SystemC signals
logic nrst;
logic [3:0] s;
logic [3:0] qs0;
logic [3:0] qs1;
logic [3:0] s0;
logic [3:0] s1;
logic [32:0] parr1[4];
logic [41:0] parr2[4][5];
logic signed [64:0] parr3[4][5][5];

// Local parameters generated for C++ constants
localparam logic [31:0] N = 4;
localparam logic [31:0] M = 5;
localparam logic [31:0] K = 5;

//------------------------------------------------------------------------------
// Clocked THREAD: var_ptr1 (test_pointers.cpp:101:5) 

// Thread-local variables
logic [3:0] v0;
logic [3:0] v0_next;
logic [3:0] v1;

// Next-state combinational logic
always_comb begin : var_ptr1_comb     // test_pointers.cpp:101:5
    var_ptr1_func;
end
function void var_ptr1_func;
    integer j;
    v0_next = v0;
    v1 = s;
    j = v0_next + v1;
    v0_next = v1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : var_ptr1_ff
    if ( ~nrst ) begin
        logic [3:0] v1;
        v0 <= 0;
        v1 = 1;
    end
    else begin
        v0 <= v0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: var_ptr2 (test_pointers.cpp:114:5) 

// Thread-local variables
logic signed [31:0] q0;
logic signed [31:0] q0_next;
logic signed [31:0] q1;

// Next-state combinational logic
always_comb begin : var_ptr2_comb     // test_pointers.cpp:114:5
    var_ptr2_func;
end
function void var_ptr2_func;
    integer j;
    q0_next = q0;
    q1 = s;
    j = q0_next + q1;
    q0_next = q1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : var_ptr2_ff
    if ( ~nrst ) begin
        integer q1;
        q0 <= 0;
        q1 = 1;
    end
    else begin
        q0 <= q0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sig_ptr1 (test_pointers.cpp:129:5) 

// Thread-local variables
logic [3:0] s0_next;

// Next-state combinational logic
always_comb begin : sig_ptr1_comb     // test_pointers.cpp:129:5
    sig_ptr1_func;
end
function void sig_ptr1_func;
    integer j;
    s0_next = s0;
    j = s0 + s1;
    s0_next = s1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : sig_ptr1_ff
    if ( ~nrst ) begin
        s0 <= 0;
    end
    else begin
        s0 <= s0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sig_ptr2 (test_pointers.cpp:141:5) 

// Thread-local variables
logic [3:0] qs0_next;

// Next-state combinational logic
always_comb begin : sig_ptr2_comb     // test_pointers.cpp:141:5
    sig_ptr2_func;
end
function void sig_ptr2_func;
    integer j;
    qs0_next = qs0;
    j = qs0 + qs1;
    qs0_next = qs1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : sig_ptr2_ff
    if ( ~nrst ) begin
        qs0 <= 0;
    end
    else begin
        qs0 <= qs0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: port_ptr (test_pointers.cpp:153:5) 

// Thread-local variables
logic [3:0] qout_next;

// Next-state combinational logic
always_comb begin : port_ptr_comb     // test_pointers.cpp:153:5
    port_ptr_func;
end
function void port_ptr_func;
    qout_next = qout;
    qout_next = in + 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : port_ptr_ff
    if ( ~nrst ) begin
        qout <= 0;
    end
    else begin
        qout <= qout_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_ptr1 (test_pointers.cpp:165:5) 

// Thread-local variables
logic [32:0] parr1_next[4];
logic [32:0] arr1[4];
logic [32:0] arr1_next[4];

// Next-state combinational logic
always_comb begin : array_ptr1_comb     // test_pointers.cpp:165:5
    array_ptr1_func;
end
function void array_ptr1_func;
    logic [99:0] mul;
    logic signed [99:0] dif;
    arr1_next = arr1;
    parr1_next = parr1;
    for (integer i_1 = 0; i_1 < N; i_1++)
    begin
        mul = 0;
        dif = 100'(arr1_next[i_1]);
        for (integer j = 0; j < M; j++)
        begin
            mul = mul * (parr2[i_1][j] + iarr1[i_1]);
            dif = dif - signed'({1'b0, parr2[i_1][j]});
        end
        parr1_next[i_1] = signed'({1'b0, mul}) * dif;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : array_ptr1_ff
    if ( ~nrst ) begin
        for (integer i = 0; i < N; i++)
        begin
            parr1[i] <= 0;
            arr1[i] <= i;
        end
    end
    else begin
        parr1 <= parr1_next;
        arr1 <= arr1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_ptr2 (test_pointers.cpp:189:5) 

// Thread-local variables
logic [41:0] parr2_next[4][5];
logic signed [64:0] parr3_next[4][5][5];

// Next-state combinational logic
always_comb begin : array_ptr2_comb     // test_pointers.cpp:189:5
    array_ptr2_func;
end
function void array_ptr2_func;
    integer unsigned i_1;
    integer j_2;
    parr2_next = parr2;
    parr3_next = parr3;
    i_1 = s;
    for (integer j_1 = 0; j_1 < M; j_1++)
    begin
        parr2_next[i_1][j_1] = parr3[i_1][j_1][i_1 + 1];
    end
    j_2 = |s ? i_1 : 1;
    parr3_next[3][i_1][1] = 32'(s);
    parr2_next[i_1][j_2] = 64'(s);
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : array_ptr2_ff
    if ( ~nrst ) begin
        for (integer i = 0; i < N; i++)
        begin
            for (integer j = 0; j < M; j++)
            begin
                parr2[i][j] <= 0;
                for (integer k = 0; k < K; k++)
                begin
                    parr3[i][j][k] <= 0;
                end
            end
        end
        parr3[1][2][3] <= 1;
    end
    else begin
        parr2 <= parr2_next;
        parr3 <= parr3_next;
    end
end

endmodule


