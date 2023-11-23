# MikroTik .rsc Script Writing and Sending Guide

This guide provides step-by-step instructions on writing and sending .rsc (RouterOS Script) files to MikroTik equipment using a serial port and GtkTerm. .rsc scripts are a powerful way to automate configurations on MikroTik routers and switches.

## Steps

1. **Connect MikroTik Equipment to Computer**
   - Connect using a serial cable from the computer to the MikroTik Equipment.

3. **Open GtkTerm**
   - Launch GtkTerm on your computer.

4. **Configure Serial Port**
   - Navigate to **File -> Preferences**.
   - Under **Port**, select the serial port and change the baud rate to 115200.

7. **Open a New .rsc Script**
   - Create a new .rsc script in your preferred text editor.
   - Here is an example .rsc script, which creates a new bridge, and adds ports 23 and 24 to said bridge:
   ```routerOS
    /interface bridge add name=bridge1;
    /interface bridge port remove [find where interface=ether23];
    /interface bridge port remove [find where interface=ether24];
    /interface bridge port add bridge=bridge1 interface=ether23;
    /interface bridge port add bridge=bridge1 interface=ether24;
    /interface bridge port print
   ```

8. **Save .rsc Script**
   - Save the script with a meaningful filename, e.g., `config_script.rsc`.

9. **Send .rsc Script to MikroTik**
   - In GtkTerm, go to **File -> Send RAW File** and select your .rsc script.

10. **Monitor Progress**
    - Check the GtkTerm console for script execution feedback.
    - When the terminal stops writing code, press the X in the top right corner of the popup to close the window.

11. **Execute Commands**
    - Press enter to execute commands in the terminal.

12. **Check MikroTik Configuration**
    - Check the MikroTik configuration to ensure the script executed as expected.

## Additional Tips

- Double-check .rsc script syntax and commands to avoid errors.
- Running the script multiple times may cause errors, so be sure to check the configuration after each run. 

Congratulations! You've successfully written and sent .rsc scripts using GtkTerm and a serial port.
