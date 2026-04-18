.class public Lcom/codemao/nemo/util/WechatShareUtil;
.super Ljava/lang/Object;
.source "WechatShareUtil.java"


# direct methods
.method public static WXMomentShareImage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/openapi/IWXAPI;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 6

    .line 111
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/codemao/android/account/util/WechatManager;->setIshareResult(Lcn/codemao/android/share/interfaces/IshareResult;)V

    .line 112
    invoke-interface {p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p3

    if-nez p3, :cond_e

    return-void

    .line 116
    :cond_e
    new-instance p3, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {p3}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>()V

    .line 118
    invoke-interface {p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x27000d00

    if-lt v0, v1, :cond_2a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2a

    .line 119
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/WechatShareUtil;->getFileUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->setImagePath(Ljava/lang/String;)V

    goto :goto_2d

    .line 121
    :cond_2a
    invoke-virtual {p3, p1}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->setImagePath(Ljava/lang/String;)V

    .line 125
    :goto_2d
    new-instance p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 126
    iput-object p3, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 128
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    .line 131
    iput-object p0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    const/4 p0, 0x1

    .line 134
    iput p0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 135
    invoke-interface {p2, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method

.method public static WXShareImage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/openapi/IWXAPI;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 6

    .line 35
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/codemao/android/account/util/WechatManager;->setIshareResult(Lcn/codemao/android/share/interfaces/IshareResult;)V

    .line 36
    invoke-interface {p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p3

    if-nez p3, :cond_e

    return-void

    .line 40
    :cond_e
    new-instance p3, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {p3}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>()V

    .line 42
    invoke-interface {p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x27000d00

    if-lt v0, v1, :cond_2a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2a

    .line 43
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/WechatShareUtil;->getFileUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->setImagePath(Ljava/lang/String;)V

    goto :goto_2d

    .line 45
    :cond_2a
    invoke-virtual {p3, p1}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->setImagePath(Ljava/lang/String;)V

    .line 49
    :goto_2d
    new-instance p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 50
    iput-object p3, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 52
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    .line 55
    iput-object p0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    const/4 p0, 0x0

    .line 58
    iput p0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 59
    invoke-interface {p2, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method

.method private static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .registers 5

    .line 96
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p1, :cond_11

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    :cond_11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 103
    :try_start_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1d
    return-object p0
.end method

.method private static buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_b

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1e

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1e
    return-object p0
.end method

.method public static getFileUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mis.fileprovider"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "com.tencent.mm"

    .line 146
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 147
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wxShareV2(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/openapi/IWXAPI;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 6

    .line 63
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcn/codemao/android/account/util/WechatManager;->setIshareResult(Lcn/codemao/android/share/interfaces/IshareResult;)V

    .line 64
    invoke-interface {p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p0

    if-nez p0, :cond_e

    return-void

    .line 67
    :cond_e
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "WeChatShareUtil"

    if-nez p0, :cond_1c

    const-string p0, "Bitmap is null"

    .line 69
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_1c
    new-instance p3, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {p3, p0}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 75
    iput-object p3, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    const/16 p3, 0x96

    const/4 v1, 0x1

    .line 78
    invoke-static {p0, p3, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 79
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    invoke-static {p3, v1}, Lcom/codemao/nemo/util/WechatShareUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 82
    new-instance p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string p3, "img"

    .line 83
    invoke-static {p3}, Lcom/codemao/nemo/util/WechatShareUtil;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    const/4 p3, 0x0

    .line 85
    iput p3, p0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 87
    invoke-interface {p2, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result p0

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Share image result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
