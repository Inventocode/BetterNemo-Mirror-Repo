.class public final Lcom/qiniu/android/storage/UpToken;
.super Ljava/lang/Object;
.source "UpToken.java"


# instance fields
.field public final accessKey:Ljava/lang/String;

.field public final bucket:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;
    .registers 9

    const-string v0, ":"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 30
    :cond_6
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_54

    .line 34
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    return-object v1

    :cond_f
    const/4 v3, 0x2

    .line 37
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/qiniu/android/utils/UrlSafeBase64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 40
    :try_start_16
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 41
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_54

    const-string v5, "scope"

    .line 45
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    return-object v1

    :cond_2f
    new-array v3, v3, [Ljava/lang/String;

    .line 52
    :try_start_31
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    nop

    .line 55
    :goto_37
    array-length v0, v3

    const/4 v5, 0x0

    if-lez v0, :cond_3d

    .line 56
    aget-object v6, v3, v5

    :cond_3d
    const-string v0, "deadline"

    .line 60
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_46

    return-object v1

    .line 64
    :cond_46
    new-instance v0, Lcom/qiniu/android/storage/UpToken;

    const-string v1, "returnUrl"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v2, v5

    invoke-direct {v0, v1, p0, v2, v6}, Lcom/qiniu/android/storage/UpToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_54
    return-object v1
.end method


# virtual methods
.method public index()Ljava/lang/String;
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_17

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_17
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2c
    return-object v1
.end method

.method public isValid()Z
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    return-object v0
.end method
