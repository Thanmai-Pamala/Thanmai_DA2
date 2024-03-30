# Load the wine-clustering dataset
data(wineclustering)

# Select the subset of attributes for clustering
my_subset <- wineclustering[, c("Alcohol", "Ash", "Magnesium")]

# Preprocess the data (optional, depending on your requirements)
# For example, you can scale the attributes to have zero mean and unit variance
scaled_subset <- scale(my_subset)

# Calculate the dissimilarity matrix
dissimilarity_matrix <- dist(scaled_subset)

# Perform hierarchical clustering
hierarchical_result <- hclust(dissimilarity_matrix)

# Set the number of clusters
k <- 3

# Cut the dendrogram to obtain cluster assignments
cluster_assignments <- cutree(hierarchical_result, k)

# View the cluster assignments
print(cluster_assignments)

# Visualize the dendrogram
plot(hierarchical_result)

# Visualize the clusters
plot(scaled_subset, col = cluster_assignments)
