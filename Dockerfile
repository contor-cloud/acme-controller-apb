FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IG9wZW5zaGlmdC1hY21lLWluc3RhbGxlcgpkZXNjcmlwdGlvbjog\
QW4gQVBCIHRoYXQgZGVwbG95cyB0aGUgT3BlblNoaWZ0IEFDTUUgQ29udHJvbGxlcgpiaW5kYWJs\
ZTogRmFsc2UKYXN5bmM6IG9wdGlvbmFsCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBvcGVuc2hp\
ZnQtYWNtZS1pbnN0YWxsZXIKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlv\
bjogVGhpcyBkZWZhdWx0IHBsYW4gZGVwbG95cyBvcGVuc2hpZnQtYWNtZQogICAgZnJlZTogVHJ1\
ZQogICAgbWV0YWRhdGE6IHt9CiAgICBwYXJhbWV0ZXJzOgogICAgICAtIG5hbWU6IGFjbWVfdXJs\
CiAgICAgICAgdGl0bGU6IEFDTUUgVVJMCiAgICAgICAgZGVzY3JpcHRpb246IEFDTUUgRW5kcG9p\
bnQgVVJMLiBEZWZhdWx0cyB0byBzdGFnaW5nLiBVc2UgaHR0cHM6Ly9hY21lLXYwMS5hcGkubGV0\
c2VuY3J5cHQub3JnL2RpcmVjdG9yeSBmb3IgcHJvZHVjdGlvbiBkZXBsb3ltZW50cy4KICAgICAg\
ICBkZWZhdWx0OiBodHRwczovL2FjbWUtc3RhZ2luZy5hcGkubGV0c2VuY3J5cHQub3JnL2RpcmVj\
dG9yeQogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0g\
bmFtZTogYWNtZV9sb2dsZXZlbAogICAgICAgIHRpdGxlOiBBQ01FIExvZ2xldmVsCiAgICAgICAg\
ZGVmYXVsdDogIjgiCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWlyZWQ6IHRydWUK\
ICAgICAgLSBuYW1lOiBhY21lX3NlbGZzZXJ2aWNlbmFtZQogICAgICAgIHRpdGxlOiBBQ01FIFNl\
bGZzZXJ2aWNlbmFtZQogICAgICAgIGRlc2NyaXB0aW9uOiBOYW1lIG9mIHRoZSBzZXJ2aWNlIHBv\
aW50aW5nIHRvIEFDTUUgY29udHJvbGxlcgogICAgICAgIGRlZmF1bHQ6IGFjbWUtY29udHJvbGxl\
cgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0gbmFt\
ZTogZG9ja2VyX2ltYWdlCiAgICAgICAgdGl0bGU6IERvY2tlciBJbWFnZQogICAgICAgIGRlc2Ny\
aXB0aW9uOiBEb2NrZXIgSW1hZ2Ugb2YgQUNNRSBjb250cm9sbGVyCiAgICAgICAgZGVmYXVsdDog\
ZG9ja2VyLmlvL3Rub3ppY2thL29wZW5zaGlmdC1hY21lCiAgICAgICAgdHlwZTogc3RyaW5nCiAg\
ICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSBuYW1lOiBkb2NrZXJfaW1hZ2VfdGFnCiAgICAg\
ICAgdGl0bGU6IERvY2tlciBJbWFnZSBUYWcKICAgICAgICBkZXNjcmlwdGlvbjogRG9ja2VyIElt\
YWdlIFRhZyBvZiBBQ01FIGNvbnRyb2xsZXIKICAgICAgICBkZWZhdWx0OiBsYXRlc3QKICAgICAg\
ICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogdHJ1ZQo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
