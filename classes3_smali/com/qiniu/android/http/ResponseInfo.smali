.class public final Lcom/qiniu/android/http/ResponseInfo;
.super Ljava/lang/Object;
.source "ResponseInfo.java"


# instance fields
.field public final error:Ljava/lang/String;

.field public final host:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public final reqId:Ljava/lang/String;

.field public final response:Lorg/json/JSONObject;

.field public final responseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final statusCode:I

.field public final timeStamp:J

.field public final xlog:Ljava/lang/String;

.field public final xvia:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    .line 108
    iput-object p2, p0, Lcom/qiniu/android/http/ResponseInfo;->responseHeader:Ljava/util/Map;

    .line 109
    iput p3, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    if-eqz p4, :cond_c

    goto :goto_e

    :cond_c
    const-string p4, ""

    .line 110
    :goto_e
    iput-object p4, p0, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/qiniu/android/http/ResponseInfo;->xlog:Ljava/lang/String;

    .line 112
    iput-object p6, p0, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    .line 113
    iput-object p7, p0, Lcom/qiniu/android/http/ResponseInfo;->host:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object p2

    iget-object p2, p2, Lcom/qiniu/android/http/UserAgent;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/qiniu/android/http/ResponseInfo;->id:Ljava/lang/String;

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    iput-wide p2, p0, Lcom/qiniu/android/http/ResponseInfo;->timeStamp:J

    if-nez p8, :cond_3b

    .line 117
    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p2

    if-nez p2, :cond_3b

    const/4 p2, 0x0

    if-eqz p1, :cond_38

    :try_start_32
    const-string p3, "error"

    .line 121
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_38} :catch_38

    .line 124
    :catch_38
    :cond_38
    iput-object p2, p0, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    goto :goto_3d

    .line 126
    :cond_3b
    iput-object p8, p0, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    :goto_3d
    return-void
.end method

.method public static create(Lcom/qiniu/android/http/request/Request;ILjava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/http/request/Request;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qiniu/android/http/ResponseInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 191
    iget-object p0, p0, Lcom/qiniu/android/http/request/Request;->host:Ljava/lang/String;

    move-object v8, p0

    goto :goto_8

    :cond_7
    move-object v8, v0

    :goto_8
    if-eqz p2, :cond_4e

    const-string p0, "x-reqid"

    .line 196
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "x-log"

    .line 197
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "x-via"

    .line 198
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 199
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_28
    move-object v5, p0

    move-object v6, v1

    move-object v7, v2

    goto :goto_51

    :cond_2c
    const-string v2, "x-px"

    .line 200
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 201
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_28

    :cond_3b
    const-string v2, "fw-via"

    .line 202
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 203
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_28

    :cond_4a
    move-object v5, p0

    move-object v7, v0

    move-object v6, v1

    goto :goto_51

    :cond_4e
    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    :goto_51
    if-eqz p3, :cond_5e

    if-eqz v5, :cond_57

    if-nez v6, :cond_5e

    :cond_57
    const/4 p1, -0x8

    const-string p4, "this is a malicious response"

    move-object v9, p4

    move-object v2, v0

    const/4 v4, -0x8

    goto :goto_61

    :cond_5e
    move v4, p1

    move-object v2, p3

    move-object v9, p4

    .line 213
    :goto_61
    new-instance p0, Lcom/qiniu/android/http/ResponseInfo;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/qiniu/android/http/ResponseInfo;-><init>(Lorg/json/JSONObject;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 12

    .line 181
    new-instance v9, Lcom/qiniu/android/http/ResponseInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move v3, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/qiniu/android/http/ResponseInfo;-><init>(Lorg/json/JSONObject;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static invalidArgument(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 2

    const/4 v0, -0x4

    .line 144
    invoke-static {v0, p0}, Lcom/qiniu/android/http/ResponseInfo;->errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 2

    const/4 v0, -0x5

    .line 148
    invoke-static {v0, p0}, Lcom/qiniu/android/http/ResponseInfo;->errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static localIOError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 2

    const/4 v0, -0x7

    .line 160
    invoke-static {v0, p0}, Lcom/qiniu/android/http/ResponseInfo;->errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static sdkInteriorError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 2

    const/16 v0, -0x9

    .line 173
    invoke-static {v0, p0}, Lcom/qiniu/android/http/ResponseInfo;->errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static successResponse()Lcom/qiniu/android/http/ResponseInfo;
    .registers 10

    .line 131
    new-instance v9, Lcom/qiniu/android/http/ResponseInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const-string v4, "inter:reqid"

    const-string v5, "inter:xlog"

    const-string v6, "inter:xvia"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/qiniu/android/http/ResponseInfo;-><init>(Lorg/json/JSONObject;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 2

    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, "data size is 0"

    :goto_5
    const/4 v0, -0x6

    .line 136
    invoke-static {v0, p0}, Lcom/qiniu/android/http/ResponseInfo;->errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canConnectToHost()Z
    .registers 3

    .line 272
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public couldHostRetry()Z
    .registers 3

    .line 255
    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->couldRegionRetry()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x1f6

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x23b

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x257

    if-ne v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x1

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public couldRegionRetry()Z
    .registers 3

    .line 247
    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->couldRetry()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_13

    const/16 v1, 0x243

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public couldRetry()Z
    .registers 4

    .line 232
    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_50

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x12c

    const/16 v2, 0x190

    if-le v0, v1, :cond_10

    if-lt v0, v2, :cond_50

    :cond_10
    if-le v0, v2, :cond_1a

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1a

    const/16 v1, 0x196

    if-ne v0, v1, :cond_50

    :cond_1a
    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_50

    const/16 v1, 0x23d

    if-eq v0, v1, :cond_50

    const/16 v1, 0x260

    if-eq v0, v1, :cond_50

    const/16 v1, 0x264

    if-eq v0, v1, :cond_50

    const/16 v1, 0x266

    if-eq v0, v1, :cond_50

    const/16 v1, 0x268

    if-eq v0, v1, :cond_50

    const/16 v1, 0x26b

    if-eq v0, v1, :cond_50

    const/16 v1, 0x276

    if-eq v0, v1, :cond_50

    const/16 v1, 0x277

    if-eq v0, v1, :cond_50

    const/16 v1, 0x280

    if-eq v0, v1, :cond_50

    const/16 v1, 0x2bd

    if-eq v0, v1, :cond_50

    const/4 v1, -0x1

    if-ge v0, v1, :cond_4e

    const/16 v1, -0x3e8

    if-le v0, v1, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 v0, 0x1

    return v0

    :cond_50
    :goto_50
    const/4 v0, 0x0

    return v0
.end method

.method public hasReqId()Z
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCancelled()Z
    .registers 3

    .line 224
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isHostUnavailable()Z
    .registers 3

    .line 281
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x1f6

    if-eq v0, v1, :cond_15

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_15

    const/16 v1, 0x1f8

    if-eq v0, v1, :cond_15

    const/16 v1, 0x257

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public isNetworkBroken()Z
    .registers 3

    .line 289
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isOK()Z
    .registers 3

    .line 228
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->hasReqId()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public isTlsError()Z
    .registers 3

    .line 264
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, -0x4b0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 310
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "8.3.3"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/qiniu/android/http/ResponseInfo;->id:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qiniu/android/http/ResponseInfo;->xlog:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qiniu/android/http/ResponseInfo;->host:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/qiniu/android/http/ResponseInfo;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "{ver:%s,ResponseInfo:%s,status:%d, reqId:%s, xlog:%s, xvia:%s, host:%s, time:%d,error:%s}"

    .line 310
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
