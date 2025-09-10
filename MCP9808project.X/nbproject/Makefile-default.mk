#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MCP9808project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MCP9808project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=lib/src/dataXfer.c lib/src/dataXferImpl.c lib/src/pic24_adc.c lib/src/pic24_clockfreq.c lib/src/pic24_configbits.c lib/src/pic24_ecan.c lib/src/pic24_flash.c lib/src/pic24_i2c.c lib/src/pic24_serial.c lib/src/pic24_spi.c lib/src/pic24_stdio_uart.c lib/src/pic24_timer.c lib/src/pic24_uart.c lib/src/pic24_util.c MCP9808project.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/lib/src/dataXfer.o ${OBJECTDIR}/lib/src/dataXferImpl.o ${OBJECTDIR}/lib/src/pic24_adc.o ${OBJECTDIR}/lib/src/pic24_clockfreq.o ${OBJECTDIR}/lib/src/pic24_configbits.o ${OBJECTDIR}/lib/src/pic24_ecan.o ${OBJECTDIR}/lib/src/pic24_flash.o ${OBJECTDIR}/lib/src/pic24_i2c.o ${OBJECTDIR}/lib/src/pic24_serial.o ${OBJECTDIR}/lib/src/pic24_spi.o ${OBJECTDIR}/lib/src/pic24_stdio_uart.o ${OBJECTDIR}/lib/src/pic24_timer.o ${OBJECTDIR}/lib/src/pic24_uart.o ${OBJECTDIR}/lib/src/pic24_util.o ${OBJECTDIR}/MCP9808project.o
POSSIBLE_DEPFILES=${OBJECTDIR}/lib/src/dataXfer.o.d ${OBJECTDIR}/lib/src/dataXferImpl.o.d ${OBJECTDIR}/lib/src/pic24_adc.o.d ${OBJECTDIR}/lib/src/pic24_clockfreq.o.d ${OBJECTDIR}/lib/src/pic24_configbits.o.d ${OBJECTDIR}/lib/src/pic24_ecan.o.d ${OBJECTDIR}/lib/src/pic24_flash.o.d ${OBJECTDIR}/lib/src/pic24_i2c.o.d ${OBJECTDIR}/lib/src/pic24_serial.o.d ${OBJECTDIR}/lib/src/pic24_spi.o.d ${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d ${OBJECTDIR}/lib/src/pic24_timer.o.d ${OBJECTDIR}/lib/src/pic24_uart.o.d ${OBJECTDIR}/lib/src/pic24_util.o.d ${OBJECTDIR}/MCP9808project.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/lib/src/dataXfer.o ${OBJECTDIR}/lib/src/dataXferImpl.o ${OBJECTDIR}/lib/src/pic24_adc.o ${OBJECTDIR}/lib/src/pic24_clockfreq.o ${OBJECTDIR}/lib/src/pic24_configbits.o ${OBJECTDIR}/lib/src/pic24_ecan.o ${OBJECTDIR}/lib/src/pic24_flash.o ${OBJECTDIR}/lib/src/pic24_i2c.o ${OBJECTDIR}/lib/src/pic24_serial.o ${OBJECTDIR}/lib/src/pic24_spi.o ${OBJECTDIR}/lib/src/pic24_stdio_uart.o ${OBJECTDIR}/lib/src/pic24_timer.o ${OBJECTDIR}/lib/src/pic24_uart.o ${OBJECTDIR}/lib/src/pic24_util.o ${OBJECTDIR}/MCP9808project.o

# Source Files
SOURCEFILES=lib/src/dataXfer.c lib/src/dataXferImpl.c lib/src/pic24_adc.c lib/src/pic24_clockfreq.c lib/src/pic24_configbits.c lib/src/pic24_ecan.c lib/src/pic24_flash.c lib/src/pic24_i2c.c lib/src/pic24_serial.c lib/src/pic24_spi.c lib/src/pic24_stdio_uart.c lib/src/pic24_timer.c lib/src/pic24_uart.c lib/src/pic24_util.c MCP9808project.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/MCP9808project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP128GP502
MP_LINKER_FILE_OPTION=,--script="lib\application_linker_file\p33EP128GP502_application.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lib/src/dataXfer.o: lib/src/dataXfer.c  .generated_files/flags/default/693a89e77d5794b3b444893f35c8e60c56ecf4a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/dataXfer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/dataXfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/dataXfer.c  -o ${OBJECTDIR}/lib/src/dataXfer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/dataXfer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/dataXferImpl.o: lib/src/dataXferImpl.c  .generated_files/flags/default/e57a01bd34bc9efc714f03e26a16aa75b6fd6c39 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/dataXferImpl.o.d 
	@${RM} ${OBJECTDIR}/lib/src/dataXferImpl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/dataXferImpl.c  -o ${OBJECTDIR}/lib/src/dataXferImpl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/dataXferImpl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_adc.o: lib/src/pic24_adc.c  .generated_files/flags/default/9ba0306fdac8f1f4fa6f46f262a493eae29c477d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_adc.c  -o ${OBJECTDIR}/lib/src/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_adc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_clockfreq.o: lib/src/pic24_clockfreq.c  .generated_files/flags/default/2de2f337659575b6c804e93399d1222f56784c62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/lib/src/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_clockfreq.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_configbits.o: lib/src/pic24_configbits.c  .generated_files/flags/default/5d1c6a37c2aaf0a51e61c2561307ab22ed4fcd1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_configbits.c  -o ${OBJECTDIR}/lib/src/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_configbits.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_ecan.o: lib/src/pic24_ecan.c  .generated_files/flags/default/ebdbd5dc4ea10373a7360200297e55fd69eb117b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_ecan.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_ecan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_ecan.c  -o ${OBJECTDIR}/lib/src/pic24_ecan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_ecan.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_flash.o: lib/src/pic24_flash.c  .generated_files/flags/default/8fd840e584df9b9a37c9c6de6d0924a4e9662438 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_flash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_flash.c  -o ${OBJECTDIR}/lib/src/pic24_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_i2c.o: lib/src/pic24_i2c.c  .generated_files/flags/default/4d791c35cfa4d447c332a80a977c177026ca7b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_i2c.c  -o ${OBJECTDIR}/lib/src/pic24_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_i2c.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_serial.o: lib/src/pic24_serial.c  .generated_files/flags/default/3b513e943d1fd20c9072deca4671578e87199e6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_serial.c  -o ${OBJECTDIR}/lib/src/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_serial.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_spi.o: lib/src/pic24_spi.c  .generated_files/flags/default/e3aa52e60524e31c1b37d8d8f04d1a3317d67688 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_spi.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_spi.c  -o ${OBJECTDIR}/lib/src/pic24_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_stdio_uart.o: lib/src/pic24_stdio_uart.c  .generated_files/flags/default/c17c8b7f3b5e8ec5e5c1c55500a6afb651c9b28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_stdio_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_stdio_uart.c  -o ${OBJECTDIR}/lib/src/pic24_stdio_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_timer.o: lib/src/pic24_timer.c  .generated_files/flags/default/37fddf3468438cc2b3121182e23fab265484cc5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_timer.c  -o ${OBJECTDIR}/lib/src/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_uart.o: lib/src/pic24_uart.c  .generated_files/flags/default/e9c497ea9c50bebea323956f1b2929473c2871c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_uart.c  -o ${OBJECTDIR}/lib/src/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_util.o: lib/src/pic24_util.c  .generated_files/flags/default/e87beb609e086ba8f29ac18a9dc0cace471c50b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_util.c  -o ${OBJECTDIR}/lib/src/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_util.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/MCP9808project.o: MCP9808project.c  .generated_files/flags/default/35a2037974dd87c4c8c7032d52561c6de067fc37 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MCP9808project.o.d 
	@${RM} ${OBJECTDIR}/MCP9808project.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  MCP9808project.c  -o ${OBJECTDIR}/MCP9808project.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/MCP9808project.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/lib/src/dataXfer.o: lib/src/dataXfer.c  .generated_files/flags/default/cf77b5f4559a5ed608d084b56a283e14f0f38396 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/dataXfer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/dataXfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/dataXfer.c  -o ${OBJECTDIR}/lib/src/dataXfer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/dataXfer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/dataXferImpl.o: lib/src/dataXferImpl.c  .generated_files/flags/default/6a5426a83548211eb3961a1e2abd667d0e34e990 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/dataXferImpl.o.d 
	@${RM} ${OBJECTDIR}/lib/src/dataXferImpl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/dataXferImpl.c  -o ${OBJECTDIR}/lib/src/dataXferImpl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/dataXferImpl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_adc.o: lib/src/pic24_adc.c  .generated_files/flags/default/15e322569ab809835463790ce9c59a50c6be3b06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_adc.c  -o ${OBJECTDIR}/lib/src/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_adc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_clockfreq.o: lib/src/pic24_clockfreq.c  .generated_files/flags/default/1fcc43e11a45762f0c3d73c34ae1006fce94f1fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/lib/src/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_clockfreq.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_configbits.o: lib/src/pic24_configbits.c  .generated_files/flags/default/598a995fd8debdb51fb58184f286c50b55e4fc58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_configbits.c  -o ${OBJECTDIR}/lib/src/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_configbits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_ecan.o: lib/src/pic24_ecan.c  .generated_files/flags/default/b928c507ae38ba9f70d3a99545d449261cc5fa75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_ecan.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_ecan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_ecan.c  -o ${OBJECTDIR}/lib/src/pic24_ecan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_ecan.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_flash.o: lib/src/pic24_flash.c  .generated_files/flags/default/8927b15b87c4f17cc272ca4c3c57be8839e394ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_flash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_flash.c  -o ${OBJECTDIR}/lib/src/pic24_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_i2c.o: lib/src/pic24_i2c.c  .generated_files/flags/default/d09e38fd3a68ed7ba473514f1d21cb7a9bac44f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_i2c.c  -o ${OBJECTDIR}/lib/src/pic24_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_i2c.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_serial.o: lib/src/pic24_serial.c  .generated_files/flags/default/1397abe48b699399868022b91f9b817e18d29a7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_serial.c  -o ${OBJECTDIR}/lib/src/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_spi.o: lib/src/pic24_spi.c  .generated_files/flags/default/e5ec24cc970492213dd9f3a58bc998cb2dcc64a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_spi.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_spi.c  -o ${OBJECTDIR}/lib/src/pic24_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_stdio_uart.o: lib/src/pic24_stdio_uart.c  .generated_files/flags/default/b07ddfec6006f8b7e63485a293a8bea3a460fa13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_stdio_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_stdio_uart.c  -o ${OBJECTDIR}/lib/src/pic24_stdio_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_stdio_uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_timer.o: lib/src/pic24_timer.c  .generated_files/flags/default/b2c2c07f89daec3d25fe514724a7e152373c33a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_timer.c  -o ${OBJECTDIR}/lib/src/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_uart.o: lib/src/pic24_uart.c  .generated_files/flags/default/62b39a66f347e9c8f70282bee9c0251833e7a87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_uart.c  -o ${OBJECTDIR}/lib/src/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib/src/pic24_util.o: lib/src/pic24_util.c  .generated_files/flags/default/ed6c159a42514138a2d72e30fae0ebc6f8f3bae7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib/src/pic24_util.c  -o ${OBJECTDIR}/lib/src/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib/src/pic24_util.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/MCP9808project.o: MCP9808project.c  .generated_files/flags/default/6871a65cfa2e100304e344dadccd55f9659ac65a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MCP9808project.o.d 
	@${RM} ${OBJECTDIR}/MCP9808project.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  MCP9808project.c  -o ${OBJECTDIR}/MCP9808project.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/MCP9808project.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lib/include" -msmart-io=1 -Wall -msfr-warn=off   -std=gnu90  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/MCP9808project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    lib/application_linker_file/p33EP128GP502_application.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/MCP9808project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/MCP9808project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   lib/application_linker_file/p33EP128GP502_application.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/MCP9808project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/MCP9808project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
