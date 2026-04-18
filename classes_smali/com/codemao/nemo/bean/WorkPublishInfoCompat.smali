.class public final Lcom/codemao/nemo/bean/WorkPublishInfoCompat;
.super Ljava/lang/Object;
.source "WorkPublishInfoCompat.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkPublishInfoCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkPublishInfoCompat.kt\ncom/codemao/nemo/bean/WorkPublishInfoCompat\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,90:1\n107#2:91\n79#2,22:92\n*S KotlinDebug\n*F\n+ 1 WorkPublishInfoCompat.kt\ncom/codemao/nemo/bean/WorkPublishInfoCompat\n*L\n39#1:91\n39#1:92,22\n*E\n"
.end annotation


# instance fields
.field private coverUrl:Ljava/lang/String;

.field private dataType:Ljava/lang/Integer;

.field private desc:Ljava/lang/String;

.field private isEditWorkInfo:Ljava/lang/Boolean;

.field private isPublished:Z

.field private knBcmVersion:Ljava/lang/String;

.field private knCheckPictures:Ljava/lang/String;

.field private knDefaultCover:Ljava/lang/Integer;

.field private knOperation:Ljava/lang/String;

.field private knWorkUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nemoPreview:Ljava/lang/String;

.field private nemoScreenshotCoverUrl:Ljava/lang/String;

.field private openSource:Ljava/lang/Integer;

.field private workId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Z)V
    .registers 16

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->name:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->workId:Ljava/lang/Long;

    .line 14
    iput-object p4, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->desc:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->openSource:Ljava/lang/Integer;

    .line 16
    iput-object p6, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knCheckPictures:Ljava/lang/String;

    .line 17
    iput-object p7, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knBcmVersion:Ljava/lang/String;

    .line 18
    iput-object p8, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knOperation:Ljava/lang/String;

    .line 19
    iput-object p9, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knDefaultCover:Ljava/lang/Integer;

    .line 20
    iput-object p10, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knWorkUrl:Ljava/lang/String;

    .line 21
    iput-object p11, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoPreview:Ljava/lang/String;

    .line 22
    iput-object p12, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoScreenshotCoverUrl:Ljava/lang/String;

    .line 23
    iput-object p13, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isEditWorkInfo:Ljava/lang/Boolean;

    .line 24
    iput-object p14, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->dataType:Ljava/lang/Integer;

    .line 25
    iput-boolean p15, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isPublished:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 34

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_b

    :cond_9
    move-object/from16 v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_11

    move-object v3, v2

    goto :goto_13

    :cond_11
    move-object/from16 v3, p2

    :goto_13
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_19

    move-object v4, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v4, p3

    :goto_1b
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_21

    move-object v5, v2

    goto :goto_23

    :cond_21
    move-object/from16 v5, p4

    :goto_23
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_29

    move-object v6, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v6, p5

    :goto_2b
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_31

    move-object v7, v2

    goto :goto_33

    :cond_31
    move-object/from16 v7, p6

    :goto_33
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_39

    move-object v8, v2

    goto :goto_3b

    :cond_39
    move-object/from16 v8, p7

    :goto_3b
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_41

    move-object v9, v2

    goto :goto_43

    :cond_41
    move-object/from16 v9, p8

    :goto_43
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_4d

    const/4 v10, 0x1

    .line 19
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_4f

    :cond_4d
    move-object/from16 v10, p9

    :goto_4f
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_55

    move-object v11, v2

    goto :goto_57

    :cond_55
    move-object/from16 v11, p10

    :goto_57
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_5d

    move-object v12, v2

    goto :goto_5f

    :cond_5d
    move-object/from16 v12, p11

    :goto_5f
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_65

    move-object v13, v2

    goto :goto_67

    :cond_65
    move-object/from16 v13, p12

    :goto_67
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_6d

    move-object v14, v2

    goto :goto_6f

    :cond_6d
    move-object/from16 v14, p13

    :goto_6f
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_74

    goto :goto_76

    :cond_74
    move-object/from16 v2, p14

    :goto_76
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7c

    const/4 v0, 0x0

    goto :goto_7e

    :cond_7c
    move/from16 v0, p15

    :goto_7e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v2

    move/from16 p16, v0

    .line 10
    invoke-direct/range {p1 .. p16}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Z)V

    return-void
.end method


# virtual methods
.method public final getCoverUrl()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Ljava/lang/Integer;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->dataType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getInfoFromKn(Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;)V
    .registers 3

    const-string v0, "knInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->getId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->workId:Ljava/lang/Long;

    .line 60
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->name:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->desc:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->getFork_enable()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->openSource:Ljava/lang/Integer;

    .line 63
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->getOperation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knOperation:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->getBcm_version()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knBcmVersion:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->getIf_default_cover()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knDefaultCover:Ljava/lang/Integer;

    .line 66
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->getPreview_url()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knDefaultCover:Ljava/lang/Integer;

    if-nez p1, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :goto_3d
    return-void
.end method

.method public final getInfoFromNemo(Lcom/codemao/nemo/bean/WorkPublishInfo;J)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;
    .registers 7

    const-string v0, "workInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoPreview:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getScreenshot_cover_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoScreenshotCoverUrl:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPublish_cover_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    .line 75
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    if-eqz v0, :cond_2d

    .line 76
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    .line 78
    :cond_2d
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->name:Ljava/lang/String;

    .line 79
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->workId:Ljava/lang/Long;

    .line 80
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getDescription()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->desc:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4e

    :cond_4a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_4e
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->openSource:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getKnBcmVersion()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knBcmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getKnCheckPictures()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knCheckPictures:Ljava/lang/String;

    return-object v0
.end method

.method public final getKnDefaultCover()Ljava/lang/Integer;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knDefaultCover:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getKnOperation()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knOperation:Ljava/lang/String;

    return-object v0
.end method

.method public final getKnWorkUrl()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knWorkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNemoPreview()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoPreview:Ljava/lang/String;

    return-object v0
.end method

.method public final getNemoScreenshotCoverUrl()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoScreenshotCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenSource()Ljava/lang/Integer;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->openSource:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWorkId()Ljava/lang/Long;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->workId:Ljava/lang/Long;

    return-object v0
.end method

.method public final initNemoInfo(Landroid/content/Intent;)V
    .registers 11

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workId"

    const-wide/16 v1, -0x1

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->workId:Ljava/lang/Long;

    const-string v0, "name"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5e

    .line 39
    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getFilterWorkName(workName)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2f
    if-gt v5, v4, :cond_54

    if-nez v6, :cond_35

    move v7, v5

    goto :goto_36

    :cond_35
    move v7, v4

    .line 85
    :goto_36
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    .line 39
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_44

    const/4 v7, 0x1

    goto :goto_45

    :cond_44
    const/4 v7, 0x0

    :goto_45
    if-nez v6, :cond_4e

    if-nez v7, :cond_4b

    const/4 v6, 0x1

    goto :goto_2f

    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_4e
    if-nez v7, :cond_51

    goto :goto_54

    :cond_51
    add-int/lit8 v4, v4, -0x1

    goto :goto_2f

    :cond_54
    :goto_54
    add-int/2addr v4, v2

    .line 100
    invoke-interface {v0, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    :cond_5e
    move-object v0, v1

    .line 39
    :goto_5f
    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->name:Ljava/lang/String;

    const-string v0, "des"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->desc:Ljava/lang/String;

    const-string v0, "published"

    .line 41
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isPublished:Z

    const-string v0, "type"

    .line 42
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->dataType:Ljava/lang/Integer;

    const-string v0, "defaultImagePath"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "imagePath"

    .line 44
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    .line 45
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 46
    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    .line 48
    :cond_93
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoPreview:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoScreenshotCoverUrl:Ljava/lang/String;

    const-string v0, "isEditWorkInfo"

    .line 50
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isEditWorkInfo:Ljava/lang/Boolean;

    .line 51
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "是否编辑模式："

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isEditWorkInfo:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    const-string v0, "forkEnable"

    .line 52
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_cf

    :cond_cb
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_cf
    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->openSource:Ljava/lang/Integer;

    const-string v0, "publish_work_url"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_da

    move-object v0, v1

    :cond_da
    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knWorkUrl:Ljava/lang/String;

    const-string v0, "publish_work_bcm_version"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e5

    move-object v0, v1

    :cond_e5
    iput-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knBcmVersion:Ljava/lang/String;

    const-string v0, "operation"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f0

    goto :goto_f1

    :cond_f0
    move-object v1, p1

    :goto_f1
    iput-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knOperation:Ljava/lang/String;

    return-void
.end method

.method public final isEditWorkInfo()Ljava/lang/Boolean;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isEditWorkInfo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isKn()Z
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->dataType:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final isNemo()Z
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->dataType:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_d

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public final isPublished()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isPublished:Z

    return v0
.end method

.method public final setCoverUrl(Ljava/lang/String;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDataType(Ljava/lang/Integer;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->dataType:Ljava/lang/Integer;

    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->desc:Ljava/lang/String;

    return-void
.end method

.method public final setEditWorkInfo(Ljava/lang/Boolean;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isEditWorkInfo:Ljava/lang/Boolean;

    return-void
.end method

.method public final setKnBcmVersion(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knBcmVersion:Ljava/lang/String;

    return-void
.end method

.method public final setKnCheckPictures(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knCheckPictures:Ljava/lang/String;

    return-void
.end method

.method public final setKnDefaultCover(Ljava/lang/Integer;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knDefaultCover:Ljava/lang/Integer;

    return-void
.end method

.method public final setKnOperation(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knOperation:Ljava/lang/String;

    return-void
.end method

.method public final setKnWorkUrl(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knWorkUrl:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNemoPreview(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoPreview:Ljava/lang/String;

    return-void
.end method

.method public final setNemoScreenshotCoverUrl(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoScreenshotCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public final setOpenSource(Ljava/lang/Integer;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->openSource:Ljava/lang/Integer;

    return-void
.end method

.method public final setPublished(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isPublished:Z

    return-void
.end method

.method public final setWorkId(Ljava/lang/Long;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->workId:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkPublishInfoCompat(coverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", workId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->workId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", openSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->openSource:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", knCheckPictures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knCheckPictures:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", knBcmVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knBcmVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", knOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", knDefaultCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knDefaultCover:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", knWorkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->knWorkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nemoPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoPreview:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nemoScreenshotCoverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->nemoScreenshotCoverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEditWorkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isEditWorkInfo:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->dataType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPublished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isPublished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
