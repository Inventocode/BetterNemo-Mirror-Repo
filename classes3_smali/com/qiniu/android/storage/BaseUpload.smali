.class abstract Lcom/qiniu/android/storage/BaseUpload;
.super Ljava/lang/Object;
.source "BaseUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;
    }
.end annotation


# instance fields
.field protected final completionHandler:Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;

.field protected final config:Lcom/qiniu/android/storage/Configuration;

.field private currentRegionIndex:I

.field private currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

.field protected final data:[B

.field protected final fileName:Ljava/lang/String;

.field protected final key:Ljava/lang/String;

.field private metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

.field protected final option:Lcom/qiniu/android/storage/UploadOptions;

.field protected final recorderKey:Ljava/lang/String;

.field private regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/request/IUploadRegion;",
            ">;"
        }
    .end annotation
.end field

.field protected final token:Lcom/qiniu/android/storage/UpToken;

.field protected final uploadSource:Lcom/qiniu/android/storage/UploadSource;


# direct methods
.method protected constructor <init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V
    .registers 20

    .line 67
    invoke-interface {p1}, Lcom/qiniu/android/storage/UploadSource;->getFileName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/qiniu/android/storage/BaseUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;[BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    return-void
.end method

.method private constructor <init>(Lcom/qiniu/android/storage/UploadSource;[BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V
    .registers 12

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance p8, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    const/4 v0, 0x0

    invoke-direct {p8, v0}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;-><init>(Ljava/util/ArrayList;)V

    iput-object p8, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    .line 45
    iput-object p1, p0, Lcom/qiniu/android/storage/BaseUpload;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    .line 46
    iput-object p2, p0, Lcom/qiniu/android/storage/BaseUpload;->data:[B

    if-eqz p3, :cond_12

    goto :goto_14

    :cond_12
    const-string p3, "?"

    .line 47
    :goto_14
    iput-object p3, p0, Lcom/qiniu/android/storage/BaseUpload;->fileName:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    if-eqz p6, :cond_1d

    goto :goto_21

    .line 50
    :cond_1d
    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object p6

    :goto_21
    iput-object p6, p0, Lcom/qiniu/android/storage/BaseUpload;->option:Lcom/qiniu/android/storage/UploadOptions;

    .line 51
    iput-object p7, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    .line 53
    iput-object p9, p0, Lcom/qiniu/android/storage/BaseUpload;->recorderKey:Ljava/lang/String;

    .line 54
    iput-object p10, p0, Lcom/qiniu/android/storage/BaseUpload;->completionHandler:Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;

    .line 56
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->initData()V

    return-void
.end method

.method protected constructor <init>([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V
    .registers 19

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    .line 77
    invoke-direct/range {v0 .. v10}, Lcom/qiniu/android/storage/BaseUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;[BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/BaseUpload;)Lcom/qiniu/android/http/metrics/UploadTaskMetrics;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    return-object p0
.end method

.method private setupRegions()Z
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->zone:Lcom/qiniu/android/common/Zone;

    if-nez v0, :cond_a

    goto :goto_53

    .line 157
    :cond_a
    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    invoke-virtual {v0, v2}, Lcom/qiniu/android/common/Zone;->getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 158
    iget-object v2, v0, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_53

    .line 161
    :cond_1d
    iget-object v0, v0, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/common/ZoneInfo;

    .line 165
    new-instance v4, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-direct {v4}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;-><init>()V

    .line 166
    invoke-virtual {v4, v3}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->setupRegionData(Lcom/qiniu/android/common/ZoneInfo;)V

    .line 167
    invoke-virtual {v4}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->isValid()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 168
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 171
    :cond_46
    iput-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    .line 172
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    iput-object v2, v0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->regions:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_53

    const/4 v1, 0x1

    :cond_53
    :goto_53
    return v1
.end method


# virtual methods
.method protected addRegionRequestMetricsOfOneFlow(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-nez v0, :cond_a

    .line 251
    iput-object p1, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    goto :goto_d

    .line 253
    :cond_a
    invoke-virtual {v0, p1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    :goto_d
    return-void
.end method

.method protected completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->end()V

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v0, :cond_e

    .line 141
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->end()V

    .line 144
    :cond_e
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    if-eqz v1, :cond_19

    .line 145
    invoke-virtual {v1, v0}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    .line 148
    :cond_19
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->completionHandler:Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;

    if-eqz v0, :cond_24

    .line 149
    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Ljava/lang/String;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lorg/json/JSONObject;)V

    :cond_24
    return-void
.end method

.method protected getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 232
    :cond_6
    monitor-enter p0

    .line 233
    :try_start_7
    iget v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 234
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qiniu/android/http/request/IUploadRegion;

    .line 236
    :cond_1c
    monitor-exit p0

    return-object v1

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method protected getCurrentRegionRequestMetrics()Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    return-object v0
.end method

.method protected getTargetRegion()Lcom/qiniu/android/http/request/IUploadRegion;
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 223
    :cond_b
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/request/IUploadRegion;

    return-object v0

    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initData()V
    .registers 2

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    return-void
.end method

.method protected insertRegionAtFirst(Lcom/qiniu/android/http/request/IUploadRegion;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/http/request/IUploadRegion;

    .line 183
    invoke-interface {p1, v1}, Lcom/qiniu/android/http/request/IUploadRegion;->isEqual(Lcom/qiniu/android/http/request/IUploadRegion;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_26

    .line 189
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_26
    return-void
.end method

.method protected prepareToUpload()I
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/qiniu/android/storage/BaseUpload;->setupRegions()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public run()V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->start()V

    .line 89
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->zone:Lcom/qiniu/android/common/Zone;

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    new-instance v2, Lcom/qiniu/android/storage/BaseUpload$1;

    invoke-direct {v2, p0}, Lcom/qiniu/android/storage/BaseUpload$1;-><init>(Lcom/qiniu/android/storage/BaseUpload;)V

    invoke-virtual {v0, v1, v2}, Lcom/qiniu/android/common/Zone;->preQuery(Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandler;)V

    return-void
.end method

.method protected startToUpload()V
    .registers 3

    .line 118
    new-instance v0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 119
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->start()V

    return-void
.end method

.method protected switchRegion()Z
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 199
    :cond_6
    monitor-enter p0

    .line 200
    :try_start_7
    iget v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 201
    iget-object v3, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 202
    iput v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    const/4 v1, 0x1

    .line 205
    :cond_16
    monitor-exit p0

    return v1

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected switchRegionAndUpload()Z
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v0, :cond_11

    .line 124
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->end()V

    .line 125
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 129
    :cond_11
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->switchRegion()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 131
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->startToUpload()V

    :cond_1a
    return v0
.end method

.method protected switchRegionAndUploadIfNeededWithErrorResponse(Lcom/qiniu/android/http/ResponseInfo;)Z
    .registers 3

    if-eqz p1, :cond_1d

    .line 210
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 211
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->couldRetry()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    iget-boolean p1, p1, Lcom/qiniu/android/storage/Configuration;->allowBackupHost:Z

    if-eqz p1, :cond_1d

    .line 212
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->switchRegionAndUpload()Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x1

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    return p1
.end method
