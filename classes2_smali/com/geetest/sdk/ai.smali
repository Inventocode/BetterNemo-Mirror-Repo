.class public Lcom/geetest/sdk/ai;
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

.method public static a(Landroid/content/Context;Lcom/geetest/sdk/model/beans/b;)Lcom/geetest/sdk/ai;
    .registers 4

    .line 1
    new-instance v0, Lcom/geetest/sdk/ai;

    invoke-static {p1}, Lcom/geetest/sdk/ai;->a(Lcom/geetest/sdk/model/beans/b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/geetest/sdk/ai;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/geetest/sdk/ac;->a(I)V

    const-string p0, "GetCoder"

    .line 3
    invoke-virtual {v0, p0}, Lcom/geetest/sdk/ac;->c(Ljava/lang/String;)V

    .line 4
    iput-object p1, v0, Lcom/geetest/sdk/ai;->j:Lcom/geetest/sdk/model/beans/b;

    return-object v0
.end method

.method private static a(Lcom/geetest/sdk/model/beans/b;)Ljava/lang/String;
    .registers 6

    const-string v0, "&w="

    .line 5
    invoke-static {}, Lcom/geetest/sdk/utils/q;->a()[B

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Lcom/geetest/sdk/model/beans/b;->a([B)V

    .line 9
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/geetest/sdk/model/beans/b;->n()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_46

    if-nez v3, :cond_17

    const-string v3, ""

    goto :goto_1b

    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/geetest/sdk/model/beans/b;->n()Ljava/lang/String;

    move-result-object v3

    :goto_1b
    const-string v4, "lang"

    .line 11
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/geetest/sdk/utils/q;->a()[B

    move-result-object v3

    .line 14
    invoke-static {v2, v1, v3}, Lcom/geetest/sdk/ak;->b([B[B[B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geetest/sdk/utils/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/geetest/sdk/model/beans/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/get.php?gt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lcom/geetest/sdk/model/beans/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&challenge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&client_type=android&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lcom/geetest/sdk/model/beans/b;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&client_type=android"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&pt="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "20"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 23
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_60

    :try_start_18
    const-string v0, "utf-8"

    .line 28
    invoke-static {v5, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1e} :catch_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v0

    goto :goto_3e

    :catch_21
    move-exception v0

    .line 30
    :try_start_22
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 33
    :goto_25
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v9, "[a-zA-Z]"

    .line 35
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_31
    iput-object v5, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    .line 38
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 39
    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iput-object v5, v2, Lcom/geetest/sdk/af;->b:Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3d} :catch_1f

    return v7

    .line 43
    :goto_3e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
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

    return v8

    :cond_60
    const-string v0, "data"

    .line 63
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, ":  "

    if-nez v4, :cond_87

    .line 65
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

    return v8

    :cond_87
    const-string v0, "s"

    .line 68
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "theme_version"

    .line 69
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "feedback"

    .line 70
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a0

    goto :goto_a1

    :cond_a0
    move-object v6, v10

    :goto_a1
    const-string v10, "api_server"

    .line 76
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 77
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_ca

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Lcom/geetest/sdk/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v8

    :cond_ca
    const-string v10, "theme"

    .line 81
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "logo"

    .line 82
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Lcom/geetest/sdk/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    return v8

    .line 86
    :cond_f5
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 87
    invoke-static {v12}, Lcom/geetest/sdk/model/beans/f;->a(Z)V

    const-string v13, "static_servers"

    .line 89
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 90
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v14, :cond_120

    const/4 v7, 0x0

    .line 92
    :goto_10a
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-le v8, v7, :cond_120

    .line 93
    invoke-virtual {v14, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 94
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_11d

    .line 95
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11d
    add-int/lit8 v7, v7, 0x1

    goto :goto_10a

    .line 99
    :cond_120
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_144

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Lcom/geetest/sdk/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    return v2

    .line 104
    :cond_144
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "c"

    .line 105
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_166

    const/4 v7, 0x0

    .line 107
    :goto_152
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_166

    .line 108
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_152

    .line 112
    :cond_166
    new-instance v4, Lcom/geetest/sdk/model/beans/g;

    invoke-direct {v4}, Lcom/geetest/sdk/model/beans/g;-><init>()V

    .line 113
    invoke-virtual {v4, v11}, Lcom/geetest/sdk/model/beans/g;->a(Ljava/lang/String;)V

    const-string v7, "/"

    .line 114
    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_17f

    const/4 v8, 0x0

    .line 116
    invoke-virtual {v11, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/geetest/sdk/model/beans/g;->b(Ljava/lang/String;)V

    goto :goto_182

    .line 118
    :cond_17f
    invoke-virtual {v4, v11}, Lcom/geetest/sdk/model/beans/g;->b(Ljava/lang/String;)V

    .line 120
    :goto_182
    invoke-virtual {v4, v5}, Lcom/geetest/sdk/model/beans/g;->a(Ljava/util/List;)V

    .line 121
    invoke-virtual {v4, v6}, Lcom/geetest/sdk/model/beans/g;->c(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4, v12}, Lcom/geetest/sdk/model/beans/g;->a(Z)V

    .line 123
    invoke-virtual {v4, v15}, Lcom/geetest/sdk/model/beans/g;->b(Ljava/util/List;)V

    .line 124
    invoke-virtual {v4, v10}, Lcom/geetest/sdk/model/beans/g;->e(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4, v9}, Lcom/geetest/sdk/model/beans/g;->f(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4, v0}, Lcom/geetest/sdk/model/beans/g;->d(Ljava/lang/String;)V

    .line 127
    iget-object v0, v1, Lcom/geetest/sdk/ai;->j:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0, v4}, Lcom/geetest/sdk/model/beans/b;->a(Lcom/geetest/sdk/model/beans/g;)V

    const-string v0, "OK"

    .line 129
    iput-object v0, v2, Lcom/geetest/sdk/af;->a:Ljava/lang/Object;

    .line 130
    iput-object v3, v2, Lcom/geetest/sdk/af;->b:Ljava/lang/Object;

    const/4 v2, 0x1

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

    .line 3
    iget-object v1, p0, Lcom/geetest/sdk/ai;->j:Lcom/geetest/sdk/model/beans/b;

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
