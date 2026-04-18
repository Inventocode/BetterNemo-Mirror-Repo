.class Lcom/qiniu/android/storage/UploadData;
.super Ljava/lang/Object;
.source "UploadData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/UploadData$State;
    }
.end annotation


# instance fields
.field data:[B

.field etag:Ljava/lang/String;

.field final index:I

.field md5:Ljava/lang/String;

.field final offset:J

.field final size:I

.field private state:Lcom/qiniu/android/storage/UploadData$State;

.field private uploadSize:J


# direct methods
.method constructor <init>(JII)V
    .registers 7

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadData;->uploadSize:J

    .line 20
    iput-wide p1, p0, Lcom/qiniu/android/storage/UploadData;->offset:J

    .line 21
    iput p3, p0, Lcom/qiniu/android/storage/UploadData;->size:I

    .line 22
    iput p4, p0, Lcom/qiniu/android/storage/UploadData;->index:I

    .line 23
    sget-object p1, Lcom/qiniu/android/storage/UploadData$State;->NeedToCheck:Lcom/qiniu/android/storage/UploadData$State;

    iput-object p1, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    .line 24
    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadData;->uploadSize:J

    return-void
.end method

.method static dataFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadData;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "offset"

    .line 32
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "size"

    .line 33
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "index"

    .line 34
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "etag"

    .line 35
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "state"

    .line 36
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/qiniu/android/storage/UploadData$State;->access$000(I)Lcom/qiniu/android/storage/UploadData$State;

    move-result-object v5

    const-string v6, "md5"

    .line 37
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    new-instance v6, Lcom/qiniu/android/storage/UploadData;

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/qiniu/android/storage/UploadData;-><init>(JII)V

    .line 40
    iput-object v4, v6, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    .line 41
    iput-object p0, v6, Lcom/qiniu/android/storage/UploadData;->md5:Ljava/lang/String;

    .line 42
    iput-object v5, v6, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, v6, Lcom/qiniu/android/storage/UploadData;->uploadSize:J

    return-object v6
.end method


# virtual methods
.method checkStateAndUpdate()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    sget-object v1, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/qiniu/android/storage/UploadData$State;->Uploading:Lcom/qiniu/android/storage/UploadData$State;

    if-ne v0, v1, :cond_12

    :cond_a
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadData;->data:[B

    if-nez v0, :cond_12

    .line 97
    sget-object v0, Lcom/qiniu/android/storage/UploadData$State;->NeedToCheck:Lcom/qiniu/android/storage/UploadData$State;

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    :cond_12
    return-void
.end method

.method clearUploadState()V
    .registers 2

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadData;->md5:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    return-void
.end method

.method getState()Lcom/qiniu/android/storage/UploadData$State;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    return-object v0
.end method

.method isUploaded()Z
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    sget-object v1, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method needToUpload()Z
    .registers 4

    .line 49
    sget-object v0, Lcom/qiniu/android/storage/UploadData$1;->$SwitchMap$com$qiniu$android$storage$UploadData$State:[I

    iget-object v1, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    return v1
.end method

.method setUploadSize(J)V
    .registers 3

    .line 82
    iput-wide p1, p0, Lcom/qiniu/android/storage/UploadData;->uploadSize:J

    return-void
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    iget-wide v1, p0, Lcom/qiniu/android/storage/UploadData;->offset:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    iget v1, p0, Lcom/qiniu/android/storage/UploadData;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget v1, p0, Lcom/qiniu/android/storage/UploadData;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    const-string v2, "etag"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadData;->md5:Ljava/lang/String;

    const-string v2, "md5"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    invoke-static {v1}, Lcom/qiniu/android/storage/UploadData$State;->access$100(Lcom/qiniu/android/storage/UploadData$State;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method updateState(Lcom/qiniu/android/storage/UploadData$State;)V
    .registers 5

    .line 68
    sget-object v0, Lcom/qiniu/android/storage/UploadData$1;->$SwitchMap$com$qiniu$android$storage$UploadData$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    goto :goto_1f

    .line 76
    :cond_16
    iput-object v2, p0, Lcom/qiniu/android/storage/UploadData;->data:[B

    goto :goto_1f

    :cond_19
    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadData;->uploadSize:J

    .line 73
    iput-object v2, p0, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    .line 78
    :goto_1f
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    return-void
.end method

.method uploadSize()J
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadData;->state:Lcom/qiniu/android/storage/UploadData$State;

    sget-object v1, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/qiniu/android/storage/UploadData;->size:I

    int-to-long v0, v0

    goto :goto_c

    :cond_a
    iget-wide v0, p0, Lcom/qiniu/android/storage/UploadData;->uploadSize:J

    :goto_c
    return-wide v0
.end method
