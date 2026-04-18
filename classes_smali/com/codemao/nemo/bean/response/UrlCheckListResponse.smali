.class public final Lcom/codemao/nemo/bean/response/UrlCheckListResponse;
.super Ljava/lang/Object;
.source "UrlCheckListResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUrlCheckListResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UrlCheckListResponse.kt\ncom/codemao/nemo/bean/response/UrlCheckListResponse\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1851#2,2:73\n1851#2,2:75\n*S KotlinDebug\n*F\n+ 1 UrlCheckListResponse.kt\ncom/codemao/nemo/bean/response/UrlCheckListResponse\n*L\n53#1:73,2\n59#1:75,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;

.field private static final origin:Ljava/lang/String;


# instance fields
.field private final static_url_prefix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final static_url_suffix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->Companion:Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;

    const-string v0, "{\n    \"static_url_prefix\": [\n        \"https://dev-cdn-common.codemao.cn/dev/396/\",\n        \"https://creation.codemao.cn/396/\",\n        \"https://dev-cdn-common.codemao.cn/dev/922/user-files/\",\n        \"https://creation.codemao.cn/922/user-files/\",\n        \"https://static.codemao.cn/neko/\",\n        \"https://kn-cdn.codemao.cn/neko/\",\n        \"https://static.codemao.cn/nemo/\",\n        \"https://dev-cdn-common.codemao.cn/dev/490/\",\n        \"https://creation.codemao.cn/490/\",\n        \"https://dev-static.codemao.cn/nemo\",\n        \"https://static.codemao.cn/kitten/\",\n        \"https://dev-cdn-common.bcmcdn.com/dev/396/\",\n        \"https://creation.bcmcdn.com/396/\",\n        \"https://dev-cdn-common.bcmcdn.com/dev/922/user-files/\",\n        \"https://creation.bcmcdn.com/922/user-files/\",\n        \"https://static.bcmcdn.com/neko/\",\n        \"https://static.bcmcdn.com/nemo/\",\n        \"https://dev-cdn-common.bcmcdn.com/dev/490/\",\n        \"https://creation.bcmcdn.com/490/\",\n        \"https://dev-static.bcmcdn.com/nemo\",\n        \"https://static.bcmcdn.com/kitten/\"\n    ],\n    \"static_url_suffix\": [\n        \"bcmkn\",\n        \"bcmknk\",\n        \"bcmknh\"\n    ]\n}"

    .line 43
    sput-object v0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->origin:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_prefix:Ljava/util/List;

    .line 8
    iput-object p2, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_suffix:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getOrigin$cp()Ljava/lang/String;
    .registers 1

    .line 6
    sget-object v0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/response/UrlCheckListResponse;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/codemao/nemo/bean/response/UrlCheckListResponse;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_prefix:Ljava/util/List;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_suffix:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->copy(Ljava/util/List;Ljava/util/List;)Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkHost(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 69
    invoke-static {p1, p1, v0}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final checkImportUrl(Ljava/lang/String;)Z
    .registers 11

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_prefix:Ljava/util/List;

    const-string v1, ",完整链接:"

    const-string/jumbo v2, "域名前缀"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_44

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 54
    invoke-static {p1, v6, v4}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "前缀:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_15

    :cond_44
    const/4 v5, 0x0

    .line 59
    :cond_45
    iget-object v0, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_suffix:Ljava/util/List;

    if-eqz v0, :cond_7d

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :cond_4e
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 60
    invoke-static {p1, v7, v4}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "后缀:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_4e

    :cond_7d
    const/4 v6, 0x0

    :cond_7e
    if-eqz v5, :cond_83

    if-eqz v6, :cond_83

    const/4 v3, 0x1

    :cond_83
    return v3
.end method

.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_prefix:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_suffix:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;)Lcom/codemao/nemo/bean/response/UrlCheckListResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/codemao/nemo/bean/response/UrlCheckListResponse;"
        }
    .end annotation

    new-instance v0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    invoke-direct {v0, p1, p2}, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    iget-object v1, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_prefix:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_prefix:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_suffix:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_suffix:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getStatic_url_prefix()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_prefix:Ljava/util/List;

    return-object v0
.end method

.method public final getStatic_url_suffix()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_suffix:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_prefix:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_suffix:Ljava/util/List;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UrlCheckListResponse(static_url_prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_prefix:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", static_url_suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->static_url_suffix:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
