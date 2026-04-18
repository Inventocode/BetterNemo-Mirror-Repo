.class public Lcom/geetest/sdk/aj;
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

.method public static a(Landroid/content/Context;Lcom/geetest/sdk/model/beans/b;)Lcom/geetest/sdk/aj;
    .registers 6

    .line 1
    new-instance v0, Lcom/geetest/sdk/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geetest/sdk/utils/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/gettype.php?gt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/geetest/sdk/aj;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Lcom/geetest/sdk/ac;->a(I)V

    const-string p0, "Gettype"

    .line 5
    invoke-virtual {v0, p0}, Lcom/geetest/sdk/ac;->c(Ljava/lang/String;)V

    .line 6
    iput-object p1, v0, Lcom/geetest/sdk/aj;->j:Lcom/geetest/sdk/model/beans/b;

    return-object v0
.end method


# virtual methods
.method protected a(ILcom/geetest/sdk/af;Lorg/json/JSONObject;)Z
    .registers 21
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

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "error_code"

    const-string v0, "user_error"

    .line 7
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_60

    :try_start_16
    const-string v0, "utf-8"

    .line 12
    invoke-static {v5, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_23

    :catch_1d
    move-exception v0

    goto :goto_3e

    :catch_1f
    move-exception v0

    .line 14
    :try_start_20
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 17
    :goto_23
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v8, "[a-zA-Z]"

    const-string v9, ""

    .line 19
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_31
    iput-object v5, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    .line 22
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 23
    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iput-object v5, v2, Lcom/geetest/sdk/af;->b:Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3d} :catch_1d

    return v6

    .line 27
    :goto_3e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v7

    :cond_60
    const-string v0, "data"

    .line 34
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, ":  "

    if-nez v4, :cond_87

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v7

    :cond_87
    const-string v0, "type"

    .line 54
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "aspect_radio"

    .line 55
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_b2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Lcom/geetest/sdk/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v7

    .line 60
    :cond_b2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 61
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 62
    :goto_bb
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 63
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 64
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    :cond_d3
    const-string v8, "fullpage"

    .line 66
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "click"

    .line 67
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "voice"

    .line 68
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "slide"

    .line 69
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "geetest"

    .line 70
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "static_servers"

    .line 71
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 72
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_114

    .line 74
    :goto_fe
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-le v15, v7, :cond_114

    .line 75
    invoke-virtual {v13, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    .line 76
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_111

    .line 77
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_111
    add-int/lit8 v7, v7, 0x1

    goto :goto_fe

    .line 82
    :cond_114
    new-instance v7, Lcom/geetest/sdk/model/beans/h;

    invoke-direct {v7}, Lcom/geetest/sdk/model/beans/h;-><init>()V

    .line 83
    invoke-virtual {v7, v5}, Lcom/geetest/sdk/model/beans/h;->a(Ljava/util/Map;)V

    .line 84
    invoke-virtual {v7, v9}, Lcom/geetest/sdk/model/beans/h;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v7, v12}, Lcom/geetest/sdk/model/beans/h;->b(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v7, v11}, Lcom/geetest/sdk/model/beans/h;->c(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v7, v0}, Lcom/geetest/sdk/model/beans/h;->d(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v7, v8}, Lcom/geetest/sdk/model/beans/h;->e(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v7, v10}, Lcom/geetest/sdk/model/beans/h;->f(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v7, v14}, Lcom/geetest/sdk/model/beans/h;->a(Ljava/util/List;)V

    .line 91
    invoke-virtual {v7, v4}, Lcom/geetest/sdk/model/beans/h;->a(Lorg/json/JSONObject;)V

    .line 92
    iget-object v0, v1, Lcom/geetest/sdk/aj;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0, v7}, Lcom/geetest/sdk/model/beans/b;->a(Lcom/geetest/sdk/model/beans/h;)V

    const-string v0, "OK"

    .line 94
    iput-object v0, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    .line 95
    iput-object v3, v2, Lcom/geetest/sdk/af;->b:Ljava/lang/Object;

    return v6
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

    .line 3
    iget-object v1, p0, Lcom/geetest/sdk/aj;->j:Lcom/geetest/sdk/model/beans/b;

    if-eqz v1, :cond_19

    .line 4
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_19
    iget-object v1, p0, Lcom/geetest/sdk/ac;->f:[B

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    array-length v1, v1

    :goto_20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
