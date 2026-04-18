.class public Lcom/codemao/nemo/dialog/WorkPlayShareDialog;
.super Landroid/app/Dialog;
.source "WorkPlayShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;
    }
.end annotation


# instance fields
.field public animOffset:F

.field public animScaleX:F

.field public animScaleY:F

.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private isNeedSave:Z

.field ivScreenShoot:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareCircle:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareQQ:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareQzone:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareWechat:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private localImageUrl:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field public preBottom:I

.field public preLeft:I

.field public preRight:I

.field public preTop:I

.field public qqInstalled:Z

.field private qqSharelistener:Lcom/tencent/tauth/IUiListener;

.field rlBottom:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlRoot:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlScreenShoot:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public screenBitmap:Landroid/graphics/Bitmap;

.field public screenHeight:I

.field public screenWitdh:I

.field private shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

.field public wxInstalled:Z

.field private wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIIILjava/lang/String;Landroid/graphics/Bitmap;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V
    .registers 10

    const v0, 0x7f13034d

    .line 101
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqInstalled:Z

    .line 89
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxInstalled:Z

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isNeedSave:Z

    const/high16 v0, 0x3f800000  # 1.0f

    .line 95
    iput v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->animScaleX:F

    .line 96
    iput v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->animScaleY:F

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->animOffset:F

    .line 102
    iput-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mContext:Landroid/app/Activity;

    .line 103
    iput-object p8, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    .line 104
    iput-object p7, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenBitmap:Landroid/graphics/Bitmap;

    .line 105
    iput p3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preRight:I

    .line 106
    iput p4, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preTop:I

    .line 107
    iput p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preLeft:I

    .line 108
    iput p5, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preBottom:I

    .line 109
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenWitdh:I

    .line 110
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenHeight:I

    .line 111
    new-instance p2, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$1;

    invoke-direct {p2, p0, p8}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$1;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V

    iput-object p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqSharelistener:Lcom/tencent/tauth/IUiListener;

    .line 141
    iput-object p6, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->localImageUrl:Ljava/lang/String;

    .line 142
    new-instance p2, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$2;

    invoke-direct {p2, p0, p8}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$2;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V

    iput-object p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;

    const-string p2, "wx5966b00f345eb948"

    .line 164
    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 165
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object p2

    iget-object p3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-virtual {p2, p3}, Lcn/codemao/android/account/util/WechatManager;->setIshareResult(Lcn/codemao/android/share/interfaces/IshareResult;)V

    .line 166
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "101477015"

    invoke-static {p3, p2}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqInstalled:Z

    .line 168
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxInstalled:Z

    return-void
.end method

.method private QQShareImage()V
    .registers 5

    .line 320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->localImageUrl:Ljava/lang/String;

    const-string v2, "imageLocalUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "req_type"

    const/4 v2, 0x5

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqSharelistener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method private QZoneShareImage()V
    .registers 5

    .line 327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->localImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "req_type"

    const/4 v3, 0x3

    .line 330
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "imageUrl"

    .line 331
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 332
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqSharelistener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tauth/Tencent;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method private WXMomentShareImage()V
    .registers 5

    .line 316
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->localImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/util/WechatShareUtil;->WXMomentShareImage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/openapi/IWXAPI;Lcn/codemao/android/share/interfaces/IshareResult;)V

    return-void
.end method

.method private WXShareImage()V
    .registers 5

    .line 312
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->localImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxShareListener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/util/WechatShareUtil;->WXShareImage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/openapi/IWXAPI;Lcn/codemao/android/share/interfaces/IshareResult;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->doShowShareAnim()V

    return-void
.end method

.method private doShowShareAnim()V
    .registers 16

    .line 437
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->ivScreenShoot:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x64

    .line 439
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v5, 0x1

    .line 440
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 441
    new-instance v6, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$4;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$4;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 457
    iget-object v6, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlScreenShoot:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 458
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 459
    iget-object v6, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlScreenShoot:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 460
    new-instance v14, Landroid/view/animation/ScaleAnimation;

    iget v9, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->animScaleX:F

    iget v11, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->animScaleY:F

    int-to-float v12, v6

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v10, 0x3f800000  # 1.0f

    const/4 v13, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 461
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    iget v7, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->animOffset:F

    invoke-direct {v6, v1, v1, v1, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v7, 0x12c

    .line 462
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 463
    invoke-virtual {v14, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 464
    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 465
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 466
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 467
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 468
    iget-object v6, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlScreenShoot:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 469
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 470
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 471
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 472
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 473
    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->ivScreenShoot:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v1, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 475
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 476
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 477
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 478
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private init()V
    .registers 5

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 218
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 219
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 222
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 223
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 224
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 225
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->initSize()V

    .line 226
    iget-boolean v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqInstalled:Z

    const/16 v2, 0x8

    if-nez v1, :cond_3a

    .line 227
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQzone:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_44

    .line 230
    :cond_3a
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQzone:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    :goto_44
    iget-boolean v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxInstalled:Z

    if-nez v1, :cond_53

    .line 234
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareCircle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5d

    .line 238
    :cond_53
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareCircle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5d
    return-void
.end method


# virtual methods
.method public caculateAnimPositon(III)V
    .registers 9

    .line 391
    iget v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preRight:I

    iget v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preLeft:I

    sub-int/2addr v0, v1

    .line 392
    iget v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preBottom:I

    iget v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preTop:I

    sub-int/2addr v1, v2

    .line 393
    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlScreenShoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 394
    iget v3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preTop:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 395
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 396
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 397
    iget-object v3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlScreenShoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 398
    iput p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->animScaleX:F

    int-to-float p2, p3

    int-to-float v0, v1

    div-float/2addr p2, v0

    .line 399
    iput p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->animScaleY:F

    .line 400
    iget p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenHeight:I

    sub-int/2addr p2, p1

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    .line 401
    iget p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->preTop:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iput p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->animOffset:F

    .line 402
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_46

    .line 403
    iget-object p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->ivScreenShoot:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 404
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlScreenShoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4d

    .line 406
    :cond_46
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlScreenShoot:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_4d
    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 425
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isNeedSave:Z

    if-nez v0, :cond_1c

    .line 426
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->localImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 427
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->localImageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 433
    :cond_1c
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getLayoutId()I
    .registers 2

    const v0, 0x7f0d0357

    return v0
.end method

.method public initSize()V
    .registers 8

    .line 372
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x384

    const/16 v2, 0x232

    if-eqz v0, :cond_13

    .line 373
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 374
    iget-object v3, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_17

    :cond_13
    const/16 v0, 0x232

    const/16 v3, 0x384

    :goto_17
    if-eqz v0, :cond_1e

    if-nez v3, :cond_1c

    goto :goto_1e

    :cond_1c
    move v2, v0

    move v1, v3

    .line 381
    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenWitdh:I

    mul-int/lit8 v0, v0, 0x12

    div-int/lit8 v0, v0, 0x19

    mul-int v3, v0, v1

    .line 382
    div-int/2addr v3, v2

    .line 383
    iget v4, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenHeight:I

    const/high16 v5, 0x43480000  # 200.0f

    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v6

    sub-int/2addr v4, v6

    if-le v3, v4, :cond_3e

    .line 384
    iget v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenHeight:I

    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    sub-int v3, v0, v3

    mul-int v2, v2, v3

    .line 385
    div-int v0, v2, v1

    :cond_3e
    const/high16 v1, 0x431c0000  # 156.0f

    .line 387
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {p0, v1, v0, v3}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->caculateAnimPositon(III)V

    return-void
.end method

.method public isQQOrWXInstalled()Z
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqInstalled:Z

    .line 177
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxInstalled:Z

    if-nez v0, :cond_1f

    .line 178
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqInstalled:Z

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 482
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqSharelistener:Lcom/tencent/tauth/IUiListener;

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 212
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->init()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 306
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/util/WechatManager;->clear()V

    .line 307
    invoke-static {}, Lcn/codemao/android/share/CodeMaoShare;->destory()V

    return-void
.end method

.method onShare(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_a4

    goto/16 :goto_94

    :sswitch_9
    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isNeedSave:Z

    .line 292
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->localImageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 296
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mContext:Landroid/app/Activity;

    const-string/jumbo v0, "已成功保存到本地"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-string p1, "Player页-点击本地保存"

    goto :goto_95

    .line 255
    :sswitch_31
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 256
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 259
    :cond_43
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->WXShareImage()V

    const-string p1, "Player页-点击分享到微信"

    goto :goto_95

    .line 282
    :sswitch_49
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5b

    .line 283
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 287
    :cond_5b
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->QZoneShareImage()V

    const-string p1, "Player页-点击分享到QQ空间"

    goto :goto_95

    .line 273
    :sswitch_61
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 274
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 277
    :cond_73
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->QQShareImage()V

    const-string p1, "Player页-点击分享到QQ"

    goto :goto_95

    .line 264
    :sswitch_79
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8b

    .line 265
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 268
    :cond_8b
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->WXMomentShareImage()V

    const-string p1, "Player页-点击分享到朋友圈"

    goto :goto_95

    .line 251
    :sswitch_91
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->dismiss()V

    :goto_94
    const/4 p1, 0x0

    .line 300
    :goto_95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->shareListener:Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;

    if-eqz v0, :cond_a2

    .line 301
    invoke-interface {v0, p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;->report(Ljava/lang/String;)V

    :cond_a2
    return-void

    nop

    :sswitch_data_a4
    .sparse-switch
        0x7f0a037b -> :sswitch_91
        0x7f0a049f -> :sswitch_79
        0x7f0a04a1 -> :sswitch_61
        0x7f0a04a2 -> :sswitch_49
        0x7f0a04a3 -> :sswitch_31
        0x7f0a04e7 -> :sswitch_9
    .end sparse-switch
.end method

.method public setLocalImageUrl(Ljava/lang/String;)Lcom/codemao/nemo/dialog/WorkPlayShareDialog;
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->localImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenBitmap(Landroid/graphics/Bitmap;)Lcom/codemao/nemo/dialog/WorkPlayShareDialog;
    .registers 3

    .line 197
    iput-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_12

    .line 198
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->ivScreenShoot:Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    .line 199
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->initSize()V

    .line 200
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->ivScreenShoot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_12
    return-object p0
.end method

.method public show()V
    .registers 5

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isNeedSave:Z

    .line 338
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqInstalled:Z

    .line 339
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxInstalled:Z

    .line 340
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 341
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_66

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQzone:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareCircle:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_66

    .line 342
    iget-boolean v2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->qqInstalled:Z

    const/16 v3, 0x8

    if-nez v2, :cond_3b

    .line 343
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQzone:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_43

    .line 346
    :cond_3b
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQzone:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    :goto_43
    iget-boolean v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->wxInstalled:Z

    if-nez v1, :cond_52

    .line 350
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareCircle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5c

    .line 354
    :cond_52
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareCircle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    :goto_5c
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->ivScreenShoot:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$3;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_66
    return-void
.end method
