.class abstract Lcom/qiniu/android/storage/PartsUploadPerformer;
.super Ljava/lang/Object;
.source "PartsUploadPerformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;,
        Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;
    }
.end annotation


# instance fields
.field final config:Lcom/qiniu/android/storage/Configuration;

.field protected currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

.field final fileName:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field final options:Lcom/qiniu/android/storage/UploadOptions;

.field final recorder:Lcom/qiniu/android/storage/Recorder;

.field final recorderKey:Ljava/lang/String;

.field recoveredFrom:Ljava/lang/Long;

.field private targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

.field final token:Lcom/qiniu/android/storage/UpToken;

.field private final upProgress:Lcom/qiniu/android/storage/UpProgress;

.field uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

.field final uploadSource:Lcom/qiniu/android/storage/UploadSource;

.field uploadTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/request/RequestTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V
    .registers 8

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    .line 48
    iput-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->fileName:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->token:Lcom/qiniu/android/storage/UpToken;

    .line 51
    iput-object p5, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->options:Lcom/qiniu/android/storage/UploadOptions;

    .line 52
    iput-object p6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->config:Lcom/qiniu/android/storage/Configuration;

    .line 53
    iget-object p1, p6, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 54
    iput-object p7, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 55
    new-instance p1, Lcom/qiniu/android/storage/UpProgress;

    iget-object p2, p5, Lcom/qiniu/android/storage/UploadOptions;->progressHandler:Lcom/qiniu/android/storage/UpProgressHandler;

    invoke-direct {p1, p2}, Lcom/qiniu/android/storage/UpProgress;-><init>(Lcom/qiniu/android/storage/UpProgressHandler;)V

    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->upProgress:Lcom/qiniu/android/storage/UpProgress;

    .line 57
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->initData()V

    return-void
.end method


# virtual methods
.method canReadFile()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->hasValidResource()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method closeFile()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-eqz v0, :cond_7

    .line 80
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->close()V

    :cond_7
    return-void
.end method

.method abstract completeUpload(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
.end method

.method couldReloadInfo()Z
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->couldReloadSource()Z

    move-result v0

    return v0
.end method

.method createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;
    .registers 9

    .line 210
    new-instance v7, Lcom/qiniu/android/http/request/RequestTransaction;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    iget-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    iget-object v5, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->token:Lcom/qiniu/android/storage/UpToken;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/IUploadRegion;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V

    .line 211
    monitor-enter p0

    .line 212
    :try_start_13
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadTransactions:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 213
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_1a
    monitor-exit p0

    return-object v7

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 221
    monitor-enter p0

    .line 222
    :try_start_3
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadTransactions:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 223
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 225
    :cond_a
    monitor-exit p0

    goto :goto_f

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1

    :cond_f
    :goto_f
    return-void
.end method

.method abstract getDefaultUploadInfo()Lcom/qiniu/android/storage/UploadInfo;
.end method

.method abstract getUploadInfoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfo;
.end method

.method initData()V
    .registers 2

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadTransactions:Ljava/util/List;

    .line 62
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->getDefaultUploadInfo()Lcom/qiniu/android/storage/UploadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    .line 63
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoverUploadInfoFromRecord()V

    return-void
.end method

.method notifyProgress(Ljava/lang/Boolean;)V
    .registers 11

    .line 96
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-nez v0, :cond_5

    return-void

    .line 100
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 101
    iget-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->upProgress:Lcom/qiniu/android/storage/UpProgress;

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v1}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qiniu/android/storage/UpProgress;->notifyDone(Ljava/lang/String;J)V

    goto :goto_2c

    .line 103
    :cond_19
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->upProgress:Lcom/qiniu/android/storage/UpProgress;

    iget-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    iget-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadInfo;->uploadSize()J

    move-result-wide v5

    iget-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/qiniu/android/storage/UpProgress;->progress(Ljava/lang/String;JJ)V

    :goto_2c
    return-void
.end method

.method recordUploadInfo()V
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v1, :cond_7d

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_7d

    .line 114
    :cond_f
    monitor-enter p0

    .line 117
    :try_start_10
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    invoke-interface {v1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 118
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-interface {v1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/qiniu/android/common/ZoneInfo;->detailInfo:Lorg/json/JSONObject;

    goto :goto_25

    :cond_24
    move-object v1, v2

    .line 120
    :goto_25
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-eqz v3, :cond_2d

    .line 121
    invoke-virtual {v3}, Lcom/qiniu/android/storage/UploadInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    :cond_2d
    if-eqz v1, :cond_4d

    if-eqz v2, :cond_4d

    .line 124
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_7a

    :try_start_36
    const-string v4, "recordZoneInfo"

    .line 126
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "recordFileInfo"

    .line 127
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_40} :catch_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_7a

    .line 130
    :catch_40
    :try_start_40
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/qiniu/android/storage/Recorder;->set(Ljava/lang/String;[B)V

    .line 132
    :cond_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_7a

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " recorderKey:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 134
    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " recordUploadInfo"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    return-void

    :catchall_7a
    move-exception v0

    .line 132
    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0

    :cond_7d
    :goto_7d
    return-void
.end method

.method recoverUploadInfoFromRecord()V
    .registers 9

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " recorderKey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 153
    invoke-static {v3}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " recorder:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 154
    invoke-static {v3}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " recoverUploadInfoFromRecord"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 158
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v3, :cond_15a

    if-eqz v0, :cond_15a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15a

    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    if-nez v3, :cond_4f

    goto/16 :goto_15a

    .line 162
    :cond_4f
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    invoke-interface {v3, v0}, Lcom/qiniu/android/storage/Recorder;->get(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_7f

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 165
    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " recoverUploadInfoFromRecord data:null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    return-void

    :cond_7f
    const/4 v4, 0x0

    .line 171
    :try_start_80
    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "recordZoneInfo"

    .line 172
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/android/common/ZoneInfo;->buildFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v3

    .line 173
    iget-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    const-string v7, "recordFileInfo"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lcom/qiniu/android/storage/PartsUploadPerformer;->getUploadInfoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfo;

    move-result-object v5

    if-eqz v3, :cond_f5

    if-eqz v5, :cond_f5

    .line 174
    invoke-virtual {v5}, Lcom/qiniu/android/storage/UploadInfo;->isValid()Z

    move-result v6

    if-eqz v6, :cond_f5

    iget-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v6, v5}, Lcom/qiniu/android/storage/UploadInfo;->isSameUploadInfo(Lcom/qiniu/android/storage/UploadInfo;)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 177
    invoke-static {v7}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " recoverUploadInfoFromRecord valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-static {v6}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 180
    invoke-virtual {v5}, Lcom/qiniu/android/storage/UploadInfo;->checkInfoStateAndUpdate()V

    .line 181
    iput-object v5, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    .line 182
    new-instance v6, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-direct {v6}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;-><init>()V

    .line 183
    invoke-virtual {v6, v3}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->setupRegionData(Lcom/qiniu/android/common/ZoneInfo;)V

    .line 184
    iput-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 185
    iput-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 186
    invoke-virtual {v5}, Lcom/qiniu/android/storage/UploadInfo;->uploadSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;

    goto :goto_15a

    .line 188
    :cond_f5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 189
    invoke-static {v5}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " recoverUploadInfoFromRecord invalid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v3}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    invoke-interface {v3, v0}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    .line 193
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 194
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 195
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_127} :catch_128

    goto :goto_15a

    .line 198
    :catch_128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 199
    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " recoverUploadInfoFromRecord json:error"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    invoke-interface {v1, v0}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    .line 203
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 204
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 205
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;

    :cond_15a
    :goto_15a
    return-void
.end method

.method reloadInfo()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->reloadSource()Z

    move-result v0

    return v0
.end method

.method removeUploadInfoRecord()V
    .registers 3

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;

    .line 140
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-eqz v0, :cond_a

    .line 141
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->clearUploadState()V

    .line 143
    :cond_a
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 144
    invoke-interface {v0, v1}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    .line 146
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " recorderKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 147
    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removeUploadInfoRecord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    return-void
.end method

.method abstract serverInit(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
.end method

.method switchRegion(Lcom/qiniu/android/http/request/IUploadRegion;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->clearUploadState()V

    .line 88
    :cond_7
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;

    .line 90
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    if-nez v0, :cond_12

    .line 91
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    :cond_12
    return-void
.end method

.method abstract uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
.end method
