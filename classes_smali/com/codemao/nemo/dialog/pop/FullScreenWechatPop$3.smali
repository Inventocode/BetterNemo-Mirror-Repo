.class Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;
.super Ljava/lang/Object;
.source "FullScreenWechatPop.java"

# interfaces
.implements Lcn/codemao/android/account/listener/WechatCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->loginByCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;)V
    .registers 3

    .line 89
    sget-object v0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    if-eq v0, p1, :cond_1f

    .line 90
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$100(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$000(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    iget-object p1, p1, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->mIvQrCode:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    return-void
.end method

.method public onAuthGotQrcode([B)V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->mIvQrCode:Landroid/widget/ImageView;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$000(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$100(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
