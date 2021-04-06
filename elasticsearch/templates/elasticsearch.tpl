cluster.name: {{ es_cluster_name }} 
node.name: {{ ansible_hostname }}
discovery.seed_hosts: [{{ es_seed_hosts  }}]
cluster.initial_master_nodes: [{{ es_master_nodes }}]

http.host: {{ es_http_host }}
http.port: {{ es_http_port }}

transport.host: {{ es_trans_host }}
transport.port: {{ es_trans_port }}

path.logs: {{ elasticsearch_base }}/logs/{{ es_cluster_name }}
path.data: {{ elasticsearch_base }}/data/{{ es_cluster_name }}
path.repo: /opt/backup/elasticsearch/{{ es_cluster_name }}
