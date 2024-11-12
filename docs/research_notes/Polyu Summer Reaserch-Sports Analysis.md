# Polyu Summer Reaserch-Sports Analysis
paper list:
MonoTrack: Shuttle trajectory reconstruction from monocular badminton video

TrackNetV2: Efficient Shuttlecock Tracking Network

Automated Hit-frame Detection for Badminton Match Analysis

Deep Reinforcement Learning in a Racket Sport for Player Evaluation With Technical and Tactical Contexts

An All Deep System for Badminton Game Analysis


Feature:
- player, court, net detect: use RCNN model in pytorch to construct keypoints detection model reference on Automated Hit-frame Detection for Badminton Match Analysis. Use labelme tools to annotate net four keypoints.
- badminton detect (show the trajectory): use pytorch version TrackNet-v2 to collect the badminton flying data. The TrackNet-v2 code and model are from github open source code.
- event detect(hitting frame capture): use some part of TrackNet-v3 and monotrack code to do simple hit-frame detection but the performance is not good
- Automatically edits out videos from normal camera viewpoints(show rally): accoding to the shape of court detection to decide if the current frame is a rally beginning frame and rally end frame.


