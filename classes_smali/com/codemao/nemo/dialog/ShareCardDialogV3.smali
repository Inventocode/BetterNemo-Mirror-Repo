.class public Lcom/codemao/nemo/dialog/ShareCardDialogV3;
.super Landroid/app/Dialog;
.source "ShareCardDialogV3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;
    }
.end annotation


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private clipManager:Landroid/content/ClipboardManager;

.field private coverUrl:Ljava/lang/String;

.field private curType:I

.field private filePath:Ljava/lang/String;

.field private finalBitmap:Landroid/graphics/Bitmap;

.field private isKn:Z

.field private isSaveToFile:Z

.field private itemCount:I

.field ivClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivQrCode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivScreenShoot:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llItem:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareCircle:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareLink:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareMiao:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareQQ:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareQzone:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareWechat:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field private qqInstalled:Z

.field private qqSharelistener:Lcom/tencent/tauth/IUiListener;

.field qrCodeTopIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlRoot:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private screenBitmap:Landroid/graphics/Bitmap;

.field private shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

.field private shareUrl:Ljava/lang/String;

.field private showMiaoCode:Z

.field tvDes:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWorkName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private workName:Ljava/lang/String;

.field private wxInstalled:Z

.field private wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;


# direct methods
.method public static synthetic $r8$lambda$-rBX3JLGm7GiaE1KLnTRBXVLPlY(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->lambda$saveFile$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$aBfuEpW63pNNL-noPFpgyMCEd14(Lcom/codemao/nemo/dialog/ShareCardDialogV3;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->lambda$saveFile$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$w3UdiVVsgQ0wkpIyEsAltjowTuA(Lcom/codemao/nemo/dialog/ShareCardDialogV3;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->lambda$saveFile$2(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZZLcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;)V
    .registers 12

    const p2, 0x7f13034b

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 120
    iput-boolean p2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isSaveToFile:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qqInstalled:Z

    .line 129
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->wxInstalled:Z

    const/4 v1, -0x1

    .line 147
    iput v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->curType:I

    const/4 v1, 0x7

    .line 148
    iput v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    .line 151
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isKn:Z

    .line 152
    iput-boolean p2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->showMiaoCode:Z

    .line 158
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    .line 159
    iput-object p9, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    .line 160
    iput-object p5, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->coverUrl:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->screenBitmap:Landroid/graphics/Bitmap;

    .line 163
    iput-object p3, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->workName:Ljava/lang/String;

    .line 164
    iput-object p6, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareUrl:Ljava/lang/String;

    .line 165
    iput-boolean p7, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isKn:Z

    .line 166
    iput-boolean p8, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->showMiaoCode:Z

    .line 167
    new-instance p2, Lcom/codemao/nemo/dialog/ShareCardDialogV3$1;

    invoke-direct {p2, p0, p9}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$1;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;)V

    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qqSharelistener:Lcom/tencent/tauth/IUiListener;

    .line 197
    new-instance p2, Lcom/codemao/nemo/dialog/ShareCardDialogV3$2;

    invoke-direct {p2, p0, p9}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$2;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;)V

    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;

    const-string p2, "wx5966b00f345eb948"

    .line 219
    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 220
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object p2

    iget-object p3, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-virtual {p2, p3}, Lcn/codemao/android/account/util/WechatManager;->setIshareResult(Lcn/codemao/android/share/interfaces/IshareResult;)V

    .line 222
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".mis.fileprovider"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "101477015"

    .line 221
    invoke-static {p4, p2, p3}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/tauth/Tencent;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 224
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qqInstalled:Z

    .line 225
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->wxInstalled:Z

    return-void
.end method

.method private QQShareImage()V
    .registers 5

    .line 555
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 556
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->filePath:Ljava/lang/String;

    const-string v2, "imageLocalUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "req_type"

    const/4 v2, 0x5

    .line 557
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qqSharelistener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method private QZoneShareImage()V
    .registers 5

    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object v2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "req_type"

    const/4 v3, 0x3

    .line 565
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "imageUrl"

    .line 566
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 567
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qqSharelistener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tauth/Tencent;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method private WXMomentShareImage()V
    .registers 5

    .line 551
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v3, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/util/WechatShareUtil;->WXMomentShareImage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/openapi/IWXAPI;Lcn/codemao/android/share/interfaces/IshareResult;)V

    return-void
.end method

.method private WXShareImage()V
    .registers 5

    .line 546
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v3, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/util/WechatShareUtil;->wxShareV2(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/openapi/IWXAPI;Lcn/codemao/android/share/interfaces/IshareResult;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->doShowShareAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)Landroid/app/Activity;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method private doShowShareAnim()V
    .registers 24

    move-object/from16 v0, p0

    .line 620
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    .line 621
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v5, 0x1

    .line 622
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 623
    new-instance v6, Lcom/codemao/nemo/dialog/ShareCardDialogV3$4;

    invoke-direct {v6, v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$4;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 639
    iget-object v6, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 640
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 641
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    iget-object v6, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v11, v6

    iget-object v6, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v12, v6

    const v7, 0x3f4ccccd  # 0.8f

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x3f4ccccd  # 0.8f

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 642
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const v20, 0x3e4ccccd  # 0.2f

    const/16 v21, 0x1

    const v22, -0x42333333  # -0.1f

    move-object v14, v6

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 643
    invoke-virtual {v6, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 644
    invoke-virtual {v13, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 645
    invoke-virtual {v1, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 646
    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 647
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 648
    new-instance v6, Lcom/codemao/nemo/dialog/ShareCardDialogV3$5;

    invoke-direct {v6, v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$5;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 667
    iget-object v6, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v1, 0xc8

    const/4 v6, 0x0

    .line 669
    :goto_7d
    iget-object v7, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_b4

    .line 670
    iget-object v7, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    const v8, 0x7f010014

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    check-cast v7, Landroid/view/animation/AnimationSet;

    .line 671
    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    int-to-long v8, v1

    .line 672
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 673
    iget-object v8, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 674
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_a6

    mul-int/lit8 v9, v6, 0x1e

    add-int/2addr v1, v9

    .line 677
    :cond_a6
    new-instance v9, Lcom/codemao/nemo/dialog/ShareCardDialogV3$6;

    invoke-direct {v9, v0, v8}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$6;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 695
    invoke-virtual {v8, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    .line 698
    :cond_b4
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x42480000  # 50.0f

    const/high16 v7, -0x3e600000  # -20.0f

    invoke-direct {v1, v2, v2, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 699
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 700
    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 701
    new-instance v2, Lcom/codemao/nemo/dialog/ShareCardDialogV3$7;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$7;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 720
    iget-object v2, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 721
    iget-object v1, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivClose:Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/nemo/dialog/ShareCardDialogV3$8;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$8;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private init()V
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0082

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 231
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 232
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 233
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x50

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x1

    .line 235
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 236
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 237
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 v0, 0x7

    .line 238
    iput v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    .line 239
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qqInstalled:Z

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-nez v0, :cond_47

    rsub-int/lit8 v0, v1, 0x7

    .line 240
    iput v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    .line 241
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQzone:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_51

    .line 244
    :cond_47
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQzone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    :goto_51
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->wxInstalled:Z

    if-nez v0, :cond_65

    .line 248
    iget v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    .line 249
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareWechat:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6f

    .line 253
    :cond_65
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareWechat:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :goto_6f
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareMiao:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->showMiaoCode:Z

    if-eqz v1, :cond_76

    const/4 v2, 0x0

    :cond_76
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isKn:Z

    if-eqz v0, :cond_86

    .line 258
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qrCodeTopIcon:Landroid/widget/ImageView;

    const v1, 0x7f0e0182

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e3

    .line 260
    :cond_86
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qrCodeTopIcon:Landroid/widget/ImageView;

    const v1, 0x7f0e0183

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v0, 0x42780000  # 62.0f

    .line 261
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    mul-int v0, v0, v1

    const/high16 v1, 0x41400000  # 12.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 262
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_c0

    .line 263
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareMiao:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 264
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 265
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 266
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_e3

    .line 268
    :cond_c0
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareMiao:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 269
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x42040000  # 33.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 270
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 271
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 277
    :goto_e3
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->url:Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->initDes()V

    .line 281
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f4

    .line 282
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivScreenShoot:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14e

    .line 283
    :cond_f4
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->coverUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0e0095

    if-nez v0, :cond_149

    .line 284
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->coverUrl:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 285
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->coverUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivScreenShoot:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadShare(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_14e

    .line 288
    :cond_111
    :try_start_111
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->coverUrl:Ljava/lang/String;

    .line 290
    invoke-static {v3, v2}, Lcom/codemao/nemo/util/CommonUtil;->encodeBase64File(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivScreenShoot:Landroid/widget/ImageView;

    .line 291
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_143} :catch_144

    goto :goto_14e

    :catch_144
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14e

    .line 299
    :cond_149
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivScreenShoot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    :goto_14e
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->url:Ljava/lang/String;

    const/16 v1, 0x84

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/QrcodeUtils;->createQRCodeWithNoPadding(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_163

    .line 303
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "生成二维码失败，请重试！"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 306
    :cond_163
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initDes()V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->workName:Ljava/lang/String;

    .line 385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v0, "我的作品"

    .line 388
    :cond_b
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->tvWorkName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isKn:Z

    if-eqz v0, :cond_1d

    .line 390
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->tvDes:Landroid/widget/TextView;

    const-string/jumbo v1, "我用三端通用的编程神器 KittenN 创建了作品"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 392
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->tvDes:Landroid/widget/TextView;

    const-string/jumbo v1, "我用手机编程神器\n Nemo 创建了作品"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_25
    return-void
.end method

.method private synthetic lambda$saveFile$0(I)V
    .registers 3

    if-nez p1, :cond_6

    .line 360
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->WXShareImage()V

    goto :goto_23

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 362
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->WXMomentShareImage()V

    goto :goto_23

    :cond_d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 364
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->QQShareImage()V

    goto :goto_23

    :cond_14
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1b

    .line 366
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->QZoneShareImage()V

    goto :goto_23

    .line 368
    :cond_1b
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    const-string/jumbo v0, "图片保存成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_23
    return-void
.end method

.method private synthetic lambda$saveFile$1()V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$saveFile$2(I)V
    .registers 12

    const-string v0, "/nemo/"

    .line 313
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    const-string/jumbo v2, "请传入目标目录"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x4b

    const-string v7, ".jpg"

    if-ne p1, v1, :cond_42

    .line 316
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-static {v1, v7, v0, v3, v6}, Lcom/codemao/nemo/util/SaveImageUtilsKt;->saveToAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 319
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->filePath:Ljava/lang/String;

    goto/16 :goto_d8

    .line 321
    :cond_3c
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 325
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_5b

    if-ne p1, v4, :cond_70

    .line 327
    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->filePath:Ljava/lang/String;

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 331
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 335
    :cond_94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_ad

    .line 338
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 340
    :cond_ad
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 343
    :cond_b6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 344
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 345
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v2, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_d2

    .line 347
    :cond_cb
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v2, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 349
    :goto_d2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 350
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 352
    :goto_d8
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 353
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    :cond_e5
    iput-boolean v4, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isSaveToFile:Z

    .line 357
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/codemao/nemo/dialog/ShareCardDialogV3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_f6} :catch_f7

    goto :goto_119

    :catch_f7
    move-exception p1

    .line 372
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/codemao/nemo/dialog/ShareCardDialogV3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_119

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_119

    .line 376
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_119
    :goto_119
    return-void
.end method

.method private saveFile(I)V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 312
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;I)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public continueShare()V
    .registers 3

    .line 735
    iget v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->curType:I

    if-eqz v0, :cond_39

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    goto :goto_45

    .line 765
    :cond_11
    invoke-direct {p0, v1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->saveFile(I)V

    goto :goto_45

    .line 744
    :cond_15
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isSaveToFile:Z

    if-nez v0, :cond_1d

    .line 745
    invoke-direct {p0, v1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->saveFile(I)V

    goto :goto_45

    .line 747
    :cond_1d
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->QZoneShareImage()V

    goto :goto_45

    .line 737
    :cond_21
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isSaveToFile:Z

    if-nez v0, :cond_29

    .line 738
    invoke-direct {p0, v1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->saveFile(I)V

    goto :goto_45

    .line 740
    :cond_29
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->QQShareImage()V

    goto :goto_45

    .line 758
    :cond_2d
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isSaveToFile:Z

    if-nez v0, :cond_35

    .line 759
    invoke-direct {p0, v1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->saveFile(I)V

    goto :goto_45

    .line 761
    :cond_35
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->WXMomentShareImage()V

    goto :goto_45

    .line 751
    :cond_39
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->isSaveToFile:Z

    if-nez v0, :cond_42

    const/4 v0, 0x0

    .line 752
    invoke-direct {p0, v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->saveFile(I)V

    goto :goto_45

    .line 754
    :cond_42
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->WXShareImage()V

    :goto_45
    return-void
.end method

.method public getCurType()I
    .registers 2

    .line 730
    iget v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->curType:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 771
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qqSharelistener:Lcom/tencent/tauth/IUiListener;

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 441
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 442
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->init()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 533
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 535
    :cond_8
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 536
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->finalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_26

    .line 539
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    :cond_26
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/util/WechatManager;->clear()V

    return-void
.end method

.method onShare(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a037b

    if-eq p1, v0, :cond_110

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_116

    packed-switch p1, :pswitch_data_124

    goto/16 :goto_115

    :pswitch_12  #0x7f0a04e7
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "卡片分享页面-点击保存图片"

    .line 524
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 525
    iput p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->curType:I

    .line 526
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->checkPermisson(I)V

    goto/16 :goto_115

    :pswitch_24  #0x7f0a04e6
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "卡片分享页面-点击生成喵口令"

    .line 520
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->showMiaoCode()V

    goto/16 :goto_115

    :pswitch_33  #0x7f0a04a3
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v1, "卡片分享页面-点击分享到微信"

    .line 457
    invoke-static {v1, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 459
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 462
    :cond_4b
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_52

    .line 463
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->onShareClick()V

    .line 465
    :cond_52
    iput v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->curType:I

    .line 466
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    invoke-interface {p1, v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->checkPermisson(I)V

    goto/16 :goto_115

    :pswitch_5b  #0x7f0a04a2
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "卡片分享页面-点击分享到QQ空间"

    .line 493
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 494
    iput p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->curType:I

    .line 495
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 496
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 499
    :cond_76
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz v0, :cond_7d

    .line 500
    invoke-interface {v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->onShareClick()V

    .line 502
    :cond_7d
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->checkPermisson(I)V

    goto/16 :goto_115

    :pswitch_84  #0x7f0a04a1
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "卡片分享页面-点击分享到QQ"

    .line 481
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9c

    .line 483
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 486
    :cond_9c
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_a3

    .line 487
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->onShareClick()V

    :cond_a3
    const/4 p1, 0x2

    .line 489
    iput p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->curType:I

    .line 490
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->checkPermisson(I)V

    goto :goto_115

    :pswitch_ac  #0x7f0a04a0
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "卡片分享页面-点击分享链接"

    .line 506
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->url:Ljava/lang/String;

    const-string v0, "simple text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 508
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->clipManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_d8

    .line 510
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    const-string/jumbo v1, "链接已复制成功，快去分享吧"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->clipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_e0

    .line 513
    :cond_d8
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    const-string/jumbo v0, "复制失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 515
    :goto_e0
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_115

    .line 516
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->onShareClick()V

    goto :goto_115

    :pswitch_e8  #0x7f0a049f
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "卡片分享页面-点击分享到朋友圈"

    .line 469
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_100

    .line 471
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 474
    :cond_100
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    if-eqz p1, :cond_107

    .line 475
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->onShareClick()V

    :cond_107
    const/4 p1, 0x1

    .line 477
    iput p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->curType:I

    .line 478
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->checkPermisson(I)V

    goto :goto_115

    .line 453
    :cond_110
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->shareListener:Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;

    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;->finishS()V

    :cond_115
    :goto_115
    return-void

    :pswitch_data_116
    .packed-switch 0x7f0a049f
        :pswitch_e8  #7f0a049f
        :pswitch_ac  #7f0a04a0
        :pswitch_84  #7f0a04a1
        :pswitch_5b  #7f0a04a2
        :pswitch_33  #7f0a04a3
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x7f0a04e6
        :pswitch_24  #7f0a04e6
        :pswitch_12  #7f0a04e7
    .end packed-switch
.end method

.method public setCoverUrl(Ljava/lang/String;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;
    .registers 3

    .line 415
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->coverUrl:Ljava/lang/String;

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivScreenShoot:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 417
    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadShare(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_f
    return-object p0
.end method

.method public setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;
    .registers 2

    return-object p0
.end method

.method public setWorkName(Ljava/lang/String;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;
    .registers 2

    .line 430
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->workName:Ljava/lang/String;

    return-object p0
.end method

.method public show()V
    .registers 6

    .line 572
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qqInstalled:Z

    .line 573
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->wxInstalled:Z

    .line 574
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x7

    .line 575
    iput v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    .line 576
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQQ:Landroid/widget/ImageView;

    if-eqz v0, :cond_c6

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQzone:Landroid/widget/ImageView;

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareWechat:Landroid/widget/ImageView;

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_c6

    .line 577
    iget-boolean v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qqInstalled:Z

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v1, :cond_41

    rsub-int/lit8 v1, v2, 0x7

    .line 578
    iput v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    .line 579
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQzone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_49

    .line 582
    :cond_41
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQzone:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    :goto_49
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->wxInstalled:Z

    if-nez v0, :cond_5d

    .line 586
    iget v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    .line 587
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareWechat:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_67

    .line 591
    :cond_5d
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareWechat:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_67
    const/high16 v0, 0x42780000  # 62.0f

    .line 594
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->itemCount:I

    mul-int v0, v0, v1

    const/high16 v1, 0x41400000  # 12.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 595
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_99

    .line 596
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareMiao:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 597
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 598
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 599
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_bc

    .line 601
    :cond_99
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareMiao:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 602
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x42040000  # 33.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v4, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 603
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 604
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 606
    :goto_bc
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivScreenShoot:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/ShareCardDialogV3$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3$3;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_c6
    return-void
.end method
