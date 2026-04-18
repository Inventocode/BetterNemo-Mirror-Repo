.class Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$4;
.super Ljava/lang/Object;
.source "FullScreenWechatPop.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->loginByCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
        "Lcn/codemao/android/account/bean/WechatLoginResultVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$4;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcn/codemao/android/account/bean/WechatLoginResultVO;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$4;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$200(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$4;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$200(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;->onSuccess(Lcn/codemao/android/account/bean/WechatLoginResultVO;)V

    :cond_11
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 95
    check-cast p1, Lcn/codemao/android/account/bean/WechatLoginResultVO;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$4;->onSuccess(Lcn/codemao/android/account/bean/WechatLoginResultVO;)V

    return-void
.end method
