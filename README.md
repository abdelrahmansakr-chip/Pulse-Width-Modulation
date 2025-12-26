# 💡Digital PWM Generator
- This project implements a digital Pulse Width Modulation (PWM) generator with a fixed period and adjustable duty cycle.
- The design uses a 4-bit control input (w) to set the duty cycle in 16 discrete steps. A 4-bit counter runs from 0 to 15, giving a PWM period of 16 clock cycles. The output remains HIGH while the counter value is less than w, and LOW otherwise.
- Increasing the duty cycle increases the average delivered power, while decreasing it reduces power.

# Special Case
When w = 0000, the output is forced HIGH (duty cycle = 16/16). This avoids a completely OFF output when the control value is zero.

# Inputs & Output
- Inputs:
clk – clock signal
w[3:0] – duty cycle control
- Output:
PWM_out – PWM signal

# Features
- Fully digital design (no analog components)
- Fixed PWM period
- Simple counter–comparator architecture

# Applications
- LED brightness control
- Motor speed control
- Power regulation systems
