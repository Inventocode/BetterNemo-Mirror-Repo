.class public Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;
.super Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;
.source "CTOfflinePackagePath.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getFormatVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "."

    const-string v3, "_"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getIndexHtmlPath$toolssdk_release(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :try_start_a
    sget-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->getCacheNewestVersion(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;->getTargetDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/index.html"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_64

    .line 62
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index文件存在："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4c} :catch_4d

    return-object p1

    :catch_4d
    move-exception p1

    .line 66
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "获取index入口异常："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    :cond_64
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final getTargetDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathBizUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFilePathBizUtils;

    .line 52
    invoke-virtual {p0, p3}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;->getFormatVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 49
    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathBizUtils;->getOfflineTargetPathDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isWorkEnableOffline$toolssdk_release(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    .line 72
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    if-eqz v2, :cond_11

    return v0

    .line 75
    :cond_11
    sget-object v2, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {v2, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkTanyueKn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 76
    invoke-virtual {v2, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPyt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_32

    :cond_20
    const-string v2, "tanyue_kn"

    .line 80
    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "python"

    .line 81
    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method
