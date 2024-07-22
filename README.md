# Assignment-solvative
architecture diagram 
                                      +---------------+
                                      |  User Request  |
                                      +---------------+
                                             |
                                             |
                                             v
                                      +---------------+
                                      |  API Gateway  |
                                      |  (Serverless)  |
                                      +---------------+
                                             |
                                             |
                                             v
                                      +---------------+
                                      |  Lambda Function|
                                      |  (Serverless)   |
                                      +---------------+
                                             |
                                             |
                                             v
                                      +---------------+
                                      |  S3 Bucket     |
                                      |  (Media Storage)|
                                      +---------------+
                                             |
                                             |
                                             v
                                      +---------------+
                                      |  CloudFront    |
                                      |  (Content Delivery)|
                                      +---------------+
                                             |
                                             |
                                             v
                                      +---------------+
                                      |  Route 53      |
                                      |  (DNS Service)  |
                                      +---------------+
