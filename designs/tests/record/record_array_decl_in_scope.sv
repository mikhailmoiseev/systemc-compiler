//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
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
logic clk;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk)
);

endmodule



//==============================================================================
//
// Module: A (test_array_decl_in_scope.cpp:328:5)
//
module A // "b_mod.a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic signed [31:0] sig;

//------------------------------------------------------------------------------
// Method process: rec_arr_if_meth (test_array_decl_in_scope.cpp:69:5) 

always_comb 
begin : rec_arr_if_meth     // test_array_decl_in_scope.cpp:69:5
    integer i;
    logic signed [1:0] s_a;
    logic [3:0] s_b;
    logic TMP_0;
    logic signed [1:0] par_a;
    logic [3:0] par_b;
    logic signed [1:0] r_a[3];
    logic [3:0] r_b[3];
    i = sig;
    if (i == 1)
    begin
        s_a = 0;
        s_b = 0;
        s_a = 1;
        s_b = i + 1;
        par_a = s_a; par_b = s_b;
        // Call f1() begin
        TMP_0 = par_a > par_b;
        // Call f1() end
        if (TMP_0)
        begin
            r_a[s_b] = s_a++;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: rec_arr_loop_meth (test_array_decl_in_scope.cpp:87:5) 

always_comb 
begin : rec_arr_loop_meth     // test_array_decl_in_scope.cpp:87:5
    integer i;
    logic signed [1:0] s_a[3];
    logic [3:0] s_b[3];
    integer unsigned k;
    i = 0;
    while (i < 10)
    begin
        s_a[2] = i;
        k = 0;
        for (integer j = 0; j < 3; j++)
        begin
            s_b[j] = s_a[j] + j;
        end
        i++;
    end
end

//------------------------------------------------------------------------------
// Method process: rec_arr_compl_meth (test_array_decl_in_scope.cpp:103:5) 

always_comb 
begin : rec_arr_compl_meth     // test_array_decl_in_scope.cpp:103:5
    logic signed [1:0] s_a[3];
    logic [3:0] s_b[3];
    logic signed [1:0] r_a[3];
    logic [3:0] r_b[3];
    logic signed [1:0] s_a_1;
    logic [3:0] s_b_1;
    for (integer i = 0; i < 3; i++)
    begin
        s_b[i] = i;
        for (integer j = 0; j < 3; j++)
        begin
            if (i == j)
            begin
                r_a[1] = s_a[j]; r_b[1] = s_b[j];
                s_a_1 = 0;
                s_b_1 = 0;
                s_a_1 = j;
            end
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: rec_arr_if_thread_comb (test_array_decl_in_scope.cpp:124:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic rec_arr_if_thread_comb_PROC_STATE;
logic rec_arr_if_thread_comb_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : rec_arr_if_thread_comb_comb     // test_array_decl_in_scope.cpp:124:5
    rec_arr_if_thread_comb_func;
end
function void rec_arr_if_thread_comb_func;
    logic signed [1:0] s_a;
    logic [3:0] s_b;
    logic TMP_0;
    logic signed [1:0] par_a;
    logic [3:0] par_b;
    logic signed [1:0] r_a[3];
    logic [3:0] r_b[3];
    logic TMP_1;
    i_next = i0;
    rec_arr_if_thread_comb_PROC_STATE_next = rec_arr_if_thread_comb_PROC_STATE;
    
    case (rec_arr_if_thread_comb_PROC_STATE)
        0: begin
            if (i_next == 1)
            begin
                s_a = 0;
                s_b = 0;
                s_b = i_next + 1;
                par_a = s_a; par_b = s_b;
                // Call f1() begin
                TMP_0 = par_a > par_b;
                // Call f1() end
                if (TMP_0)
                begin
                    r_a[i_next] = s_a;
                end
            end
            rec_arr_if_thread_comb_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:139:13;
        end
        1: begin
            i_next++;
            if (i_next == 1)
            begin
                s_a = 0;
                s_b = 0;
                s_b = i_next + 1;
                par_a = s_a; par_b = s_b;
                // Call f1() begin
                TMP_1 = par_a > par_b;
                // Call f1() end
                if (TMP_1)
                begin
                    r_a[i_next] = s_a;
                end
            end
            rec_arr_if_thread_comb_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:139:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : rec_arr_if_thread_comb_ff
    if ( ~nrst ) begin
        i0 <= sig;
        rec_arr_if_thread_comb_PROC_STATE <= 0;    // test_array_decl_in_scope.cpp:127:9;
    end
    else begin
        i0 <= i_next;
        rec_arr_if_thread_comb_PROC_STATE <= rec_arr_if_thread_comb_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: rec_if_thread_reg (test_array_decl_in_scope.cpp:146:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next0;
logic [1:0] rec_if_thread_reg_PROC_STATE;
logic [1:0] rec_if_thread_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : rec_if_thread_reg_comb     // test_array_decl_in_scope.cpp:146:5
    rec_if_thread_reg_func;
end
function void rec_if_thread_reg_func;
    logic signed [1:0] r_a;
    logic [3:0] r_b;
    i_next0 = i1;
    rec_if_thread_reg_PROC_STATE_next = rec_if_thread_reg_PROC_STATE;
    
    case (rec_if_thread_reg_PROC_STATE)
        0: begin
            if (|i_next0)
            begin
                r_a = 0;
                r_b = 0;
                rec_if_thread_reg_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:155:17;
            end
            rec_if_thread_reg_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:159:13;
        end
        1: begin
            r_a = 1;
            rec_if_thread_reg_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:159:13;
        end
        2: begin
            if (|i_next0)
            begin
                r_a = 0;
                r_b = 0;
                rec_if_thread_reg_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:155:17;
            end
            rec_if_thread_reg_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:159:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : rec_if_thread_reg_ff
    if ( ~nrst ) begin
        i1 <= sig;
        rec_if_thread_reg_PROC_STATE <= 0;    // test_array_decl_in_scope.cpp:149:9;
    end
    else begin
        i1 <= i_next0;
        rec_if_thread_reg_PROC_STATE <= rec_if_thread_reg_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: rec_if_thread_reg2 (test_array_decl_in_scope.cpp:165:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next1;
logic [1:0] rec_if_thread_reg2_PROC_STATE;
logic [1:0] rec_if_thread_reg2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : rec_if_thread_reg2_comb     // test_array_decl_in_scope.cpp:165:5
    rec_if_thread_reg2_func;
end
function void rec_if_thread_reg2_func;
    logic signed [1:0] r_a;
    logic [3:0] r_b;
    i_next1 = i2;
    rec_if_thread_reg2_PROC_STATE_next = rec_if_thread_reg2_PROC_STATE;
    
    case (rec_if_thread_reg2_PROC_STATE)
        0: begin
            if (|i_next1)
            begin
                r_a = 0;
                r_b = 0;
                rec_if_thread_reg2_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:174:17;
            end
            rec_if_thread_reg2_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:182:13;
        end
        1: begin
            if (|i_next1)
            begin
                i_next1++;
            end
            r_a = 1;
            rec_if_thread_reg2_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:182:13;
        end
        2: begin
            if (|i_next1)
            begin
                r_a = 0;
                r_b = 0;
                rec_if_thread_reg2_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:174:17;
            end
            rec_if_thread_reg2_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:182:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : rec_if_thread_reg2_ff
    if ( ~nrst ) begin
        i2 <= sig;
        rec_if_thread_reg2_PROC_STATE <= 0;    // test_array_decl_in_scope.cpp:168:9;
    end
    else begin
        i2 <= i_next1;
        rec_if_thread_reg2_PROC_STATE <= rec_if_thread_reg2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: rec_arr_if_thread_reg (test_array_decl_in_scope.cpp:188:5) 

// Thread-local variables
logic signed [31:0] i3;
logic signed [31:0] i_next2;
logic [3:0] r_b0[3];
logic [3:0] r_b_next[3];
logic signed [1:0] s_a0;
logic signed [1:0] s_a_next;
logic [1:0] rec_arr_if_thread_reg_PROC_STATE;
logic [1:0] rec_arr_if_thread_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : rec_arr_if_thread_reg_comb     // test_array_decl_in_scope.cpp:188:5
    rec_arr_if_thread_reg_func;
end
function void rec_arr_if_thread_reg_func;
    logic signed [1:0] r_a[3];
    logic [3:0] s_b;
    i_next2 = i3;
    r_b_next = r_b0;
    s_a_next = s_a0;
    rec_arr_if_thread_reg_PROC_STATE_next = rec_arr_if_thread_reg_PROC_STATE;
    
    case (rec_arr_if_thread_reg_PROC_STATE)
        0: begin
            if (i_next2 == 1)
            begin
                s_a_next = 0;
                s_b = 0;
                s_b = i_next2 + 1;
                if (i_next2 == 2)
                begin
                    i_next2 = r_b_next[i_next2];
                    rec_arr_if_thread_reg_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:202:21;
                end
                rec_arr_if_thread_reg_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:204:17;
            end
            rec_arr_if_thread_reg_PROC_STATE_next = 3; return;    // test_array_decl_in_scope.cpp:208:13;
        end
        1: begin
            rec_arr_if_thread_reg_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:204:17;
        end
        2: begin
            r_a[i_next2] = s_a_next;
            rec_arr_if_thread_reg_PROC_STATE_next = 3; return;    // test_array_decl_in_scope.cpp:208:13;
        end
        3: begin
            if (i_next2 == 1)
            begin
                s_a_next = 0;
                s_b = 0;
                s_b = i_next2 + 1;
                if (i_next2 == 2)
                begin
                    i_next2 = r_b_next[i_next2];
                    rec_arr_if_thread_reg_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:202:21;
                end
                rec_arr_if_thread_reg_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:204:17;
            end
            rec_arr_if_thread_reg_PROC_STATE_next = 3; return;    // test_array_decl_in_scope.cpp:208:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : rec_arr_if_thread_reg_ff
    if ( ~nrst ) begin
        i3 <= sig;
        rec_arr_if_thread_reg_PROC_STATE <= 0;    // test_array_decl_in_scope.cpp:191:9;
    end
    else begin
        i3 <= i_next2;
        r_b0 <= r_b_next;
        s_a0 <= s_a_next;
        rec_arr_if_thread_reg_PROC_STATE <= rec_arr_if_thread_reg_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: rec_arr_if_loop_thread (test_array_decl_in_scope.cpp:247:5) 

// Thread-local variables
logic signed [31:0] i4;
logic signed [31:0] i_next3;
logic signed [1:0] g_a[3];
logic signed [1:0] g_a_next[3];
logic [1:0] rec_arr_if_loop_thread_PROC_STATE;
logic [1:0] rec_arr_if_loop_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : rec_arr_if_loop_thread_comb     // test_array_decl_in_scope.cpp:247:5
    rec_arr_if_loop_thread_func;
end
function void rec_arr_if_loop_thread_func;
    logic [3:0] g_b[3];
    g_a_next = g_a;
    i_next3 = i4;
    rec_arr_if_loop_thread_PROC_STATE_next = rec_arr_if_loop_thread_PROC_STATE;
    
    case (rec_arr_if_loop_thread_PROC_STATE)
        0: begin
            if (!(|sig))
            begin
                rec_arr_if_loop_thread_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:258:17;
            end
            rec_arr_if_loop_thread_PROC_STATE_next = 3; return;    // test_array_decl_in_scope.cpp:272:13;
        end
        1: begin
            if (|i_next3)
            begin
                g_a_next[i_next3] = i_next3 + 1;
                rec_arr_if_loop_thread_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:262:21;
            end
            for (integer i = 0; i < 3; i++)
            begin
                g_b[i] = i + 1;
            end
            i_next3 = g_a_next[i_next3];
            if (!(|sig))
            begin
                rec_arr_if_loop_thread_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:258:17;
            end
            rec_arr_if_loop_thread_PROC_STATE_next = 3; return;    // test_array_decl_in_scope.cpp:272:13;
        end
        2: begin
            for (integer i = 0; i < 3; i++)
            begin
                g_b[i] = i + 1;
            end
            i_next3 = g_a_next[i_next3];
            if (!(|sig))
            begin
                rec_arr_if_loop_thread_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:258:17;
            end
            rec_arr_if_loop_thread_PROC_STATE_next = 3; return;    // test_array_decl_in_scope.cpp:272:13;
        end
        3: begin
            if (!(|sig))
            begin
                rec_arr_if_loop_thread_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:258:17;
            end
            rec_arr_if_loop_thread_PROC_STATE_next = 3; return;    // test_array_decl_in_scope.cpp:272:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : rec_arr_if_loop_thread_ff
    if ( ~nrst ) begin
        i4 <= sig;
        rec_arr_if_loop_thread_PROC_STATE <= 0;    // test_array_decl_in_scope.cpp:250:9;
    end
    else begin
        i4 <= i_next3;
        g_a <= g_a_next;
        rec_arr_if_loop_thread_PROC_STATE <= rec_arr_if_loop_thread_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: rec_arr_if_loop_thread_break (test_array_decl_in_scope.cpp:277:5) 

// Thread-local variables
logic signed [31:0] i5;
logic signed [31:0] i_next4;
logic signed [1:0] h_a[3];
logic signed [1:0] h_a_next[3];
logic [1:0] rec_arr_if_loop_thread_break_PROC_STATE;
logic [1:0] rec_arr_if_loop_thread_break_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : rec_arr_if_loop_thread_break_comb     // test_array_decl_in_scope.cpp:277:5
    rec_arr_if_loop_thread_break_func;
end
function void rec_arr_if_loop_thread_break_func;
    logic signed [1:0] m_a[3];
    logic [3:0] m_b[3];
    logic [3:0] h_b[3];
    h_a_next = h_a;
    i_next4 = i5;
    rec_arr_if_loop_thread_break_PROC_STATE_next = rec_arr_if_loop_thread_break_PROC_STATE;
    
    case (rec_arr_if_loop_thread_break_PROC_STATE)
        0: begin
            if (|sig)
            begin
                // break begin
                m_b[i_next4 + 1] = i_next4;
                rec_arr_if_loop_thread_break_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:298:13;
                // break end
            end
            i_next4 = h_a_next[i_next4];
            rec_arr_if_loop_thread_break_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:293:17;
        end
        1: begin
            if (|sig)
            begin
                // break begin
                m_b[i_next4 + 1] = i_next4;
                rec_arr_if_loop_thread_break_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:298:13;
                // break end
            end
            i_next4 = h_a_next[i_next4];
            rec_arr_if_loop_thread_break_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:293:17;
        end
        2: begin
            if (|sig)
            begin
                // break begin
                m_b[i_next4 + 1] = i_next4;
                rec_arr_if_loop_thread_break_PROC_STATE_next = 2; return;    // test_array_decl_in_scope.cpp:298:13;
                // break end
            end
            i_next4 = h_a_next[i_next4];
            rec_arr_if_loop_thread_break_PROC_STATE_next = 1; return;    // test_array_decl_in_scope.cpp:293:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : rec_arr_if_loop_thread_break_ff
    if ( ~nrst ) begin
        i5 <= sig;
        rec_arr_if_loop_thread_break_PROC_STATE <= 0;    // test_array_decl_in_scope.cpp:280:9;
    end
    else begin
        i5 <= i_next4;
        h_a <= h_a_next;
        rec_arr_if_loop_thread_break_PROC_STATE <= rec_arr_if_loop_thread_break_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: rec_arr_if_loop_thread_reset (test_array_decl_in_scope.cpp:303:5) 

// Thread-local variables
logic signed [1:0] n_a[3];
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic [3:0] n_b[3];
logic [3:0] n_b_next[3];

// Next-state combinational logic
always_comb begin : rec_arr_if_loop_thread_reset_comb     // test_array_decl_in_scope.cpp:303:5
    rec_arr_if_loop_thread_reset_func;
end
function void rec_arr_if_loop_thread_reset_func;
    logic signed [1:0] p_a[3];
    j_next = j0;
    n_b_next = n_b;
    j_next = n_b_next[j_next];
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : rec_arr_if_loop_thread_reset_ff
    if ( ~nrst ) begin
        logic signed [1:0] p_a[3];
        logic [3:0] p_b[3];
        for (integer i = 0; i < 3; i++)
        begin
            n_b[i] <= i;
        end
        j0 <= sig;
        if (|j0)
        begin
            p_b[j0] = n_a[1];
        end
    end
    else begin
        j0 <= j_next;
        n_b <= n_b_next;
    end
end

endmodule


