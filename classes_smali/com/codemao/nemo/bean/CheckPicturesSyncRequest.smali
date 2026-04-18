.class public final Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;
.super Ljava/lang/Object;
.source "CheckPicturesSyncRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;,
        Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckPicturesSyncRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckPicturesSyncRequest.kt\ncom/codemao/nemo/bean/CheckPicturesSyncRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1851#2:100\n1851#2,2:101\n1851#2,2:103\n1852#2:105\n*S KotlinDebug\n*F\n+ 1 CheckPicturesSyncRequest.kt\ncom/codemao/nemo/bean/CheckPicturesSyncRequest\n*L\n62#1:100\n66#1:101,2\n79#1:103,2\n62#1:105\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;

.field private static final validPrefixes:[Ljava/lang/String;


# instance fields
.field private check_type:I

.field private final pictures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;",
            ">;"
        }
    .end annotation
.end field

.field private work_id:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->Companion:Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;

    const-string v2, "https://dev-cdn-common.codemao.cn/dev/396/"

    const-string v3, "https://creation.codemao.cn/396/"

    const-string v4, "https://dev-cdn-common.codemao.cn/dev/922/user-files/"

    const-string v5, "https://creation.codemao.cn/922/user-files/"

    const-string v6, "https://static.codemao.cn/neko/"

    const-string v7, "https://kn-cdn.codemao.cn/neko/"

    const-string v8, "https://static.codemao.cn/nemo/"

    const-string v9, "https://dev-cdn-common.codemao.cn/dev/490/"

    const-string v10, "https://creation.codemao.cn/490/"

    const-string v11, "https://dev-static.codemao.cn/nemo"

    const-string v12, "https://static.codemao.cn/kitten/"

    .line 25
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->validPrefixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 54
    iput v0, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->check_type:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->pictures:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$addPicture(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/lang/String;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->addPicture(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$addPictures(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/util/List;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->addPictures(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setCheck_type$p(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;I)V
    .registers 2

    .line 5
    iput p1, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->check_type:I

    return-void
.end method

.method public static final synthetic access$setWork_id$p(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/lang/Long;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->work_id:Ljava/lang/Long;

    return-void
.end method

.method private final addPicture(Ljava/lang/String;)V
    .registers 6

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->pictures:Ljava/util/ArrayList;

    new-instance v1, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v2, ""

    invoke-direct {v1, p0, v2, p1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;-><init>(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final addPictures(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    sget-object v1, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->Companion:Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-eqz v7, :cond_77

    .line 66
    iget-object v2, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->pictures:Ljava/util/ArrayList;

    .line 1851
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_20
    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;

    .line 67
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 69
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->getPaths()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_4d

    if-eqz v0, :cond_4a

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, ""

    move-object v1, v0

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_4a
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    const/4 v1, 0x1

    goto :goto_20

    :cond_4f
    if-nez v1, :cond_4

    .line 73
    new-instance v8, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v8, p0, v7, v1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;-><init>(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->getPaths()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_71

    if-eqz v0, :cond_6e

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, ""

    move-object v1, v0

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_6e
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_71
    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->pictures:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 79
    :cond_77
    iget-object v2, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->pictures:Ljava/util/ArrayList;

    .line 1851
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7d
    :goto_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;

    .line 80
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 82
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->getPaths()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    const/4 v1, 0x1

    goto :goto_7d

    :cond_a0
    if-nez v1, :cond_4

    .line 86
    new-instance v1, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v4, v2}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;-><init>(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 87
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->getPaths()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_b5
    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->pictures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_bc
    return-void
.end method
