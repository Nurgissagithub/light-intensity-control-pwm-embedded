# Light Intensity Control System using PWM (Arduino + MATLAB)

## Overview

This project presents the design and implementation of a **closed-loop light intensity control system** using **Pulse Width Modulation (PWM)**. The system automatically adjusts LED brightness based on ambient light conditions using a feedback mechanism.

The solution combines:

* **Embedded hardware (Arduino-based prototype)**
* **Simulation (MATLAB)**
* **Real-world validation**

---

## Demo

https://youtube.com/shorts/JZo3cJXWGSc?si=NcCMlVrOJj3rn07Y

---

## Key Features

* Closed-loop feedback control system
* Automatic brightness adaptation using LDR sensor
* PWM-based LED intensity modulation
* MATLAB system modeling
* Real-world prototype validation
* Strong agreement between simulation and experimental results

---

## System Architecture

### Hardware Components

* Arduino Uno
* Light Dependent Resistor (LDR)
* LED
* Resistors (10kΩ, 220Ω)
* Breadboard & jumper wires

### Software & Tools

* MATLAB
* Arduino IDE

---

## How It Works

1. The **LDR sensor** measures ambient light intensity.
2. The signal is converted via a **voltage divider** and read by Arduino (analog input).
3. A **control algorithm** determines the required brightness level.
4. The Arduino outputs a **PWM signal** to adjust LED intensity.
5. The system continuously adapts in real-time.

---

## Results

* Smooth and stable brightness transitions
* Fast response to ambient light changes
* Strong correlation between simulation and hardware results
* Demonstrates the effectiveness of PWM for energy-efficient lighting

---

## Engineering Value

This project demonstrates:

* Embedded system design with real hardware
* Signal acquisition and processing
* Feedback control systems

---

## Repository Structure

```
├── Light_Control.ino # Arduino Code
├── light_intensity_control.m # MATLAB Code
├── light_intensity_polished.xlsx # Polished data for MATLAB Code
└── README.md
```

---
