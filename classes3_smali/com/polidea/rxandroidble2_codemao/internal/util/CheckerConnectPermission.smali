.class public Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;
.super Ljava/lang/Object;
.source "CheckerConnectPermission.java"


# instance fields
.field private final checkerPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;

.field private final connectPermissions:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;[[Ljava/lang/String;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;->checkerPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;

    .line 22
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;->connectPermissions:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRecommendedConnectRuntimePermissions()[Ljava/lang/String;
    .registers 12

    .line 35
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;->connectPermissions:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v3, v1, :cond_f

    aget-object v5, v0, v3

    .line 36
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 38
    :cond_f
    new-array v0, v4, [Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;->connectPermissions:[[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    if-ge v4, v3, :cond_2b

    aget-object v6, v1, v4

    .line 41
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1c
    if-ge v8, v7, :cond_28

    aget-object v9, v6, v8

    add-int/lit8 v10, v5, 0x1

    .line 42
    aput-object v9, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_1c

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2b
    return-object v0
.end method

.method public isConnectRuntimePermissionGranted()Z
    .registers 7

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;->connectPermissions:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 28
    iget-object v5, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;->checkerPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;

    invoke-virtual {v5, v4}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;->isAnyPermissionGranted([Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    return v2
.end method
