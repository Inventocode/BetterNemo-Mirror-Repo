.class public final Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;
.super Ljava/lang/Object;
.source "OfflinePackageData.kt"


# instance fields
.field private final env:Ljava/lang/String;

.field private final env_tag:Ljava/lang/String;

.field private final force_online:Ljava/lang/Boolean;

.field private final md5:Ljava/lang/String;

.field private final project_name:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 7

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->project_name:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->version:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env_tag:Ljava/lang/String;

    .line 127
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->force_online:Ljava/lang/Boolean;

    .line 128
    iput-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->md5:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->project_name:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env:Ljava/lang/String;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->version:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env_tag:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->force_online:Ljava/lang/Boolean;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->md5:Ljava/lang/String;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->project_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env_tag:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->force_online:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;
    .registers 15

    new-instance v7, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->project_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->project_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env_tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env_tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->force_online:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->force_online:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->md5:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->md5:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    return v2

    :cond_4e
    return v0
.end method

.method public final getEnv()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnv_tag()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env_tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getForce_online()Ljava/lang/Boolean;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->force_online:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getMd5()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public final getProject_name()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->project_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->project_name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->version:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env_tag:Ljava/lang/String;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->force_online:Ljava/lang/Boolean;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->md5:Ljava/lang/String;

    if-nez v2, :cond_46

    goto :goto_4a

    :cond_46
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflinePackageEnable(project_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->project_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", env="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", env_tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->env_tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", force_online="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->force_online:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
