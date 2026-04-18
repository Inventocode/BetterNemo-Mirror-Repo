.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;
.super Ljava/lang/Object;
.source "CppFileJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBundleDir()Lcom/codemao/toolssdk/model/dsbridge/StorageDirData;
    .registers 3

    .line 96
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/StorageDirData;

    const-string v1, "codemaotools://"

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/StorageDirData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/tools_sdk/project_file_cache/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isAIKidsMatch(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "https://creation.codemao.cn/ai-kids/animation/"

    .line 100
    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-ne p1, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final isKnAssetsMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 104
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKnAssetsResource(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    if-eqz p2, :cond_3c

    const-string p1, "https://creation.codemao.cn/neko/web/release/static"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 108
    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_18

    return v3

    :cond_18
    const-string p1, "https://creation.bcmcdn.com/neko/web/release/static"

    .line 111
    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v3

    :cond_21
    const-string p1, "https://dev-cdn-common.codemao.cn/tools-entry/5/web/js"

    .line 114
    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return v3

    :cond_2a
    const-string p1, "https://creation.codemao.cn/tools-entry/1/web/js"

    .line 117
    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    return v3

    :cond_33
    const-string p1, "https://dev-cdn-common.bcmcdn.com/neko/web/release/static"

    .line 120
    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    return v3

    :cond_3c
    return v0
.end method

.method public final isKnImage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 137
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKnLocalImage(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    if-eqz p2, :cond_44

    const/4 p1, 0x2

    const/4 v1, 0x0

    const-string v2, "https://codemaotools"

    .line 141
    invoke-static {p2, v2, v0, p1, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    return v0

    :cond_17
    const-string p1, "http"

    const/4 v1, 0x1

    .line 144
    invoke-static {p2, p1, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p1, ".png"

    .line 145
    invoke-static {p2, p1, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_29

    return v1

    :cond_29
    const-string p1, ".jpg"

    .line 148
    invoke-static {p2, p1, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_32

    return v1

    :cond_32
    const-string p1, ".jpeg"

    .line 151
    invoke-static {p2, p1, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3b

    return v1

    :cond_3b
    const-string p1, ".webp"

    .line 157
    invoke-static {p2, p1, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_44

    return v1

    :cond_44
    return v0
.end method

.method public final isKnZip(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
