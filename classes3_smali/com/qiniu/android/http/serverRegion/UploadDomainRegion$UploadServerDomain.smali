.class Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;
.super Ljava/lang/Object;
.source "UploadDomainRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadServerDomain"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain$GetServerCondition;
    }
.end annotation


# instance fields
.field protected final host:Ljava/lang/String;

.field protected ipGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->ipGroupList:Ljava/util/ArrayList;

    .line 284
    iput-object p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    return-void
.end method

.method private createIpGroupList()V
    .registers 7

    .line 343
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->ipGroupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    return-void

    .line 347
    :cond_b
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInetAddressByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 348
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_80

    .line 352
    :cond_1e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;

    .line 354
    invoke-interface {v2}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getIpValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3a

    goto :goto_27

    .line 358
    :cond_3a
    iget-object v4, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qiniu/android/utils/Utils;->getIpType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 360
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_4f

    .line 362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    :cond_4f
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 369
    :cond_56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 371
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 372
    new-instance v5, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;

    invoke-direct {v5, v3, v4}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 373
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 375
    :cond_7e
    iput-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->ipGroupList:Ljava/util/ArrayList;

    :cond_80
    :goto_80
    return-void
.end method


# virtual methods
.method protected getOneServer()Lcom/qiniu/android/http/serverRegion/UploadServer;
    .registers 15

    .line 328
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_52

    .line 331
    :cond_b
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->ipGroupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 332
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->ipGroupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 333
    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->ipGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;

    .line 334
    invoke-virtual {v0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->getNetworkAddress()Lcom/qiniu/android/http/dns/IDnsNetworkAddress;

    move-result-object v0

    .line 335
    new-instance v7, Lcom/qiniu/android/http/serverRegion/UploadServer;

    iget-object v3, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    invoke-interface {v0}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getIpValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getSourceValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getTimestampValue()Ljava/lang/Long;

    move-result-object v6

    move-object v1, v7

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/qiniu/android/http/serverRegion/UploadServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v7

    .line 338
    :cond_45
    new-instance v0, Lcom/qiniu/android/http/serverRegion/UploadServer;

    iget-object v10, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    move-object v9, v10

    invoke-direct/range {v8 .. v13}, Lcom/qiniu/android/http/serverRegion/UploadServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_52
    :goto_52
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getServer(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain$GetServerCondition;)Lcom/qiniu/android/http/serverRegion/UploadServer;
    .registers 12

    .line 288
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_79

    .line 292
    :cond_d
    monitor-enter p0

    .line 293
    :try_start_e
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->ipGroupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 294
    :cond_18
    invoke-direct {p0}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->createIpGroupList()V

    .line 296
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_76

    .line 301
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->ipGroupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5f

    .line 302
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->ipGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;

    .line 303
    invoke-virtual {v2}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->getNetworkAddress()Lcom/qiniu/android/http/dns/IDnsNetworkAddress;

    move-result-object v2

    .line 304
    new-instance v9, Lcom/qiniu/android/http/serverRegion/UploadServer;

    iget-object v5, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    invoke-interface {v2}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getIpValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getSourceValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getTimestampValue()Ljava/lang/Long;

    move-result-object v8

    move-object v3, v9

    move-object v4, v5

    invoke-direct/range {v3 .. v8}, Lcom/qiniu/android/http/serverRegion/UploadServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p1, :cond_5b

    .line 306
    iget-object v2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    invoke-interface {p1, v2, v1, v9}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain$GetServerCondition;->condition(Ljava/lang/String;Lcom/qiniu/android/http/serverRegion/UploadServer;Lcom/qiniu/android/http/serverRegion/UploadServer;)Z

    move-result v2

    if-eqz v2, :cond_5c

    :cond_5b
    move-object v1, v9

    :cond_5c
    if-nez p1, :cond_2c

    :cond_5e
    return-object v1

    :cond_5f
    if-eqz p1, :cond_69

    .line 319
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain$GetServerCondition;->condition(Ljava/lang/String;Lcom/qiniu/android/http/serverRegion/UploadServer;Lcom/qiniu/android/http/serverRegion/UploadServer;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 321
    :cond_69
    new-instance v1, Lcom/qiniu/android/http/serverRegion/UploadServer;

    iget-object v4, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain;->host:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v4

    invoke-direct/range {v2 .. v7}, Lcom/qiniu/android/http/serverRegion/UploadServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_75
    return-object v1

    :catchall_76
    move-exception p1

    .line 296
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p1

    :cond_79
    :goto_79
    return-object v1
.end method
