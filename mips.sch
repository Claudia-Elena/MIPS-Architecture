VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(31:0)
        SIGNAL Clk
        SIGNAL PC(31:0)
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL Instr(15:11)
        SIGNAL RegDest
        SIGNAL Instr(20:16)
        SIGNAL WrReg(4:0)
        SIGNAL Instr(25:21)
        SIGNAL RegWr
        SIGNAL RdData1(31:0)
        SIGNAL RdData2(31:0)
        SIGNAL Instr(15:0)
        SIGNAL ALUOP(1:0)
        SIGNAL ALUSrc
        SIGNAL ALU_Out(31:0)
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL MemWr
        SIGNAL ALU_Out(6:2)
        SIGNAL MemOut(31:0)
        SIGNAL Mem2Reg
        SIGNAL WrData(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL Instr(31:26)
        SIGNAL Instr(5:0)
        PORT Input Clk
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2020 3 15 15 51 27
            RECTANGLE N 64 -60 320 24 
            LINE N 0 -32 64 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 384 0 320 0 
            RECTANGLE N 320 -12 384 12 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2020 3 15 13 40 52
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2020 3 15 14 36 56
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2020 3 15 16 26 43
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2020 3 22 16 34 2
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -460 384 0 
            LINE N 64 -432 0 -432 
            RECTANGLE N 384 -444 448 -420 
            LINE N 384 -432 448 -432 
            RECTANGLE N 384 -396 448 -372 
            LINE N 384 -384 448 -384 
            LINE N 64 -384 0 -384 
            RECTANGLE N 0 -220 64 -196 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -268 64 -244 
            LINE N 64 -256 0 -256 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2020 3 22 17 27 39
            RECTANGLE N 64 -392 320 0 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
            RECTANGLE N 320 -124 384 -100 
            LINE N 320 -112 384 -112 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -316 64 -292 
            LINE N 64 -304 0 -304 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2020 3 22 17 46 21
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            LINE N 64 16 0 16 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2020 3 22 17 51 1
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2020 3 22 18 43 47
            RECTANGLE N 64 -384 320 0 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK U_New_PC PC_Update
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MuxRegD MUX2V5
            PIN Sel RegDest
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
            PIN Y(4:0) WrReg(4:0)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN WrReg(4:0) WrReg(4:0)
            PIN WrData(31:0) WrData(31:0)
            PIN Clk Clk
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN WrEn RegWr
            PIN RdReg2(4:0) Instr(20:16)
            PIN RdReg1(4:0) Instr(25:21)
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN RdData1(31:0) RdData1(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Y(31:0) ALU_Out(31:0)
            PIN ALUSrc ALUSrc
            PIN RdData2(31:0) RdData2(31:0)
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Clk Clk
            PIN Wr MemWr
            PIN INW0(31:0) INW0(31:0)
            PIN INW1(31:0) INW1(31:0)
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN DataOut(31:0) MemOut(31:0)
        END BLOCK
        BEGIN BLOCK U_MuxData MUX2V32
            PIN Sel Mem2Reg
            PIN Y(31:0) WrData(31:0)
            PIN I1(31:0) MemOut(31:0)
            PIN I0(31:0) ALU_Out(31:0)
        END BLOCK
        BEGIN BLOCK U_Ctrl ctrl
            PIN OP(5:0) Instr(31:26)
            PIN Funct(5:0) Instr(5:0)
            PIN ALUSrc ALUSrc
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN ALUOP(1:0) ALUOP(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_New_PC 336 224 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_PC 336 624 R0
            BEGIN DISPLAY 0 -248 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_ROM 976 752 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH New_PC(31:0)
            WIRE 64 192 336 192
            WIRE 64 192 64 400
            WIRE 64 400 64 592
            WIRE 64 592 336 592
            BEGIN DISPLAY 64 400 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 272 528 336 528
        END BRANCH
        BEGIN BRANCH PC(31:0)
            WIRE 720 224 784 224
            WIRE 784 224 800 224
            WIRE 800 224 800 368
            WIRE 800 368 800 528
            WIRE 800 528 800 720
            WIRE 800 720 800 896
            WIRE 720 528 800 528
            BEGIN DISPLAY 800 368 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 720 896 720
        BEGIN BRANCH PC(6:2)
            WIRE 896 720 912 720
            WIRE 912 720 976 720
            BEGIN DISPLAY 912 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 1360 720 1424 720
            WIRE 1424 720 1424 752
            WIRE 1424 752 1424 800
            WIRE 1424 800 1424 912
            WIRE 1424 912 1424 976
            WIRE 1424 976 1424 1152
            WIRE 1424 1152 1424 1248
            WIRE 1424 1248 1424 1264
            WIRE 1424 1264 1424 1584
            WIRE 1424 1584 1424 1616
            BEGIN DISPLAY 1424 912 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1424 752 1520 752
        BUSTAP 1424 800 1520 800
        BUSTAP 1424 976 1520 976
        BEGIN BRANCH Instr(15:11)
            WIRE 1520 976 1536 976
            WIRE 1536 976 1648 976
            BEGIN DISPLAY 1536 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1504 1040 1568 1040
            WIRE 1568 1040 1648 1040
            BEGIN DISPLAY 1568 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MuxRegD 1648 1072 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(20:16)
            WIRE 1520 800 1584 800
            WIRE 1584 800 1808 800
            WIRE 1808 800 2144 800
            WIRE 2144 800 2272 800
            WIRE 1584 800 1584 912
            WIRE 1584 912 1648 912
            BEGIN DISPLAY 1808 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2032 912 2144 912
            WIRE 2144 912 2272 912
            BEGIN DISPLAY 2144 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(25:21)
            WIRE 1520 752 2128 752
            WIRE 2128 752 2144 752
            WIRE 2144 752 2272 752
            BEGIN DISPLAY 2128 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2272 1008 R0
            BEGIN DISPLAY 0 -576 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 2160 576 2208 576
            WIRE 2208 576 2272 576
            BEGIN DISPLAY 2208 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2048 624 2128 624
            WIRE 2128 624 2272 624
            BEGIN DISPLAY 2128 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 272 528 Clk R180 28
        BEGIN INSTANCE U_ALU 2896 928 R0
            BEGIN DISPLAY 0 -516 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RdData1(31:0)
            WIRE 2720 576 2752 576
            WIRE 2752 576 2896 576
            BEGIN DISPLAY 2752 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1424 1152 1520 1152
        BEGIN BRANCH Instr(15:0)
            WIRE 1520 1152 2032 1152
            WIRE 2032 1152 2736 1152
            WIRE 2736 736 2736 1152
            WIRE 2736 736 2896 736
            BEGIN DISPLAY 2032 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2800 816 2832 816
            WIRE 2832 816 2896 816
            BEGIN DISPLAY 2832 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 2800 896 2848 896
            WIRE 2848 896 2896 896
            BEGIN DISPLAY 2848 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 3456 736 R0
            BEGIN DISPLAY 0 -348 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 3360 528 3408 528
            WIRE 3408 528 3456 528
            BEGIN DISPLAY 3408 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 3408 592 3456 592
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 3408 656 3456 656
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 3360 752 3392 752
            WIRE 3392 752 3456 752
            BEGIN DISPLAY 3392 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 3280 816 3312 816
            WIRE 3312 816 3312 832
            WIRE 3312 832 3312 992
            WIRE 3312 992 3680 992
            WIRE 3680 992 3968 992
            WIRE 3968 928 3968 992
            WIRE 3968 928 4160 928
            BEGIN DISPLAY 3680 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3312 832 3408 832
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 3408 832 3424 832
            WIRE 3424 816 3424 832
            WIRE 3424 816 3456 816
            BEGIN DISPLAY 3424 832 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(31:0)
            WIRE 2720 624 2768 624
            WIRE 2768 624 2896 624
            WIRE 2768 624 2768 1024
            WIRE 2768 1024 3424 1024
            WIRE 3424 880 3456 880
            WIRE 3424 880 3424 1024
            BEGIN DISPLAY 2768 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MuxData 4160 960 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH MemOut(31:0)
            WIRE 3904 880 4000 880
            WIRE 4000 880 4160 880
            BEGIN DISPLAY 4000 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4016 800 4064 800
            WIRE 4064 800 4160 800
            BEGIN DISPLAY 4064 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(31:0)
            WIRE 2256 976 2272 976
            WIRE 2256 976 2256 1088
            WIRE 2256 1088 2272 1088
            WIRE 2272 1088 3392 1088
            WIRE 3392 1088 4608 1088
            WIRE 4544 800 4608 800
            WIRE 4608 800 4608 1088
            BEGIN DISPLAY 3392 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3408 592 INW0(31:0) R180 28
        IOMARKER 3408 656 INW1(31:0) R180 28
        BEGIN BRANCH OUTW0(31:0)
            WIRE 3904 592 3936 592
        END BRANCH
        IOMARKER 3936 592 OUTW0(31:0) R0 28
        BEGIN INSTANCE U_Ctrl 1600 1616 R0
            BEGIN DISPLAY 0 -504 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1424 1264 1520 1264
        BUSTAP 1424 1584 1520 1584
        BEGIN BRANCH Instr(31:26)
            WIRE 1520 1264 1536 1264
            WIRE 1536 1264 1600 1264
            BEGIN DISPLAY 1536 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(5:0)
            WIRE 1520 1584 1536 1584
            WIRE 1536 1584 1600 1584
            BEGIN DISPLAY 1536 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 1984 1264 2048 1264
            WIRE 2048 1264 2176 1264
            BEGIN DISPLAY 2048 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 1984 1328 2048 1328
            WIRE 2048 1328 2176 1328
            BEGIN DISPLAY 2048 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 1984 1392 2032 1392
            WIRE 2032 1392 2176 1392
            BEGIN DISPLAY 2032 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 1984 1456 2048 1456
            WIRE 2048 1456 2176 1456
            BEGIN DISPLAY 2048 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1984 1520 2048 1520
            WIRE 2048 1520 2176 1520
            BEGIN DISPLAY 2048 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 1984 1584 2048 1584
            WIRE 2048 1584 2192 1584
            BEGIN DISPLAY 2048 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
