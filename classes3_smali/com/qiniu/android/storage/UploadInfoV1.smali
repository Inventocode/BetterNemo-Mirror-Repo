.class Lcom/qiniu/android/storage/UploadInfoV1;
.super Lcom/qiniu/android/storage/UploadInfo;
.source "UploadInfoV1.java"


# instance fields
.field private blockList:Lcom/qiniu/android/utils/ListVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/utils/ListVector<",
            "Lcom/qiniu/android/storage/UploadBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSize:I

.field private isEOF:Z

.field private readException:Ljava/io/IOException;


# direct methods
.method private constructor <init>(Lcom/qiniu/android/storage/UploadSource;ILcom/qiniu/android/utils/ListVector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/storage/UploadSource;",
            "I",
            "Lcom/qiniu/android/utils/ListVector<",
            "Lcom/qiniu/android/storage/UploadBlock;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/UploadInfo;-><init>(Lcom/qiniu/android/storage/UploadSource;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->isEOF:Z

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->readException:Ljava/io/IOException;

    .line 31
    iput p2, p0, Lcom/qiniu/android/storage/UploadInfoV1;->dataSize:I

    .line 32
    iput-object p3, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    return-void
.end method

.method constructor <init>(Lcom/qiniu/android/storage/UploadSource;Lcom/qiniu/android/storage/Configuration;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/UploadInfo;-><init>(Lcom/qiniu/android/storage/UploadSource;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->isEOF:Z

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->readException:Ljava/io/IOException;

    .line 37
    iget-boolean p1, p2, Lcom/qiniu/android/storage/Configuration;->useConcurrentResumeUpload:Z

    const/high16 v0, 0x400000

    if-nez p1, :cond_17

    iget p1, p2, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    if-le p1, v0, :cond_14

    goto :goto_17

    .line 40
    :cond_14
    iput p1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->dataSize:I

    goto :goto_19

    .line 38
    :cond_17
    :goto_17
    iput v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->dataSize:I

    .line 42
    :goto_19
    new-instance p1, Lcom/qiniu/android/utils/ListVector;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p2}, Lcom/qiniu/android/utils/ListVector;-><init>(II)V

    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    return-void
.end method

.method static infoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfoV1;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "infoType"

    .line 54
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataSize"

    .line 55
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "blockList"

    .line 56
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 57
    new-instance v4, Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/qiniu/android/utils/ListVector;-><init>(II)V

    const/4 v5, 0x0

    .line 58
    :goto_21
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_37

    .line 59
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_2b} :catch_57

    .line 61
    :try_start_2b
    invoke-static {v6}, Lcom/qiniu/android/storage/UploadBlock;->blockFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadBlock;

    move-result-object v6

    if-eqz v6, :cond_34

    .line 63
    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_37

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 73
    :catch_37
    :cond_37
    new-instance v3, Lcom/qiniu/android/storage/UploadInfoV1;

    invoke-direct {v3, p0, v2, v4}, Lcom/qiniu/android/storage/UploadInfoV1;-><init>(Lcom/qiniu/android/storage/UploadSource;ILcom/qiniu/android/utils/ListVector;)V

    .line 74
    invoke-virtual {v3, p1}, Lcom/qiniu/android/storage/UploadInfo;->setInfoFromJson(Lorg/json/JSONObject;)V

    const-string p1, "UploadInfoV1"

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-interface {p0}, Lcom/qiniu/android/storage/UploadSource;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Lcom/qiniu/android/storage/UploadInfo;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    goto :goto_57

    :cond_56
    return-object v3

    :catch_57
    :cond_57
    :goto_57
    return-object v0
.end method

.method private loadBlockData(Lcom/qiniu/android/storage/UploadBlock;)Lcom/qiniu/android/storage/UploadBlock;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 307
    :cond_4
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadBlock;->nextUploadDataWithoutCheckData()Lcom/qiniu/android/storage/UploadData;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lcom/qiniu/android/storage/UploadData;->getState()Lcom/qiniu/android/storage/UploadData$State;

    move-result-object v1

    sget-object v2, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    if-ne v1, v2, :cond_11

    return-object p1

    .line 316
    :cond_11
    :try_start_11
    iget v1, p1, Lcom/qiniu/android/storage/UploadBlock;->size:I

    iget-wide v2, p1, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/qiniu/android/storage/UploadInfo;->readData(IJ)[B

    move-result-object v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_75

    if-eqz v1, :cond_74

    .line 322
    array-length v2, v1

    if-nez v2, :cond_1f

    goto :goto_74

    .line 326
    :cond_1f
    invoke-static {v1}, Lcom/qiniu/android/utils/MD5;->encrypt([B)Ljava/lang/String;

    move-result-object v0

    .line 328
    array-length v2, v1

    iget v3, p1, Lcom/qiniu/android/storage/UploadBlock;->size:I

    if-ne v2, v3, :cond_32

    iget-object v2, p1, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    if-eqz v2, :cond_32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 329
    :cond_32
    new-instance v2, Lcom/qiniu/android/storage/UploadBlock;

    iget-wide v4, p1, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    array-length v6, v1

    iget v7, p0, Lcom/qiniu/android/storage/UploadInfoV1;->dataSize:I

    iget v8, p1, Lcom/qiniu/android/storage/UploadBlock;->index:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/qiniu/android/storage/UploadBlock;-><init>(JIII)V

    .line 330
    iput-object v0, v2, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    move-object p1, v2

    .line 333
    :cond_42
    iget-object v0, p1, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/storage/UploadData;

    .line 334
    invoke-virtual {v2}, Lcom/qiniu/android/storage/UploadData;->getState()Lcom/qiniu/android/storage/UploadData$State;

    move-result-object v3

    sget-object v4, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    if-eq v3, v4, :cond_6f

    .line 337
    :try_start_5c
    iget-wide v3, v2, Lcom/qiniu/android/storage/UploadData;->offset:J

    long-to-int v4, v3

    iget v3, v2, Lcom/qiniu/android/storage/UploadData;->size:I

    invoke-static {v1, v4, v3}, Lcom/qiniu/android/utils/BytesUtils;->subBytes([BII)[B

    move-result-object v3

    iput-object v3, v2, Lcom/qiniu/android/storage/UploadData;->data:[B

    .line 338
    sget-object v3, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v2, v3}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_6c} :catch_6d

    goto :goto_48

    :catch_6d
    move-exception p1

    .line 340
    throw p1

    .line 344
    :cond_6f
    invoke-virtual {v2, v4}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    goto :goto_48

    :cond_73
    return-object p1

    :cond_74
    :goto_74
    return-object v0

    :catch_75
    move-exception p1

    .line 318
    throw p1
.end method

.method private nextUploadBlockFormBlockList()Lcom/qiniu/android/storage/UploadBlock;
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1f

    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qiniu/android/storage/UploadBlock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 277
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    new-instance v3, Lcom/qiniu/android/storage/UploadInfoV1$6;

    invoke-direct {v3, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV1$6;-><init>(Lcom/qiniu/android/storage/UploadInfoV1;[Lcom/qiniu/android/storage/UploadBlock;)V

    invoke-virtual {v1, v3}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 289
    aget-object v0, v0, v2

    return-object v0

    :cond_1f
    :goto_1f
    return-object v1
.end method


# virtual methods
.method allBlocksContexts()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1b

    .line 362
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    new-instance v2, Lcom/qiniu/android/storage/UploadInfoV1$7;

    invoke-direct {v2, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV1$7;-><init>(Lcom/qiniu/android/storage/UploadInfoV1;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    return-object v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method checkInfoStateAndUpdate()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    new-instance v1, Lcom/qiniu/android/storage/UploadInfoV1$4;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/UploadInfoV1$4;-><init>(Lcom/qiniu/android/storage/UploadInfoV1;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    return-void
.end method

.method clearUploadState()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 113
    :cond_b
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    new-instance v1, Lcom/qiniu/android/storage/UploadInfoV1$1;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/UploadInfoV1$1;-><init>(Lcom/qiniu/android/storage/UploadInfoV1;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    :cond_15
    :goto_15
    return-void
.end method

.method isAllUploaded()Z
    .registers 5

    .line 141
    iget-boolean v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->isEOF:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_23

    :cond_12
    new-array v0, v2, [Z

    aput-boolean v2, v0, v1

    .line 149
    iget-object v2, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    new-instance v3, Lcom/qiniu/android/storage/UploadInfoV1$3;

    invoke-direct {v3, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV1$3;-><init>(Lcom/qiniu/android/storage/UploadInfoV1;[Z)V

    invoke-virtual {v2, v3}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 160
    aget-boolean v0, v0, v1

    return v0

    :cond_23
    :goto_23
    return v2
.end method

.method isFirstData(Lcom/qiniu/android/storage/UploadData;)Z
    .registers 2

    .line 83
    iget p1, p1, Lcom/qiniu/android/storage/UploadData;->index:I

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method isSameUploadInfo(Lcom/qiniu/android/storage/UploadInfo;)Z
    .registers 4

    .line 95
    invoke-super {p0, p1}, Lcom/qiniu/android/storage/UploadInfo;->isSameUploadInfo(Lcom/qiniu/android/storage/UploadInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 99
    :cond_8
    instance-of v0, p1, Lcom/qiniu/android/storage/UploadInfoV1;

    if-nez v0, :cond_d

    return v1

    .line 103
    :cond_d
    check-cast p1, Lcom/qiniu/android/storage/UploadInfoV1;

    .line 104
    iget v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->dataSize:I

    iget p1, p1, Lcom/qiniu/android/storage/UploadInfoV1;->dataSize:I

    if-ne v0, p1, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method nextUploadBlock()Lcom/qiniu/android/storage/UploadBlock;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadInfoV1;->nextUploadBlockFormBlockList()Lcom/qiniu/android/storage/UploadBlock;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_41

    .line 218
    iget-boolean v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->isEOF:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_d
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->readException:Ljava/io/IOException;

    if-nez v0, :cond_40

    const-wide/16 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 228
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/storage/UploadBlock;

    .line 229
    iget-wide v2, v0, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    iget v0, v0, Lcom/qiniu/android/storage/UploadBlock;->size:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    :cond_2e
    move-wide v5, v2

    .line 231
    new-instance v0, Lcom/qiniu/android/storage/UploadBlock;

    const/high16 v7, 0x400000

    iget v8, p0, Lcom/qiniu/android/storage/UploadInfoV1;->dataSize:I

    iget-object v2, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/qiniu/android/storage/UploadBlock;-><init>(JIII)V

    goto :goto_41

    .line 222
    :cond_40
    throw v0

    .line 236
    :cond_41
    :goto_41
    :try_start_41
    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/UploadInfoV1;->loadBlockData(Lcom/qiniu/android/storage/UploadBlock;)Lcom/qiniu/android/storage/UploadBlock;

    move-result-object v2
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_94

    const/4 v3, 0x0

    if-nez v2, :cond_5d

    .line 244
    iput-boolean v1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->isEOF:Z

    .line 246
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v0, v0, Lcom/qiniu/android/storage/UploadBlock;->index:I

    if-le v1, v0, :cond_93

    .line 247
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v1, v3, v0}, Lcom/qiniu/android/utils/ListVector;->subList(II)Lcom/qiniu/android/utils/ListVector;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    goto :goto_93

    .line 251
    :cond_5d
    iget v4, v2, Lcom/qiniu/android/storage/UploadBlock;->index:I

    iget-object v5, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v4, v5, :cond_6d

    .line 253
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_76

    :cond_6d
    if-eq v2, v0, :cond_76

    .line 256
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    iget v5, v2, Lcom/qiniu/android/storage/UploadBlock;->index:I

    invoke-virtual {v4, v5, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_76
    :goto_76
    iget v4, v2, Lcom/qiniu/android/storage/UploadBlock;->size:I

    const/high16 v5, 0x400000

    if-ge v4, v5, :cond_93

    .line 261
    iput-boolean v1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->isEOF:Z

    .line 263
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget v0, v0, Lcom/qiniu/android/storage/UploadBlock;->index:I

    add-int/lit8 v5, v0, 0x1

    if-le v4, v5, :cond_93

    .line 264
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    add-int/2addr v0, v1

    invoke-virtual {v4, v3, v0}, Lcom/qiniu/android/utils/ListVector;->subList(II)Lcom/qiniu/android/utils/ListVector;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    :cond_93
    :goto_93
    return-object v2

    :catch_94
    move-exception v0

    .line 238
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->readException:Ljava/io/IOException;

    .line 239
    throw v0
.end method

.method nextUploadData(Lcom/qiniu/android/storage/UploadBlock;)Lcom/qiniu/android/storage/UploadData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 355
    :cond_4
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadBlock;->nextUploadDataWithoutCheckData()Lcom/qiniu/android/storage/UploadData;

    move-result-object p1

    return-object p1
.end method

.method reloadSource()Z
    .registers 2

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->isEOF:Z

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->readException:Ljava/io/IOException;

    .line 90
    invoke-super {p0}, Lcom/qiniu/android/storage/UploadInfo;->reloadSource()Z

    move-result v0

    return v0
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .registers 6

    .line 176
    invoke-super {p0}, Lcom/qiniu/android/storage/UploadInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v2, "infoType"

    const-string v3, "UploadInfoV1"

    .line 181
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dataSize"

    .line 182
    iget v3, p0, Lcom/qiniu/android/storage/UploadInfoV1;->dataSize:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    iget-object v2, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 184
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 185
    iget-object v3, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    new-instance v4, Lcom/qiniu/android/storage/UploadInfoV1$5;

    invoke-direct {v4, p0, v2}, Lcom/qiniu/android/storage/UploadInfoV1$5;-><init>(Lcom/qiniu/android/storage/UploadInfoV1;Lorg/json/JSONArray;)V

    invoke-virtual {v3, v4}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 200
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v3, v4, :cond_3c

    return-object v1

    :cond_3c
    const-string v3, "blockList"

    .line 203
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_42

    :cond_41
    return-object v0

    :catch_42
    return-object v1
.end method

.method uploadSize()J
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

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

    .line 128
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV1;->blockList:Lcom/qiniu/android/utils/ListVector;

    new-instance v2, Lcom/qiniu/android/storage/UploadInfoV1$2;

    invoke-direct {v2, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV1$2;-><init>(Lcom/qiniu/android/storage/UploadInfoV1;[J)V

    invoke-virtual {v1, v2}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 135
    aget-wide v1, v0, v3

    :cond_1f
    :goto_1f
    return-wide v1
.end method
