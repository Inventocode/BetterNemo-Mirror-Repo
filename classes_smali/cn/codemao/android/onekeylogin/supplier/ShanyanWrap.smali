.class public Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;
.super Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;
.source "ShanyanWrap.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private initListener:Lcom/chuanglan/shanyan_sdk/listener/InitListener;

.field isCheckboxSelect:Z

.field private openAuthListener:Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

.field private quickLoginInitListener:Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->openAuthListener:Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    .line 71
    new-instance v0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;-><init>(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)V

    iput-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->initListener:Lcom/chuanglan/shanyan_sdk/listener/InitListener;

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->isCheckboxSelect:Z

    .line 56
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->appId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->quickLoginInitListener:Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->openAuthListener:Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    return-object p0
.end method

.method private getDefaultUiConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 481
    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;-><init>()V

    const/4 v2, -0x1

    .line 484
    invoke-virtual {v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setStatusBarColor(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 485
    invoke-virtual {v2, v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setLightColor(Z)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v2

    .line 486
    invoke-virtual {v2, v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setStatusBarHidden(Z)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/codemao/android/account/R$mipmap;->icon_one_key_close:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setNavReturnImgPath(Landroid/graphics/drawable/Drawable;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v2

    const-string v4, ""

    .line 490
    invoke-virtual {v2, v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setNavText(Ljava/lang/String;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v2

    const/16 v4, 0xa

    .line 491
    invoke-virtual {v2, v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setNavReturnBtnOffsetX(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    const/4 v2, 0x1

    .line 494
    invoke-virtual {v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setLogoHidden(Z)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    .line 497
    invoke-static/range {p1 .. p1}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    const v5, 0x43cf8000  # 415.0f

    invoke-static {v0, v5}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v0, v4}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->px2dip(Landroid/content/Context;F)I

    move-result v4

    const-string v6, "#1B1F23"

    .line 500
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setNumberColor(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v6

    const/16 v7, 0x24

    .line 501
    invoke-virtual {v6, v7}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setNumberSize(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v6

    .line 502
    invoke-virtual {v6, v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setNumFieldOffsetY(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    const-string v6, "#ABB2BA"

    .line 505
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setSloganTextColor(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v7

    const/16 v8, 0xd

    .line 506
    invoke-virtual {v7, v8}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setSloganTextSize(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x37

    .line 507
    invoke-virtual {v7, v8}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setSloganOffsetY(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    .line 510
    invoke-static/range {p1 .. p1}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v0, v7}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->px2dip(Landroid/content/Context;F)I

    move-result v7

    add-int/lit8 v7, v7, -0x14

    .line 512
    invoke-virtual {v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setLogBtnTextBold(Z)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v8

    const/16 v9, 0x40

    .line 513
    invoke-virtual {v8, v9}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setLogBtnHeight(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x77

    .line 514
    invoke-virtual {v8, v9}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setLogBtnOffsetY(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v8

    const/16 v9, 0x11

    .line 515
    invoke-virtual {v8, v9}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setLogBtnTextSize(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v8

    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcn/codemao/android/account/R$mipmap;->icon_one_key_login_btn:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setLogBtnImgPath(Landroid/graphics/drawable/Drawable;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v8

    .line 517
    invoke-virtual {v8, v7}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setLogBtnWidth(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    .line 520
    invoke-static/range {p1 .. p1}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    const/high16 v8, 0x42000000  # 32.0f

    invoke-static {v0, v8}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v7, v8

    .line 521
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 522
    sget v10, Lcn/codemao/android/account/R$string;->str_one_key_login_other_way:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "#F11900"

    .line 523
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v9, 0x41880000  # 17.0f

    .line 525
    invoke-virtual {v8, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 526
    sget v9, Lcn/codemao/android/account/R$mipmap;->icon_one_key_other_btn:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 527
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 528
    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v7, 0x42300000  # 44.0f

    .line 529
    invoke-static {v0, v7}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/lit16 v7, v4, 0xbd

    int-to-float v7, v7

    .line 530
    invoke-static {v0, v7}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v9, v3, v7, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v7, 0xe

    .line 531
    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 532
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    invoke-virtual {v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setCheckBoxHidden(Z)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v7

    .line 536
    invoke-virtual {v7, v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setPrivacyState(Z)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v7

    add-int/lit16 v4, v4, 0xf9

    .line 537
    invoke-virtual {v7, v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setPrivacyOffsetY(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v4

    .line 538
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "#5B85DF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setAppPrivacyColor(II)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    move-result-object v9

    sget v4, Lcn/codemao/android/account/R$string;->str_shanyan_privacy_tips:I

    .line 539
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    const-string v12, ","

    const-string v13, ","

    const-string v14, ""

    invoke-virtual/range {v9 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setPrivacyText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    if-eqz p3, :cond_176

    .line 541
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_176

    .line 543
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_12d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_171

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-nez v4, :cond_14b

    .line 545
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setAppPrivacyOne(Ljava/lang/String;Ljava/lang/String;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    goto :goto_16e

    :cond_14b
    if-ne v4, v2, :cond_15d

    .line 547
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setAppPrivacyTwo(Ljava/lang/String;Ljava/lang/String;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    goto :goto_16e

    :cond_15d
    if-ne v4, v5, :cond_16e

    .line 549
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setAppPrivacyThree(Ljava/lang/String;Ljava/lang/String;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    :cond_16e
    :goto_16e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12d

    :cond_171
    const/16 v0, 0x1e

    .line 553
    invoke-virtual {v1, v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->setPrivacyOffsetBottomY(I)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    .line 556
    :cond_176
    new-instance v0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$8;

    move-object v4, p0

    invoke-direct {v0, p0}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$8;-><init>(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)V

    .line 558
    invoke-virtual {v1, v8, v2, v3, v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->addCustomView(Landroid/view/View;ZZLcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    .line 567
    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->build()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeAuthPage()V
    .registers 2

    .line 461
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->getInstance()Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->finishAuthActivity()V

    return-void
.end method

.method public configSupplierName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "创蓝闪验一键登录"

    return-object v0
.end method

.method public configUi(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->getDefaultUiConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object p1

    .line 155
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->getInstance()Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    move-result-object p2

    invoke-virtual {p2, p1, p1}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->setAuthThemeConfig(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    return-void
.end method

.method public getPhoneInfo(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;)V
    .registers 4

    .line 117
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object p1

    const-string/jumbo v0, "闪验正在进行预取号！"

    invoke-virtual {p1, v0}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->getInstance()Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$2;

    invoke-direct {v0, p0, p2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$2;-><init>(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;)V

    invoke-virtual {p1, v0}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->getPhoneInfo(Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;)V
    .registers 5

    .line 99
    iput-object p2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->quickLoginInitListener:Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

    .line 100
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object p2

    const-string/jumbo v0, "闪验正在进行初始化！"

    invoke-virtual {p2, v0}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->appId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_28

    .line 104
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->getInstance()Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->setDebug(Z)V

    .line 105
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->getInstance()Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    move-result-object p2

    iget-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->initListener:Lcom/chuanglan/shanyan_sdk/listener/InitListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/chuanglan/shanyan_sdk/listener/InitListener;)V

    return-void

    .line 102
    :cond_28
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "闪验初始化需要 appId，请在ShanyanWrap的构造函数中传入正确的信息"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public openLoginAuth(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;)V
    .registers 7

    .line 361
    iput-object p2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->openAuthListener:Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    .line 362
    invoke-virtual {p0}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->isInitSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    if-eqz p2, :cond_1e

    .line 365
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInitStateCode()I

    move-result p1

    const/4 v0, -0x1

    const-string v2, "SHANYAN"

    const-string v3, ""

    .line 364
    invoke-interface {p2, v2, p1, v0, v3}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->loginAuthFail(Ljava/lang/String;IILjava/lang/String;)V

    .line 366
    invoke-interface {p2, v1, v1}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->onAuthPageOpen(ZZ)V

    :cond_1e
    return-void

    .line 371
    :cond_1f
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->getInstance()Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    move-result-object p2

    new-instance v0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;

    invoke-direct {v0, p0}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;-><init>(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)V

    new-instance v2, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;

    invoke-direct {v2, p0, p1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;-><init>(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;Landroid/content/Context;)V

    invoke-virtual {p2, v1, v0, v2}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->openLoginAuth(ZLcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;)V

    return-void
.end method

.method public setDebug(Z)V
    .registers 4

    .line 66
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v0

    const-string/jumbo v1, "闪验正在设置调试模式！"

    invoke-virtual {v0, v1}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->getInstance()Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->setDebug(Z)V

    return-void
.end method
