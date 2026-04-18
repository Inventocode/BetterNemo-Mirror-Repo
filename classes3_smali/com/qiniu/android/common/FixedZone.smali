.class public final Lcom/qiniu/android/common/FixedZone;
.super Lcom/qiniu/android/common/Zone;
.source "FixedZone.java"


# static fields
.field public static final zone0:Lcom/qiniu/android/common/Zone;

.field public static final zone1:Lcom/qiniu/android/common/Zone;

.field public static final zone2:Lcom/qiniu/android/common/Zone;

.field public static final zoneAs0:Lcom/qiniu/android/common/Zone;

.field public static final zoneNa0:Lcom/qiniu/android/common/Zone;


# instance fields
.field private zonesInfo:Lcom/qiniu/android/common/ZonesInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 18
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string v1, "upload.qiniup.com"

    const-string v2, "up.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload.qbox.me"

    const-string v3, "up.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "z0"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zone0:Lcom/qiniu/android/common/Zone;

    .line 25
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string v1, "upload-z1.qiniup.com"

    const-string v2, "up-z1.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload-z1.qbox.me"

    const-string v3, "up-z1.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "z1"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zone1:Lcom/qiniu/android/common/Zone;

    .line 32
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string v1, "upload-z2.qiniup.com"

    const-string v2, "up-z2.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload-z2.qbox.me"

    const-string v3, "up-z2.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "z2"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zone2:Lcom/qiniu/android/common/Zone;

    .line 39
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string v1, "upload-na0.qiniup.com"

    const-string v2, "up-na0.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload-na0.qbox.me"

    const-string v3, "up-na0.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "na0"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zoneNa0:Lcom/qiniu/android/common/Zone;

    .line 46
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string v1, "upload-as0.qiniup.com"

    const-string v2, "up-as0.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload-as0.qbox.me"

    const-string v3, "up-as0.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "as0"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zoneAs0:Lcom/qiniu/android/common/Zone;

    .line 61
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string v1, "upload-fog-cn-east-1.qiniup.com"

    const-string v2, "up-fog-cn-east-1.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "fog-cn-east-1"

    invoke-direct {v0, v3, v1, v2}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/common/ZonesInfo;)V
    .registers 2

    .line 92
    invoke-direct {p0}, Lcom/qiniu/android/common/Zone;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Lcom/qiniu/android/common/Zone;-><init>()V

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/common/FixedZone;->createZonesInfo([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    return-void
.end method

.method private createZonesInfo([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 112
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_32

    .line 116
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_1c

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1d

    :cond_1c
    move-object p1, v0

    .line 121
    :goto_1d
    invoke-static {v1, p1, p3}, Lcom/qiniu/android/common/ZoneInfo;->buildInfo(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p1

    if-nez p1, :cond_24

    return-object v0

    .line 125
    :cond_24
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p1, Lcom/qiniu/android/common/ZonesInfo;

    invoke-direct {p1, p2}, Lcom/qiniu/android/common/ZonesInfo;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_32
    :goto_32
    return-object v0
.end method

.method public static localsZoneInfo()Lcom/qiniu/android/common/FixedZone;
    .registers 3

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    sget-object v1, Lcom/qiniu/android/common/FixedZone;->zone0:Lcom/qiniu/android/common/Zone;

    check-cast v1, Lcom/qiniu/android/common/FixedZone;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/qiniu/android/common/FixedZone;->zone1:Lcom/qiniu/android/common/Zone;

    check-cast v1, Lcom/qiniu/android/common/FixedZone;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/qiniu/android/common/FixedZone;->zone2:Lcom/qiniu/android/common/Zone;

    check-cast v1, Lcom/qiniu/android/common/FixedZone;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/qiniu/android/common/FixedZone;->zoneNa0:Lcom/qiniu/android/common/Zone;

    check-cast v1, Lcom/qiniu/android/common/FixedZone;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/qiniu/android/common/FixedZone;->zoneAs0:Lcom/qiniu/android/common/Zone;

    check-cast v1, Lcom/qiniu/android/common/FixedZone;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/common/FixedZone;

    .line 77
    iget-object v2, v2, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    if-eqz v2, :cond_31

    iget-object v2, v2, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_31

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_31

    .line 82
    :cond_49
    new-instance v0, Lcom/qiniu/android/common/ZonesInfo;

    invoke-direct {v0, v1}, Lcom/qiniu/android/common/ZonesInfo;-><init>(Ljava/util/ArrayList;)V

    .line 83
    new-instance v1, Lcom/qiniu/android/common/FixedZone;

    invoke-direct {v1, v0}, Lcom/qiniu/android/common/FixedZone;-><init>(Lcom/qiniu/android/common/ZonesInfo;)V

    return-object v1
.end method


# virtual methods
.method public getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;
    .registers 2

    .line 133
    iget-object p1, p0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    return-object p1
.end method

.method public preQuery(Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandler;)V
    .registers 4

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 139
    invoke-interface {p2, p1, v0, v0}, Lcom/qiniu/android/common/Zone$QueryHandler;->complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    :cond_7
    return-void
.end method
