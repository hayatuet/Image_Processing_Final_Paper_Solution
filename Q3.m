%% Removal of impulsive noise:
%  Impulsive noise is kind of image noise having having extreme intensities
%  i.e. Black or White (0, 255). The main problem with impulsive noise is that
%  its effect propagates to the neighboring pixels when LSI (Linear Space Invariant) 
%  filter like gaussian blurring filter is
%  applied. So for removing such noise using LSI filter is not possible.
%  Generally a non-linear filter like Median filter is applied to remove
%  such kind of noise. Since median filter takes median value within the
%  window, so impulsive noise, being relatively less frequent, gets filtered out by
%  median filter.