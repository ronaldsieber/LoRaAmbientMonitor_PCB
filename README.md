# LoRaAmbientMonitor_PCB

**KiCad project of a Printed Circuit Board (PCB) for the LoRa-AmbientMonitor, based on ESP32 with temperature, humidity, PIR motion and ambient light sensor, as well as car battery voltage measurement.**

The *LoRa-AmbientMonitor* is designed to monitor the ambient conditions inside a car garage and also to monitor the voltage of the car battery. The acquisited data are transmitted to a remote station (e.g. in the house) via LoRa radio (low-power/long-range radio protocol).

## Board Features

The *LoRa-AmbientMonitor* contains the following components:
- ESP32 LoRa Development Board with OLED display
- DHT22 (combined temperature and humidity sensor)
- ALS-PDIC243 (Ambient Light Sensor)
- HC-SR501 (PIR Motion Detector)
- 3 freely usable user LEDs
- 4-position DIP switch and 1 freely usable user button (CFG, SET)
- 12V input to measure car battery voltage

The measurement of the ambient brightness via the ALS-PDIC243 Ambient Light Sensor as well as measurement of the car battery voltage is realized via 2 inputs of the Adafruit_ADS1115 module (4 channel 15-bit ADC module).

![\[kicad_3d_model\]](Documentation/LoRaAmbientMonitor_PCB_3D-View.png)

## Board Description

The PCB of the *LoRa-AmbientMonitor* is a two-layer Printed Circuit Board (PCB), assembled on one side and only uses THT components (Through Hole Technology) that are very easy to solder. It can therefore be used very easily also by students and hobbyists.

The values of all components are specified in the [Schematic](Documentation/LoRaAmbientMonitor_PCB.sch.pdf). The [Silkscreen](Documentation/LoRaAmbientMonitor_PCB_Components.pdf) illustrates the placement of the components on the PCB.

The PCB size and the positions of the mounting holes allow installation in the plastic universal housing of 135 x 95 x 45 mm (article number 523117). Only the lower half-shell of the housing is used, so that the sensors (in particular the PIR motion detector HC-SR501 and the ambient light sensor ALS-PDIC243) can monitor the environment. Since the upper and lower half-shells are identical, the second half shell can be used for another *LoRa-AmbientMonitor*.

![\[LoRaAmbientMonitor_Kit\]](Documentation/LoRaAmbientMonitor_Kit.png)

The user LEDs are connected to the GPIO of the ESP32 and can therefore be used freely in principle. However, the placement on the PCB was done in such a way that the following usage is favored:

 - LED D101, Red: Motion detected by PIR motion detector (HC-SR501).
 - LED D102, Green: Transmission of a LoRa data package
 - LED D103, yellow: connected car battery detected (e.g. Vin at J2 > 2V)

The 4-way DIP switch SW2 is also connected to the GPIO of the ESP32. It can be used for configuration settings at runtime. This makes it possible to program one and the same fixed firmware on several boards. Individual Node IDs can then be configured via the DIP switch. This individual Node IDs can be embedded in the LoRa data packets and thus enable the receiver to identify the correspondenting source module.

The User Button SW1 is also connected to the GPIO of the ESP32. It can be used freely by the application software and is suitable, among other things, as a starting condition for the [Bluetooth Configuration Framework](https://github.com/ronaldsieber/ESP32BleConfig).

The diodes D2, D3 and D4 serve as protection circuit for the ADC module ADS1115:
- D2: Reverse polarity protection for car battery measuring input
- D3: Overvoltage protection for car battery measuring input
- D4: Derivation of the car battery input voltage for a powerless ADS1115 (prevention of substrate conduction effects when a car battery is connected to a LoRa AmbientMonitor without power supply voltage)

## Power Supply

There are the following options for supplying power to the board:
- Via the USB port of the ESP32 LoRa Development Board (in this case, 'Pin2/5V' of the ESP32DevBoard acts as an output and supplies the rest of the circuit with it)
- Supply of 5...6VDC to connector J1 (in this case the board supplies the ESP32DevBoard and 'Pin2/5V' acts as an input)

## Commissioning

With the Arduino sketch from the [LoRaAmbientMonitor_IoCheck](https://github.com/ronaldsieber/LoRaAmbientMonitor_IoCheck) repository, all components of the board can be checked for correct function after assembly. The sketch is also a good starting point for new software projects based on this board.

## KiCad Schematic Symbols and Footprints

For the *LoRaAmbienteMonitor*, some schematic symbols and footprints have been newly created or modified. These are stored inside this repository in the [KiCad_Components/usrlib](KiCad_Components/usrlib) path.

The following KiCad library is also required for the combined temperature and humidity sensor DHT22:
https://github.com/skorokithakis/kicad-lib

## PCB Source of Supply

By searching in the Internet, several PCB manufacturers can be found who are able to directly import the KiCad layout file [LoRaAmbientMonitor_PCB.kicad_pcb](LoRaAmbientMonitor_PCB/LoRaAmbientMonitor_PCB.kicad_pcb). The PCBs with silkscreen (assembly printing) on the top are then sent by post after a few days.

## Practice Notes

On the PIR Motion Setector (U3, HC-SR501) are assembled larger/higher components such as trimmer potentiometers and electrolytic capacitors on its underside. Therefore, a 3-pin socket strip must be used on the PCB to ensure the required distance between the HC-SR501 and the PCB.

On the ESP32 LoRa Development Board (U1) there is a LiPo battery charger for 3.7V Lipo batteries is integrated. Due to the height of the JST 1.25mm battery connector on the underside of the board, the ESP32 LoRa Development Board cannot be soldered directly with its pin headers to the PCB of the *LoRaAmbienteMonitor*. Here, too, the required installation space can be created by using socket strips. Since the ESP32 LoRa Development Board has 18 pins per side, two 9-pin socket strips were used.

The 4-channel 15-bit ADC module (U2, Adafruit_ADS1115 module) is only equipped on its top side and can in principle be soldered directly to the PCB of the *LoRaAmbienteMonitor* with its pin headers. But here, too, the use of a 10-pin socket strip is a good idea, so that the module can be easily replaced if necessary.

## Software Projects for the LoRaAmbienteMonitor

- [LoRaAmbientMonitor_IoCheck](https://github.com/ronaldsieber/LoRaAmbientMonitor_IoCheck) - Checking of all components during commissioning and starting point for new software projects based on this board

- **LoRaAmbienteMonitor (in Q4/2022 or Q1/2023)**
- (1) Arduino Sketch / Firmware for the LoRaAmbienteMonitor_PCB (transmitter side)
- (2) Raspberry Pi Application for receiving and processing the environmental data (receiver side)
(Both, Arduino Sketch / Firmware for the LoRaAmbienteMonitor_PCB and Raspberry Pi Application are expected to be completed by Q4/2022 or Q1/2023)


