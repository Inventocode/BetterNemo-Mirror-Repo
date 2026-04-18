.class public Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;
.super Lcom/giu/xzz/mvp/MvpActivity;
.source "BaseKNWorkPlayActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/KeyboardHeightObserver;
.implements Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/giu/xzz/mvp/MvpActivity<",
        "Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;",
        ">;",
        "Lcom/codemao/nemo/view/KeyboardHeightObserver;",
        "Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;"
    }
.end annotation


# instance fields
.field public basePath:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public finalHeight:I

.field guideImageV:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public hasVKeyboard:Z

.field private hidePopBottom:I

.field public imageUrl:Ljava/lang/String;

.field public isBack:Z

.field private isCollected:Z

.field public isInit:Z

.field public isLargePad:Z

.field public isLoadFail:Z

.field public isLoadFinish:Z

.field private isPraised:Z

.field public isVkeyBoardShow:Z

.field ivCollect:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivControl:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivPraise:Landroid/widget/ImageView;
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

.field ivWorkCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

.field loadingBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field public permissions:[Ljava/lang/String;

.field progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public qrHeight:I

.field public qrWitdh:I

.field rlContent:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlQrcode:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlRoot:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlTitle:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public screenBitmap:Landroid/graphics/Bitmap;

.field public screenHeight:I

.field public screenWitdh:I

.field private shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

.field public shareUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public titleHeight:I

.field toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

.field toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvLogin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field unLoginGuideLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public url:Ljava/lang/String;

.field vCover:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vLoginCover:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public workId:J

.field public workType:Ljava/lang/String;

.field wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;


# direct methods
.method public static synthetic $r8$lambda$2oTaFD2UPAtO92AzG6qMfNRT1T8()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->lambda$onUserInfoChanged$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$GlDEXQwUPtZ7AuDWajw9aeVm7KQ(Ljava/lang/Integer;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->lambda$onUserInfoChanged$1(Ljava/lang/Integer;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 4

    .line 99
    invoke-direct {p0}, Lcom/giu/xzz/mvp/MvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isBack:Z

    .line 145
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isPraised:Z

    .line 146
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isCollected:Z

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/nemo/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->basePath:Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 155
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->permissions:[Ljava/lang/String;

    .line 157
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFinish:Z

    .line 158
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFail:Z

    .line 161
    iput v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hidePopBottom:I

    .line 164
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hasVKeyboard:Z

    .line 165
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->setKeyboardUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)Lcom/giu/xzz/mvp/BasePresenter;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p0
.end method

.method private fitLoginGuide()V
    .registers 5

    .line 1024
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workType:Ljava/lang/String;

    const-string v1, "NEMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLargePad:Z

    if-nez v0, :cond_4c

    const/high16 v0, 0x43c80000  # 400.0f

    .line 1025
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 1026
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    const/high16 v2, 0x42480000  # 50.0f

    invoke-static {p0, v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_4c

    mul-int/lit16 v0, v1, 0x9d

    .line 1029
    div-int/lit16 v0, v0, 0x190

    const/high16 v2, 0x434a0000  # 202.0f

    .line 1030
    invoke-static {p0, v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 1031
    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    .line 1032
    iget-object v3, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->guideImageV:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1033
    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->guideImageV:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1034
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->guideImageV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_4c
    return-void
.end method

.method public static gotoPlay(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/codemao/creativecenter/utils/bcm/bean/Abilities;Ljava/lang/String;)V
    .registers 12

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 185
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "title"

    .line 186
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "imageUrl"

    .line 187
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "shareUrl"

    .line 188
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "workId"

    .line 189
    invoke-virtual {v0, p2, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "workType"

    .line 190
    invoke-virtual {v0, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p8, :cond_39

    .line 192
    invoke-virtual {p8}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_praised()Z

    move-result p2

    const-string p3, "isPraised"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    invoke-virtual {p8}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_collected()Z

    move-result p2

    const-string p3, "isCollected"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    :cond_39
    sget-object p2, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p2}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result p2

    if-eqz p2, :cond_45

    .line 196
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_57

    :cond_45
    const p2, 0x7f12032d

    .line 198
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 199
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_57
    return-void
.end method

.method private initIntentData()V
    .registers 5

    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->url:Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shareUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareUrl:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workType:Ljava/lang/String;

    .line 366
    sget-object v0, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareUrl:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->buildQRCodeStrFormBefore(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareUrl:Ljava/lang/String;

    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workId:J

    .line 368
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->title:Ljava/lang/String;

    .line 369
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isPraised"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isPraised:Z

    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->imageUrl:Ljava/lang/String;

    .line 371
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isCollected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isCollected:Z

    return-void
.end method

.method private initUI()V
    .registers 5

    .line 375
    iget-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isPraised:Z

    const v1, 0x7f08008e

    const v2, 0x7f080085

    if-eqz v0, :cond_18

    .line 376
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v3, 0x7f0e0073

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_25

    .line 379
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v3, 0x7f0e0071

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 383
    :goto_25
    iget-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isCollected:Z

    if-eqz v0, :cond_37

    .line 384
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v2, 0x7f0e0047

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_44

    .line 387
    :cond_37
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v1, 0x7f0e0044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 390
    :goto_44
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_57

    .line 392
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->synCookies(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->setPlayer(ZZ)V

    .line 395
    :cond_57
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->setKeyboardUI()V

    .line 396
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->beforeLoad()V

    return-void
.end method

.method private static synthetic lambda$onUserInfoChanged$0()Lkotlin/Unit;
    .registers 2

    const-string v0, "process-player-kn"

    const-string v1, "token update success"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$onUserInfoChanged$1(Ljava/lang/Integer;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    const-string p0, "process-player-kn"

    const-string p1, "token update fail"

    .line 311
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private setKeyboardUI()V
    .registers 3

    .line 452
    iget-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hasVKeyboard:Z

    if-eqz v0, :cond_2a

    .line 453
    iget-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z

    if-eqz v0, :cond_19

    .line 454
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f080452

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3a

    .line 457
    :cond_19
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f080451

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 458
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3a

    .line 462
    :cond_2a
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f080453

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_3a
    return-void
.end method


# virtual methods
.method back(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x1

    .line 470
    iput-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isBack:Z

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击返回"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 472
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->onBackPressed()V

    return-void
.end method

.method beforeLoad()V
    .registers 5

    .line 401
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-nez v0, :cond_28

    .line 402
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->imageUrl:Ljava/lang/String;

    .line 404
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    .line 405
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 406
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$4;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c

    :cond_28
    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->executeLoadWork(Lcom/codemao/toolssdk/manager/StageType;)V

    :goto_2c
    return-void
.end method

.method clickLogin()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击登录"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 589
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    return-void
.end method

.method clickLoginCover()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->unLoginGuideLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击登录"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 596
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    return-void
.end method

.method public cloudStatus(Z)V
    .registers 3

    .line 1002
    invoke-static {}, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils;->canShow()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 1003
    invoke-static {}, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils;->isShowed()V

    .line 1004
    new-instance p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$9;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$9;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method collectWorkOrCancel(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 602
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 603
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 606
    :cond_a
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 607
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    iget-wide v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workId:J

    iget-boolean v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isCollected:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->changeCollectStatus(JZ)V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    .line 170
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLargePad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d0176

    return v0

    :cond_c
    const v0, 0x7f0d0173

    return v0
.end method

.method protected createPresenter()Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;
    .registers 5

    .line 290
    new-instance v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    iget-wide v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workId:J

    iget-object v3, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workType:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;JLjava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/giu/xzz/mvp/BasePresenter;
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->createPresenter()Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    move-result-object v0

    return-object v0
.end method

.method public createScreenShot(Ljava/lang/String;)V
    .registers 15

    const-string v0, ".jpg"

    const-string v1, ","

    .line 876
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    .line 877
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isQQOrWXInstalled()Z

    move-result p1

    const/high16 v2, 0x41000000  # 8.0f

    .line 879
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    .line 880
    iget-object v3, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrWitdh:I

    mul-int v3, v3, v4

    iget-object v4, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    .line 881
    iget v4, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrHeight:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->finalHeight:I

    if-eqz p1, :cond_3e

    .line 883
    iget v5, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrWitdh:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_46

    .line 885
    :cond_3e
    iget v4, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrWitdh:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 888
    :goto_46
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, -0x1

    .line 889
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 891
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 892
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v2

    iget v10, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrWitdh:I

    sub-int/2addr v10, v2

    int-to-float v2, v10

    int-to-float v3, v3

    invoke-direct {v7, v8, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 893
    iget-object v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_b6

    .line 896
    iget-object v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareUrl:Ljava/lang/String;

    const/16 v6, 0x84

    invoke-static {v2, v6}, Lcom/codemao/nemo/util/QrcodeUtils;->createQRCodeWithNoPadding(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_84

    const-string p1, "生成二维码失败，请重试！"

    .line 898
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 901
    :cond_84
    iget-object v6, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 902
    iget-object v6, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 903
    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 904
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v6, v9, v9, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 905
    new-instance v7, Landroid/graphics/RectF;

    const/4 v10, 0x0

    iget v11, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrWitdh:I

    int-to-float v11, v11

    iget v12, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->finalHeight:I

    int-to-float v12, v12

    invoke-direct {v7, v10, v3, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 906
    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 907
    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    goto :goto_b7

    :cond_b6
    move-object v2, v8

    .line 910
    :goto_b7
    :try_start_b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->fileName:Ljava/lang/String;

    .line 911
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_dd

    const-string p1, "请传入目标目录"

    .line 912
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 916
    :cond_dd
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->fileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 917
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f6

    .line 919
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 922
    :cond_f6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 923
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 926
    :cond_ff
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 927
    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x50

    if-eqz v0, :cond_114

    .line 928
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v0, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_119

    .line 930
    :cond_114
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v0, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 932
    :goto_119
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 933
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 934
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 935
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12d

    .line 936
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12d
    if-eqz v2, :cond_138

    .line 938
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_138

    .line 939
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 942
    :cond_138
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hideLoadingDialog()V

    if-eqz p1, :cond_154

    .line 945
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->setLocalImageUrl(Ljava/lang/String;)Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->setScreenBitmap(Landroid/graphics/Bitmap;)Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->show()V

    .line 946
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->show()V

    goto :goto_18f

    :cond_154
    const-string p1, "已保存到相册"

    .line 948
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_159} :catch_15a

    goto :goto_18f

    :catch_15a
    move-exception p1

    .line 951
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hideLoadingDialog()V

    .line 952
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_165

    .line 953
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 954
    :cond_165
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 955
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 956
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 957
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_184

    .line 958
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_184
    if-eqz v2, :cond_18f

    .line 960
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_18f

    .line 961
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_18f
    :goto_18f
    return-void
.end method

.method dismissGuide(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 478
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->unLoginGuideLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected executeLoadWork(Lcom/codemao/toolssdk/manager/StageType;)V
    .registers 18

    move-object/from16 v0, p0

    .line 423
    iget-object v1, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz v1, :cond_51

    .line 424
    iget-wide v1, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workId:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_15

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_16

    :cond_15
    move-object v7, v3

    .line 425
    :goto_16
    iget-wide v1, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workId:J

    cmp-long v6, v1, v4

    if-nez v6, :cond_1e

    iget-object v3, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->url:Ljava/lang/String;

    :cond_1e
    move-object v8, v3

    if-nez p1, :cond_25

    .line 426
    sget-object v1, Lcom/codemao/toolssdk/manager/StageType;->Portrait:Lcom/codemao/toolssdk/manager/StageType;

    move-object v12, v1

    goto :goto_27

    :cond_25
    move-object/from16 v12, p1

    .line 427
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load url, workId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "process-player-kn"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v6, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v13, Lcom/codemao/toolssdk/manager/PlayerType;->Community:Lcom/codemao/toolssdk/manager/PlayerType;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v6 .. v15}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    return-void
.end method

.method public getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;
    .registers 1

    return-object p0
.end method

.method public getPlayViewName()Ljava/lang/String;
    .registers 2

    .line 1020
    iget-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    return-object v0
.end method

.method getScreenShoot(Landroid/view/View;)V
    .registers 11
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    if-eqz p1, :cond_f

    .line 677
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Player页-点击截图"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 679
    :cond_f
    iget-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFail:Z

    if-eqz p1, :cond_19

    const-string p1, "作品加载失败"

    .line 680
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 683
    :cond_19
    iget-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFinish:Z

    if-nez p1, :cond_2d

    .line 684
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 685
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_27
    const-string p1, "作品加载中，请稍后"

    .line 688
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 692
    :cond_2d
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->permissions:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 693
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->showLoadingDialog()V

    .line 694
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    if-nez p1, :cond_6e

    .line 695
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    .line 698
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    .line 699
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    .line 700
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    .line 701
    new-instance p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    iget-object v6, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->fileName:Ljava/lang/String;

    iget-object v7, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    new-instance v8, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$5;

    invoke-direct {v8, p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$5;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Landroid/graphics/Bitmap;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V

    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    .line 723
    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$6;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 737
    :cond_6e
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isQQOrWXInstalled()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 739
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz p1, :cond_7d

    .line 740
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 743
    :cond_7d
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getScreenShootFromWeb(Lcom/codemao/toolssdk/cpp/view/WoodWebView;)V

    goto :goto_92

    .line 745
    :cond_87
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    const/16 v0, 0x67

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->permissions:[Ljava/lang/String;

    const-string v2, "TYPE_SHARE_WORK_CARD"

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    :goto_92
    return-void
.end method

.method public hideLoadingDialog()V
    .registers 2

    .line 810
    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$7;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initSize()V
    .registers 4

    .line 330
    iget v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenHeight:I

    if-nez v0, :cond_a

    .line 331
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenHeight:I

    .line 333
    :cond_a
    iget v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenWitdh:I

    if-nez v0, :cond_14

    .line 334
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenWitdh:I

    :cond_14
    const/high16 v0, 0x42ba0000  # 93.0f

    .line 336
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrHeight:I

    mul-int/lit8 v0, v0, 0x7d

    .line 337
    div-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrWitdh:I

    .line 338
    iget-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLargePad:Z

    if-nez v0, :cond_7a

    .line 343
    iget v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenWitdh:I

    mul-int/lit16 v1, v0, 0x2df

    iget v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenHeight:I

    div-int/2addr v1, v2

    const/16 v2, 0x177

    if-ge v1, v2, :cond_77

    mul-int/lit16 v1, v0, 0x2de

    .line 345
    div-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x10

    .line 346
    div-int/lit8 v0, v0, 0x9

    sub-int v2, v1, v0

    .line 347
    iput v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->titleHeight:I

    .line 348
    iget-object v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 350
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->titleHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->guideImageV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 352
    iget v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->titleHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 353
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->vLoginCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->titleHeight:I

    const/high16 v2, 0x42200000  # 40.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 355
    :cond_77
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->fitLoginGuide()V

    .line 357
    :cond_7a
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrWitdh:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 358
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->qrHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "Player页"

    return-object v0
.end method

.method protected notifyUserInfoChange()V
    .registers 5

    .line 318
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 319
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivScreenShoot:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->tvLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29

    .line 323
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivScreenShoot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->tvLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_29
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 753
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_17

    const/16 v0, 0x2766

    if-ne p1, v0, :cond_17

    .line 755
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 757
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    if-eqz v0, :cond_1e

    .line 758
    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->onActivityResult(IILandroid/content/Intent;)V

    .line 760
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_56

    .line 558
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 559
    iget-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isBack:Z

    if-eqz v0, :cond_14

    .line 560
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_56

    .line 561
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 562
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_56

    .line 564
    :cond_22
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_56

    .line 567
    :cond_26
    iget-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isBack:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 568
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 570
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_56

    .line 571
    :cond_3b
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 572
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_56

    .line 574
    :cond_49
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 576
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_56

    :catch_56
    :cond_56
    :goto_56
    return-void
.end method

.method public onBind(Lcom/codemao/nemo/event/BindEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1041
    sget-object p1, Lcom/codemao/nemo/biz/account/ToolSDKAccount;->INSTANCE:Lcom/codemao/nemo/biz/account/ToolSDKAccount;

    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/biz/account/ToolSDKAccount;->setBindPhoneResult(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Z)V

    return-void
.end method

.method public onCollectError()V
    .registers 3

    .line 992
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    .line 205
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->permissions:[Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->initIntentData()V

    .line 207
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewExtraInfo(Ljava/util/Map;)V

    .line 208
    invoke-super {p0, p1}, Lcom/giu/xzz/mvp/MvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getAccountToken()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-nez v0, :cond_3f

    goto :goto_47

    :cond_3f
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 211
    :goto_47
    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;-><init>()V

    .line 212
    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->setContext(Landroid/content/Context;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    .line 213
    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsWebView(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    .line 214
    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v3

    const-string v4, "KN_PLAYER"

    const-string v6, "1"

    const-string v7, "123456"

    const-string v8, "normal"

    move-object v5, p1

    .line 260
    invoke-interface/range {v3 .. v8}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    .line 261
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v3

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->build()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    .line 263
    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    .line 264
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->init(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    .line 266
    new-instance p1, Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    .line 267
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$2;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 276
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$3;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 282
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->initShareModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->initUI()V

    .line 284
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->notifyUserInfoChange()V

    .line 285
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->close()V

    .line 532
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_39

    .line 533
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 535
    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 537
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 539
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 541
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 542
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 543
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 546
    :cond_39
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    if-eqz v0, :cond_40

    .line 547
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->onDestroy()V

    .line 549
    :cond_40
    invoke-super {p0}, Lcom/giu/xzz/mvp/MvpActivity;->onDestroy()V

    .line 550
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->destroy()V

    .line 551
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onInitSuccess()V
    .registers 3

    .line 982
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 5

    .line 849
    iget-boolean p2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isInit:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 850
    iget p2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x5

    if-ge p1, p2, :cond_10

    .line 851
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isInit:Z

    .line 852
    iput p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hidePopBottom:I

    goto :goto_23

    .line 854
    :cond_10
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isInit:Z

    .line 855
    iput v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hidePopBottom:I

    goto :goto_23

    .line 859
    :cond_15
    iget p2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenHeight:I

    div-int/lit8 v1, p2, 0x5

    if-ge p1, v1, :cond_1d

    .line 860
    iput p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hidePopBottom:I

    .line 862
    :cond_1d
    iget v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hidePopBottom:I

    if-le p1, v1, :cond_23

    div-int/lit8 p2, p2, 0x4

    .line 866
    :cond_23
    :goto_23
    iget p2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hidePopBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x4

    if-le p1, p2, :cond_35

    .line 867
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->setAskDialogPosition(Z)V

    goto :goto_3c

    .line 869
    :cond_35
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->setAskDialogPosition(Z)V

    :goto_3c
    return-void
.end method

.method public onLoadFail()V
    .registers 2

    const/4 v0, 0x1

    .line 997
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFail:Z

    return-void
.end method

.method public onLoadFinish(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFinish:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 787
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x30dd42

    const/4 v5, 0x2

    if-eq v3, v4, :cond_2e

    const v4, 0x33af38

    if-eq v3, v4, :cond_24

    const v4, 0x35dafd

    if-eq v3, v4, :cond_1a

    goto :goto_37

    :cond_1a
    const-string v3, "show"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 v1, 0x1

    goto :goto_37

    :cond_24
    const-string v3, "none"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 v1, 0x0

    goto :goto_37

    :cond_2e
    const-string v3, "hide"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 v1, 0x2

    :cond_37
    :goto_37
    if-eqz v1, :cond_48

    if-eq v1, v0, :cond_43

    if-eq v1, v5, :cond_3e

    goto :goto_51

    .line 797
    :cond_3e
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hasVKeyboard:Z

    .line 798
    iput-boolean v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z

    goto :goto_51

    .line 793
    :cond_43
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hasVKeyboard:Z

    .line 794
    iput-boolean v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z

    goto :goto_51

    .line 789
    :cond_48
    iput-boolean v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hasVKeyboard:Z

    .line 790
    iput-boolean v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4c} :catch_4d

    goto :goto_51

    .line 802
    :catch_4d
    iput-boolean v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hasVKeyboard:Z

    .line 803
    iput-boolean v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z

    .line 805
    :goto_51
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->setKeyboardUI()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    .line 519
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->pauseWebview()V

    .line 520
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    return-void
.end method

.method public onPraiseError()V
    .registers 3

    .line 987
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 824
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 826
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_1a

    .line 828
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    aget p2, p3, v1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->onPermissonCheckResult(I)V

    return-void

    .line 831
    :cond_1a
    array-length p1, p3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_34

    const-string p2, "无访问权限，请手动开启读写权限"

    if-lez p1, :cond_31

    .line 832
    :try_start_1f
    aget p1, p3, v1

    if-nez p1, :cond_28

    const/4 p1, 0x0

    .line 833
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->getScreenShoot(Landroid/view/View;)V

    goto :goto_34

    .line 834
    :cond_28
    aget p1, p3, v1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_34

    .line 835
    invoke-static {p0, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 838
    :cond_31
    invoke-static {p0, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    :goto_34
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    .line 509
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    if-eqz v0, :cond_c

    .line 510
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->dismiss()V

    .line 512
    :cond_c
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->resumeWebview()V

    .line 513
    invoke-super {p0}, Lcom/giu/xzz/mvp/MvpActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 525
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onStop()V

    .line 526
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->onStop()V

    return-void
.end method

.method public onUserInfoChanged()V
    .registers 9

    .line 296
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onUserInfoChanged()V

    .line 297
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->notifyUserInfoChange()V

    .line 299
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_13

    .line 300
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->synCookies(Ljava/lang/String;)V

    .line 302
    :cond_13
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->setupUserInfo()V

    .line 303
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    if-eqz v0, :cond_41

    .line 304
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-nez v0, :cond_27

    const-string v0, ""

    goto :goto_2f

    :cond_27
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    move-object v5, v0

    .line 305
    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v3

    sget-object v6, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$$ExternalSyntheticLambda0;

    sget-object v7, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$$ExternalSyntheticLambda1;

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerUserData;->setUserData(Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :cond_41
    return-void
.end method

.method public pauseWebview()V
    .registers 4

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->pausePlayer()V

    .line 485
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_28

    .line 486
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_28
    return-void
.end method

.method praiseWorkOrCancel()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 626
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_27

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击登录（点赞）"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 631
    :cond_27
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 632
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 635
    :cond_31
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 636
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    iget-wide v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workId:J

    iget-boolean v3, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isPraised:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->changePraiseStatus(JZ)V

    return-void
.end method

.method reloadUrl(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击刷新"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 658
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 659
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 662
    :cond_2a
    iget-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFail:Z

    if-eqz p1, :cond_34

    const-string p1, "作品加载失败"

    .line 663
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 666
    :cond_34
    iget-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFinish:Z

    if-nez p1, :cond_3e

    const-string p1, "作品加载中，请稍后"

    .line 667
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 670
    :cond_3e
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->resetPlayer()V

    return-void
.end method

.method public resumeWebview()V
    .registers 4

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->resumePlayer()V

    .line 497
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_28

    .line 498
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_28
    return-void
.end method

.method public setCollect(Z)V
    .registers 6

    .line 612
    iput-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isCollected:Z

    .line 613
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-wide v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workId:J

    iget-boolean v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isCollected:Z

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatCollectOrCollectEvents(JZI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 614
    iget-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isCollected:Z

    if-eqz p1, :cond_2a

    .line 615
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v0, 0x7f0e0047

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 616
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3a

    .line 618
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v0, 0x7f0e0044

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 619
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 621
    :goto_3a
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setPraise(Z)V
    .registers 6

    .line 642
    iput-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isPraised:Z

    .line 643
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-wide v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->workId:J

    iget-boolean v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isPraised:Z

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatPraiseOrCancelTimeEvents(JZI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 644
    iget-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isPraised:Z

    if-eqz p1, :cond_2a

    .line 645
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v0, 0x7f0e0073

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 646
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3a

    .line 648
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v0, 0x7f0e0071

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 649
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 651
    :goto_3a
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method showGameKeyboard(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 435
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Player页-点击虚拟键盘按钮"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 436
    iget-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFinish:Z

    if-eqz p1, :cond_2d

    .line 437
    iget-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hasVKeyboard:Z

    if-eqz p1, :cond_24

    .line 438
    iget-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z

    .line 439
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->enableVirtualKeyBoardBtn(Z)V

    .line 440
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->setKeyboardUI()V

    goto :goto_35

    .line 442
    :cond_24
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->setKeyboardUI()V

    const-string p1, "本作品未使用键盘操作哦~"

    .line 443
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 446
    :cond_2d
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->setKeyboardUI()V

    const-string p1, "作品加载中，请稍后"

    .line 447
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_35
    return-void
.end method

.method public showLoadingDialog()V
    .registers 3

    .line 777
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez v0, :cond_d

    .line 778
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string v1, "截图生成中..."

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 780
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 767
    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 768
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p1

    .line 770
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method
