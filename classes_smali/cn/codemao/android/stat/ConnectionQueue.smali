.class public Lcn/codemao/android/stat/ConnectionQueue;
.super Ljava/lang/Object;
.source "ConnectionQueue.java"


# instance fields
.field private appKey_:Ljava/lang/String;

.field private connectionProcessorFuture_:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private context_:Landroid/content/Context;

.field private deviceId_:Lcn/codemao/android/stat/DeviceId;

.field private executor_:Ljava/util/concurrent/ExecutorService;

.field private serverURL_:Ljava/lang/String;

.field private sslContext_:Ljavax/net/ssl/SSLContext;

.field private store_:Lcn/codemao/android/stat/CountlyStore;

.field private uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/stat/ConnectionQueue;)Lcn/codemao/android/stat/CountlyStore;
    .registers 1

    .line 53
    iget-object p0, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    return-object p0
.end method

.method private prepareCommonRequestData()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method private prepareLocationData(Lcn/codemao/android/stat/CountlyStore;Z)Ljava/lang/String;
    .registers 8

    .line 450
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->anyConsentGiven()Z

    const-string v0, "&location="

    const-string v1, "location"

    const-string v2, ""

    if-eqz p2, :cond_30

    .line 454
    invoke-virtual {p1}, Lcn/codemao/android/stat/CountlyStore;->getLocationDisabled()Z

    move-result p2

    if-nez p2, :cond_1f

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_30

    .line 458
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bf

    .line 460
    :cond_30
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_bf

    .line 462
    invoke-virtual {p1}, Lcn/codemao/android/stat/CountlyStore;->getLocation()Ljava/lang/String;

    move-result-object p2

    .line 463
    invoke-virtual {p1}, Lcn/codemao/android/stat/CountlyStore;->getLocationCity()Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual {p1}, Lcn/codemao/android/stat/CountlyStore;->getLocationCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-virtual {p1}, Lcn/codemao/android/stat/CountlyStore;->getLocationIpAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_6a

    .line 467
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6a

    :try_start_52
    const-string v4, "UTF-8"

    .line 469
    invoke-static {p2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_52 .. :try_end_58} :catch_58

    .line 473
    :catch_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6a
    if-eqz v1, :cond_86

    .line 476
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_86

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&city="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_86
    if-eqz v3, :cond_a3

    .line 480
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a3

    .line 481
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&country_code="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :cond_a3
    if-eqz p1, :cond_bf

    .line 484
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_bf

    .line 485
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ip="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_bf
    :goto_bf
    return-object v2
.end method


# virtual methods
.method beginSession()V
    .registers 7

    .line 154
    new-instance v0, Lcn/codemao/android/stat/pojo/ReportInfo;

    const-string v1, "0"

    invoke-direct {v0, v1}, Lcn/codemao/android/stat/pojo/ReportInfo;-><init>(Ljava/lang/String;)V

    .line 155
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestamp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "process_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v2, Lcn/codemao/android/stat/pojo/EventInfo;

    const-string v3, "APP_LAUNCHER"

    invoke-direct {v2, v3, v1}, Lcn/codemao/android/stat/pojo/EventInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    iget-object v1, v0, Lcn/codemao/android/stat/pojo/ReportInfo;->data:Lcn/codemao/android/stat/pojo/DataBody;

    iget-object v1, v1, Lcn/codemao/android/stat/pojo/DataBody;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 162
    invoke-direct {p0}, Lcn/codemao/android/stat/ConnectionQueue;->prepareCommonRequestData()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v2

    const-string v3, "sessions"

    invoke-virtual {v2, v3}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_65

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&begin_session=1&metrics="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/stat/ConnectionQueue;->context_:Landroid/content/Context;

    .line 167
    invoke-static {v1}, Lcn/codemao/android/stat/DeviceInfo;->getMetrics(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    .line 171
    :goto_66
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v5

    .line 172
    invoke-direct {p0, v5, v3}, Lcn/codemao/android/stat/ConnectionQueue;->prepareLocationData(Lcn/codemao/android/stat/CountlyStore;Z)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_80

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 179
    :cond_80
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    const-string v3, "attribution"

    invoke-virtual {v1, v3}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 181
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    iget-boolean v1, v1, Lcn/codemao/android/stat/CodeMaoStat;->isAttributionEnabled:Z

    if-eqz v1, :cond_a1

    .line 182
    iget-object v1, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v1}, Lcn/codemao/android/stat/CountlyStore;->getCachedAdvertisingId()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    const/4 v2, 0x1

    .line 192
    :cond_a1
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    iput-boolean v4, v1, Lcn/codemao/android/stat/CodeMaoStat;->isBeginSessionSent:Z

    if-eqz v2, :cond_b5

    .line 195
    iget-object v1, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0}, Lcn/codemao/android/stat/pojo/ReportInfo;->toJSON()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    :cond_b5
    return-void
.end method

.method public changeDeviceId(Ljava/lang/String;I)V
    .registers 5

    .line 242
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 244
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->anyConsentGiven()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 249
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/codemao/android/stat/ConnectionQueue;->prepareCommonRequestData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&device_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "sessions"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&session_duration="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    :cond_46
    iget-object p2, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {p2, p1}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    return-void
.end method

.method checkInternalState()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->context_:Landroid/content/Context;

    if-eqz v0, :cond_4c

    .line 134
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->appKey_:Ljava/lang/String;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_44

    .line 137
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    if-eqz v0, :cond_3c

    .line 140
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->serverURL_:Ljava/lang/String;

    if-eqz v0, :cond_34

    invoke-static {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isValidURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 143
    sget-object v0, Lcn/codemao/android/stat/CodeMaoStat;->publicKeyPinCertificates:Ljava/util/List;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->serverURL_:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_33

    .line 144
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "server must start with https once you specified public keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_33
    return-void

    .line 141
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "server URL is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "countly store has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "app key has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method endSession(I)V
    .registers 3

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/stat/ConnectionQueue;->endSession(ILjava/lang/String;)V

    return-void
.end method

.method endSession(ILjava/lang/String;)V
    .registers 7

    .line 297
    new-instance v0, Lcn/codemao/android/stat/pojo/ReportInfo;

    const-string v1, "0"

    invoke-direct {v0, v1}, Lcn/codemao/android/stat/pojo/ReportInfo;-><init>(Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestamp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "process_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v2, Lcn/codemao/android/stat/pojo/EventInfo;

    const-string v3, "APP_EXIT"

    invoke-direct {v2, v3, v1}, Lcn/codemao/android/stat/pojo/EventInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 301
    iget-object v0, v0, Lcn/codemao/android/stat/pojo/ReportInfo;->data:Lcn/codemao/android/stat/pojo/DataBody;

    iget-object v0, v0, Lcn/codemao/android/stat/pojo/DataBody;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 305
    invoke-direct {p0}, Lcn/codemao/android/stat/ConnectionQueue;->prepareCommonRequestData()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    const-string v3, "sessions"

    invoke-virtual {v1, v3}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6d

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&end_session=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_6b

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&session_duration="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6b
    const/4 p1, 0x1

    goto :goto_6e

    :cond_6d
    const/4 p1, 0x0

    :goto_6e
    if-eqz p2, :cond_7b

    .line 315
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/stat/CodeMaoStat;->anyConsentGiven()Z

    move-result p2

    if-eqz p2, :cond_7b

    goto :goto_7c

    :cond_7b
    move v3, p1

    :goto_7c
    if-eqz v3, :cond_83

    .line 322
    iget-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {p1, v2}, Lcn/codemao/android/stat/CountlyStore;->addEvent(Lcn/codemao/android/stat/pojo/EventInfo;)V

    :cond_83
    return-void
.end method

.method ensureExecutor()V
    .registers 2

    .line 497
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    .line 498
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    :cond_a
    return-void
.end method

.method getAppKey()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->appKey_:Ljava/lang/String;

    return-object v0
.end method

.method getConnectionProcessorFuture()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->connectionProcessorFuture_:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 74
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->context_:Landroid/content/Context;

    return-object v0
.end method

.method getCountlyStore()Lcn/codemao/android/stat/CountlyStore;
    .registers 2

    .line 110
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    return-object v0
.end method

.method getDeviceId()Lcn/codemao/android/stat/DeviceId;
    .registers 2

    .line 118
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->deviceId_:Lcn/codemao/android/stat/DeviceId;

    return-object v0
.end method

.method getExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 517
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method getServerURL()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->serverURL_:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadResultCallback()Lcn/codemao/android/stat/UploadResultCallback;
    .registers 2

    .line 102
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;

    return-object v0
.end method

.method recordEvents(Ljava/lang/String;)V
    .registers 3

    .line 415
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 421
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    return-void
.end method

.method sendConsentChanges(Ljava/lang/String;)V
    .registers 4

    .line 426
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/codemao/android/stat/ConnectionQueue;->prepareCommonRequestData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&consent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 431
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    return-void
.end method

.method sendCrashReport(Ljava/lang/String;Z)V
    .registers 6

    .line 392
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 397
    new-instance p2, Lcn/codemao/android/stat/pojo/ReportInfo;

    const-string v0, "1"

    invoke-direct {p2, v0}, Lcn/codemao/android/stat/pojo/ReportInfo;-><init>(Ljava/lang/String;)V

    .line 398
    new-instance v0, Lcn/codemao/android/stat/pojo/EventInfo;

    const-string v1, "EVENT_CRASH"

    invoke-direct {v0, v1}, Lcn/codemao/android/stat/pojo/EventInfo;-><init>(Ljava/lang/String;)V

    .line 399
    iget-object v1, v0, Lcn/codemao/android/stat/pojo/EventInfo;->d:Ljava/util/Map;

    const-string v2, "error"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object p1, p2, Lcn/codemao/android/stat/pojo/ReportInfo;->data:Lcn/codemao/android/stat/pojo/DataBody;

    iget-object p1, p1, Lcn/codemao/android/stat/pojo/DataBody;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {p2}, Lcn/codemao/android/stat/pojo/ReportInfo;->toJSON()Ljava/lang/String;

    move-result-object p1

    .line 404
    iget-object p2, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {p2, p1}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    return-void
.end method

.method sendLocation()V
    .registers 4

    .line 331
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 333
    invoke-direct {p0}, Lcn/codemao/android/stat/ConnectionQueue;->prepareCommonRequestData()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->getCountlyStore()Lcn/codemao/android/stat/CountlyStore;

    move-result-object v1

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcn/codemao/android/stat/ConnectionQueue;->prepareLocationData(Lcn/codemao/android/stat/CountlyStore;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v1, v0}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    return-void
.end method

.method sendReferrerData(Ljava/lang/String;)V
    .registers 4

    .line 372
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 374
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "attribution"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    if-eqz p1, :cond_1a

    .line 380
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    :cond_1a
    return-void
.end method

.method sendUserData()V
    .registers 3

    .line 349
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 351
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 355
    :cond_10
    invoke-static {}, Lcn/codemao/android/stat/UserData;->getDataForRequest()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 359
    iget-object v1, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v1, v0}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    :cond_24
    return-void
.end method

.method setAppKey(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->appKey_:Ljava/lang/String;

    return-void
.end method

.method setConnectionProcessorFuture(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->connectionProcessorFuture_:Ljava/util/concurrent/Future;

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->context_:Landroid/content/Context;

    return-void
.end method

.method setCountlyStore(Lcn/codemao/android/stat/CountlyStore;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    return-void
.end method

.method public setDeviceId(Lcn/codemao/android/stat/DeviceId;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->deviceId_:Lcn/codemao/android/stat/DeviceId;

    return-void
.end method

.method setExecutor(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method setServerURL(Ljava/lang/String;)V
    .registers 7

    .line 86
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->serverURL_:Ljava/lang/String;

    .line 88
    sget-object p1, Lcn/codemao/android/stat/CodeMaoStat;->publicKeyPinCertificates:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_e

    sget-object p1, Lcn/codemao/android/stat/CodeMaoStat;->certificatePinCertificates:Ljava/util/List;

    if-nez p1, :cond_e

    .line 89
    iput-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->sslContext_:Ljavax/net/ssl/SSLContext;

    goto :goto_28

    :cond_e
    const/4 p1, 0x1

    :try_start_f
    new-array p1, p1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 92
    new-instance v2, Lcn/codemao/android/stat/CertificateTrustManager;

    sget-object v3, Lcn/codemao/android/stat/CodeMaoStat;->publicKeyPinCertificates:Ljava/util/List;

    sget-object v4, Lcn/codemao/android/stat/CodeMaoStat;->certificatePinCertificates:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcn/codemao/android/stat/CertificateTrustManager;-><init>(Ljava/util/List;Ljava/util/List;)V

    aput-object v2, p1, v1

    const-string v1, "TLS"

    .line 93
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcn/codemao/android/stat/ConnectionQueue;->sslContext_:Ljavax/net/ssl/SSLContext;

    .line 94
    invoke-virtual {v1, v0, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_29

    :goto_28
    return-void

    :catchall_29
    move-exception p1

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setUploadResultCallback(Lcn/codemao/android/stat/UploadResultCallback;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;

    return-void
.end method

.method tick()V
    .registers 9

    .line 509
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0}, Lcn/codemao/android/stat/CountlyStore;->isEmptyConnections()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->connectionProcessorFuture_:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 510
    :cond_12
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->ensureExecutor()V

    .line 511
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcn/codemao/android/stat/ConnectionProcessor;

    iget-object v2, p0, Lcn/codemao/android/stat/ConnectionQueue;->serverURL_:Ljava/lang/String;

    iget-object v3, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    iget-object v4, p0, Lcn/codemao/android/stat/ConnectionQueue;->deviceId_:Lcn/codemao/android/stat/DeviceId;

    iget-object v5, p0, Lcn/codemao/android/stat/ConnectionQueue;->sslContext_:Ljavax/net/ssl/SSLContext;

    iget-object v6, p0, Lcn/codemao/android/stat/ConnectionQueue;->uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/stat/ConnectionProcessor;-><init>(Ljava/lang/String;Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId;Ljavax/net/ssl/SSLContext;Lcn/codemao/android/stat/UploadResultCallback;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue;->connectionProcessorFuture_:Ljava/util/concurrent/Future;

    :cond_2d
    return-void
.end method

.method public tokenSession(Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;)V
    .registers 6

    .line 262
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    .line 264
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    const-string v1, "push"

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 268
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/codemao/android/stat/ConnectionQueue;->prepareCommonRequestData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&token_session=1&android_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&test_mode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;->TEST:Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    if-ne p2, p1, :cond_2f

    const/4 p1, 0x2

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&locale="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static {}, Lcn/codemao/android/stat/DeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    .line 276
    new-instance v0, Lcn/codemao/android/stat/ConnectionQueue$1;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/stat/ConnectionQueue$1;-><init>(Lcn/codemao/android/stat/ConnectionQueue;Ljava/lang/String;)V

    const-wide/16 v1, 0xa

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method updateSession(I)V
    .registers 7

    .line 208
    new-instance v0, Lcn/codemao/android/stat/pojo/ReportInfo;

    const-string v1, "0"

    invoke-direct {v0, v1}, Lcn/codemao/android/stat/pojo/ReportInfo;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v1, Lcn/codemao/android/stat/pojo/EventInfo;

    const-string v2, "session"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/codemao/android/stat/pojo/EventInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 210
    iget-object v2, v0, Lcn/codemao/android/stat/pojo/ReportInfo;->data:Lcn/codemao/android/stat/pojo/DataBody;

    iget-object v2, v2, Lcn/codemao/android/stat/pojo/DataBody;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->checkInternalState()V

    if-lez p1, :cond_6e

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Lcn/codemao/android/stat/ConnectionQueue;->prepareCommonRequestData()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v3

    const-string v4, "sessions"

    invoke-virtual {v3, v4}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&session_duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 223
    :cond_3e
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    const-string v2, "attribution"

    invoke-virtual {p1, v2}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 224
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    iget-boolean p1, p1, Lcn/codemao/android/stat/CodeMaoStat;->isAttributionEnabled:Z

    if-eqz p1, :cond_5f

    .line 225
    iget-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {p1}, Lcn/codemao/android/stat/CountlyStore;->getCachedAdvertisingId()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v4, v1

    :goto_60
    if-eqz v4, :cond_6e

    .line 235
    iget-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0}, Lcn/codemao/android/stat/pojo/ReportInfo;->toJSON()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    :cond_6e
    return-void
.end method
