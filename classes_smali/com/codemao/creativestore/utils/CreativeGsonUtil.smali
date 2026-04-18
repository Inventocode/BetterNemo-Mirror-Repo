.class public Lcom/codemao/creativestore/utils/CreativeGsonUtil;
.super Ljava/lang/Object;
.source "CreativeGsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/utils/CreativeGsonUtil$GsonHolder;
    }
.end annotation


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private ignoreGson:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativestore/utils/CreativeGsonUtil$1;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;-><init>()V

    return-void
.end method

.method private getGson()Lcom/google/gson/Gson;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_f

    .line 25
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 27
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->gson:Lcom/google/gson/Gson;

    .line 29
    :cond_f
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private getIgnoreGson()Lcom/google/gson/Gson;
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->ignoreGson:Lcom/google/gson/Gson;

    if-nez v0, :cond_1e

    .line 34
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/gson/ExclusionStrategy;

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/creativestore/utils/IgnoreGsonStrategy;

    invoke-direct {v3}, Lcom/codemao/creativestore/utils/IgnoreGsonStrategy;-><init>()V

    aput-object v3, v1, v2

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->ignoreGson:Lcom/google/gson/Gson;

    .line 38
    :cond_1e
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->ignoreGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;
    .registers 1

    .line 42
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil$GsonHolder;->access$100()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseJson(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 59
    invoke-direct {p0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getIgnoreGson()Lcom/google/gson/Gson;

    move-result-object p3

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getGson()Lcom/google/gson/Gson;

    move-result-object p3

    .line 61
    :goto_b
    :try_start_b
    invoke-virtual {p3, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, p2, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 73
    invoke-direct {p0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getIgnoreGson()Lcom/google/gson/Gson;

    move-result-object p3

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getGson()Lcom/google/gson/Gson;

    move-result-object p3

    .line 75
    :goto_b
    :try_start_b
    invoke-virtual {p3, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public toJsonStr(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJsonStr(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 50
    invoke-direct {p0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getIgnoreGson()Lcom/google/gson/Gson;

    move-result-object p2

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    .line 51
    :goto_b
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
