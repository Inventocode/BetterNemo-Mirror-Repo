.class public final Lcom/codemao/nemo/qrscan/utils/WXShareHelper;
.super Ljava/lang/Object;
.source "WXShareHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/qrscan/utils/WXShareHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;

    invoke-direct {v0}, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;-><init>()V

    sput-object v0, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/WXShareHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic shareImg$default(Lcom/codemao/nemo/qrscan/utils/WXShareHelper;Lcom/tencent/mm/opensdk/openapi/IWXAPI;ZLandroid/graphics/Bitmap;Lcn/codemao/android/share/interfaces/IshareResult;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    .line 30
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->shareImg(Lcom/tencent/mm/opensdk/openapi/IWXAPI;ZLandroid/graphics/Bitmap;Lcn/codemao/android/share/interfaces/IshareResult;)V

    return-void
.end method


# virtual methods
.method public final isInstalled(Lcom/tencent/mm/opensdk/openapi/IWXAPI;)Z
    .registers 3

    const-string v0, "mWXApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    return p1
.end method

.method public final shareImg(Lcom/tencent/mm/opensdk/openapi/IWXAPI;ZLandroid/graphics/Bitmap;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 7

    const-string v0, "mWXApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finalBitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcn/codemao/android/account/util/WechatManager;->setIshareResult(Lcn/codemao/android/share/interfaces/IshareResult;)V

    .line 35
    new-instance p4, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {p4, p3}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 38
    new-instance p3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {p3}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 39
    iput-object p4, p3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 40
    new-instance p4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p4}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    .line 43
    iput-object p3, p4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 46
    iput p2, p4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 51
    invoke-interface {p1, p4}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method
