.class public Lcom/codemao/nemo/activity/LocalWebviewActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "LocalWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;
    }
.end annotation


# instance fields
.field private createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field private createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

.field private fromType:I

.field private isAnswerTheProtocol:Z

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

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->showBottom:Z

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->showShare:Z

    const/4 v1, -0x1

    .line 121
    iput v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->fromType:I

    .line 124
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->isHideTitle:Z

    .line 133
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->isAnswerTheProtocol:Z

    .line 134
    new-instance v0, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;)V

    invoke-direct {v0, v1}, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;-><init>(Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->localWebJsCallNativeInterface:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/nemo/activity/LocalWebviewActivity;Z)Z
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->isAnswerTheProtocol:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/LocalWebviewActivity;)I
    .registers 1

    .line 99
    iget p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->fromType:I

    return p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/activity/LocalWebviewActivity;Ljava/lang/String;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->openImageChooserActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/activity/LocalWebviewActivity;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/codemao/nemo/activity/LocalWebviewActivity;Z)Z
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->isLoadFinish:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/codemao/nemo/activity/LocalWebviewActivity;Z)Z
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->isLoadFail:Z

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Lcom/codemao/nemo/bean/LocalWebClickShareEvent;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->localWebClickShareEvent:Lcom/codemao/nemo/bean/LocalWebClickShareEvent;

    return-object p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/activity/LocalWebviewActivity;Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)Lcom/codemao/nemo/bean/LocalWebClickShareEvent;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->localWebClickShareEvent:Lcom/codemao/nemo/bean/LocalWebClickShareEvent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/LocalWebviewActivity;Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->initShareModel(Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Lcom/codemao/nemo/dialog/ShareDialog;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->mShareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/codemao/nemo/activity/LocalWebviewActivity;Lcom/codemao/nemo/dialog/ShareDialog;)Lcom/codemao/nemo/dialog/ShareDialog;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->mShareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->localWebNativeCallJsHelper:Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Lcom/codemao/nemo/bean/ShareModel;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Z
    .registers 1

    .line 99
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->isHideTitle:Z

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Landroid/webkit/ValueCallback;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$902(Lcom/codemao/nemo/activity/LocalWebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private clearWebCookie()V
    .registers 4

    .line 404
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 406
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 407
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 408
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 409
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 410
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 929
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-nez p2, :cond_9

    new-instance p2, Lcom/codemao/nemo/activity/LocalWebviewActivity$6;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$6;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;)V

    :cond_9
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    .line 936
    :catch_d
    iget-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p2, p1}, Lcom/codemao/creativestore/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public static getFitIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 306
    new-instance v0, Landroid/content/Intent;

    sget v1, Lcom/codemao/nemo/MainApplication;->chromeVersion:I

    const/16 v2, 0x31

    if-ge v1, v2, :cond_b

    const-class v1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    goto :goto_d

    :cond_b
    const-class v1, Lcom/codemao/nemo/activity/LocalWebviewActivity;

    :goto_d
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getTokenBaseKey()Ljava/lang/String;
    .registers 3

    .line 689
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "dev-authorization"

    return-object v0

    .line 691
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

    .line 693
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

.method public static goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V
    .registers 7

    .line 261
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    goto :goto_28

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    const-string v1, "https://dev-nemo.codemao.cn/user_agreement"

    const-string v2, "dev-"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->getFitIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    .line 263
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "type"

    .line 264
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "showBottom"

    const/4 v0, 0x0

    .line 265
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "showShare"

    .line 266
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "createData"

    .line 267
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "viewName"

    const-string/jumbo p2, "签订协议页"

    .line 268
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isHideTitle"

    .line 269
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static goAnswerKn(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/SaveResult;ZI)V
    .registers 8

    .line 274
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    goto :goto_28

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    const-string v1, "https://dev-nemo.codemao.cn/user_agreement"

    const-string v2, "dev-"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->getFitIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    .line 276
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "type"

    .line 277
    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "showBottom"

    const/4 v0, 0x0

    .line 278
    invoke-virtual {v1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "showShare"

    .line 279
    invoke-virtual {v1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getWorkId()J

    move-result-wide v2

    const-string p3, "workId"

    invoke-virtual {v1, p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p3, "create_save_data_kn"

    .line 281
    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "viewName"

    const-string/jumbo p3, "签订协议页"

    .line 282
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string p3, "isHideTitle"

    .line 283
    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "published"

    .line 284
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static goContribute(Landroid/content/Context;)V
    .registers 2

    const-string v0, "https://www.wenjuan.com/s/yq2yMj0/"

    .line 253
    invoke-static {p0, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static goLevelDes(Landroid/content/Context;)V
    .registers 4

    .line 289
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    goto :goto_28

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    const-string v1, "https://dev-nemo.codemao.cn/user_level"

    const-string v2, "dev-"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "url"

    .line 291
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "showBottom"

    const/4 v2, 0x0

    .line 292
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "showShare"

    .line 293
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static goLocalWeb(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 311
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "showShare"

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static goMineLevelDetail(Landroid/content/Context;)V
    .registers 5

    .line 298
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    goto :goto_28

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    const-string v1, "http://test-nemo.codemao.cn/growth_record"

    const-string v2, "test-"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const-string v3, "showShare"

    .line 300
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "url"

    .line 301
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static goWeb(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 318
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initData()V
    .registers 3

    .line 383
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->initShareModel()V

    .line 384
    iget-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    const-string/jumbo v1, "红包抽奖页"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 385
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->initShareBitmap()V

    :cond_11
    return-void
.end method

.method private initShareBitmap()V
    .registers 3

    .line 378
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    invoke-static {v0}, Lcom/codemao/nemo/util/ImageUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private initShareModel()V
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    if-nez v0, :cond_c

    .line 391
    new-instance v0, Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 393
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 400
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initShareModel(Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V
    .registers 4

    .line 415
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    if-nez v0, :cond_c

    .line 416
    new-instance v0, Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 418
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    .line 419
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->initShareBitmap()V

    .line 421
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->getShare_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->getShare_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->getShare_description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;->getShare_title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ShareModel;->setTitleWX(Ljava/lang/String;)V

    .line 425
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareBitmapUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareBitmapUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 429
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initWebview()V
    .registers 6

    .line 433
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->clearWebCookie()V

    .line 434
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 437
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

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 438
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v1, v3, :cond_37

    .line 439
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 441
    :cond_37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->fromType:I

    .line 442
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    new-instance v3, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;

    invoke-direct {v3, p0, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$JavaScriptinterface;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;Landroid/content/Context;)V

    const-string v4, "androidApi"

    invoke-virtual {v1, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    iget-object v3, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->localWebJsCallNativeInterface:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/codemao/creativestore/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 445
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 446
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 448
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 450
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 452
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 453
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "database"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 460
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/16 v2, 0x64

    .line 461
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 462
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 463
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 464
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 466
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 467
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 469
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 470
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 471
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 472
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_b9

    .line 474
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_e6

    :cond_b9
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_c3

    .line 476
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_e6

    :cond_c3
    const/16 v2, 0x78

    if-ne v1, v2, :cond_cd

    .line 478
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_e6

    :cond_cd
    const/16 v2, 0x140

    if-ne v1, v2, :cond_d7

    .line 480
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_e6

    :cond_d7
    const/16 v2, 0xd5

    if-ne v1, v2, :cond_e1

    .line 482
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_e6

    .line 484
    :cond_e1
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 487
    :goto_e6
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 573
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    new-instance v1, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .registers 8

    const/16 v0, 0xbb9

    if-ne p1, v0, :cond_49

    .line 844
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_9

    goto :goto_49

    :cond_9
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_41

    if-eqz p3, :cond_41

    .line 849
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 850
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_34

    .line 852
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 853
    :goto_21
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 854
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 855
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_34
    move-object v1, v0

    :cond_35
    if-eqz p1, :cond_42

    const/4 p2, 0x1

    new-array v1, p2, [Landroid/net/Uri;

    .line 859
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, p3

    goto :goto_42

    :cond_41
    move-object v1, v0

    .line 862
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 863
    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    :cond_49
    :goto_49
    return-void
.end method

.method private openImageChooserActivity(Ljava/lang/String;)V
    .registers 4

    .line 666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 667
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "File Chooser"

    .line 669
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xbb9

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method back(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 704
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->onBackPressed()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0263

    return v0
.end method

.method public finish()V
    .registers 5

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_11

    .line 909
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    const-string v1, "getCurrentPage"

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/nemo/activity/LocalWebviewActivity$5;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$5;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativestore/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    .line 918
    :cond_11
    iget v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->fromType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->isAnswerTheProtocol:Z

    if-nez v1, :cond_1d

    .line 919
    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->showToastForType(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1d

    .line 924
    :catch_1d
    :cond_1d
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method public goPublishPageNew()V
    .registers 8

    .line 956
    const-class v0, Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const-string v2, "type"

    const-string v3, "workId"

    const-string v4, "name"

    const-string v5, "defaultImagePath"

    if-eqz v1, :cond_5a

    .line 957
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 958
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    const-string v4, "des"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const-string v4, "imagePath"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 963
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    invoke-virtual {p0, v1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 965
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v1}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_cb

    .line 966
    :cond_5a
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    if-eqz v1, :cond_cb

    .line 967
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 968
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getWorkId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 971
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    const-string v2, "create_save_data_kn"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 973
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getPicNeedCheckFileUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "publish_work_pictures"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "publish_work_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getBcmVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "publish_work_bcm_version"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v2, "published"

    .line 976
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    invoke-virtual {p0, v1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 978
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

    .line 748
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 749
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_f
    return-void
.end method

.method next(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 756
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 757
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_f
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 827
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 828
    invoke-static {p1, p2, p3}, Lcn/codemao/android/share/CodeMaoShare;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1b

    const/16 v1, 0x2766

    if-ne p1, v1, :cond_1b

    .line 830
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_45

    :cond_1b
    const/16 v1, 0xbb9

    if-ne p1, v1, :cond_45

    .line 832
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_28

    return-void

    :cond_28
    const/4 v1, 0x0

    if-eqz p3, :cond_33

    if-eq p2, v0, :cond_2e

    goto :goto_33

    .line 833
    :cond_2e
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_34

    :cond_33
    :goto_33
    move-object v0, v1

    .line 834
    :goto_34
    iget-object v2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_3c

    .line 835
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_45

    .line 836
    :cond_3c
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_45

    .line 837
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 838
    iput-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    :cond_45
    :goto_45
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 896
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-nez v0, :cond_8

    .line 897
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_17

    .line 898
    :cond_8
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 899
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_17

    .line 901
    :cond_14
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 344
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "createData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 345
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "create_save_data_kn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->createDataKn:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    .line 346
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showBottom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->showBottom:Z

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showShare"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->showShare:Z

    .line 348
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->url:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isHideTitle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->isHideTitle:Z

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "viewName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 352
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    .line 354
    :cond_60
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 355
    new-instance p1, Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;

    invoke-direct {p1}, Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->localWebNativeCallJsHelper:Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;

    .line 356
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/LocalWebNativeCallJsHelper;->init(Lcom/codemao/creativestore/dsbridge/DWebView;)V

    .line 357
    sput-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_SHOW_ACTIVITY_MIAO_CODE:Z

    const-string p1, "https://kn-cdn.codemao.cn/creation/2021_lucky/wechat_share.png"

    .line 358
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareBitmapUrl:Ljava/lang/String;

    .line 359
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_88

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2400

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 362
    :cond_88
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->showBottom:Z

    const/16 v0, 0x8

    if-nez p1, :cond_93

    .line 363
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    :cond_93
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->showShare:Z

    if-nez p1, :cond_a1

    const p1, 0x7f0a0417

    .line 366
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_a1
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 370
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 371
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->initData()V

    .line 372
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->initWebview()V

    .line 373
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->synCookies(Ljava/lang/String;)V

    .line 374
    sget-object p1, Lcom/codemao/nemo/util/WebWhiteListUtils;->INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/WebWhiteListUtils;->loadUrl(Lcom/codemao/creativestore/dsbridge/DWebView;Ljava/lang/String;)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 797
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_34

    .line 798
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 800
    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 802
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 804
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 805
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 806
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 807
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 808
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 810
    :cond_34
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    if-eqz v0, :cond_3b

    .line 811
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->onDestroy()V

    .line 813
    :cond_3b
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->mShareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    if-eqz v0, :cond_42

    .line 814
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/ShareDialog;->onDestroy()V

    .line 816
    :cond_42
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 4

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_21

    .line 785
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 789
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 792
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

    .line 880
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 881
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_1e

    .line 883
    array-length p1, p3

    if-lez p1, :cond_1e

    aget p1, p3, v1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1e

    const/4 p1, 0x0

    const-string p2, "javascript:check_permission(0)"

    .line 884
    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1e
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 763
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    if-eqz v0, :cond_7

    .line 764
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 766
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->mShareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    if-eqz v0, :cond_e

    .line 767
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 770
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_2f

    .line 771
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 775
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 778
    :cond_2f
    :goto_2f
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    return-void
.end method

.method share(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 712
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    if-nez p1, :cond_16

    .line 713
    new-instance p1, Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;-><init>(Landroid/app/Activity;Lcom/codemao/nemo/bean/ShareModel;)V

    new-instance v0, Lcom/codemao/nemo/activity/LocalWebviewActivity$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$4;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->setShareListener(Lcn/codemao/android/share/interfaces/IshareResult;)Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    :cond_16
    const/4 p1, 0x0

    .line 731
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_1f

    .line 732
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 734
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 735
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    goto :goto_32

    .line 737
    :cond_2d
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 740
    :goto_32
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 741
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->setShareModel(Lcom/codemao/nemo/bean/ShareModel;)Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->show()V

    return-void
.end method

.method public synCookies(Ljava/lang/String;)V
    .registers 5

    .line 676
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 677
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->getTokenBaseKey()Ljava/lang/String;

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

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_32
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_39

    :catch_39
    return-void
.end method
