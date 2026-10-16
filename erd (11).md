```mermaid
erDiagram
    CUSTOMER ||--o{ VEHICLE : "owns"
    CUSTOMER ||--o{ REPAIRORDER : "places"
    VEHICLE ||--o{ REPAIRORDER : "has"
    REPAIRORDER ||--o{ REPAIRDETAIL : "contains"
    SERVICETYPE ||--o{ REPAIRDETAIL : "is-type-of"
    REPAIRORDER ||--|| INVOICE : "generates"
    MECHANIC ||--o{ INVOICE : "issues"
    REPAIRDETAIL }o--o{ SPAREPART : "uses"
    REPAIRDETAIL ||--o{ USAGEPARTS : "uses-parts"
    SPAREPART ||--o{ USAGEPARTS : "is-used-in"
