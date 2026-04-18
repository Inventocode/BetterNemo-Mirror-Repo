.class public final Lcom/tencent/smtt/sdk/CacheManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheDisabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1b
    const-string v0, "android.webkit.CacheManager"

    const-string v1, "cacheDisabled"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    const/4 v0, 0x0

    goto :goto_2d

    :cond_27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2d
    return v0
.end method

.method public static getCacheFile(Ljava/lang/String;Z)Ljava/io/InputStream;
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/smtt/sdk/x;->a(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/x;->g()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    :try_start_15
    const-string v0, "android.webkit.CacheManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCacheFile"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/util/Map;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_34} :catch_35

    return-object p0

    :catch_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->g()Ljava/lang/Object;

    move-result-object v0

    :goto_14
    check-cast v0, Ljava/io/File;

    return-object v0

    :cond_17
    const-string v0, "android.webkit.CacheManager"

    const-string v1, "getCacheFileBaseDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method
