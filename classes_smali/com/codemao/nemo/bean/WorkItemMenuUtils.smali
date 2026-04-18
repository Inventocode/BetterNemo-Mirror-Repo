.class public final Lcom/codemao/nemo/bean/WorkItemMenuUtils;
.super Ljava/lang/Object;
.source "KnWorkListResponse.kt"


# static fields
.field public static final DELETE_FOREVER:Ljava/lang/String; = "永久删除"

.field public static final INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

.field public static final PUBLISH_CANCEL:Ljava/lang/String; = "取消发布"

.field public static final WORK_COPY:Ljava/lang/String; = "复制"

.field public static final WORK_DELETE:Ljava/lang/String; = "删除"

.field public static final WORK_DELETE_DISABLE:Ljava/lang/String; = "禁止删除"

.field public static final WORK_EXPORT:Ljava/lang/String; = "导出"

.field public static final WORK_RECOVER:Ljava/lang/String; = "恢复作品"

.field public static final WORK_SHARE:Ljava/lang/String; = "分享"

.field public static final WORK_UPDATE:Ljava/lang/String; = "更新"

.field public static final WORK_UPLOAD:Ljava/lang/String; = "上传云端"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCancel()Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 9

    .line 222
    new-instance v7, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const-string/jumbo v1, "取消发布"

    const-string/jumbo v2, "取消发布"

    const v3, 0x7f0e0017

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getCopy()Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 9

    .line 230
    new-instance v7, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const-string/jumbo v1, "复制"

    const-string/jumbo v2, "复制"

    const v3, 0x7f0e001f

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getDelete(Z)Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 6

    const-string/jumbo v0, "删除"

    if-eqz p1, :cond_14

    .line 234
    new-instance p1, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const v1, 0x7f0e002c

    const-string v2, "#FE7152"

    .line 238
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 234
    invoke-direct {p1, v0, v0, v1, v2}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_25

    .line 239
    :cond_14
    new-instance p1, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const v1, 0x7f0e002b

    const-string v2, "#55FE7152"

    .line 243
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "禁止删除"

    .line 239
    invoke-direct {p1, v3, v0, v1, v2}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_25
    return-object p1
.end method

.method static synthetic getDelete$default(Lcom/codemao/nemo/bean/WorkItemMenuUtils;ZILjava/lang/Object;)Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 233
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getDelete(Z)Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object p0

    return-object p0
.end method

.method private final getDeleteForever()Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 5

    .line 264
    new-instance v0, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const-string v1, "#FE7152"

    .line 268
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "永久删除"

    const v3, 0x7f0e002c

    .line 264
    invoke-direct {v0, v2, v2, v3, v1}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method private final getExport()Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 9

    .line 226
    new-instance v7, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const-string/jumbo v1, "导出"

    const-string/jumbo v2, "导出"

    const v3, 0x7f0e0033

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getRecover()Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 9

    .line 260
    new-instance v7, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const-string/jumbo v1, "恢复作品"

    const-string/jumbo v2, "恢复作品"

    const v3, 0x7f0e0179

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getShare()Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 9

    .line 248
    new-instance v7, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const-string/jumbo v1, "分享"

    const-string/jumbo v2, "分享"

    const v3, 0x7f0e0185

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getUpdate()Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 9

    .line 256
    new-instance v7, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const-string/jumbo v1, "更新"

    const-string/jumbo v2, "更新"

    const v3, 0x7f0e018b

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getUpload()Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 9

    .line 252
    new-instance v7, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const-string v1, "上传云端"

    const-string v2, "上传云端"

    const v3, 0x7f0e018c

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method


# virtual methods
.method public final getKnPublished(ZZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/MineWorkMenuItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p1, :cond_26

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/codemao/nemo/bean/MineWorkMenuItem;

    .line 176
    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getCancel()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v4

    aput-object v4, p1, v2

    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getExport()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getCopy()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-direct {p0, p2}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getDelete(Z)Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_26
    new-array p1, v3, [Lcom/codemao/nemo/bean/MineWorkMenuItem;

    .line 178
    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getExport()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getCopy()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-direct {p0, p2}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getDelete(Z)Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getKnRecycleBin()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/MineWorkMenuItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/nemo/bean/MineWorkMenuItem;

    .line 214
    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getRecover()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getDeleteForever()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNemoTemplate(ZLcom/codemao/nemo/bean/NemoWorkListItem;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/MineWorkMenuItem;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 184
    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getCopy()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 186
    :cond_10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 193
    iget v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 194
    iget v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2c

    sget-object v1, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getUpdate()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v1

    goto :goto_32

    :cond_2c
    sget-object v1, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getUpload()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v1

    :goto_32
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_35
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isPublished()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 197
    sget-object v1, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getCancel()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_44
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 200
    sget-object v1, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getCopy()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_53
    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-nez v0, :cond_60

    .line 203
    sget-object v0, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getShare()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_60
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isPublished()Z

    move-result p2

    if-nez p2, :cond_71

    .line 206
    sget-object p2, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v0, v2, v1}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getDelete$default(Lcom/codemao/nemo/bean/WorkItemMenuUtils;ZILjava/lang/Object;)Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    return-object p1
.end method

.method public final getSearchPublished()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/MineWorkMenuItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/nemo/bean/MineWorkMenuItem;

    .line 218
    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getCancel()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getShare()Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
