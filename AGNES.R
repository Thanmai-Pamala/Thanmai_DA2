# Load the wine-clustering dataset
data(wineclustering)

# Select the subset of attributes for clustering
my_subset <- wineclustering[, c("Alcohol", "Ash", "Magnesium")]

# Preprocess the data (optional, depending on your requirements)
# For example, you can scale the attributes to have zero mean and unit variance
scaled_subset <- scale(my_subset)

# Perform AGNES clustering
agnes_result <- agnes(scaled_subset)

# Set the number of clusters
k <- 3

# Cut the dendrogram to obtain cluster assignments
cluster_assignments <- cutree(agnes_result, k)

# View the cluster assignments
print(cluster_assignments)

# Visualize the dendrogram
plot(agnes_result)

# Visualize the clusters
plot(scaled_subset, col = cluster_assignments)
