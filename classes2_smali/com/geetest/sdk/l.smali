.class final Lcom/geetest/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/l$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/geetest/sdk/l$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/geetest/sdk/l;-><init>()V

    return-void
.end method

.method static a()Lcom/geetest/sdk/l;
    .registers 1

    .line 1
    invoke-static {}, Lcom/geetest/sdk/l$b;->a()Lcom/geetest/sdk/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-string v0, "$unknown"

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_e

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const-string v2, "gt_fp"

    .line 6
    invoke-static {p1, v2}, Lcom/geetest/sdk/j;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gt_ts"

    .line 7
    invoke-static {p1, v3}, Lcom/geetest/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_27

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 10
    invoke-static {p1, v3, v4, v5}, Lcom/geetest/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 21
    :cond_27
    :try_start_27
    invoke-static {p1}, Lcom/geetest/sdk/m;->a(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2b} :catch_95

    const-string v6, "e"

    const-string v7, "d"

    if-eqz v3, :cond_54

    .line 23
    :try_start_31
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-static {v2}, Lcom/geetest/sdk/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/geetest/sdk/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 26
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/geetest/sdk/j;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5a

    .line 29
    :cond_54
    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_5a
    :goto_5a
    invoke-static {v2}, Lcom/geetest/sdk/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geetest/sdk/j;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6c
    const-string p1, "fp"

    .line 36
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_71} :catch_95

    const-string p1, "ts"

    .line 37
    :try_start_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ver"

    const-string v0, "1.0.0"

    .line 38
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "client_type"

    const-string v0, "android"

    .line 39
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_95} :catch_95

    .line 43
    :catch_95
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
