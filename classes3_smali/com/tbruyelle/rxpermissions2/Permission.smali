.class public Lcom/tbruyelle/rxpermissions2/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# instance fields
.field public final granted:Z

.field public final name:Ljava/lang/String;

.field public final shouldShowRequestPermissionRationale:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    .line 22
    iput-boolean p3, p0, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 35
    const-class v1, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_29

    .line 37
    :cond_10
    check-cast p1, Lcom/tbruyelle/rxpermissions2/Permission;

    .line 39
    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    iget-boolean v2, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    if-eq v1, v2, :cond_19

    return v0

    .line 40
    :cond_19
    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    iget-boolean v2, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    if-eq v1, v2, :cond_20

    return v0

    .line 42
    :cond_20
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    :goto_29
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", granted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowRequestPermissionRationale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
