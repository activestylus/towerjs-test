module.exports =
  mongodb:
    development:
      name: "wordup-development"
      port: 27017
      host: "127.0.0.1"
    test:
      name: "wordup-test"
      port: 27017
      host: "127.0.0.1"
    staging:
      name: "wordup-staging"
      port: 27017
      host: "127.0.0.1"
    production:
      name: "wordup-production"
      port: 27017
      host: "127.0.0.1"
    
  redis:
    development:
      name: "wordup-development"
      port: 6397
      host: "127.0.0.1"
    test:
      name: "wordup-test"
      port: 6397
      host: "127.0.0.1"
    staging:
      name: "wordup-staging"
      port: 6397
      host: "127.0.0.1"
    production:
      name: "wordup-production"
      port: 6397
      host: "127.0.0.1"
