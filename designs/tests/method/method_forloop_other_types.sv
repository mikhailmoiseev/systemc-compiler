//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.16
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// Variables generated for SystemC signals
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_forloop_other_types.cpp:180:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: sc_type_for_uint (test_forloop_other_types.cpp:52:5) 

always_comb 
begin : sc_type_for_uint     // test_forloop_other_types.cpp:52:5
    integer a_1[8];
    for (logic [3:0] i = 0; i < 8; i++)
    begin
        a_1[i] = i;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_bigint (test_forloop_other_types.cpp:62:5) 

always_comb 
begin : sc_type_for_bigint     // test_forloop_other_types.cpp:62:5
    integer a2[10];
    integer unsigned a_u[20];
    logic signed [63:0] a_l[20];
    logic [63:0] a_ul[20];
    logic signed [39:0] a_bint;
    for (logic signed [9:0] i2 = 0; i2 < 10; i2++)
    begin
        a2[32'(i2)] = 32'(i2);
    end
    for (logic signed [63:0] i3 = 0; i3 < 10; i3++)
    begin
        a_u[32'(i3)] = 32'(i3);
    end
    for (logic signed [39:0] i3_1 = 0; i3_1 < 10; i3_1++)
    begin
        a_l[64'(i3_1)] = 64'(i3_1);
    end
    for (logic signed [39:0] i3_2 = 0; i3_2 < 10; i3_2++)
    begin
        a_ul[64'(i3_2)] = 64'(i3_2);
    end
    a_bint = 0;
    for (logic signed [114:0] i4 = 0; i4 < 10; i4++)
    begin
        a_bint[32'(i4)] = |i4;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_biguint (test_forloop_other_types.cpp:89:5) 

always_comb 
begin : sc_type_for_biguint     // test_forloop_other_types.cpp:89:5
    integer abuint2[10];
    integer unsigned abuint_u[20];
    logic signed [63:0] abuint_l[20];
    logic [63:0] abuint_ul[20];
    logic [39:0] a_buint;
    for (logic [39:0] ibu2 = 0; ibu2 < 10; ibu2++)
    begin
        abuint2[32'(ibu2)] = 32'(ibu2);
    end
    for (logic [44:0] ibu3 = 0; ibu3 < 10; ibu3++)
    begin
        abuint_u[32'(ibu3)] = 32'(ibu3);
    end
    for (logic [139:0] ibu3_1 = 0; ibu3_1 < 10; ibu3_1++)
    begin
        abuint_l[64'(ibu3_1)] = 64'(ibu3_1);
    end
    for (logic [64:0] ibu3_2 = 0; ibu3_2 < 10; ibu3_2++)
    begin
        abuint_ul[64'(ibu3_2)] = 64'(ibu3_2);
    end
    a_buint = 0;
    for (logic [4:0] ibu4 = 0; ibu4 < 10; ibu4++)
    begin
        a_buint[32'(ibu4)] = |ibu4;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_long (test_forloop_other_types.cpp:116:5) 

always_comb 
begin : sc_type_for_long     // test_forloop_other_types.cpp:116:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic signed [63:0] long_x = 0; long_x < 10; long_x++)
    begin
        a_1[long_x] = |long_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_ulong (test_forloop_other_types.cpp:125:5) 

always_comb 
begin : sc_type_for_ulong     // test_forloop_other_types.cpp:125:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic [63:0] ulong_x = 0; ulong_x < 10; ulong_x++)
    begin
        a_1[ulong_x] = |ulong_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_short (test_forloop_other_types.cpp:134:5) 

always_comb 
begin : sc_type_for_short     // test_forloop_other_types.cpp:134:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic signed [15:0] short_x = 0; short_x < 10; short_x++)
    begin
        a_1[short_x] = |short_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_ushort (test_forloop_other_types.cpp:143:5) 

always_comb 
begin : sc_type_for_ushort     // test_forloop_other_types.cpp:143:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic [15:0] ushort_x = 0; signed'({1'b0, ushort_x}) < 10; ushort_x++)
    begin
        a_1[ushort_x] = |ushort_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_uint128 (test_forloop_other_types.cpp:161:5) 

always_comb 
begin : sc_type_for_uint128     // test_forloop_other_types.cpp:161:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic [127:0] uint128_x = 0; uint128_x < 10; uint128_x++)
    begin
        a_1[uint128_x] = |uint128_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_int128 (test_forloop_other_types.cpp:152:5) 

always_comb 
begin : sc_type_for_int128     // test_forloop_other_types.cpp:152:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic signed [127:0] int128_x = 0; int128_x < 10; int128_x++)
    begin
        a_1[int128_x] = |int128_x;
    end
end

endmodule


