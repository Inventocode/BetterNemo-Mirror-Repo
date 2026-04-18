.class Lcom/qiniu/android/storage/UploadInfoV2;
.super Lcom/qiniu/android/storage/UploadInfo;
.source "UploadInfoV2.java"


# instance fields
.field private dataList:Lcom/qiniu/android/utils/ListVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/utils/ListVector<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSize:I

.field expireAt:Ljava/lang/Long;

.field private isEOF:Z

.field private readException:Ljava/io/IOException;

.field uploadId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/qiniu/android/storage/UploadSource;ILcom/qiniu/android/utils/ListVector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/storage/UploadSource;",
            "I",
            "Lcom/qiniu/android/utils/ListVector<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/UploadInfo;-><init>(Lcom/qiniu/android/storage/UploadSource;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 36
    iput p2, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    .line 37
    iput-object p3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    return-void
.end method

.method constructor <init>(Lcom/qiniu/android/storage/UploadSource;Lcom/qiniu/android/storage/Configuration;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/UploadInfo;-><init>(Lcom/qiniu/android/storage/UploadSource;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 42
    iget p1, p2, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    const/high16 p2, 0x40000000  # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    .line 43
    new-instance p1, Lcom/qiniu/android/utils/ListVector;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p2}, Lcom/qiniu/android/utils/ListVector;-><init>(II)V

    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    return-void
.end method

.method static infoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfoV2;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "infoType"

    .line 57
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataSize"

    .line 58
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "expireAt"

    .line 59
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "uploadId"

    .line 60
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dataList"

    .line 61
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 62
    new-instance v6, Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/qiniu/android/utils/ListVector;-><init>(II)V

    const/4 v7, 0x0

    .line 63
    :goto_31
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_47

    .line 64
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 65
    invoke-static {v8}, Lcom/qiniu/android/storage/UploadData;->dataFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadData;

    move-result-object v8

    if-eqz v8, :cond_44

    .line 67
    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_44} :catch_6b

    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 74
    :cond_47
    new-instance v5, Lcom/qiniu/android/storage/UploadInfoV2;

    invoke-direct {v5, p0, v2, v6}, Lcom/qiniu/android/storage/UploadInfoV2;-><init>(Lcom/qiniu/android/storage/UploadSource;ILcom/qiniu/android/utils/ListVector;)V

    .line 75
    invoke-virtual {v5, p1}, Lcom/qiniu/android/storage/UploadInfo;->setInfoFromJson(Lorg/json/JSONObject;)V

    .line 76
    iput-object v3, v5, Lcom/qiniu/android/storage/UploadInfoV2;->expireAt:Ljava/lang/Long;

    .line 77
    iput-object v4, v5, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    const-string p1, "UploadInfoV2"

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-interface {p0}, Lcom/qiniu/android/storage/UploadSource;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Lcom/qiniu/android/storage/UploadInfo;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto :goto_6b

    :cond_6a
    return-object v5

    :catch_6b
    :cond_6b
    :goto_6b
    return-object v0
.end method

.method private loadData(Lcom/qiniu/android/storage/UploadData;)Lcom/qiniu/android/storage/UploadData;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 183
    :cond_4
    iget-object v1, p1, Lcom/qiniu/android/storage/UploadData;->data:[B

    if-eqz v1, :cond_9

    return-object p1

    .line 190
    :cond_9
    :try_start_9
    iget v1, p1, Lcom/qiniu/android/storage/UploadData;->size:I

    iget-wide v2, p1, Lcom/qiniu/android/storage/UploadData;->offset:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/qiniu/android/storage/UploadInfo;->readData(IJ)[B

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_4e

    if-eqz v1, :cond_4d

    .line 197
    array-length v2, v1

    if-nez v2, :cond_17

    goto :goto_4d

    .line 201
    :cond_17
    invoke-static {v1}, Lcom/qiniu/android/utils/MD5;->encrypt([B)Ljava/lang/String;

    move-result-object v0

    .line 203
    array-length v2, v1

    iget v3, p1, Lcom/qiniu/android/storage/UploadData;->size:I

    if-ne v2, v3, :cond_2a

    iget-object v2, p1, Lcom/qiniu/android/storage/UploadData;->md5:Ljava/lang/String;

    if-eqz v2, :cond_2a

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 204
    :cond_2a
    new-instance v2, Lcom/qiniu/android/storage/UploadData;

    iget-wide v3, p1, Lcom/qiniu/android/storage/UploadData;->offset:J

    array-length v5, v1

    iget p1, p1, Lcom/qiniu/android/storage/UploadData;->index:I

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/qiniu/android/storage/UploadData;-><init>(JII)V

    .line 205
    iput-object v0, v2, Lcom/qiniu/android/storage/UploadData;->md5:Ljava/lang/String;

    move-object p1, v2

    .line 208
    :cond_37
    iget-object v0, p1, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 209
    iput-object v1, p1, Lcom/qiniu/android/storage/UploadData;->data:[B

    .line 210
    sget-object v0, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {p1, v0}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    goto :goto_4c

    .line 212
    :cond_47
    sget-object v0, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {p1, v0}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    :goto_4c
    return-object p1

    :cond_4d
    :goto_4d
    return-object v0

    :catch_4e
    move-exception p1

    .line 192
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 193
    throw p1
.end method

.method private nextUploadDataFormDataList()Lcom/qiniu/android/storage/UploadData;
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1f

    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qiniu/android/storage/UploadData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 156
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v3, Lcom/qiniu/android/storage/UploadInfoV2$1;

    invoke-direct {v3, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2$1;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;[Lcom/qiniu/android/storage/UploadData;)V

    invoke-virtual {v1, v3}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 167
    aget-object v0, v0, v2

    return-object v0

    :cond_1f
    :goto_1f
    return-object v1
.end method


# virtual methods
.method checkInfoStateAndUpdate()V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v1, Lcom/qiniu/android/storage/UploadInfoV2$6;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/UploadInfoV2$6;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    return-void
.end method

.method clearUploadState()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v1, Lcom/qiniu/android/storage/UploadInfoV2$3;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/UploadInfoV2$3;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    return-void
.end method

.method getPartIndexOfData(Lcom/qiniu/android/storage/UploadData;)I
    .registers 2

    .line 87
    iget p1, p1, Lcom/qiniu/android/storage/UploadData;->index:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method getPartInfoArray()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1b

    .line 222
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v2, Lcom/qiniu/android/storage/UploadInfoV2$2;

    invoke-direct {v2, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2$2;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    return-object v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method isAllUploaded()Z
    .registers 5

    .line 303
    iget-boolean v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 307
    :cond_6
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_23

    :cond_12
    new-array v0, v2, [Z

    aput-boolean v2, v0, v1

    .line 311
    iget-object v2, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v3, Lcom/qiniu/android/storage/UploadInfoV2$5;

    invoke-direct {v3, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2$5;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;[Z)V

    invoke-virtual {v2, v3}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 322
    aget-boolean v0, v0, v1

    return v0

    :cond_23
    :goto_23
    return v2
.end method

.method isSameUploadInfo(Lcom/qiniu/android/storage/UploadInfo;)Z
    .registers 4

    .line 247
    invoke-super {p0, p1}, Lcom/qiniu/android/storage/UploadInfo;->isSameUploadInfo(Lcom/qiniu/android/storage/UploadInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 251
    :cond_8
    instance-of v0, p1, Lcom/qiniu/android/storage/UploadInfoV2;

    if-nez v0, :cond_d

    return v1

    .line 255
    :cond_d
    check-cast p1, Lcom/qiniu/android/storage/UploadInfoV2;

    .line 256
    iget v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    iget p1, p1, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    if-ne v0, p1, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method isValid()Z
    .registers 9

    .line 288
    invoke-super {p0}, Lcom/qiniu/android/storage/UploadInfo;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 292
    :cond_8
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->expireAt:Ljava/lang/Long;

    if-nez v0, :cond_15

    goto :goto_30

    .line 296
    :cond_15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 297
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->expireAt:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x2a300

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_30

    const/4 v1, 0x1

    :cond_30
    :goto_30
    return v1
.end method

.method nextUploadData()Lcom/qiniu/android/storage/UploadData;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadInfoV2;->nextUploadDataFormDataList()Lcom/qiniu/android/storage/UploadData;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3e

    .line 96
    iget-boolean v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_d
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    if-nez v0, :cond_3d

    const-wide/16 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 106
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/storage/UploadData;

    .line 107
    iget-wide v2, v0, Lcom/qiniu/android/storage/UploadData;->offset:J

    iget v0, v0, Lcom/qiniu/android/storage/UploadData;->size:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 109
    :cond_2e
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 110
    new-instance v4, Lcom/qiniu/android/storage/UploadData;

    iget v5, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    invoke-direct {v4, v2, v3, v5, v0}, Lcom/qiniu/android/storage/UploadData;-><init>(JII)V

    move-object v0, v4

    goto :goto_3e

    .line 100
    :cond_3d
    throw v0

    .line 115
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2;->loadData(Lcom/qiniu/android/storage/UploadData;)Lcom/qiniu/android/storage/UploadData;

    move-result-object v2
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_91

    const/4 v3, 0x0

    if-nez v2, :cond_5a

    .line 123
    iput-boolean v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    .line 125
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v0, v0, Lcom/qiniu/android/storage/UploadData;->index:I

    if-le v1, v0, :cond_90

    .line 126
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v1, v3, v0}, Lcom/qiniu/android/utils/ListVector;->subList(II)Lcom/qiniu/android/utils/ListVector;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    goto :goto_90

    .line 130
    :cond_5a
    iget v4, v2, Lcom/qiniu/android/storage/UploadData;->index:I

    iget-object v5, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v4, v5, :cond_6a

    .line 132
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_6a
    if-eq v2, v0, :cond_73

    .line 135
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    iget v5, v2, Lcom/qiniu/android/storage/UploadData;->index:I

    invoke-virtual {v4, v5, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_73
    :goto_73
    iget v4, v2, Lcom/qiniu/android/storage/UploadData;->size:I

    iget v5, v0, Lcom/qiniu/android/storage/UploadData;->size:I

    if-ge v4, v5, :cond_90

    .line 140
    iput-boolean v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    .line 142
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget v0, v0, Lcom/qiniu/android/storage/UploadData;->index:I

    add-int/lit8 v5, v0, 0x1

    if-le v4, v5, :cond_90

    .line 143
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    add-int/2addr v0, v1

    invoke-virtual {v4, v3, v0}, Lcom/qiniu/android/utils/ListVector;->subList(II)Lcom/qiniu/android/utils/ListVector;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    :cond_90
    :goto_90
    return-object v2

    :catch_91
    move-exception v0

    .line 117
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 118
    throw v0
.end method

.method reloadSource()Z
    .registers 2

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 242
    invoke-super {p0}, Lcom/qiniu/android/storage/UploadInfo;->reloadSource()Z

    move-result v0

    return v0
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .registers 6

    .line 338
    invoke-super {p0}, Lcom/qiniu/android/storage/UploadInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v2, "infoType"

    const-string v3, "UploadInfoV2"

    .line 343
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dataSize"

    .line 344
    iget v3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "expireAt"

    .line 345
    iget-object v3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->expireAt:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uploadId"

    .line 346
    iget-object v3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    iget-object v2, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_4f

    .line 348
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 349
    iget-object v3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v4, Lcom/qiniu/android/storage/UploadInfoV2$7;

    invoke-direct {v4, p0, v2}, Lcom/qiniu/android/storage/UploadInfoV2$7;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;Lorg/json/JSONArray;)V

    invoke-virtual {v3, v4}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 363
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v3, v4, :cond_4a

    return-object v1

    :cond_4a
    const-string v3, "dataList"

    .line 366
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4f} :catch_50

    :cond_4f
    return-object v0

    :catch_50
    return-object v1
.end method

.method uploadSize()J
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1f

    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 276
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v2, Lcom/qiniu/android/storage/UploadInfoV2$4;

    invoke-direct {v2, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2$4;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;[J)V

    invoke-virtual {v1, v2}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 283
    aget-wide v1, v0, v3

    :cond_1f
    :goto_1f
    return-wide v1
.end method
