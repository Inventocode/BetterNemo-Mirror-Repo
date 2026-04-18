.class Lcom/qiniu/android/storage/UploadBlock;
.super Ljava/lang/Object;
.source "UploadBlock.java"


# instance fields
.field ctx:Ljava/lang/String;

.field final index:I

.field md5:Ljava/lang/String;

.field final offset:J

.field final size:I

.field final uploadDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JIII)V
    .registers 7

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    .line 20
    iput-wide p1, p0, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    .line 21
    iput p3, p0, Lcom/qiniu/android/storage/UploadBlock;->size:I

    .line 22
    iput p5, p0, Lcom/qiniu/android/storage/UploadBlock;->index:I

    .line 23
    invoke-direct {p0, p4}, Lcom/qiniu/android/storage/UploadBlock;->createDataList(I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(JIILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    .line 27
    iput-wide p1, p0, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    .line 28
    iput p3, p0, Lcom/qiniu/android/storage/UploadBlock;->size:I

    .line 29
    iput p4, p0, Lcom/qiniu/android/storage/UploadBlock;->index:I

    .line 30
    iput-object p5, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    return-void
.end method

.method static blockFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadBlock;
    .registers 10
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

    .line 38
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "size"

    .line 39
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "index"

    .line 40
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "md5"

    .line 41
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctx"

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "uploadDataList"

    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 45
    :goto_2e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_44

    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 47
    invoke-static {v8}, Lcom/qiniu/android/storage/UploadData;->dataFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadData;

    move-result-object v8

    if-eqz v8, :cond_41

    .line 49
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 53
    :cond_44
    new-instance p0, Lcom/qiniu/android/storage/UploadBlock;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadBlock;-><init>(JIILjava/util/List;)V

    .line 54
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    .line 55
    iput-object v7, p0, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    return-object p0
.end method

.method private createDataList(I)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 88
    :goto_8
    iget v4, p0, Lcom/qiniu/android/storage/UploadBlock;->size:I

    int-to-long v5, v4

    cmp-long v7, v1, v5

    if-gez v7, :cond_23

    int-to-long v4, v4

    sub-long/2addr v4, v1

    long-to-int v5, v4

    .line 90
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 91
    new-instance v5, Lcom/qiniu/android/storage/UploadData;

    invoke-direct {v5, v1, v2, v4, v3}, Lcom/qiniu/android/storage/UploadData;-><init>(JII)V

    .line 92
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_23
    return-object v0
.end method


# virtual methods
.method checkInfoStateAndUpdate()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/storage/UploadData;

    .line 101
    invoke-virtual {v1}, Lcom/qiniu/android/storage/UploadData;->checkStateAndUpdate()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method protected clearUploadState()V
    .registers 3

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_26

    .line 145
    :cond_10
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/storage/UploadData;

    .line 146
    invoke-virtual {v1}, Lcom/qiniu/android/storage/UploadData;->clearUploadState()V

    goto :goto_16

    :cond_26
    :goto_26
    return-void
.end method

.method isCompleted()Z
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 64
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/storage/UploadData;

    .line 65
    invoke-virtual {v2}, Lcom/qiniu/android/storage/UploadData;->isUploaded()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x0

    :cond_1d
    return v1
.end method

.method protected nextUploadDataWithoutCheckData()Lcom/qiniu/android/storage/UploadData;
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_25

    .line 130
    :cond_c
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/storage/UploadData;

    .line 131
    invoke-virtual {v2}, Lcom/qiniu/android/storage/UploadData;->needToUpload()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object v1, v2

    :cond_25
    :goto_25
    return-object v1
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    iget-wide v1, p0, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget v1, p0, Lcom/qiniu/android/storage/UploadBlock;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget v1, p0, Lcom/qiniu/android/storage/UploadBlock;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    const-string v2, "md5"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    const-string v2, "ctx"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    if-eqz v1, :cond_64

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_64

    .line 113
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 114
    iget-object v2, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_49
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/storage/UploadData;

    .line 115
    invoke-virtual {v3}, Lcom/qiniu/android/storage/UploadData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 117
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_49

    :cond_5f
    const-string v2, "uploadDataList"

    .line 120
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_64
    return-object v0
.end method

.method uploadSize()J
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    return-wide v1

    .line 78
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/storage/UploadData;

    .line 79
    invoke-virtual {v3}, Lcom/qiniu/android/storage/UploadData;->uploadSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_b

    :cond_1d
    return-wide v1
.end method
