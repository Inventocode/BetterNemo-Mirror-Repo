.class public Lcom/geetest/sdk/ah;
.super Lcom/geetest/sdk/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geetest/sdk/ac<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Lcom/geetest/sdk/model/beans/b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/geetest/sdk/ac;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/geetest/sdk/model/beans/b;)Lcom/geetest/sdk/ah;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/geetest/sdk/utils/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->j()Lcom/geetest/sdk/model/beans/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ajax.php?gt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&challenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&client_type=android&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/geetest/sdk/ah;

    invoke-direct {v1, v0, p0}, Lcom/geetest/sdk/ah;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v1, p0}, Lcom/geetest/sdk/ac;->a(I)V

    .line 6
    iput-object p1, v1, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    const-string p0, "Ajax"

    .line 7
    invoke-virtual {v1, p0}, Lcom/geetest/sdk/ac;->c(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 8
    invoke-virtual {v1, p0}, Lcom/geetest/sdk/ac;->a(Z)V

    return-object v1
.end method


# virtual methods
.method protected a(ILcom/geetest/sdk/af;Lorg/json/JSONObject;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/geetest/sdk/af<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    const-string p1, "error_code"

    const-string v0, "user_error"

    .line 9
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_59

    :try_start_10
    const-string v1, "utf-8"

    .line 14
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v1

    .line 16
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :goto_1b
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    const-string v4, "[a-zA-Z]"

    const-string v5, ""

    .line 21
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_29
    iput-object v0, p2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    iput-object v0, p2, Lcom/geetest/sdk/af;->b:Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_35} :catch_36

    return v2

    :catch_36
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v3

    :cond_59
    const-string p1, "data"

    .line 42
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, ":  "

    if-nez v0, :cond_80

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/geetest/sdk/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v3

    :cond_80
    const-string p1, "result"

    .line 47
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/geetest/sdk/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v3

    .line 52
    :cond_a9
    iget-object p1, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {p1, v4}, Lcom/geetest/sdk/model/beans/b;->i(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->k()Lcom/geetest/sdk/model/beans/h;

    move-result-object p1

    if-nez p1, :cond_bb

    const-string p1, "GetTypeBean is null"

    .line 54
    iput-object p1, p2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v3

    .line 57
    :cond_bb
    iget-object p1, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->k()Lcom/geetest/sdk/model/beans/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/h;->b()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_cc

    const-string p1, "GetTypeBean JsonObject is null"

    .line 58
    iput-object p1, p2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v3

    .line 61
    :cond_cc
    iget-object p1, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->k()Lcom/geetest/sdk/model/beans/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/h;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ee

    .line 62
    iget-object p1, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->k()Lcom/geetest/sdk/model/beans/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/h;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/geetest/sdk/model/beans/b;->j(Ljava/lang/String;)V

    goto :goto_f4

    .line 64
    :cond_ee
    iget-object p1, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/geetest/sdk/model/beans/b;->j(Ljava/lang/String;)V

    :goto_f4
    const-string p1, "validate"

    .line 66
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 67
    iget-object v1, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/geetest/sdk/model/beans/b;->k(Ljava/lang/String;)V

    :cond_105
    const-string p1, "OK"

    .line 70
    iput-object p1, p2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    .line 71
    iput-object p3, p2, Lcom/geetest/sdk/af;->b:Ljava/lang/Object;

    return v2
.end method

.method protected c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Encoding"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    if-eqz v1, :cond_29

    .line 6
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->j()Lcom/geetest/sdk/model/beans/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/g;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_29
    iget-object v1, p0, Lcom/geetest/sdk/ac;->f:[B

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    goto :goto_30

    :cond_2f
    array-length v1, v1

    :goto_30
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected e()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/geetest/sdk/ac;->e()Z

    move-result v0

    return v0
.end method

.method protected g()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AjaxCoder"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_7
    iget-object v2, p0, Lcom/geetest/sdk/ac;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/geetest/sdk/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_91

    const-string v4, ""

    if-eqz v2, :cond_21

    :try_start_16
    const-string v5, " "

    .line 15
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "mi"

    .line 16
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_21
    const-string v2, "light"

    .line 20
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_91

    const-string v2, "gid"

    .line 24
    :try_start_28
    invoke-static {}, Lcom/geetest/sdk/k;->a()Lcom/geetest/sdk/k;

    move-result-object v4

    iget-object v5, p0, Lcom/geetest/sdk/ac;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/geetest/sdk/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_39} :catch_91

    const-string v2, "gt"

    .line 26
    :try_start_3b
    iget-object v4, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v4}, Lcom/geetest/sdk/model/beans/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_44} :catch_91

    const-string v2, "challenge"

    .line 27
    :try_start_46
    iget-object v4, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v4}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "client_type"

    const-string v4, "android"

    .line 28
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pt"

    const-string v4, "20"

    .line 29
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ajax add info: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_75} :catch_91

    const-string v2, "w"

    .line 31
    :try_start_77
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lcom/geetest/sdk/ah;->j:Lcom/geetest/sdk/model/beans/b;

    .line 32
    invoke-virtual {v4}, Lcom/geetest/sdk/model/beans/b;->a()[B

    move-result-object v4

    invoke-static {}, Lcom/geetest/sdk/utils/q;->a()[B

    move-result-object v5

    .line 33
    invoke-static {v3, v4, v5}, Lcom/geetest/sdk/ak;->b([B[B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_90} :catch_91

    return-object v1

    :catch_91
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
