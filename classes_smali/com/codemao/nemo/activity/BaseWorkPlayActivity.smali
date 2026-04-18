.class public Lcom/codemao/nemo/activity/BaseWorkPlayActivity;
.super Lcom/giu/xzz/mvp/MvpActivity;
.source "BaseWorkPlayActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/KeyboardHeightObserver;
.implements Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/giu/xzz/mvp/MvpActivity<",
        "Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;",
        ">;",
        "Lcom/codemao/nemo/view/KeyboardHeightObserver;",
        "Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;"
    }
.end annotation


# instance fields
.field public basePath:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public finalHeight:I

.field flWeb:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

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

.field private isX5:Z

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

.field wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

.field wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 83
    invoke-direct {p0}, Lcom/giu/xzz/mvp/MvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isBack:Z

    .line 132
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isPraised:Z

    .line 133
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isCollected:Z

    .line 140
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

    iput-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->basePath:Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 142
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->permissions:[Ljava/lang/String;

    .line 144
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFinish:Z

    .line 145
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFail:Z

    .line 148
    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hidePopBottom:I

    .line 151
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hasVKeyboard:Z

    .line 152
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isVkeyBoardShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)Lcom/giu/xzz/mvp/BasePresenter;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p0
.end method

.method private fitLoginGuide()V
    .registers 5

    .line 1014
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workType:Ljava/lang/String;

    const-string v1, "NEMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLargePad:Z

    if-nez v0, :cond_4c

    const/high16 v0, 0x43c80000  # 400.0f

    .line 1015
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 1016
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    const/high16 v2, 0x42480000  # 50.0f

    invoke-static {p0, v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_4c

    mul-int/lit16 v0, v1, 0x9d

    .line 1019
    div-int/lit16 v0, v0, 0x190

    const/high16 v2, 0x434a0000  # 202.0f

    .line 1020
    invoke-static {p0, v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 1021
    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    .line 1022
    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->guideImageV:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1023
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->guideImageV:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1024
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->guideImageV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_4c
    return-void
.end method

.method public static gotoPlay(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/codemao/creativecenter/utils/bcm/bean/Abilities;Ljava/lang/String;)V
    .registers 13

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    sget v1, Lcom/codemao/nemo/MainApplication;->chromeVersion:I

    const/16 v2, 0x31

    if-ge v1, v2, :cond_13

    const/4 v1, 0x1

    const-string v2, "isX5"

    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_13
    const-string v1, "url"

    .line 175
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "title"

    .line 176
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "imageUrl"

    .line 177
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "shareUrl"

    .line 178
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "workId"

    .line 179
    invoke-virtual {v0, p2, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "workType"

    .line 180
    invoke-virtual {v0, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p8, :cond_45

    .line 182
    invoke-virtual {p8}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_praised()Z

    move-result p2

    const-string p3, "isPraised"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    invoke-virtual {p8}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_collected()Z

    move-result p2

    const-string p3, "isCollected"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    :cond_45
    sget-object p2, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p2}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result p2

    if-eqz p2, :cond_51

    .line 186
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_63

    :cond_51
    const p2, 0x7f12032d

    .line 188
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 189
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_63
    return-void
.end method

.method private initIntentData()V
    .registers 6

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isX5"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isX5:Z

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?is_nemo_player=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shareUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareUrl:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workType:Ljava/lang/String;

    const-string v1, "NEMO"

    .line 303
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 304
    sget-object v0, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareUrl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->buildQRCodeStrFormBefore(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareUrl:Ljava/lang/String;

    goto :goto_62

    .line 306
    :cond_56
    sget-object v0, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareUrl:Ljava/lang/String;

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v3}, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->buildQRCodeStrFormBefore(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareUrl:Ljava/lang/String;

    .line 308
    :goto_62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-string v1, "workId"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->title:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isPraised"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isPraised:Z

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->imageUrl:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isCollected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isCollected:Z

    return-void
.end method

.method private initUI()V
    .registers 5

    .line 316
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isPraised:Z

    const v1, 0x7f08008e

    const v2, 0x7f080085

    if-eqz v0, :cond_18

    .line 317
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v3, 0x7f0e0073

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_25

    .line 320
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v3, 0x7f0e0071

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 324
    :goto_25
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isCollected:Z

    if-eqz v0, :cond_37

    .line 325
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v2, 0x7f0e0047

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_44

    .line 328
    :cond_37
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v1, 0x7f0e0044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 331
    :goto_44
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_59

    .line 332
    iget-object v1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->initWebview(Lcom/codemao/creativestore/dsbridge/DWebView;)V

    .line 333
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->synCookies(Ljava/lang/String;)V

    goto :goto_6d

    .line 334
    :cond_59
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_6d

    .line 335
    iget-object v1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->initWebviewX5(Lcom/codemao/nemo/view/X5DWebView;)V

    .line 336
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->synCookiesX5(Ljava/lang/String;)V

    .line 338
    :cond_6d
    :goto_6d
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->setKeyboardUI()V

    .line 339
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->beforeLoad()V

    return-void
.end method

.method private setKeyboardUI()V
    .registers 3

    .line 393
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hasVKeyboard:Z

    if-eqz v0, :cond_2a

    .line 394
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isVkeyBoardShow:Z

    if-eqz v0, :cond_19

    .line 395
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f080452

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3a

    .line 398
    :cond_19
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f080451

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3a

    .line 403
    :cond_2a
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    const v1, 0x7f080453

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

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

    .line 411
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isBack:Z

    .line 412
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

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 413
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onBackPressed()V

    return-void
.end method

.method beforeLoad()V
    .registers 5

    .line 344
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-nez v0, :cond_28

    .line 345
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->imageUrl:Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    .line 348
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 349
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$3;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3b

    .line 364
    :cond_28
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_32

    .line 365
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3b

    .line 366
    :cond_32
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_3b

    .line 367
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/X5DWebView;->loadUrl(Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method clickLogin()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 568
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

    check-cast v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 569
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    return-void
.end method

.method clickLoginCover()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->unLoginGuideLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
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

    check-cast v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 576
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    return-void
.end method

.method public cloudStatus(Z)V
    .registers 3

    .line 992
    invoke-static {}, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils;->canShow()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 993
    invoke-static {}, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils;->isShowed()V

    .line 994
    new-instance p1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$8;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$8;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method collectWorkOrCancel(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 582
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 583
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 586
    :cond_a
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 587
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    iget-boolean v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isCollected:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->changeCollectStatus(JZ)V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    .line 157
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLargePad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d0176

    return v0

    :cond_c
    const v0, 0x7f0d0173

    return v0
.end method

.method protected createPresenter()Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;
    .registers 5

    .line 236
    new-instance v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workType:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;JLjava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/giu/xzz/mvp/BasePresenter;
    .registers 2

    .line 83
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->createPresenter()Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    move-result-object v0

    return-object v0
.end method

.method public createScreenShot(Ljava/lang/String;)V
    .registers 15

    const-string v0, ".jpg"

    const-string v1, ","

    .line 864
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    .line 865
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isQQOrWXInstalled()Z

    move-result p1

    const/high16 v2, 0x41000000  # 8.0f

    .line 867
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    .line 868
    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    mul-int v3, v3, v4

    iget-object v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    .line 869
    iget v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrHeight:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->finalHeight:I

    if-eqz p1, :cond_3e

    .line 871
    iget v5, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_46

    .line 873
    :cond_3e
    iget v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 876
    :goto_46
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, -0x1

    .line 877
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 879
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 880
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v2

    iget v10, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    sub-int/2addr v10, v2

    int-to-float v2, v10

    int-to-float v3, v3

    invoke-direct {v7, v8, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 881
    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_b7

    .line 884
    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareUrl:Ljava/lang/String;

    const/16 v6, 0x84

    invoke-static {v2, v6}, Lcom/codemao/nemo/util/QrcodeUtils;->createQRCodeWithNoPadding(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_85

    const-string/jumbo p1, "生成二维码失败，请重试！"

    .line 886
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 889
    :cond_85
    iget-object v6, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 890
    iget-object v6, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 891
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 892
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v6, v9, v9, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 893
    new-instance v7, Landroid/graphics/RectF;

    const/4 v10, 0x0

    iget v11, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    int-to-float v11, v11

    iget v12, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->finalHeight:I

    int-to-float v12, v12

    invoke-direct {v7, v10, v3, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 894
    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 895
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    goto :goto_b8

    :cond_b7
    move-object v2, v8

    .line 898
    :goto_b8
    :try_start_b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    .line 899
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_df

    const-string/jumbo p1, "请传入目标目录"

    .line 900
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 904
    :cond_df
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 905
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f8

    .line 907
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 910
    :cond_f8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 911
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 914
    :cond_101
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 915
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x50

    if-eqz v0, :cond_116

    .line 916
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v0, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_11b

    .line 918
    :cond_116
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v0, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 920
    :goto_11b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 921
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 922
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 923
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 924
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12f
    if-eqz v2, :cond_13a

    .line 926
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_13a

    .line 927
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 930
    :cond_13a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hideLoadingDialog()V

    if-eqz p1, :cond_156

    .line 933
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->setLocalImageUrl(Ljava/lang/String;)Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->setScreenBitmap(Landroid/graphics/Bitmap;)Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->show()V

    .line 934
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->show()V

    goto :goto_199

    :cond_156
    const-string/jumbo p1, "已保存到相册"

    .line 936
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_15c} :catch_15d

    goto :goto_199

    :catch_15d
    move-exception p1

    .line 939
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hideLoadingDialog()V

    .line 940
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_168

    .line 941
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 942
    :cond_168
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_16f

    .line 943
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onResume()V

    .line 944
    :cond_16f
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 945
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 946
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 947
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_18e

    .line 948
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_18e
    if-eqz v2, :cond_199

    .line 950
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_199

    .line 951
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_199
    :goto_199
    return-void
.end method

.method dismissGuide(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 419
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->unLoginGuideLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;
    .registers 1

    return-object p0
.end method

.method public getPlayViewName()Ljava/lang/String;
    .registers 2

    .line 1010
    iget-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    return-object v0
.end method

.method getScreenShoot(Landroid/view/View;)V
    .registers 11
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    if-eqz p1, :cond_f

    .line 657
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Player页-点击截图"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 659
    :cond_f
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFail:Z

    if-eqz p1, :cond_1a

    const-string/jumbo p1, "作品加载失败"

    .line 660
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 663
    :cond_1a
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFinish:Z

    if-nez p1, :cond_2f

    .line 664
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 665
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_28
    const-string/jumbo p1, "作品加载中，请稍后"

    .line 668
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 672
    :cond_2f
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->permissions:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 673
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->showLoadingDialog()V

    .line 674
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    if-nez p1, :cond_70

    .line 675
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    .line 678
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    .line 679
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    .line 680
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    .line 681
    new-instance p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    iget-object v6, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fileName:Ljava/lang/String;

    iget-object v7, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenBitmap:Landroid/graphics/Bitmap;

    new-instance v8, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;

    invoke-direct {v8, p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Landroid/graphics/Bitmap;Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    .line 703
    new-instance v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$5;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 720
    :cond_70
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->isQQOrWXInstalled()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 722
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz p1, :cond_7f

    .line 723
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 725
    :cond_7f
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz p1, :cond_86

    .line 726
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->onPause()V

    .line 729
    :cond_86
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getScreenShootFromWeb()V

    goto :goto_99

    .line 731
    :cond_8e
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    const/16 v0, 0x67

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->permissions:[Ljava/lang/String;

    const-string v2, "TYPE_SHARE_WORK_CARD"

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    :goto_99
    return-void
.end method

.method public hideLoadingDialog()V
    .registers 2

    .line 798
    new-instance v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$6;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initSize()V
    .registers 4

    .line 266
    iget v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    if-nez v0, :cond_a

    .line 267
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    .line 269
    :cond_a
    iget v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenWitdh:I

    if-nez v0, :cond_14

    .line 270
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenWitdh:I

    :cond_14
    const/high16 v0, 0x42ba0000  # 93.0f

    .line 272
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrHeight:I

    mul-int/lit8 v0, v0, 0x7d

    .line 273
    div-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    .line 274
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLargePad:Z

    if-nez v0, :cond_7a

    .line 279
    iget v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenWitdh:I

    mul-int/lit16 v1, v0, 0x2df

    iget v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    div-int/2addr v1, v2

    const/16 v2, 0x177

    if-ge v1, v2, :cond_77

    mul-int/lit16 v1, v0, 0x2de

    .line 281
    div-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x10

    .line 282
    div-int/lit8 v0, v0, 0x9

    sub-int v2, v1, v0

    .line 283
    iput v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->titleHeight:I

    .line 284
    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 286
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->titleHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 287
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->guideImageV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 288
    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->titleHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 289
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->vLoginCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->titleHeight:I

    const/high16 v2, 0x42200000  # 40.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 291
    :cond_77
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->fitLoginGuide()V

    .line 293
    :cond_7a
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 294
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrHeight:I

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

    .line 254
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivScreenShoot:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->tvLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29

    .line 259
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivScreenShoot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->tvLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_29
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 739
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_17

    const/16 v0, 0x2766

    if-ne p1, v0, :cond_17

    .line 741
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 743
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    if-eqz v0, :cond_1e

    .line 744
    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1e
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_5b

    .line 515
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 516
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isBack:Z

    if-eqz v0, :cond_18

    .line 517
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto/16 :goto_ae

    .line 518
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 519
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_ae

    .line 521
    :cond_27
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto/16 :goto_ae

    .line 524
    :cond_2c
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isBack:Z

    if-eqz v0, :cond_3f

    .line 525
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 527
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto/16 :goto_ae

    .line 528
    :cond_3f
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 529
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_ae

    .line 531
    :cond_4d
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 533
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_ae

    .line 536
    :cond_5b
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_ae

    .line 537
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 538
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isBack:Z

    if-eqz v0, :cond_6f

    .line 539
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_ae

    .line 540
    :cond_6f
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 541
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_ae

    .line 543
    :cond_7d
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_ae

    .line 546
    :cond_81
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isBack:Z

    if-eqz v0, :cond_93

    .line 547
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 549
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_ae

    .line 550
    :cond_93
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 551
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_ae

    .line 553
    :cond_a1
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 555
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ae} :catch_ae

    :catch_ae
    :cond_ae
    :goto_ae
    return-void
.end method

.method public onCollectError()V
    .registers 3

    .line 982
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 195
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->permissions:[Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->initIntentData()V

    .line 197
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewExtraInfo(Ljava/util/Map;)V

    .line 198
    invoke-super {p0, p1}, Lcom/giu/xzz/mvp/MvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isX5:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_5c

    .line 200
    new-instance p1, Lcom/codemao/nemo/view/X5DWebView;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/X5DWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    .line 201
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 203
    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    .line 204
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->initX5(Lcom/codemao/nemo/view/X5DWebView;)V

    goto :goto_7d

    .line 206
    :cond_5c
    new-instance p1, Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-direct {p1, p0}, Lcom/codemao/creativestore/dsbridge/DWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    .line 207
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 209
    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    .line 210
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->init(Lcom/codemao/creativestore/dsbridge/DWebView;)V

    .line 213
    :goto_7d
    new-instance p1, Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    .line 214
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$1;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 223
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$2;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 229
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->initShareModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->initUI()V

    .line 231
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->notifyUserInfoChange()V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->close()V

    .line 477
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 478
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 480
    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 482
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 484
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 486
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 487
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 488
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 491
    :cond_39
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_6c

    .line 492
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4a

    .line 494
    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 496
    :cond_4a
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    .line 498
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 499
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    .line 500
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->clearView()V

    .line 501
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 502
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 504
    :cond_6c
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    if-eqz v0, :cond_73

    .line 505
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->onDestroy()V

    .line 507
    :cond_73
    invoke-super {p0}, Lcom/giu/xzz/mvp/MvpActivity;->onDestroy()V

    return-void
.end method

.method public onInitSuccess()V
    .registers 3

    .line 972
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 5

    .line 837
    iget-boolean p2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isInit:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 838
    iget p2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x5

    if-ge p1, p2, :cond_10

    .line 839
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isInit:Z

    .line 840
    iput p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hidePopBottom:I

    goto :goto_23

    .line 842
    :cond_10
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isInit:Z

    .line 843
    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hidePopBottom:I

    goto :goto_23

    .line 847
    :cond_15
    iget p2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    div-int/lit8 v1, p2, 0x5

    if-ge p1, v1, :cond_1d

    .line 848
    iput p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hidePopBottom:I

    .line 850
    :cond_1d
    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hidePopBottom:I

    if-le p1, v1, :cond_23

    div-int/lit8 p2, p2, 0x4

    .line 854
    :cond_23
    :goto_23
    iget p2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hidePopBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x4

    if-le p1, p2, :cond_35

    .line 855
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->setAskDialogPosition(Z)V

    goto :goto_3c

    .line 857
    :cond_35
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->setAskDialogPosition(Z)V

    :goto_3c
    return-void
.end method

.method public onLoadFail()V
    .registers 2

    const/4 v0, 0x1

    .line 987
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFail:Z

    return-void
.end method

.method public onLoadFinish(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    .line 770
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFinish:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 772
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

    .line 782
    :cond_3e
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hasVKeyboard:Z

    .line 783
    iput-boolean v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isVkeyBoardShow:Z

    goto :goto_51

    .line 778
    :cond_43
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hasVKeyboard:Z

    .line 779
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isVkeyBoardShow:Z

    goto :goto_51

    .line 774
    :cond_48
    iput-boolean v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hasVKeyboard:Z

    .line 775
    iput-boolean v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isVkeyBoardShow:Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4c} :catch_4d

    goto :goto_51

    .line 787
    :catch_4d
    iput-boolean v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hasVKeyboard:Z

    .line 788
    iput-boolean v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isVkeyBoardShow:Z

    .line 790
    :goto_51
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->setKeyboardUI()V

    .line 791
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 793
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->loadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    .line 469
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->pauseWebview()V

    .line 471
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    return-void
.end method

.method public onPraiseError()V
    .registers 3

    .line 977
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onProgressChange(I)V
    .registers 3

    .line 960
    new-instance v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$7;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 812
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 814
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_1a

    .line 816
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    aget p2, p3, v1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->onPermissonCheckResult(I)V

    return-void

    .line 819
    :cond_1a
    array-length p1, p3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_35

    const-string/jumbo p2, "无访问权限，请手动开启读写权限"

    if-lez p1, :cond_32

    .line 820
    :try_start_20
    aget p1, p3, v1

    if-nez p1, :cond_29

    const/4 p1, 0x0

    .line 821
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->getScreenShoot(Landroid/view/View;)V

    goto :goto_35

    .line 822
    :cond_29
    aget p1, p3, v1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_35

    .line 823
    invoke-static {p0, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 826
    :cond_32
    invoke-static {p0, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    :goto_35
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    .line 458
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->shareDialog:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    if-eqz v0, :cond_c

    .line 459
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->dismiss()V

    .line 461
    :cond_c
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->resumeWebview()V

    .line 463
    invoke-super {p0}, Lcom/giu/xzz/mvp/MvpActivity;->onResume()V

    return-void
.end method

.method public onUserInfoChanged()V
    .registers 3

    .line 242
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onUserInfoChanged()V

    .line 243
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->notifyUserInfoChange()V

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_14

    .line 246
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->synCookies(Ljava/lang/String;)V

    goto :goto_21

    .line 247
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_21

    .line 248
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->synCookiesX5(Ljava/lang/String;)V

    .line 250
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->setupUserInfo()V

    return-void
.end method

.method public pauseWebview()V
    .registers 6

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->pausePlayer()V

    .line 426
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_3c

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "onPause"

    if-eqz v0, :cond_23

    .line 427
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 430
    :cond_23
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_40

    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onPause()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-void
.end method

.method praiseWorkOrCancel()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 606
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_27

    .line 607
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

    check-cast v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 611
    :cond_27
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 612
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 615
    :cond_31
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 616
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    iget-boolean v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isPraised:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->changePraiseStatus(JZ)V

    return-void
.end method

.method reloadUrl(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 637
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

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 638
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 639
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 642
    :cond_2a
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFail:Z

    if-eqz p1, :cond_35

    const-string/jumbo p1, "作品加载失败"

    .line 643
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 646
    :cond_35
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFinish:Z

    if-nez p1, :cond_40

    const-string/jumbo p1, "作品加载中，请稍后"

    .line 647
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 650
    :cond_40
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->reloadUrl()V

    return-void
.end method

.method public resumeWebview()V
    .registers 6

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->resumePlayer()V

    .line 442
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_3c

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "onResume"

    if-eqz v0, :cond_23

    .line 443
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 446
    :cond_23
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_40

    .line 447
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onResume()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-void
.end method

.method public setCollect(Z)V
    .registers 6

    .line 592
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isCollected:Z

    .line 593
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-wide v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    iget-boolean v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isCollected:Z

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatCollectOrCollectEvents(JZI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 594
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isCollected:Z

    if-eqz p1, :cond_2a

    .line 595
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v0, 0x7f0e0047

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3a

    .line 598
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v0, 0x7f0e0044

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 601
    :goto_3a
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setPraise(Z)V
    .registers 6

    .line 622
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isPraised:Z

    .line 623
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-wide v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    iget-boolean v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isPraised:Z

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatPraiseOrCancelTimeEvents(JZI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 624
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isPraised:Z

    if-eqz p1, :cond_2a

    .line 625
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v0, 0x7f0e0073

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 626
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3a

    .line 628
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v0, 0x7f0e0071

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 631
    :goto_3a
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method showGameKeyboard(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 376
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Player页-点击虚拟键盘按钮"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 377
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLoadFinish:Z

    if-eqz p1, :cond_30

    .line 378
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hasVKeyboard:Z

    if-eqz p1, :cond_26

    .line 379
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isVkeyBoardShow:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isVkeyBoardShow:Z

    .line 380
    iget-object v0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->showVKeyboard(Z)V

    .line 381
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->setKeyboardUI()V

    goto :goto_39

    .line 383
    :cond_26
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->setKeyboardUI()V

    const-string/jumbo p1, "本作品未使用键盘操作哦~"

    .line 384
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 387
    :cond_30
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->setKeyboardUI()V

    const-string/jumbo p1, "作品加载中，请稍后"

    .line 388
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_39
    return-void
.end method

.method public showLoadingDialog()V
    .registers 3

    .line 762
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez v0, :cond_e

    .line 763
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "截图生成中..."

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 765
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 752
    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 753
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p1

    .line 755
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method
