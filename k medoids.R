# Load required libraries
library(cluster)
library(factoextra)

# Load the wine-clustering dataset
data(wineclustering)

# Select the subset of attributes for clustering
my_subset <- wineclustering[, c("Alcohol", "Ash", "Magnesium")]

# Preprocess the data (optional, depending on your requirements)
# For example, you can scale the attributes to have zero mean and unit variance
scaled_subset <- scale(my_subset)

# Set the number of clusters
k <- 3

# Perform k-medoids clustering
kmedoids_result <- pam(scaled_subset, k)

# Get the cluster assignments for each data point
cluster_assignments <- kmedoids_result$clustering

# View the cluster assignments
print(cluster_assignments)

# Get the cluster medoids
cluster_medoids <- scaled_subset[kmedoids_result$medoids, ]

# View the cluster medoids
print(cluster_medoids)

# Visualize the clusters
fviz_cluster(kmedoids_result, data = scaled_subset, geom = "point", ggtheme = theme_bw())
