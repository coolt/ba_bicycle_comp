/******************************************************************************
*  Filename:       aon_event.c
*
******************************************************************************/

#include <aon_event.h>

//*****************************************************************************
//
// Handle support for DriverLib in ROM:
// This section will undo prototype renaming made in the header file
//
//*****************************************************************************
#if !defined(DOXYGEN)
    #undef  AONEventMcuWakeUpSet
    #define AONEventMcuWakeUpSet            NOROM_AONEventMcuWakeUpSet
    #undef  AONEventMcuWakeUpGet
    #define AONEventMcuWakeUpGet            NOROM_AONEventMcuWakeUpGet
    #undef  AONEventAuxWakeUpSet
    #define AONEventAuxWakeUpSet            NOROM_AONEventAuxWakeUpSet
    #undef  AONEventAuxWakeUpGet
    #define AONEventAuxWakeUpGet            NOROM_AONEventAuxWakeUpGet
    #undef  AONEventMcuSet
    #define AONEventMcuSet                  NOROM_AONEventMcuSet
    #undef  AONEventMcuGet
    #define AONEventMcuGet                  NOROM_AONEventMcuGet
#endif

//*****************************************************************************
//
//! Select event source for the specified MCU wakeup programmable event
//
//*****************************************************************************
void
AONEventMcuWakeUpSet(uint32_t ui32MCUWUEvent, uint32_t ui32EventSrc)
{
    uint32_t ui32Ctrl;

    //
    // Check the arguments.
    //
    ASSERT((ui32MCUWUEvent == AON_EVENT_MCU_WU0) ||
           (ui32MCUWUEvent == AON_EVENT_MCU_WU1) ||
           (ui32MCUWUEvent == AON_EVENT_MCU_WU2) ||
           (ui32MCUWUEvent == AON_EVENT_MCU_WU3));
    ASSERT(ui32EventSrc <= AON_EVENT_NONE);

    ui32Ctrl = HWREG(AON_EVENT_BASE + AON_EVENT_O_MCUWUSEL);

    if(ui32MCUWUEvent == AON_EVENT_MCU_WU0)
    {
        ui32Ctrl &= ~(AON_EVENT_MCUWUSEL_WU0_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_MCUWUSEL_WU0_EV_S;
    }
    else if(ui32MCUWUEvent == AON_EVENT_MCU_WU1)
    {
        ui32Ctrl &= ~(AON_EVENT_MCUWUSEL_WU1_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_MCUWUSEL_WU1_EV_S;
    }
    else if(ui32MCUWUEvent == AON_EVENT_MCU_WU2)
    {
        ui32Ctrl &= ~(AON_EVENT_MCUWUSEL_WU2_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_MCUWUSEL_WU2_EV_S;
    }
    else if(ui32MCUWUEvent == AON_EVENT_MCU_WU3)
    {
        ui32Ctrl &= ~(AON_EVENT_MCUWUSEL_WU3_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_MCUWUSEL_WU3_EV_S;
    }

    HWREG(AON_EVENT_BASE + AON_EVENT_O_MCUWUSEL) = ui32Ctrl;
}

//*****************************************************************************
//
//! Get event source for the specified MCU wakeup programmable event
//
//*****************************************************************************
uint32_t
AONEventMcuWakeUpGet(uint32_t ui32MCUWUEvent)
{
    uint32_t ui32EventSrc;

    //
    // Check the arguments.
    //
    ASSERT((ui32MCUWUEvent == AON_EVENT_MCU_WU0) ||
           (ui32MCUWUEvent == AON_EVENT_MCU_WU1) ||
           (ui32MCUWUEvent == AON_EVENT_MCU_WU2) ||
           (ui32MCUWUEvent == AON_EVENT_MCU_WU3));

    ui32EventSrc = HWREG(AON_EVENT_BASE + AON_EVENT_O_MCUWUSEL);

    if(ui32MCUWUEvent == AON_EVENT_MCU_WU0)
    {
        return((ui32EventSrc & AON_EVENT_MCUWUSEL_WU0_EV_M) >>
               AON_EVENT_MCUWUSEL_WU0_EV_S);
    }
    else if(ui32MCUWUEvent == AON_EVENT_MCU_WU1)
    {
        return((ui32EventSrc & AON_EVENT_MCUWUSEL_WU1_EV_M) >>
               AON_EVENT_MCUWUSEL_WU1_EV_S);
    }
    else if(ui32MCUWUEvent == AON_EVENT_MCU_WU2)
    {
        return((ui32EventSrc & AON_EVENT_MCUWUSEL_WU2_EV_M) >>
               AON_EVENT_MCUWUSEL_WU2_EV_S);
    }
    else if(ui32MCUWUEvent == AON_EVENT_MCU_WU3)
    {
        return((ui32EventSrc & AON_EVENT_MCUWUSEL_WU3_EV_M) >>
               AON_EVENT_MCUWUSEL_WU3_EV_S);
    }

    //
    // Should never get to this statement, but suppress warning.
    //
    ASSERT(0);
    return(0);
}

//*****************************************************************************
//
//! Select event source for the specified AUX wakeup programmable event
//
//*****************************************************************************
void
AONEventAuxWakeUpSet(uint32_t ui32AUXWUEvent, uint32_t ui32EventSrc)
{
    uint32_t ui32Ctrl;

    //
    // Check the arguments.
    //
    ASSERT((ui32AUXWUEvent == AON_EVENT_AUX_WU0) ||
           (ui32AUXWUEvent == AON_EVENT_AUX_WU1) ||
           (ui32AUXWUEvent == AON_EVENT_AUX_WU2));
    ASSERT(ui32EventSrc <= AON_EVENT_NONE);

    ui32Ctrl = HWREG(AON_EVENT_BASE + AON_EVENT_O_AUXWUSEL);

    if(ui32AUXWUEvent == AON_EVENT_AUX_WU0)
    {
        ui32Ctrl &= ~(AON_EVENT_AUXWUSEL_WU0_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_AUXWUSEL_WU0_EV_S;
    }
    else if(ui32AUXWUEvent == AON_EVENT_AUX_WU1)
    {
        ui32Ctrl &= ~(AON_EVENT_AUXWUSEL_WU1_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_AUXWUSEL_WU1_EV_S;
    }
    else if(ui32AUXWUEvent == AON_EVENT_AUX_WU2)
    {
        ui32Ctrl &= ~(AON_EVENT_AUXWUSEL_WU2_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_AUXWUSEL_WU2_EV_S;
    }

    HWREG(AON_EVENT_BASE + AON_EVENT_O_AUXWUSEL) = ui32Ctrl;
}

//*****************************************************************************
//
//! Get event source for the specified AUX wakeup programmable event
//
//*****************************************************************************
uint32_t
AONEventAuxWakeUpGet(uint32_t ui32AUXWUEvent)
{
    uint32_t ui32EventSrc;

    //
    // Check the arguments.
    //
    ASSERT((ui32AUXWUEvent == AON_EVENT_AUX_WU0) ||
           (ui32AUXWUEvent == AON_EVENT_AUX_WU1) ||
           (ui32AUXWUEvent == AON_EVENT_AUX_WU2));

    ui32EventSrc = HWREG(AON_EVENT_BASE + AON_EVENT_O_AUXWUSEL);

    if(ui32AUXWUEvent == AON_EVENT_AUX_WU0)
    {
        return((ui32EventSrc & AON_EVENT_AUXWUSEL_WU0_EV_M) >>
               AON_EVENT_AUXWUSEL_WU0_EV_S);
    }
    else if(ui32AUXWUEvent == AON_EVENT_AUX_WU1)
    {
        return((ui32EventSrc & AON_EVENT_AUXWUSEL_WU1_EV_M) >>
               AON_EVENT_AUXWUSEL_WU1_EV_S);
    }
    else if(ui32AUXWUEvent == AON_EVENT_AUX_WU2)
    {
        return((ui32EventSrc & AON_EVENT_AUXWUSEL_WU2_EV_M) >>
               AON_EVENT_AUXWUSEL_WU2_EV_S);
    }

    //
    // Should never get to this statement, but suppress warning.
    //
    ASSERT(0);
    return(0);
}

//*****************************************************************************
//
//! Select event source for the specified programmable event forwarded to the
//! MCU event fabric
//
//*****************************************************************************
void
AONEventMcuSet(uint32_t ui32MCUEvent, uint32_t ui32EventSrc)
{
    uint32_t ui32Ctrl;

    //
    // Check the arguments.
    //
    ASSERT((ui32MCUEvent == AON_EVENT_MCU_EVENT0) ||
           (ui32MCUEvent == AON_EVENT_MCU_EVENT1) ||
           (ui32MCUEvent == AON_EVENT_MCU_EVENT2));
    ASSERT(ui32EventSrc <= AON_EVENT_NONE);

    ui32Ctrl = HWREG(AON_EVENT_BASE + AON_EVENT_O_EVTOMCUSEL);

    if(ui32MCUEvent == AON_EVENT_MCU_EVENT0)
    {
        ui32Ctrl &= ~(AON_EVENT_EVTOMCUSEL_AON_PROG0_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_EVTOMCUSEL_AON_PROG0_EV_S;
    }
    else if(ui32MCUEvent == AON_EVENT_MCU_EVENT1)
    {
        ui32Ctrl &= ~(AON_EVENT_EVTOMCUSEL_AON_PROG1_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_EVTOMCUSEL_AON_PROG1_EV_S;
    }
    else if(ui32MCUEvent == AON_EVENT_MCU_EVENT2)
    {
        ui32Ctrl &= ~(AON_EVENT_EVTOMCUSEL_AON_PROG2_EV_M);
        ui32Ctrl |= (ui32EventSrc & 0x3f) << AON_EVENT_EVTOMCUSEL_AON_PROG2_EV_S;
    }

    HWREG(AON_EVENT_BASE + AON_EVENT_O_EVTOMCUSEL) = ui32Ctrl;
}

//*****************************************************************************
//
//! Get source for the specified programmable event forwarded to the MCU event
//! fabric.
//
//*****************************************************************************
uint32_t
AONEventMcuGet(uint32_t ui32MCUEvent)
{
    uint32_t ui32EventSrc;

    //
    // Check the arguments.
    //
    ASSERT((ui32MCUEvent == AON_EVENT_MCU_EVENT0) ||
           (ui32MCUEvent == AON_EVENT_MCU_EVENT1) ||
           (ui32MCUEvent == AON_EVENT_MCU_EVENT2));

    ui32EventSrc = HWREG(AON_EVENT_BASE + AON_EVENT_O_EVTOMCUSEL);

    if(ui32MCUEvent == AON_EVENT_MCU_EVENT0)
    {
        return((ui32EventSrc & AON_EVENT_EVTOMCUSEL_AON_PROG0_EV_M) >>
               AON_EVENT_EVTOMCUSEL_AON_PROG0_EV_S);
    }
    else if(ui32MCUEvent == AON_EVENT_MCU_EVENT1)
    {
        return((ui32EventSrc & AON_EVENT_EVTOMCUSEL_AON_PROG1_EV_M) >>
               AON_EVENT_EVTOMCUSEL_AON_PROG1_EV_S);
    }
    else if(ui32MCUEvent == AON_EVENT_MCU_EVENT2)
    {
        return((ui32EventSrc & AON_EVENT_EVTOMCUSEL_AON_PROG2_EV_M) >>
               AON_EVENT_EVTOMCUSEL_AON_PROG2_EV_S);
    }

    //
    // Should never get to this statement, but suppress warning.
    //
    ASSERT(0);
    return(0);
}
