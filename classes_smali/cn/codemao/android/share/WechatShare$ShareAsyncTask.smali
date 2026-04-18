.class Lcn/codemao/android/share/WechatShare$ShareAsyncTask;
.super Landroid/os/AsyncTask;
.source "WechatShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/share/WechatShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfo:Lcn/codemao/android/share/interfaces/IshareInfo;

.field private msg:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

.field final synthetic this$0:Lcn/codemao/android/share/WechatShare;


# direct methods
.method public constructor <init>(Lcn/codemao/android/share/WechatShare;Lcn/codemao/android/share/interfaces/IshareInfo;)V
    .registers 3

    .line 84
    iput-object p1, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->this$0:Lcn/codemao/android/share/WechatShare;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 85
    iput-object p2, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->mInfo:Lcn/codemao/android/share/interfaces/IshareInfo;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .line 100
    iget-object v0, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->this$0:Lcn/codemao/android/share/WechatShare;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcn/codemao/android/share/WechatShare;->access$100(Lcn/codemao/android/share/WechatShare;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 79
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 105
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_16

    .line 108
    iget-object v1, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->msg:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    iget-object v2, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->this$0:Lcn/codemao/android/share/WechatShare;

    const/16 v3, 0x20

    invoke-static {v2, p1, v3}, Lcn/codemao/android/share/WechatShare;->access$200(Lcn/codemao/android/share/WechatShare;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcn/codemao/android/share/WechatShare;->access$300(Lcn/codemao/android/share/WechatShare;Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 109
    :cond_16
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 110
    iget-object v1, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->this$0:Lcn/codemao/android/share/WechatShare;

    const-string v2, "webpage"

    invoke-static {v1, v2}, Lcn/codemao/android/share/WechatShare;->access$400(Lcn/codemao/android/share/WechatShare;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->msg:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    iput-object v1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 112
    iget-object v1, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->mInfo:Lcn/codemao/android/share/interfaces/IshareInfo;

    invoke-interface {v1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareMedia()Lcn/codemao/android/share/bean/ShareMedia;

    move-result-object v1

    sget-object v2, Lcn/codemao/android/share/bean/ShareMedia;->WECHATCIRCLE:Lcn/codemao/android/share/bean/ShareMedia;

    if-ne v1, v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    iput v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 113
    iget-object v0, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->this$0:Lcn/codemao/android/share/WechatShare;

    invoke-static {v0}, Lcn/codemao/android/share/WechatShare;->access$500(Lcn/codemao/android/share/WechatShare;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 79
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .line 90
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 91
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 92
    iget-object v1, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->mInfo:Lcn/codemao/android/share/interfaces/IshareInfo;

    invoke-interface {v1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 93
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    iput-object v1, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->msg:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 94
    iget-object v0, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->mInfo:Lcn/codemao/android/share/interfaces/IshareInfo;

    invoke-interface {v0}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->msg:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    iget-object v1, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->this$0:Lcn/codemao/android/share/WechatShare;

    iget-object v2, p0, Lcn/codemao/android/share/WechatShare$ShareAsyncTask;->mInfo:Lcn/codemao/android/share/interfaces/IshareInfo;

    invoke-interface {v2}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareText()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x400

    invoke-static {v1, v2, v3}, Lcn/codemao/android/share/WechatShare;->access$000(Lcn/codemao/android/share/WechatShare;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    return-void
.end method
