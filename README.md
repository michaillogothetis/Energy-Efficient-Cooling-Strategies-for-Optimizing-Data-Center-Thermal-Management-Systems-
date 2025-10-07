# Energy-Efficient Cooling Strategies for Data Center Thermal Management

This project investigates **energy-efficient cooling techniques** for 1U rack servers in data centers using **ANSYS Discovery CFD simulations**.  
The analysis focuses on optimizing airflow distribution, temperature uniformity, and power consumption across multiple operational scenarios.

---

##  Project Overview

Modern data centers consume large amounts of energy for cooling critical components.  
This study aims to identify **cooling configurations that reduce thermal hotspots** and **improve airflow efficiency**, while maintaining safe operating temperatures.

The project models and simulates a **1U server** containing:
- CPU, RAM, PSU, SSD
- Heatsinks and fan housings
- Casing and airflow ducts

---

##  Simulation Setup

| Category | Description |
|-----------|-------------|
| Software | ANSYS Discovery 2024 |
| Method | CFD (steady-state, turbulent flow) |
| Domain | 1U rack server with internal components |
| Working Fluid | Air |
| Boundary Conditions | Inlet velocity, outlet pressure, heat flux on CPU and RAM |
| Evaluation Metrics | Temperature distribution, pressure drop, cooling efficiency |

---

##  Simulation Scenarios

Four operational scenarios were simulated to evaluate thermal performance and energy efficiency:

| Scenario | Description | Objective |
|-----------|--------------|------------|
| **Baseline** | Default flow and power settings | Reference configuration |
| **Energy-Saving** | Reduced fan speed and flow rate | Lower energy use while maintaining safe temps |
| **Peak Load** | Increased power and heat flux | Assess cooling capacity under maximum load |
| **Stress Test** | Extreme thermal boundary conditions | Evaluate design limits and thermal reliability |

---

##  Key Results

| Parameter | Baseline | Optimized Configuration |
|------------|-----------|--------------------------|
| Max Component Temperature | 52.8°C | **45.2°C** |
| Pressure Drop | 21.9 Pa | **15.1 Pa** |
| Airflow Velocity Range | 5 m/s | 3–5 m/s |
