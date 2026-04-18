.class public Lcom/umeng/analytics/pro/r;
.super Ljava/lang/Object;
.source "DefconProcesser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/r$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3


# instance fields
.field private final e:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 26
    iput-wide v0, p0, Lcom/umeng/analytics/pro/r;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/r$1;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/umeng/analytics/pro/r;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/r;
    .registers 1

    .line 36
    sget-object v0, Lcom/umeng/analytics/pro/r$a;->a:Lcom/umeng/analytics/pro/r;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .registers 5

    if-nez p2, :cond_d

    const-string p2, "sessions"

    .line 50
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_d
    const-string p2, "active_user"

    .line 55
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_18
    const-string v0, "error"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_23
    const-string v0, "ekv"

    .line 61
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2e
    const-string v0, "gkv"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    :cond_39
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 68
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_42
    const-string p2, "userlevel"

    .line 70
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 71
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4d
    return-void
.end method

.method private b()Lorg/json/JSONArray;
    .registers 8

    .line 162
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 164
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 165
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 166
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/umeng/analytics/pro/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "start_time"

    .line 167
    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "end_time"

    const-wide/32 v5, 0xea60

    add-long/2addr v1, v5

    .line 168
    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 169
    invoke-virtual {v3, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_36} :catch_36

    :catch_36
    return-object v0
.end method

.method private c()Lorg/json/JSONArray;
    .registers 8

    .line 179
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 181
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 182
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 183
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "start_time"

    .line 184
    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_28

    :catch_28
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "defcon"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 7

    .line 77
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 80
    invoke-direct {p0, p1, v2}, Lcom/umeng/analytics/pro/r;->a(Lorg/json/JSONObject;Z)V

    .line 82
    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    goto :goto_3a

    :cond_13
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2d

    const-string v0, "sessions"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    :try_start_1b
    invoke-direct {p0}, Lcom/umeng/analytics/pro/r;->b()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_22

    .line 90
    :catch_22
    invoke-direct {p0, p1, v2}, Lcom/umeng/analytics/pro/r;->a(Lorg/json/JSONObject;Z)V

    .line 92
    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    goto :goto_3a

    :cond_2d
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3a

    .line 95
    invoke-direct {p0, p1, v1}, Lcom/umeng/analytics/pro/r;->a(Lorg/json/JSONObject;Z)V

    .line 97
    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public b(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 11

    const-string v0, "_$pp"

    const-string v1, "_$sp"

    .line 108
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "sessions"

    const-string v6, "active_user"

    if-ne v2, v4, :cond_4b

    .line 110
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 111
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    :cond_19
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 116
    :try_start_1f
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v2, :cond_43

    .line 120
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 121
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 122
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    :cond_37
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 125
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_40} :catch_43

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 133
    :catch_43
    :cond_43
    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    goto :goto_85

    :cond_4b
    const/4 v0, 0x2

    if-ne v2, v0, :cond_6f

    .line 135
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 136
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    :cond_57
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 140
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    :cond_60
    :try_start_60
    invoke-direct {p0}, Lcom/umeng/analytics/pro/r;->c()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_67} :catch_67

    .line 148
    :catch_67
    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    goto :goto_85

    :cond_6f
    const/4 v0, 0x3

    if-ne v2, v0, :cond_85

    .line 150
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 151
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    :cond_7b
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    :cond_85
    :goto_85
    return-void
.end method
