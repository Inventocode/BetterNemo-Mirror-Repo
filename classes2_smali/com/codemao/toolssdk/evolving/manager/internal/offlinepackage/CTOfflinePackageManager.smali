.class public final Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;
.super Ljava/lang/Object;
.source "CTOfflinePackageManager.kt"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/codemao/toolssdk/module/okhttp/CTOkHttpClientFactory;->INSTANCE:Lcom/codemao/toolssdk/module/okhttp/CTOkHttpClientFactory;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/module/okhttp/CTOkHttpClientFactory;->getOfflineForce()Lokhttp3/OkHttpClient;

    return-void
.end method

.method private final isNewest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 44
    sget-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->getCacheNewestVersion(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    .line 45
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "每次判断本地是否最新："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p3, :cond_40

    .line 47
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p3, p1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v3, :cond_40

    const/4 p1, 0x1

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    .line 48
    :goto_41
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "每次和远程版本匹配结果："

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    if-eqz p2, :cond_60

    if-eqz p1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v3, 0x0

    :goto_61
    return v3
.end method


# virtual methods
.method public final isServerOfflinePass(Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p3, 0x0

    if-nez p2, :cond_f

    .line 57
    new-instance p1, Lkotlin/Pair;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "是否强制走线上接口数据为空"

    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 59
    :cond_f
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->getForce_online()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 60
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    const-string v2, "exception"

    .line 61
    :cond_24
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->getMd5()Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_43

    .line 62
    invoke-direct {p0, p1, v2, p2}, Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;->isNewest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 63
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "每次加载作品确认，可以使用本地离线包"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    .line 64
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, ""

    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 66
    :cond_43
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "每次加载作品确认，不能使用本地离线包"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    if-eqz v0, :cond_4f

    const-string p1, "rabbit强制走线上"

    goto :goto_51

    :cond_4f
    const-string p1, "本地不是最新版:"

    .line 68
    :goto_51
    new-instance p2, Lkotlin/Pair;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
