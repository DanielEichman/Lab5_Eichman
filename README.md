Lab5_Eichman_working
====================
##Discussion of 1st Program Operation
This program loads 8 into the accumulator then increments it. The value is then outputted onto port 3. If the value is less than 0 it will be incremented again then outputted. If it is greater than 0 the program will enter an infinite loop. The output values are: 9,A,B,C,D,E,F,1 then the program will enter a invite loop.  
##Discussion of 1st Program Instruction Cycles	
####LDAI
![image](https://raw.githubusercontent.com/DanielEichman/Lab5_Eichman/master/LDAI.JPG)

This loads the value 8 on to the accumulator.
####ADDI
![image](https://raw.githubusercontent.com/DanielEichman/Lab5_Eichman/master/ADDI.JPG)

This adds the value 1 to the accumulator.
####OUT
![image](https://raw.githubusercontent.com/DanielEichman/Lab5_Eichman/master/OUT.JPG)

This outputs the value of the accumulator to port 3.
####JN
![image](https://raw.githubusercontent.com/DanielEichman/Lab5_Eichman/master/JN.JPG)

IF the value is less than 0, jump to ADDI.
####JMP
![image](https://raw.githubusercontent.com/DanielEichman/Lab5_Eichman/master/JMP.JPG)

Enters a infinite loop.

##Flow Chart
![image](https://raw.githubusercontent.com/DanielEichman/Lab5_Eichman/master/Flow.JPG)
##Answers to PRISM Questions
####1.	When the controller’s current state is “FETCH,” what is the status of the following control lines:

a.	PCLd: high

b.	IRLd: high

c.	ACCLd:low

####2.	The current state is Decode LoAddr and the IR contains “OUT.”  What are the control signals are asserted, and what will the next state be?

MarLoLd,PCLd,R_W(write),MemSel_L. The next state with be direct IO execute. 

####3.	What are the three status signals sent from the PRISM datapath to the PRISM controller?

ALessZero,AEqZero,IR

####4.	Why is it important that ACCLd signal be active during the execute state for the ADDI instruction?

This function addes the next value to the current value in the accumulator. So during the execution the value of the accumlator will change. Therefore to load it to the accumulator ACCLd must be high. 

####5.	What changes are necessary to the PRISM datapath to add another instruction (SUBI, which would subtract an immediate value from the accumulator) to the instruction set?

The first problem with this is that there would be a total of 17 instuctions which means at a minium 5 bits would be needed to represent all the instuctions. Furthermore to implement this I would NEG the immediate value then ADD it to the acuumulator. 

