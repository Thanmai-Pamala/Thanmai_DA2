# Load the required package
library(cluster)

# Prepare your data
# ...

# Perform DIANA clustering
diana_result <- diana(wineclustering)

# Set the number of clusters
k <- 3

# Cut the dendrogram to obtain cluster assignments
cluster_assignments <- cutree(diana_result, k)

# View the cluster assignments
print(cluster_assignments)

# Visualize the dendrogram
plot(diana_result)

# Visualize the clusters
# ...
