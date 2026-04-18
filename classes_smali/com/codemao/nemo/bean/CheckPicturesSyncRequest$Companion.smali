.class public final Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;
.super Ljava/lang/Object;
.source "CheckPicturesSyncRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckPicturesSyncRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckPicturesSyncRequest.kt\ncom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1851#2,2:100\n*S KotlinDebug\n*F\n+ 1 CheckPicturesSyncRequest.kt\ncom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion\n*L\n29#1:100,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCoverRequest(Ljava/lang/String;)Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;-><init>()V

    const/4 v1, 0x2

    .line 39
    invoke-static {v0, v1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->access$setCheck_type$p(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;I)V

    .line 40
    invoke-static {v0, p1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->access$addPicture(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 29
    sget-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/common/GlobalUtils;->getUrlList()Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->getStatic_url_prefix()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_29

    const/4 v5, 0x2

    .line 30
    invoke-static {p1, v2, v4, v5, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    if-eqz v3, :cond_11

    return-object v2

    :cond_2d
    return-object v1
.end method

.method public final getPublishRequest(Ljava/lang/Long;Ljava/util/List;)Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;-><init>()V

    .line 46
    invoke-static {v0, p1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->access$setWork_id$p(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/lang/Long;)V

    const/4 p1, 0x3

    .line 47
    invoke-static {v0, p1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->access$setCheck_type$p(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;I)V

    .line 48
    invoke-static {v0, p2}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->access$addPictures(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/util/List;)V

    return-object v0
.end method
