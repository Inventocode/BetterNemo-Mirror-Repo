.class public Lcom/chuanglan/shanyan_sdk/tool/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/text/SpannableStringBuilder;

.field private static e:Ljava/lang/String;


# direct methods
.method private static a(Landroid/content/Context;F)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;FFFLcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V
    .registers 21

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/tool/b;->a(Landroid/content/Context;F)I

    move-result v3

    move/from16 v5, p3

    invoke-static {p0, v5}, Lcom/chuanglan/shanyan_sdk/tool/b;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/tool/b;->a(Landroid/content/Context;F)I

    move-result v6

    float-to-double v7, v2

    const-wide/high16 v9, -0x4010000000000000L  # -1.0

    const/4 v11, 0x0

    cmpl-double v12, v7, v9

    if-nez v12, :cond_32

    float-to-double v7, v1

    cmpl-double v13, v7, v9

    if-nez v13, :cond_32

    invoke-virtual {v4, v11, v11, v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_52

    :cond_32
    if-eqz v12, :cond_3d

    float-to-double v7, v1

    cmpl-double v13, v7, v9

    if-nez v13, :cond_3d

    invoke-virtual {v4, v6, v11, v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_52

    :cond_3d
    if-nez v12, :cond_48

    float-to-double v7, v1

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_48

    invoke-virtual {v4, v11, v3, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_52

    :cond_48
    if-eqz v12, :cond_52

    float-to-double v7, v1

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_52

    invoke-virtual {v4, v6, v3, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_52
    :goto_52
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v4, 0xc

    const/high16 v5, 0x42700000  # 60.0f

    const/high16 v6, 0x42200000  # 40.0f

    const/16 v7, 0xe

    if-nez v12, :cond_79

    float-to-double v13, v1

    cmpl-double v8, v13, v9

    if-nez v8, :cond_79

    :goto_66
    invoke-static {p0, v6}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {p0, v5}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_75
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_c7

    :cond_79
    const/16 v8, 0x9

    if-eqz v12, :cond_9e

    float-to-double v13, v1

    cmpl-double v11, v13, v9

    if-nez v11, :cond_9e

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p5, :cond_9a

    invoke-virtual/range {p5 .. p5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyGravityHorizontalCenter()Z

    move-result v1

    if-eqz v1, :cond_9a

    :goto_99
    goto :goto_75

    :cond_9a
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_c7

    :cond_9e
    const/16 v4, 0xa

    if-nez v12, :cond_a8

    float-to-double v13, v1

    cmpl-double v11, v13, v9

    if-eqz v11, :cond_a8

    goto :goto_66

    :cond_a8
    if-eqz v12, :cond_c7

    float-to-double v5, v1

    cmpl-double v1, v5, v9

    if-eqz v1, :cond_c7

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p5, :cond_9a

    invoke-virtual/range {p5 .. p5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyGravityHorizontalCenter()Z

    move-result v1

    if-eqz v1, :cond_9a

    goto :goto_99

    :cond_c7
    :goto_c7
    if-eqz p5, :cond_db

    invoke-virtual/range {p5 .. p5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_db

    invoke-virtual/range {p5 .. p5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_db
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View;IIILjava/lang/String;)V
    .registers 34

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextHead()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_5c1
    .catchall {:try_start_a .. :try_end_12} :catchall_5d1

    const-string v3, "、"

    if-eqz v2, :cond_64

    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextMidOne()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextMidTwo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextMidThree()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextEnd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string/jumbo v2, "和"

    const-string/jumbo v4, "同意"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "并授权"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "获取本机号码"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto :goto_78

    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextMidOne()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextMidTwo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextMidThree()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextHead()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTextEnd()Ljava/lang/String;

    move-result-object v6

    :goto_78
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacySmhHidden()Z

    move-result v7
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_7c} :catch_5c1
    .catchall {:try_start_16 .. :try_end_7c} :catchall_5d1

    const-string v8, ""

    if-nez v7, :cond_1ce

    :try_start_80
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isOperatorPrivacyAtLast()Z

    move-result v7
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_84} :catch_5c1
    .catchall {:try_start_80 .. :try_end_84} :catchall_5d1

    const-string v13, "》"

    const-string v14, "《"

    if-nez v7, :cond_12d

    :try_start_8a
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    goto :goto_b2

    :cond_b0
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    :goto_b2
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameTwo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameTwo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    goto :goto_da

    :cond_d8
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    :goto_da
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameThree()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_100

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameThree()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    goto :goto_102

    :cond_100
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    :goto_102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_129
    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    goto/16 :goto_2e6

    :cond_12d
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_153

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    goto :goto_155

    :cond_153
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    :goto_155
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameTwo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameTwo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    goto :goto_17d

    :cond_17b
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    :goto_17d
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameThree()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameThree()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    goto :goto_1a5

    :cond_1a3
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    :goto_1a5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_129

    :cond_1ce
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isOperatorPrivacyAtLast()Z

    move-result v7

    if-nez v7, :cond_25d

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    goto :goto_1f6

    :cond_1f4
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    :goto_1f6
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameTwo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_216

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameTwo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    goto :goto_218

    :cond_216
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    :goto_218
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameThree()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_238

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameThree()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    goto :goto_23a

    :cond_238
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    :goto_23a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_129

    :cond_25d
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    goto :goto_27f

    :cond_27d
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    :goto_27f
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameTwo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameTwo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    goto :goto_2a1

    :cond_29f
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    :goto_2a1
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameThree()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getClauseNameThree()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    goto :goto_2c3

    :cond_2c1
    sput-object v8, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    :goto_2c3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_129

    :goto_2e6
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v13, Lcom/chuanglan/shanyan_sdk/tool/b$1;

    move-object v2, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p17

    move-object/from16 v5, p1

    move-object/from16 v6, p7

    move-object/from16 v7, p0

    move/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/b$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;I)V

    new-instance v14, Lcom/chuanglan/shanyan_sdk/tool/b$2;

    move-object v2, v14

    move-object/from16 v3, p4

    move-object/from16 v4, p17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p8

    move/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/b$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v15, Lcom/chuanglan/shanyan_sdk/tool/b$3;

    move-object v2, v15

    move-object/from16 v3, p5

    move-object/from16 v4, p17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p9

    move/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/b$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v8, Lcom/chuanglan/shanyan_sdk/tool/b$4;

    move-object v2, v8

    move-object/from16 v3, p6

    move-object/from16 v4, p17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p10

    move-object v1, v8

    move/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/b$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacySmhHidden()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    if-nez v2, :cond_476

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isOperatorPrivacyAtLast()Z

    move-result v2

    if-eqz v2, :cond_3f3

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_3f3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_356

    goto/16 :goto_3f3

    :cond_356
    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v14, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    if-eqz v5, :cond_3df

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3df

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v15, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    if-eqz v5, :cond_3cb

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3cb

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v1, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    :goto_3c3
    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v13, v1, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_582

    :cond_3cb
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_3c3

    :cond_3df
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_3c3

    :cond_3f3
    :goto_3f3
    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v13, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    if-eqz v5, :cond_42b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_42b

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v14, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_42c

    :cond_42b
    const/4 v2, 0x0

    :goto_42c
    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    if-eqz v5, :cond_450

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_450

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v15, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_451

    :cond_450
    const/4 v2, 0x0

    :goto_451
    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    if-eqz v5, :cond_582

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_582

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v1, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_582

    :cond_476
    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isOperatorPrivacyAtLast()Z

    move-result v2

    if-eqz v2, :cond_511

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_511

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_488

    goto/16 :goto_511

    :cond_488
    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v14, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    if-eqz v5, :cond_4ff

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4ff

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v15, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    if-eqz v5, :cond_4ed

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4ed

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v1, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    :goto_4e7
    add-int/2addr v5, v1

    invoke-virtual {v2, v13, v1, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_582

    :cond_4ed
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_4e7

    :cond_4ff
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_4e7

    :cond_511
    :goto_511
    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v13, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->b:Ljava/lang/String;

    if-eqz v5, :cond_541

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_541

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v14, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_542

    :cond_541
    const/4 v2, 0x0

    :goto_542
    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->c:Ljava/lang/String;

    if-eqz v5, :cond_562

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_562

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v15, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_563

    :cond_562
    const/4 v2, 0x0

    :goto_563
    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->e:Ljava/lang/String;

    if-eqz v5, :cond_582

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_582

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->a:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    sget-object v5, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v1, v2, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_582
    :goto_582
    move/from16 v1, p14

    int-to-float v1, v1

    move/from16 v2, p15

    int-to-float v2, v2

    move/from16 v4, p16

    int-to-float v4, v4

    move-object/from16 p3, p1

    move-object/from16 p4, p13

    move/from16 p5, v1

    move/from16 p6, v2

    move/from16 p7, v4

    move-object/from16 p8, p0

    invoke-static/range {p3 .. p8}, Lcom/chuanglan/shanyan_sdk/tool/b;->a(Landroid/content/Context;Landroid/view/View;FFFLcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move/from16 v1, p12

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyOffsetGravityLeft()Z

    move-result v1

    if-eqz v1, :cond_5b6

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5bb

    :cond_5b6
    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_5bb
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5c0
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_5c0} :catch_5c1
    .catchall {:try_start_8a .. :try_end_5c0} :catchall_5d1

    goto :goto_5c6

    :catch_5c1
    move-exception v0

    move-object v1, v0

    :try_start_5c3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c6
    .catchall {:try_start_5c3 .. :try_end_5c6} :catchall_5d1

    :goto_5c6
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    return-void

    :catchall_5d1
    move-exception v0

    move-object v1, v0

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    sget-object v2, Lcom/chuanglan/shanyan_sdk/tool/b;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    throw v1
.end method
