.class public final Lcom/codemao/nemo/bean/NemoWorkListItem;
.super Ljava/lang/Object;
.source "NemoWorkListItem.kt"


# instance fields
.field private menuOpen:Z

.field private final old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field private final searchMode:Z

.field private showDeleteConfirm:Z

.field private tempPosition:I


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-boolean p2, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->tempPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 11
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILjava/lang/Object;)Lcom/codemao/nemo/bean/NemoWorkListItem;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-boolean p2, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->copy(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)Lcom/codemao/nemo/bean/NemoWorkListItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object v0
.end method

.method public final component2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    return v0
.end method

.method public final copy(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)Lcom/codemao/nemo/bean/NemoWorkListItem;
    .registers 4

    new-instance v0, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-direct {v0, p1, p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/NemoWorkListItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/NemoWorkListItem;

    iget-object v1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v3, p1, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    iget-boolean p1, p1, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .registers 7

    .line 57
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_12

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    :cond_d
    if-nez v1, :cond_10

    goto :goto_11

    :cond_10
    move-object v2, v1

    :goto_11
    return-object v2

    .line 61
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-nez v0, :cond_17

    return-object v2

    .line 64
    :cond_17
    iget-boolean v3, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_28

    .line 65
    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/codemao/nemo/util/CommonUtil;->encodeBase64File(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "encodeBase64File(true, old.coverPath)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_63

    .line 67
    :cond_28
    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    :cond_35
    :goto_35
    if-nez v4, :cond_41

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const-string v0, "old.publishPreview"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_63

    .line 69
    :cond_41
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    if-eqz v0, :cond_63

    const-string v4, "old.coverPath"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const-string v5, ".cover"

    invoke-static {v0, v5, v3, v4, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 71
    :try_start_55
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/codemao/nemo/util/CommonUtil;->encodeBase64File(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encodeBase64File(false, old.coverPath)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_62} :catch_63

    move-object v2, v0

    :catch_63
    :cond_63
    :goto_63
    return-object v2
.end method

.method public final getDeleteTips()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "确定删除该作品吗？"

    return-object v0
.end method

.method public final getEnableRename()Z
    .registers 3

    .line 46
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isLogin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_e

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isPublished()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public final getLandscape()Z
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public final getMenuOpen()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->menuOpen:Z

    return v0
.end method

.method public final getMenus(Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/MineWorkMenuItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 94
    sget-object p1, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getSearchPublished()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 96
    :cond_9
    sget-object p1, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->INSTANCE:Lcom/codemao/nemo/bean/WorkItemMenuUtils;

    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {p1, v1, p0}, Lcom/codemao/nemo/bean/WorkItemMenuUtils;->getNemoTemplate(ZLcom/codemao/nemo/bean/NemoWorkListItem;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object v0
.end method

.method public final getPublishedIcon()I
    .registers 4

    .line 81
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isLogin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_15

    goto :goto_26

    .line 85
    :cond_15
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_1f

    const v1, 0x7f0e0190

    goto :goto_26

    :cond_1f
    const v1, 0x7f0e018f

    goto :goto_26

    :cond_23
    const v1, 0x7f0e0172

    :goto_26
    return v1
.end method

.method public final getSearchMode()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    return v0
.end method

.method public final getShowDeleteConfirm()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->showDeleteConfirm:Z

    return v0
.end method

.method public final getShowTime()Ljava/lang/String;
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    if-eqz v0, :cond_1f

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_13

    :cond_11
    const-wide/16 v0, 0x0

    :goto_13
    const-string v2, "yyyy-mm-dd HH:MM"

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "millis2String(old?.modif…)?:0, \"yyyy-mm-dd HH:MM\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const-string v1, ""

    if-eqz v0, :cond_29

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    if-nez v0, :cond_2a

    :cond_29
    move-object v0, v1

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_48

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_48

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    if-eqz v0, :cond_48

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_47

    goto :goto_48

    :cond_47
    move-object v1, v0

    :cond_48
    :goto_48
    return-object v1
.end method

.method public final getTempPosition()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->tempPosition:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :cond_11
    add-int/2addr v0, v1

    return v0
.end method

.method public final isDownloading()Z
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x1

    if-eqz v2, :cond_19

    if-eqz v0, :cond_15

    iget v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-nez v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public final isLogin()Z
    .registers 2

    .line 105
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    return v0
.end method

.method public final isPublished()Z
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public final isUploadTimeout()Z
    .registers 6

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget v3, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_1c

    if-eqz v0, :cond_18

    iget v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public final isUploading()Z
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public final setMenuOpen(Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->menuOpen:Z

    return-void
.end method

.method public final setShowDeleteConfirm(Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->showDeleteConfirm:Z

    return-void
.end method

.method public final setTempPosition(I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->tempPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NemoWorkListItem(old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->old:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/nemo/bean/NemoWorkListItem;->searchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
