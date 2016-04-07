# ssj-nasa-tops
NASA Terrestrial Observation  and Prediction System (TOPS) integrated ET system

Lead: NASA Ames, Forrest Melton

Utilizes the NASA Terrestrial Observation and Prediction System (TOPS)
to integrate satellite observations and meteorological observations to
map basal crop coefficients and evapotranspiration.


## [Results](./results)

This method will provide estimates of ET and Kc based on TOPS? data.
Monthly results will be created by applying ETo data for the
interperiods?


Data | Date | Daily | Monthly
---  | --- | --- | ---
ET   | [l] | [d] | [m]
Kc    | [l] | [d] | [m]

The following table describes some of the required data from the other
sources.

Data | Date | Daily | Monthly
--------- | --- | --- | ---
ETo       | [W] | [W] | [W]
LandCover | [N] | [N] | [N]


[O]: https://github.com/ssj-delta-cu/ssj-overview
[W]: https://github.com/ssj-delta-cu/ssj-weather/cimis
[N]: https://github.com/ssj-delta-cu/ssj-nasa-landcover
[l]: ./results/dates
[d]: ./results/daily
[m]: ./results/monthly