// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================


#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#define AP_INT_MAX_W 32678

#include "ap_fixed.h"


using namespace std;
using namespace sc_core;
using namespace sc_dt;




   #define AUTOTB_TVIN_InitN  "../tv/cdatafile/c.PID_Controller.autotvin_InitN.dat"
   #define AUTOTB_TVIN_coeff_0_V  "../tv/cdatafile/c.PID_Controller.autotvin_coeff_0_V.dat"
   #define AUTOTB_TVIN_coeff_1_V  "../tv/cdatafile/c.PID_Controller.autotvin_coeff_1_V.dat"
   #define AUTOTB_TVIN_coeff_2_V  "../tv/cdatafile/c.PID_Controller.autotvin_coeff_2_V.dat"
   #define AUTOTB_TVIN_coeff_3_V  "../tv/cdatafile/c.PID_Controller.autotvin_coeff_3_V.dat"
   #define AUTOTB_TVIN_coeff_4_V  "../tv/cdatafile/c.PID_Controller.autotvin_coeff_4_V.dat"
   #define AUTOTB_TVIN_coeff_5_V  "../tv/cdatafile/c.PID_Controller.autotvin_coeff_5_V.dat"
   #define AUTOTB_TVIN_din_0_V  "../tv/cdatafile/c.PID_Controller.autotvin_din_0_V.dat"
   #define AUTOTB_TVIN_din_1_V  "../tv/cdatafile/c.PID_Controller.autotvin_din_1_V.dat"
   #define AUTOTB_TVOUT_dout_0_V  "../tv/cdatafile/c.PID_Controller.autotvout_dout_0_V.dat"
   #define AUTOTB_TVOUT_dout_1_V  "../tv/cdatafile/c.PID_Controller.autotvout_dout_1_V.dat"
   #define INTER_TCL  "../tv/cdatafile/ref.tcl"

   #define AUTOTB_TVOUT_PC_dout_0_V  "../tv/rtldatafile/rtl.PID_Controller.autotvout_dout_0_V.dat"
   #define AUTOTB_TVOUT_PC_dout_1_V  "../tv/rtldatafile/rtl.PID_Controller.autotvout_dout_1_V.dat"

class INTER_TCL_FILE {
    public:
//functions
        INTER_TCL_FILE(const char* name) {
            mName = name;
            InitN_depth = 0;
            coeff_0_V_depth = 0;
            coeff_1_V_depth = 0;
            coeff_2_V_depth = 0;
            coeff_3_V_depth = 0;
            coeff_4_V_depth = 0;
            coeff_5_V_depth = 0;
            din_0_V_depth = 0;
            din_1_V_depth = 0;
            dout_0_V_depth = 0;
            dout_1_V_depth = 0;
            trans_num =0;
        }
        ~INTER_TCL_FILE() {
            mFile.open(mName);
            if (!mFile.good() ) {
                cout<<"Failed to open file ref.tcl."<<endl;
                exit (1);
            }
            string total_list = get_depth_list();
            mFile<<"set depth_list {\n";
            mFile<<total_list; 
            mFile<<"}\n";
            mFile<<"set trans_num "<<trans_num<<endl;
            mFile.close();
        }
        string get_depth_list () {
            stringstream total_list;
            total_list<<"   {InitN "<< InitN_depth << "}\n";
            total_list<<"   {coeff_0_V "<< coeff_0_V_depth << "}\n";
            total_list<<"   {coeff_1_V "<< coeff_1_V_depth << "}\n";
            total_list<<"   {coeff_2_V "<< coeff_2_V_depth << "}\n";
            total_list<<"   {coeff_3_V "<< coeff_3_V_depth << "}\n";
            total_list<<"   {coeff_4_V "<< coeff_4_V_depth << "}\n";
            total_list<<"   {coeff_5_V "<< coeff_5_V_depth << "}\n";
            total_list<<"   {din_0_V "<< din_0_V_depth << "}\n";
            total_list<<"   {din_1_V "<< din_1_V_depth << "}\n";
            total_list<<"   {dout_0_V "<< dout_0_V_depth << "}\n";
            total_list<<"   {dout_1_V "<< dout_1_V_depth << "}\n";
            return total_list.str();
        }
        void set_num (int num , int* class_num) {
            (*class_num) = (*class_num) > num ? (*class_num) : num;
        }
    public:
//variables
        int InitN_depth;
        int coeff_0_V_depth;
        int coeff_1_V_depth;
        int coeff_2_V_depth;
        int coeff_3_V_depth;
        int coeff_4_V_depth;
        int coeff_5_V_depth;
        int din_0_V_depth;
        int din_1_V_depth;
        int dout_0_V_depth;
        int dout_1_V_depth;
        int trans_num;
    private:
        ofstream mFile;
        const char* mName;
};

#define PID_Controller AESL_ORIG_DUT_PID_Controller
extern void PID_Controller ( bool InitN,  ap_fixed<25, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> coeff[6],  ap_fixed<25, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> din[2],  ap_fixed<25, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> dout[2]);
#undef PID_Controller
void PID_Controller ( bool InitN,  ap_fixed<25, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> coeff[6],  ap_fixed<25, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> din[2],  ap_fixed<25, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> dout[2]) {

    fstream wrapc_switch_file_token;

    wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");

    int AESL_i;

    if (wrapc_switch_file_token.good()) {

        static unsigned AESL_transaction_pc;

        string AESL_token;

        string AESL_num;

        static AESL_FILE_HANDLER aesl_fh;

        aesl_fh.read(AUTOTB_TVOUT_PC_dout_0_V, AESL_token); //[[transaction]]

        if ( AESL_token != "[[transaction]]") {

           exit(1);

        }

        aesl_fh.read(AUTOTB_TVOUT_PC_dout_0_V, AESL_num); //transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            aesl_fh.read(AUTOTB_TVOUT_PC_dout_0_V, AESL_token); //data

            sc_bv<25> *dout_0_V_pc_buffer = new sc_bv<25>[1];

            int i = 0;

            while (AESL_token != "[[/transaction]]") {

                bool no_x = false;

                bool err = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('X');

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'dout_0_V', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                no_x = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('x', 2);

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'dout_0_V', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                if (AESL_token != "") {

                    dout_0_V_pc_buffer[i] = AESL_token.c_str();

                    i++;

                }

                aesl_fh.read(AUTOTB_TVOUT_PC_dout_0_V, AESL_token); //data or [[/transaction]]

                if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_dout_0_V)) {

                   exit(1);

                }

            }

            if (i > 0) {

                sc_lv<25> *dout_V_lv0_0_0_2 = new sc_lv<25>[1];

                AESL_i = 0; //subscript for rtl array

                for (int i_0 = 0; i_0 <= 0 ; i_0+= 2) {

                    if(&(dout[0]) != 0) {

                       dout_V_lv0_0_0_2[0 + AESL_i].range(24, 0) = sc_bv<25>(dout_0_V_pc_buffer[0 + AESL_i].range(24, 0));

                    }

                    AESL_i++;

                }

                AESL_i = 0; //subscript for rtl array

                for (int i_0 = 0; i_0 <= 0 ; i_0+= 2) {

                    if(&(dout[0]) != 0) {

                       (dout[i_0]).range() = (dout_V_lv0_0_0_2[0 + AESL_i]).to_string(SC_BIN).c_str();

                    }

                    AESL_i++;

                }

                }

            delete [] dout_0_V_pc_buffer;

        }

        aesl_fh.read(AUTOTB_TVOUT_PC_dout_1_V, AESL_token); //[[transaction]]

        if ( AESL_token != "[[transaction]]") {

           exit(1);

        }

        aesl_fh.read(AUTOTB_TVOUT_PC_dout_1_V, AESL_num); //transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            aesl_fh.read(AUTOTB_TVOUT_PC_dout_1_V, AESL_token); //data

            sc_bv<25> *dout_1_V_pc_buffer = new sc_bv<25>[1];

            int i = 0;

            while (AESL_token != "[[/transaction]]") {

                bool no_x = false;

                bool err = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('X');

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'dout_1_V', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                no_x = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('x', 2);

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'dout_1_V', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                if (AESL_token != "") {

                    dout_1_V_pc_buffer[i] = AESL_token.c_str();

                    i++;

                }

                aesl_fh.read(AUTOTB_TVOUT_PC_dout_1_V, AESL_token); //data or [[/transaction]]

                if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_dout_1_V)) {

                   exit(1);

                }

            }

            if (i > 0) {

                sc_lv<25> *dout_V_lv0_1_1_2 = new sc_lv<25>[1];

                AESL_i = 0; //subscript for rtl array

                for (int i_0 = 1; i_0 <= 1 ; i_0+= 2) {

                    if(&(dout[0]) != 0) {

                       dout_V_lv0_1_1_2[0 + AESL_i].range(24, 0) = sc_bv<25>(dout_1_V_pc_buffer[0 + AESL_i].range(24, 0));

                    }

                    AESL_i++;

                }

                AESL_i = 0; //subscript for rtl array

                for (int i_0 = 1; i_0 <= 1 ; i_0+= 2) {

                    if(&(dout[0]) != 0) {

                       (dout[i_0]).range() = (dout_V_lv0_1_1_2[0 + AESL_i]).to_string(SC_BIN).c_str();

                    }

                    AESL_i++;

                }

                }

            delete [] dout_1_V_pc_buffer;

        }

        AESL_transaction_pc ++ ;

    } else {

        static unsigned AESL_transaction;

        static AESL_FILE_HANDLER aesl_fh;

        char* tvin_InitN = new char[50];

        char* tvin_coeff_0_V = new char[50];

        char* tvin_coeff_1_V = new char[50];

        char* tvin_coeff_2_V = new char[50];

        char* tvin_coeff_3_V = new char[50];

        char* tvin_coeff_4_V = new char[50];

        char* tvin_coeff_5_V = new char[50];

        char* tvin_din_0_V = new char[50];

        char* tvin_din_1_V = new char[50];

        char* tvout_dout_0_V = new char[50];

        char* tvout_dout_1_V = new char[50];

        static INTER_TCL_FILE tcl_file(INTER_TCL);


        int leading_zero;

        sprintf(tvin_InitN, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_InitN, tvin_InitN);

        sc_bv<1> InitN_tvin_wrapc_buffer;

        AESL_i = 0; //subscript for rtl array

        sc_lv<1> InitN_tmp_mem; 

        if(&(InitN) != 0) {

        InitN_tmp_mem = InitN;

           InitN_tvin_wrapc_buffer.range(0, 0) = InitN_tmp_mem.range(0, 0 ) ;

        }

        AESL_i++;

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_InitN, "%s\n", (InitN_tvin_wrapc_buffer).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_InitN, tvin_InitN);

        }

        tcl_file.set_num(1,&tcl_file.InitN_depth);

        sprintf(tvin_InitN, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_InitN, tvin_InitN);

        sprintf(tvin_coeff_0_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_coeff_0_V, tvin_coeff_0_V);

        sc_bv<25> *coeff_0_V_tvin_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 0; i_0 <= 0 ; i_0+= 2) {

        sc_lv<25> coeff_V_tmp_mem; 

            if(&(coeff[0]) != 0) {

            coeff_V_tmp_mem = (coeff[i_0]).range().to_string(SC_BIN).c_str();

               coeff_0_V_tvin_wrapc_buffer[0 + AESL_i].range(24, 0) = coeff_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_coeff_0_V, "%s\n", (coeff_0_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_coeff_0_V, tvin_coeff_0_V);

        }

        tcl_file.set_num(1,&tcl_file.coeff_0_V_depth);

        sprintf(tvin_coeff_0_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_coeff_0_V, tvin_coeff_0_V);

        delete [] coeff_0_V_tvin_wrapc_buffer;

        sprintf(tvin_coeff_1_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_coeff_1_V, tvin_coeff_1_V);

        sc_bv<25> *coeff_1_V_tvin_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 1; i_0 <= 1 ; i_0+= 2) {

        sc_lv<25> coeff_V_tmp_mem; 

            if(&(coeff[0]) != 0) {

            coeff_V_tmp_mem = (coeff[i_0]).range().to_string(SC_BIN).c_str();

               coeff_1_V_tvin_wrapc_buffer[0 + AESL_i].range(24, 0) = coeff_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_coeff_1_V, "%s\n", (coeff_1_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_coeff_1_V, tvin_coeff_1_V);

        }

        tcl_file.set_num(1,&tcl_file.coeff_1_V_depth);

        sprintf(tvin_coeff_1_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_coeff_1_V, tvin_coeff_1_V);

        delete [] coeff_1_V_tvin_wrapc_buffer;

        sprintf(tvin_coeff_2_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_coeff_2_V, tvin_coeff_2_V);

        sc_bv<25> *coeff_2_V_tvin_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 2; i_0 <= 2 ; i_0+= 2) {

        sc_lv<25> coeff_V_tmp_mem; 

            if(&(coeff[0]) != 0) {

            coeff_V_tmp_mem = (coeff[i_0]).range().to_string(SC_BIN).c_str();

               coeff_2_V_tvin_wrapc_buffer[0 + AESL_i].range(24, 0) = coeff_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_coeff_2_V, "%s\n", (coeff_2_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_coeff_2_V, tvin_coeff_2_V);

        }

        tcl_file.set_num(1,&tcl_file.coeff_2_V_depth);

        sprintf(tvin_coeff_2_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_coeff_2_V, tvin_coeff_2_V);

        delete [] coeff_2_V_tvin_wrapc_buffer;

        sprintf(tvin_coeff_3_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_coeff_3_V, tvin_coeff_3_V);

        sc_bv<25> *coeff_3_V_tvin_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 3; i_0 <= 3 ; i_0+= 2) {

        sc_lv<25> coeff_V_tmp_mem; 

            if(&(coeff[0]) != 0) {

            coeff_V_tmp_mem = (coeff[i_0]).range().to_string(SC_BIN).c_str();

               coeff_3_V_tvin_wrapc_buffer[0 + AESL_i].range(24, 0) = coeff_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_coeff_3_V, "%s\n", (coeff_3_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_coeff_3_V, tvin_coeff_3_V);

        }

        tcl_file.set_num(1,&tcl_file.coeff_3_V_depth);

        sprintf(tvin_coeff_3_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_coeff_3_V, tvin_coeff_3_V);

        delete [] coeff_3_V_tvin_wrapc_buffer;

        sprintf(tvin_coeff_4_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_coeff_4_V, tvin_coeff_4_V);

        sc_bv<25> *coeff_4_V_tvin_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 4; i_0 <= 4 ; i_0+= 2) {

        sc_lv<25> coeff_V_tmp_mem; 

            if(&(coeff[0]) != 0) {

            coeff_V_tmp_mem = (coeff[i_0]).range().to_string(SC_BIN).c_str();

               coeff_4_V_tvin_wrapc_buffer[0 + AESL_i].range(24, 0) = coeff_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_coeff_4_V, "%s\n", (coeff_4_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_coeff_4_V, tvin_coeff_4_V);

        }

        tcl_file.set_num(1,&tcl_file.coeff_4_V_depth);

        sprintf(tvin_coeff_4_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_coeff_4_V, tvin_coeff_4_V);

        delete [] coeff_4_V_tvin_wrapc_buffer;

        sprintf(tvin_coeff_5_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_coeff_5_V, tvin_coeff_5_V);

        sc_bv<25> *coeff_5_V_tvin_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 5; i_0 <= 5 ; i_0+= 2) {

        sc_lv<25> coeff_V_tmp_mem; 

            if(&(coeff[0]) != 0) {

            coeff_V_tmp_mem = (coeff[i_0]).range().to_string(SC_BIN).c_str();

               coeff_5_V_tvin_wrapc_buffer[0 + AESL_i].range(24, 0) = coeff_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_coeff_5_V, "%s\n", (coeff_5_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_coeff_5_V, tvin_coeff_5_V);

        }

        tcl_file.set_num(1,&tcl_file.coeff_5_V_depth);

        sprintf(tvin_coeff_5_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_coeff_5_V, tvin_coeff_5_V);

        delete [] coeff_5_V_tvin_wrapc_buffer;

        sprintf(tvin_din_0_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_din_0_V, tvin_din_0_V);

        sc_bv<25> *din_0_V_tvin_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 0; i_0 <= 0 ; i_0+= 2) {

        sc_lv<25> din_V_tmp_mem; 

            if(&(din[0]) != 0) {

            din_V_tmp_mem = (din[i_0]).range().to_string(SC_BIN).c_str();

               din_0_V_tvin_wrapc_buffer[0 + AESL_i].range(24, 0) = din_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_din_0_V, "%s\n", (din_0_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_din_0_V, tvin_din_0_V);

        }

        tcl_file.set_num(1,&tcl_file.din_0_V_depth);

        sprintf(tvin_din_0_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_din_0_V, tvin_din_0_V);

        delete [] din_0_V_tvin_wrapc_buffer;

        sprintf(tvin_din_1_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_din_1_V, tvin_din_1_V);

        sc_bv<25> *din_1_V_tvin_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 1; i_0 <= 1 ; i_0+= 2) {

        sc_lv<25> din_V_tmp_mem; 

            if(&(din[0]) != 0) {

            din_V_tmp_mem = (din[i_0]).range().to_string(SC_BIN).c_str();

               din_1_V_tvin_wrapc_buffer[0 + AESL_i].range(24, 0) = din_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_din_1_V, "%s\n", (din_1_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_din_1_V, tvin_din_1_V);

        }

        tcl_file.set_num(1,&tcl_file.din_1_V_depth);

        sprintf(tvin_din_1_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_din_1_V, tvin_din_1_V);

        delete [] din_1_V_tvin_wrapc_buffer;

        AESL_ORIG_DUT_PID_Controller(InitN,coeff,din,dout);

        sprintf(tvout_dout_0_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVOUT_dout_0_V, tvout_dout_0_V);

        sc_bv<25> *dout_0_V_tvout_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 0; i_0 <= 0 ; i_0+= 2) {

        sc_lv<25> dout_V_tmp_mem; 

            if(&(dout[0]) != 0) {

            dout_V_tmp_mem = (dout[i_0]).range().to_string(SC_BIN).c_str();

               dout_0_V_tvout_wrapc_buffer[0 + AESL_i].range(24, 0) = dout_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvout_dout_0_V, "%s\n", (dout_0_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVOUT_dout_0_V, tvout_dout_0_V);

        }

        tcl_file.set_num(1,&tcl_file.dout_0_V_depth);

        sprintf(tvout_dout_0_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVOUT_dout_0_V, tvout_dout_0_V);

        delete [] dout_0_V_tvout_wrapc_buffer;

        sprintf(tvout_dout_1_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVOUT_dout_1_V, tvout_dout_1_V);

        sc_bv<25> *dout_1_V_tvout_wrapc_buffer = new sc_bv<25>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 1; i_0 <= 1 ; i_0+= 2) {

        sc_lv<25> dout_V_tmp_mem; 

            if(&(dout[0]) != 0) {

            dout_V_tmp_mem = (dout[i_0]).range().to_string(SC_BIN).c_str();

               dout_1_V_tvout_wrapc_buffer[0 + AESL_i].range(24, 0) = dout_V_tmp_mem.range(24, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvout_dout_1_V, "%s\n", (dout_1_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVOUT_dout_1_V, tvout_dout_1_V);

        }

        tcl_file.set_num(1,&tcl_file.dout_1_V_depth);

        sprintf(tvout_dout_1_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVOUT_dout_1_V, tvout_dout_1_V);

        delete [] dout_1_V_tvout_wrapc_buffer;

        delete [] tvin_InitN;

        delete [] tvin_coeff_0_V;

        delete [] tvin_coeff_1_V;

        delete [] tvin_coeff_2_V;

        delete [] tvin_coeff_3_V;

        delete [] tvin_coeff_4_V;

        delete [] tvin_coeff_5_V;

        delete [] tvin_din_0_V;

        delete [] tvin_din_1_V;

        delete [] tvout_dout_0_V;

        delete [] tvout_dout_1_V;

        AESL_transaction++;

        tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

    }
}

