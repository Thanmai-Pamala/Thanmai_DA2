# Load the wine-clustering dataset
data(wineclustering)

# Select the subset of attributes for clustering
my_subset <- wineclustering[, c("Alcohol", "Ash", "Magnesium")]

# Preprocess the data (optional, depending on your requirements)
# For example, you can scale the attributes to have zero mean and unit variance
scaled_subset <- scale(my_subset)

# Set the number of clusters
k <- 3

# Perform k-means clustering
kmeans_result <- kmeans(scaled_subset, centers = k)

# Get the cluster assignments for each data point
cluster_assignments <- kmeans_result$cluster

# View the cluster assignments
print(cluster_assignments)

# Get the cluster centers
cluster_centers <- kmeans_result$centers

# View the cluster centers
print(cluster_centers)

# Visualize the clusters
plot(scaled_subset, col = cluster_assignments)
