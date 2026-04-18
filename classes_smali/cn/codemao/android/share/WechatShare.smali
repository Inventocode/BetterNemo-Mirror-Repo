.class public Lcn/codemao/android/share/WechatShare;
.super Ljava/lang/Object;
.source "WechatShare.java"

# interfaces
.implements Lcn/codemao/android/share/interfaces/Ishare;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/share/WechatShare$ShareAsyncTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mShareAsyncTask:Lcn/codemao/android/share/WechatShare$ShareAsyncTask;

.field private mWeixinAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcn/codemao/android/share/bean/ShareConfig;->wechatId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 44
    iput-object p1, p0, Lcn/codemao/android/share/WechatShare;->mActivity:Landroid/app/Activity;

    .line 45
    sget-object v0, Lcn/codemao/android/share/bean/ShareConfig;->wechatId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/share/WechatShare;->mWeixinAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-void

    .line 42
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "wechatId is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcn/codemao/android/share/WechatShare;Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/share/WechatShare;->doLimitString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/share/WechatShare;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcn/codemao/android/share/WechatShare;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/share/WechatShare;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/share/WechatShare;->compressImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/share/WechatShare;Landroid/graphics/Bitmap;Z)[B
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/share/WechatShare;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcn/codemao/android/share/WechatShare;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcn/codemao/android/share/WechatShare;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcn/codemao/android/share/WechatShare;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .registers 1

    .line 33
    iget-object p0, p0, Lcn/codemao/android/share/WechatShare;->mWeixinAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object p0
.end method

.method private bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .registers 6

    .line 158
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p2, :cond_11

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 165
    :try_start_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p2

    .line 167
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1d
    return-object p1
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_b

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1e
    return-object p1
.end method

.method private compressImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 142
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 145
    :goto_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit16 v3, p2, 0x400

    if-le v1, v3, :cond_20

    .line 146
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v2, v2, -0xa

    .line 148
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_c

    .line 150
    :cond_20
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 152
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    .line 153
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private doLimitString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 119
    :goto_4
    array-length v1, v0

    if-lt v1, p2, :cond_17

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_4

    .line 123
    :cond_17
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .line 129
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0x78

    .line 130
    invoke-static {p1, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1a
    if-nez p1, :cond_28

    .line 136
    iget-object p1, p0, Lcn/codemao/android/share/WechatShare;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/codemao/android/share/bean/ShareConfig;->defDrawableId:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_28
    return-object p1
.end method

.method private share(Lcn/codemao/android/share/interfaces/IshareInfo;)V
    .registers 5

    .line 66
    iget-object v0, p0, Lcn/codemao/android/share/WechatShare;->mShareAsyncTask:Lcn/codemao/android/share/WechatShare$ShareAsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcn/codemao/android/share/WechatShare;->mShareAsyncTask:Lcn/codemao/android/share/WechatShare$ShareAsyncTask;

    .line 70
    :cond_b
    new-instance v0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;-><init>(Lcn/codemao/android/share/WechatShare;Lcn/codemao/android/share/interfaces/IshareInfo;)V

    iput-object v0, p0, Lcn/codemao/android/share/WechatShare;->mShareAsyncTask:Lcn/codemao/android/share/WechatShare$ShareAsyncTask;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 71
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareImgURL()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 178
    iget-object v0, p0, Lcn/codemao/android/share/WechatShare;->mShareAsyncTask:Lcn/codemao/android/share/WechatShare$ShareAsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    .line 179
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 180
    iput-object v1, p0, Lcn/codemao/android/share/WechatShare;->mShareAsyncTask:Lcn/codemao/android/share/WechatShare$ShareAsyncTask;

    .line 182
    :cond_b
    iput-object v1, p0, Lcn/codemao/android/share/WechatShare;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onShare(Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 5

    .line 50
    iget-object v0, p0, Lcn/codemao/android/share/WechatShare;->mWeixinAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p2, :cond_10

    const-string/jumbo p1, "您的设备尚未安装微信"

    .line 52
    invoke-interface {p2, p1}, Lcn/codemao/android/share/interfaces/IshareResult;->onFailure(Ljava/lang/String;)V

    :cond_10
    return-void

    .line 56
    :cond_11
    iget-object v0, p0, Lcn/codemao/android/share/WechatShare;->mWeixinAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x21020001

    if-ge v0, v1, :cond_25

    if-eqz p2, :cond_24

    const-string/jumbo p1, "您的微信版本太低，暂不支持分享"

    .line 58
    invoke-interface {p2, p1}, Lcn/codemao/android/share/interfaces/IshareResult;->onFailure(Ljava/lang/String;)V

    :cond_24
    return-void

    .line 62
    :cond_25
    invoke-direct {p0, p1}, Lcn/codemao/android/share/WechatShare;->share(Lcn/codemao/android/share/interfaces/IshareInfo;)V

    return-void
.end method
