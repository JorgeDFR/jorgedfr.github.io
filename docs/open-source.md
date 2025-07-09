# Open-Source

## IILABS 3D: iilab Indoor LiDAR-based SLAM Dataset

Indoor environments present unique challenges for Simultaneous Localization and Mapping (SLAM).
Existing datasets typically focus on outdoor scenarios and rely on a single LiDAR sensor,
limiting the evaluation of SLAM algorithms in complex indoor settings.
The IILABS 3D dataset was designed to address these limitations by providing a
comprehensive, sensor-rich dataset for benchmarking 3D LiDAR-based SLAM algorithms indoors.
It includes data from four different 3D LiDAR sensors
(Velodyne VLP-16, Ouster OS1-64, RoboSense RS-Helios-5515, and Livox Mid-360),
along with an IMU and wheel odometry, all recorded using a wheeled mobile robot in the
[iilab](https://www.inesctec.pt/en/laboratories/iilab-industry-and-innovation-lab).
High-precision ground-truth poses were acquired using a OptiTrack Motion Capture system.
The dataset also contains calibration sequences and six benchmark trajectories,
enabling reproducible and rigorous SLAM evaluations.
To support the use of this dataset, a complete open-source toolkit was developed,
providing scripts for data handling, metric computation (ATE, RTE, RRE), and SLAM algorithm benchmarking.
Additionally, a benchmark suite was implemented to evaluate nine state-of-the-art SLAM algorithms using the dataset.

Links:

- _Website:_ [jorgedfr/3d\_lidar\_slam\_benchmark\_at\_iilab](https://jorgedfr.github.io/3d_lidar_slam_benchmark_at_iilab)
- _GitHub (Benchmark + Docs):_ [jorgedfr/3d\_lidar\_slam\_benchmark\_at\_iilab](https://github.com/jorgedfr/3d_lidar_slam_benchmark_at_iilab)
- _GitHub (Toolkit):_ [jorgedfr/iilabs3d-toolkit](https://github.com/jorgedfr/iilabs3d-toolkit)
- _DOI (Dataset):_ [10.25747/VHNJ-WM80](https://doi.org/10.25747/VHNJ-WM80)
- _DOI (Paper):_ [TBD](https://doi.org/TODO)
- _Preprint:_ [TBD](https://doi.org/TODO)

Citation (Dataset):

> Ribeiro, J.D., Sousa, R.B., Martins, J.G., Aguiar, A.S., Santos, F.N., & Sobreira, H.M.
> (2025).
> _IILABS 3D: iilab Indoor LiDAR-based SLAM Dataset_.
> DOI: [10.25747/VHNJ-WM80](https://doi.org/10.25747/VHNJ-WM80).

<!-- Citation (Paper):

> Ribeiro, J.D., Sousa, R.B., Martins, J.G., Aguiar, A.S., Santos, F.N., & Sobreira, H.M.
> (2025).
> _Indoor Benchmark of 3D LiDAR SLAM at iilab – Industry and Innovation Laboratory_.
> <journal>.
> DOI: [TBD](https://doi.org/TODO) -->