.class public Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;
.super Ljava/lang/Object;
.source "CheckerPermission.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final grantedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;->grantedPermissions:Ljava/util/Set;

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;->context:Landroid/content/Context;

    return-void
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .registers 6

    if-eqz p1, :cond_26

    .line 44
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 48
    :cond_c
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;->context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-eqz v1, :cond_25

    .line 51
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    return v1

    .line 41
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method isAnyPermissionGranted([Ljava/lang/String;)Z
    .registers 6

    .line 26
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 27
    invoke-direct {p0, v3}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method
