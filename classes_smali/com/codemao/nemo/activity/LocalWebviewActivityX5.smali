.class public Lcom/codemao/nemo/activity/LocalWebviewActivityX5;
.super Lcom/giu/xzz/BaseActivity;
.source "LocalWebviewActivityX5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;
    }
.end annotation


# instance fields
.field private createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field private createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

.field private fromType:I

.field private isHideTitle:Z

.field private isLoadFail:Z

.field private isLoadFinish:Z

.field ivLast:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivNext:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private localWebClickShareEvent:Lcom/codemao/nemo/bean/LocalWebClickShareEvent;

.field private localWebJsCallNativeInterface:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;

.field private localWebNativeCallJsHelper:Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;

.field private mShareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

.field progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlBottom:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private shareBitmap:Landroid/graphics/Bitmap;

.field private shareBitmapUrl:Ljava/lang/String;

.field private shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

.field private shareModel:Lcom/codemao/nemo/bean/ShareModel;

.field private showBottom:Z

.field private showShare:Z

.field private title:Ljava/lang/String;

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field wv_Game:Lcom/codemao/nemo/view/X5DWebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 91
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->showBottom:Z

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->showShare:Z

    const/4 v1, -0x1

    .line 112
    iput v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->fromType:I

    .line 115
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->isHideTitle:Z

    .line 292
    new-instance v0, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)V

    invoke-direct {v0, v1}, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;-><init>(Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->localWebJsCallNativeInterface:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)I
    .registers 1

    .line 91
    iget p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->fromType:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Lcom/codemao/nemo/bean/LocalWebClickShareEvent;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->localWebClickShareEvent:Lcom/codemao/nemo/bean/LocalWebClickShareEvent;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Z)Z
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->isLoadFail:Z

    return p1
.end method

.method static synthetic access$102(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)Lcom/codemao/nemo/bean/LocalWebClickShareEvent;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->localWebClickShareEvent:Lcom/codemao/nemo/bean/LocalWebClickShareEvent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V
    .registers 2

    .line 91
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->initShareModel(Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Lcom/codemao/nemo/dialog/ShareDialog;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->mShareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Lcom/codemao/nemo/dialog/ShareDialog;)Lcom/codemao/nemo/dialog/ShareDialog;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->mShareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->localWebNativeCallJsHelper:Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Lcom/codemao/nemo/bean/ShareModel;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Ljava/lang/String;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Z
    .registers 1

    .line 91
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->isHideTitle:Z

    return p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 3

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    return-void
.end method

.method static synthetic access$902(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Z)Z
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->isLoadFinish:Z

    return p1
.end method

.method private clearWebCookie()V
    .registers 4

    .line 242
    invoke-static {p0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->startSync()V

    .line 244
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 245
    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/CookieManager;->setAcceptCookie(Z)V

    .line 246
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/CookieManager;->removeSessionCookie()V

    .line 247
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/CookieManager;->removeAllCookie()V

    .line 248
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    return-void
.end method

.method private evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    if-nez p2, :cond_9

    new-instance p2, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$6;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$6;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)V

    :cond_9
    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    .line 830
    :catch_d
    iget-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/X5DWebView;->loadUrl(Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method private getTokenBaseKey()Ljava/lang/String;
    .registers 3

    .line 581
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "dev-authorization"

    return-object v0

    .line 583
    :cond_11
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "test-authorization"

    return-object v0

    .line 585
    :cond_22
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "staging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "staging-authorization"

    return-object v0

    :cond_33
    const-string v0, "authorization"

    return-object v0
.end method

.method private initData()V
    .registers 3

    .line 221
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->initShareModel()V

    .line 222
    iget-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    const-string/jumbo v1, "红包页"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 223
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->initShareBitmap()V

    :cond_11
    return-void
.end method

.method private initShareBitmap()V
    .registers 3

    .line 216
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/codemao/nemo/util/ImageUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private initShareModel()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    if-nez v0, :cond_c

    .line 229
    new-instance v0, Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 231
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 238
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initShareModel(Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    if-nez v0, :cond_c

    .line 276
    new-instance v0, Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 278
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    .line 279
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->initShareBitmap()V

    .line 281
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->getShare_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->getShare_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->getShare_description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->getShare_title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ShareModel;->setTitleWX(Ljava/lang/String;)V

    .line 285
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareBitmapUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareBitmapUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 289
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initWebview()V
    .registers 6

    .line 405
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->clearWebCookie()V

    .line 406
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app/codemao;version="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " CODEMAO_WEBVIEW"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 410
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v1, v3, :cond_37

    .line 411
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setMixedContentMode(I)V

    .line 413
    :cond_37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->fromType:I

    .line 414
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    new-instance v3, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;

    invoke-direct {v3, p0, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$JavaScriptinterface;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Landroid/content/Context;)V

    const-string v4, "androidApi"

    invoke-virtual {v1, v3, v4}, Lcom/tencent/smtt/sdk/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    iget-object v3, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->localWebJsCallNativeInterface:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/codemao/nemo/view/X5DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 417
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 418
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setSavePassword(Z)V

    .line 420
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 422
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 423
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 424
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 425
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "database"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 429
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "cache"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 432
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    const/16 v2, 0x64

    .line 433
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setTextZoom(I)V

    .line 434
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 435
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 436
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 438
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 439
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 441
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 442
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 443
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 444
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_cd

    .line 446
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->FAR:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_fa

    :cond_cd
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_d7

    .line 448
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->MEDIUM:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_fa

    :cond_d7
    const/16 v2, 0x78

    if-ne v1, v2, :cond_e1

    .line 450
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->CLOSE:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_fa

    :cond_e1
    const/16 v2, 0x140

    if-ne v1, v2, :cond_eb

    .line 452
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->FAR:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_fa

    :cond_eb
    const/16 v2, 0xd5

    if-ne v1, v2, :cond_f5

    .line 454
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->FAR:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_fa

    .line 456
    :cond_f5
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->MEDIUM:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    .line 459
    :goto_fa
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/X5DWebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 481
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    return-void
.end method


# virtual methods
.method back(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 596
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->onBackPressed()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0264

    return v0
.end method

.method public finish()V
    .registers 5

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_11

    .line 807
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    const-string v1, "getCurrentPage"

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$5;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$5;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/view/X5DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    .line 818
    :catch_11
    :cond_11
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method public goPublishPageNew()V
    .registers 8

    .line 851
    const-class v0, Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const-string v2, "type"

    const-string v3, "workId"

    const-string v4, "name"

    const-string v5, "defaultImagePath"

    if-eqz v1, :cond_5a

    .line 852
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 853
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    const-string v4, "des"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const-string v4, "imagePath"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 858
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    invoke-virtual {p0, v1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 860
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v1}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_cb

    .line 861
    :cond_5a
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    if-eqz v1, :cond_cb

    .line 862
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 863
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getWorkId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 866
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 867
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    const-string v2, "create_save_data_kn"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 868
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getPicNeedCheckFileUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "publish_work_pictures"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "publish_work_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getBcmVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "publish_work_bcm_version"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v2, "published"

    .line 871
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 872
    invoke-virtual {p0, v1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 873
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v1}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_cb
    :goto_cb
    return-void
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "内部浏览器"

    return-object v0
.end method

.method last(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 640
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 641
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    :cond_f
    return-void
.end method

.method next(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 648
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 649
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->goForward()V

    :cond_f
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 719
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 720
    invoke-static {p1, p2, p3}, Lcn/codemao/android/share/CodeMaoShare;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1a

    const/16 p2, 0x2766

    if-ne p1, p2, :cond_1a

    .line 722
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 794
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    if-nez v0, :cond_8

    .line 795
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_17

    .line 796
    :cond_8
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 797
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_17

    .line 799
    :cond_14
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "createData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "create_save_data_kn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showBottom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->showBottom:Z

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showShare"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->showShare:Z

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->url:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isHideTitle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->isHideTitle:Z

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "viewName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 189
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    .line 191
    :cond_60
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    new-instance p1, Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;

    invoke-direct {p1}, Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->localWebNativeCallJsHelper:Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;->init(Lcom/codemao/nemo/view/X5DWebView;)V

    .line 194
    sput-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_SHOW_ACTIVITY_MIAO_CODE:Z

    const-string p1, "https://kn-cdn.codemao.cn/creation/2021_lucky/wechat_share.png"

    .line 195
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareBitmapUrl:Ljava/lang/String;

    .line 196
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_88

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2400

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 199
    :cond_88
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->showBottom:Z

    const/16 v0, 0x8

    if-nez p1, :cond_93

    .line 200
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    :cond_93
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->showShare:Z

    if-nez p1, :cond_a1

    const p1, 0x7f0a0417

    .line 203
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_a1
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 208
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->initData()V

    .line 209
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->initWebview()V

    .line 210
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->synCookies(Ljava/lang/String;)V

    .line 211
    sget-object p1, Lcom/codemao/nemo/util/WebWhiteListUtils;->INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/WebWhiteListUtils;->loadUrl(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_34

    .line 690
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 692
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 694
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    .line 696
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 697
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    .line 698
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->clearView()V

    .line 699
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 700
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 702
    :cond_34
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    if-eqz v0, :cond_3b

    .line 703
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->onDestroy()V

    .line 705
    :cond_3b
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->mShareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    if-eqz v0, :cond_42

    .line 706
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/ShareDialog;->onDestroy()V

    .line 708
    :cond_42
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 4

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_21

    .line 677
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onPause()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 681
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    :cond_21
    :goto_21
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 778
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 779
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_1e

    .line 781
    array-length p1, p3

    if-lez p1, :cond_1e

    aget p1, p3, v1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1e

    const/4 p1, 0x0

    const-string p2, "javascript:check_permission(0)"

    .line 782
    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    :cond_1e
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 655
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    if-eqz v0, :cond_7

    .line 656
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 658
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->mShareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    if-eqz v0, :cond_e

    .line 659
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 662
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_2f

    .line 663
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onResume()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 667
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    :cond_2f
    :goto_2f
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    return-void
.end method

.method share(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 604
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    if-nez p1, :cond_16

    .line 605
    new-instance p1, Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;-><init>(Landroid/app/Activity;Lcom/codemao/nemo/bean/ShareModel;)V

    new-instance v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$4;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->setShareListener(Lcn/codemao/android/share/interfaces/IshareResult;)Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    :cond_16
    const/4 p1, 0x0

    .line 623
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v0, :cond_1f

    .line 624
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 626
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 627
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    goto :goto_32

    .line 629
    :cond_2d
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 632
    :goto_32
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 633
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->setShareModel(Lcom/codemao/nemo/bean/ShareModel;)Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->show()V

    return-void
.end method

.method public synCookies(Ljava/lang/String;)V
    .registers 5

    .line 568
    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v0

    .line 570
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->getTokenBaseKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";Domain=.codemao.cn;Path = /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/smtt/sdk/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_32
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_39

    :catch_39
    return-void
.end method
