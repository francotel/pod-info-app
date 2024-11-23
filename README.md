# 📦 Pod Info  
**Pod Info** is a lightweight Docker image built with Nginx and Alpine 🐳. It dynamically shows the Kubernetes pod name and node name 🖥️ on a webpage, making it a simple and effective tool to verify your Kubernetes setup 🚀.  

![alt text](image.png)

## ✨ Features  
- 📝 Displays **Pod Name** and **Node Name** dynamically based on environment variables.  
- ⚡ Built with a lightweight base image (`nginx:alpine`) for fast startup and minimal resource usage.  
- 🔄 Includes default values for pod and node names if none are set.  
- 🎨 Clean and simple HTML/CSS design for easy customization.  

## 🚀 How to Use  
### 1️⃣ Pull the Image:  

```bash
docker pull francotel/pod-info:v1
```

### 2️⃣ Run the Container:

```bash
docker run -d -p 80:80 -e NODE_NAME="your-node-name" francotel/pod-info:v1
```

###  3️⃣ Access the Application:
🌐 Open your browser and visit:

```bash
http://<local-ip>:80
```

Here, you'll see your pod details displayed!

🔧 Environment Variables
```bash
NODE_NAME: Specifies the Kubernetes node name where the pod runs. Default: "Unknown Node".  
POD_NAME: Automatically derived from the container hostname.
```

###  🛠️ Kubernetes Deployment Example
Here’s a sample Kubernetes YAML configuration to deploy Pod Info:


