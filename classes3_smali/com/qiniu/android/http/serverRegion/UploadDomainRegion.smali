.class public Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;
.super Ljava/lang/Object;
.source "UploadDomainRegion.java"

# interfaces
.implements Lcom/qiniu/android/http/request/IUploadRegion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;,
        Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;
    }
.end annotation


# static fields
.field private static Http3FrozenTime:I = 0x15180


# instance fields
.field private domainHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;",
            ">;"
        }
    .end annotation
.end field

.field private domainHostList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasFreezeHost:Z

.field private http3Enabled:Z

.field private ipv6Enabled:Z

.field private isAllFrozen:Z

.field private oldDomainHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;",
            ">;"
        }
    .end annotation
.end field

.field private oldDomainHostList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partialHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

.field private zoneInfo:Lcom/qiniu/android/common/ZoneInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    invoke-direct {v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->partialHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->ipv6Enabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->partialHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    return-object p0
.end method

.method private createDomainDictionary(Ljava/util/List;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 115
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    new-instance v3, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;

    invoke-direct {v3, v2}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    return-object v0
.end method

.method private freezeServerIfNeed(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;)V
    .registers 8

    if-eqz p1, :cond_bb

    if-eqz p2, :cond_bb

    .line 238
    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getServerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_bb

    .line 242
    :cond_c
    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->getFrozenType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->isHttp3()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    .line 245
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->canConnectToHost()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isHostUnavailable()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 246
    :cond_2b
    iput-boolean v2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->hasFreezeHost:Z

    .line 247
    invoke-static {}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp3Freezer()Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    move-result-object p1

    sget p2, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->Http3FrozenTime:I

    invoke-virtual {p1, v0, p2}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->freezeType(Ljava/lang/String;I)V

    :cond_36
    return-void

    .line 254
    :cond_37
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->canConnectToHost()Z

    move-result v1

    const-string v3, " ip:"

    if-eqz v1, :cond_45

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isHostUnavailable()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 255
    :cond_45
    iput-boolean v2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->hasFreezeHost:Z

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "partial freeze server host:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->partialHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v4

    iget v4, v4, Lcom/qiniu/android/storage/GlobalConfiguration;->partialHostFrozenTime:I

    invoke-virtual {v1, v0, v4}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->freezeType(Ljava/lang/String;I)V

    .line 261
    :cond_7c
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isHostUnavailable()Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 262
    iput-boolean v2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->hasFreezeHost:Z

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "global freeze server host:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp2Freezer()Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    move-result-object p1

    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object p2

    iget p2, p2, Lcom/qiniu/android/storage/GlobalConfiguration;->globalHostFrozenTime:I

    invoke-virtual {p1, v0, p2}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->freezeType(Ljava/lang/String;I)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method private unfreezeServer(Lcom/qiniu/android/http/request/IUploadServer;)V
    .registers 3

    if-eqz p1, :cond_1a

    .line 269
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getServerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 273
    :cond_9
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->getFrozenType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->partialHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    invoke-virtual {v0, p1}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->unfreezeType(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public getNextServer(Lcom/qiniu/android/http/request/UploadRequestState;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;
    .registers 10

    .line 125
    iget-boolean v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->isAllFrozen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f2

    if-nez p1, :cond_9

    goto/16 :goto_f2

    .line 129
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->freezeServerIfNeed(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;)V

    .line 132
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/UploadRequestState;->isUseOldServer()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 133
    iget-object p2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->oldDomainHostList:Ljava/util/ArrayList;

    goto :goto_17

    :cond_15
    iget-object p2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->domainHostList:Ljava/util/ArrayList;

    :goto_17
    if-eqz p1, :cond_1c

    .line 134
    iget-object p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->oldDomainHashMap:Ljava/util/HashMap;

    goto :goto_1e

    :cond_1c
    iget-object p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->domainHashMap:Ljava/util/HashMap;

    .line 137
    :goto_1e
    iget-boolean v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->http3Enabled:Z

    if-eqz v0, :cond_5d

    if-eqz p3, :cond_5d

    invoke-virtual {p3}, Lcom/qiniu/android/http/request/IUploadServer;->isHttp3()Z

    move-result p3

    if-eqz p3, :cond_5d

    .line 138
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2e
    :goto_2e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;

    if-nez v0, :cond_43

    goto :goto_2e

    .line 143
    :cond_43
    new-instance v2, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$1;

    invoke-direct {v2, p0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$1;-><init>(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)V

    invoke-virtual {v0, v2}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->getServer(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain$GetServerCondition;)Lcom/qiniu/android/http/serverRegion/UploadServer;

    move-result-object v0

    .line 166
    invoke-static {v0, v1}, Lcom/qiniu/android/http/networkStatus/UploadServerNetworkStatus;->getBetterNetworkServer(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qiniu/android/http/serverRegion/UploadServer;

    if-eqz v1, :cond_2e

    :cond_55
    if-eqz v1, :cond_5d

    .line 174
    sget-object p1, Lcom/qiniu/android/http/request/IUploadServer;->HttpVersion3:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/qiniu/android/http/serverRegion/UploadServer;->setHttpVersion(Ljava/lang/String;)V

    return-object v1

    .line 180
    :cond_5d
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_61
    :goto_61
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;

    if-nez v0, :cond_76

    goto :goto_61

    .line 185
    :cond_76
    new-instance v2, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$2;

    invoke-direct {v2, p0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$2;-><init>(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)V

    invoke-virtual {v0, v2}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->getServer(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain$GetServerCondition;)Lcom/qiniu/android/http/serverRegion/UploadServer;

    move-result-object v0

    .line 208
    invoke-static {v0, v1}, Lcom/qiniu/android/http/networkStatus/UploadServerNetworkStatus;->getBetterNetworkServer(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qiniu/android/http/serverRegion/UploadServer;

    if-eqz v1, :cond_61

    :cond_88
    if-nez v1, :cond_b6

    .line 215
    iget-boolean p3, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->hasFreezeHost:Z

    if-nez p3, :cond_b6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_b6

    .line 216
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    int-to-double v4, p3

    mul-double v2, v2, v4

    double-to-int p3, v2

    .line 217
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 218
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;

    if-eqz p1, :cond_b3

    .line 220
    invoke-virtual {p1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->getOneServer()Lcom/qiniu/android/http/serverRegion/UploadServer;

    move-result-object p1

    move-object v1, p1

    .line 222
    :cond_b3
    invoke-direct {p0, v1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->unfreezeServer(Lcom/qiniu/android/http/request/IUploadServer;)V

    :cond_b6
    if-eqz v1, :cond_ea

    .line 226
    sget-object p1, Lcom/qiniu/android/http/request/IUploadServer;->HttpVersion2:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/qiniu/android/http/serverRegion/UploadServer;->setHttpVersion(Ljava/lang/String;)V

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get server host:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/qiniu/android/http/serverRegion/UploadServer;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ip:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/qiniu/android/http/serverRegion/UploadServer;->getIp()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    goto :goto_f2

    :cond_ea
    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->isAllFrozen:Z

    const-string p1, "get server host:null ip:null"

    .line 230
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    :cond_f2
    :goto_f2
    return-object v1
.end method

.method public getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->zoneInfo:Lcom/qiniu/android/common/ZoneInfo;

    return-object v0
.end method

.method public isEqual(Lcom/qiniu/android/http/request/IUploadRegion;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 47
    :cond_4
    invoke-interface {p1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    if-nez v1, :cond_12

    return v2

    .line 51
    :cond_12
    invoke-interface {p1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_60

    .line 55
    :cond_1f
    invoke-interface {p1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_34

    invoke-virtual {p0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_34

    return v2

    .line 59
    :cond_34
    invoke-interface {p1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_49

    goto :goto_60

    .line 63
    :cond_49
    invoke-interface {p1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    return v2

    :cond_60
    :goto_60
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->isAllFrozen:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->domainHostList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->oldDomainHostList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public setupRegionData(Lcom/qiniu/android/common/ZoneInfo;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 86
    :cond_3
    iput-object p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->zoneInfo:Lcom/qiniu/android/common/ZoneInfo;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->isAllFrozen:Z

    .line 89
    iget-boolean v1, p1, Lcom/qiniu/android/common/ZoneInfo;->http3Enabled:Z

    iput-boolean v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->http3Enabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->http3Enabled:Z

    .line 93
    iget-boolean v0, p1, Lcom/qiniu/android/common/ZoneInfo;->ipv6:Z

    iput-boolean v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->ipv6Enabled:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v1, p1, Lcom/qiniu/android/common/ZoneInfo;->domains:Ljava/util/List;

    if-eqz v1, :cond_1e

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_1e
    iput-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->domainHostList:Ljava/util/ArrayList;

    .line 100
    invoke-direct {p0, v0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->createDomainDictionary(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->domainHashMap:Ljava/util/HashMap;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object p1, p1, Lcom/qiniu/android/common/ZoneInfo;->old_domains:Ljava/util/List;

    if-eqz p1, :cond_32

    .line 104
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_32
    iput-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->oldDomainHostList:Ljava/util/ArrayList;

    .line 107
    invoke-direct {p0, v1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->createDomainDictionary(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->oldDomainHashMap:Ljava/util/HashMap;

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "region :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "region old:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    return-void
.end method
