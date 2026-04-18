.class public Lcom/qiniu/android/collect/ReportItem;
.super Ljava/lang/Object;
.source "ReportItem.java"


# instance fields
.field private keyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/collect/ReportItem;->keyValues:Ljava/util/HashMap;

    return-void
.end method

.method public static qualityResult(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, "unknown_error"

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 184
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, 0xc7

    if-le v1, v2, :cond_13

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_13

    const-string v0, "ok"

    goto :goto_52

    :cond_13
    const/16 v2, 0x18f

    if-le v1, v2, :cond_3e

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_3b

    const/16 v2, 0x23d

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x243

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x260

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x264

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x266

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x276

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x277

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x2bd

    if-ne v1, v2, :cond_3e

    :cond_3b
    const-string v0, "bad_request"

    goto :goto_52

    :cond_3e
    const/4 v2, -0x6

    if-ne v1, v2, :cond_44

    const-string v0, "zero_size_file"

    goto :goto_52

    :cond_44
    const/4 v2, -0x3

    if-ne v1, v2, :cond_4a

    const-string v0, "invalid_file"

    goto :goto_52

    :cond_4a
    const/4 v2, -0x5

    if-eq v1, v2, :cond_50

    const/4 v2, -0x4

    if-ne v1, v2, :cond_52

    :cond_50
    const-string v0, "invalid_args"

    :cond_52
    :goto_52
    if-nez v0, :cond_58

    .line 201
    invoke-static {p0}, Lcom/qiniu/android/collect/ReportItem;->requestReportErrorType(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    :cond_58
    return-object v0
.end method

.method public static requestReportErrorType(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;
    .registers 4

    const-string v0, "unknown_error"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/4 v1, 0x0

    .line 143
    iget p0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, 0xc7

    if-le p0, v2, :cond_12

    const/16 v2, 0x12c

    if-ge p0, v2, :cond_12

    move-object v0, v1

    goto :goto_68

    :cond_12
    const/16 v1, 0x12b

    if-le p0, v1, :cond_19

    const-string v0, "response_error"

    goto :goto_68

    :cond_19
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1f

    const-string v0, "network_error"

    goto :goto_68

    :cond_1f
    const/16 v1, -0x3e9

    if-ne p0, v1, :cond_26

    const-string v0, "timeout"

    goto :goto_68

    :cond_26
    const/16 v1, -0x3eb

    if-ne p0, v1, :cond_2d

    const-string v0, "unknown_host"

    goto :goto_68

    :cond_2d
    const/16 v1, -0x3ec

    if-ne p0, v1, :cond_34

    const-string v0, "cannot_connect_to_host"

    goto :goto_68

    :cond_34
    const/16 v1, -0x3ed

    if-ne p0, v1, :cond_3b

    const-string v0, "transmission_error"

    goto :goto_68

    :cond_3b
    const/16 v1, -0x4b0

    if-ne p0, v1, :cond_42

    const-string v0, "ssl_error"

    goto :goto_68

    :cond_42
    const/16 v1, -0x3f7

    if-ne p0, v1, :cond_49

    const-string v0, "parse_error"

    goto :goto_68

    :cond_49
    const/4 v1, -0x8

    if-ne p0, v1, :cond_4f

    const-string v0, "malicious_response"

    goto :goto_68

    :cond_4f
    const/4 v1, -0x2

    if-ne p0, v1, :cond_55

    const-string v0, "user_canceled"

    goto :goto_68

    :cond_55
    const/4 v1, -0x7

    if-ne p0, v1, :cond_5b

    const-string v0, "local_io_error"

    goto :goto_68

    :cond_5b
    const/16 v1, 0x64

    if-ne p0, v1, :cond_62

    const-string v0, "protocol_error"

    goto :goto_68

    :cond_62
    const/16 v1, -0x3f1

    if-ne p0, v1, :cond_68

    const-string v0, "network_slow"

    :cond_68
    :goto_68
    return-object v0
.end method

.method public static requestReportStatusCode(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public setReport(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/qiniu/android/collect/ReportItem;->keyValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_a
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/qiniu/android/collect/ReportItem;->keyValues:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_17

    .line 34
    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/qiniu/android/collect/ReportItem;->keyValues:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    :goto_17
    const-string v0, "{}"

    return-object v0
.end method
