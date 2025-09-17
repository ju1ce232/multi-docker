{
    "AWSEBDockerrunVersion": 2,
    "containerDefinitions": [
        {
            "name": "client",
            "image": "skir232232/multi-client:latest",
            "hostname": "client",
            "essential": false
        },
        {
            "name": "server",
            "image": "skir232232/multi-server:latest",
            "hostname": "api",
            "essential": false
        },
        {
            "name": "worker",
            "image": "skir232232/multi-worker:latest",
            "hostname": "worker",
            "essential": false
        },
        {
            "name": "nginx",
            "image": "skir232232/multi-nginx:latest",
            "hostname": "nginx",
            "essential": true,
            "portMappings": [
                {
                    "hostPort": 80,
                    "containerPort": 80
                }
            ],
            "links": [
                "client",
                "server"
            ]
        }
    ]
}