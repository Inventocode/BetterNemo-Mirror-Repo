.class Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$5;
.super Ljava/lang/Object;
.source "FullScreenWechatPop.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


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

    .line 104
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$100(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$000(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->mIvQrCode:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$200(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 111
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$200(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method
