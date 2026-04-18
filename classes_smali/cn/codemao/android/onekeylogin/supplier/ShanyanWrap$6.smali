.class Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;
.super Ljava/lang/Object;
.source "ShanyanWrap.java"

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->openLoginAuth(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;


# direct methods
.method constructor <init>(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)V
    .registers 2

    .line 371
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpenLoginAuthStatus(ILjava/lang/String;)V
    .registers 8

    const-string/jumbo v0, "，result："

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_3a

    .line 376
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "闪验授权页面拉取成功，code："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 378
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, v1, p2}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->onAuthPageOpen(ZZ)V

    goto :goto_83

    .line 382
    :cond_3a
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "闪验授权页面拉取失败，code："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v0}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v0

    const/16 v2, 0x2ee1

    if-eqz v0, :cond_77

    .line 384
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v0}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v0

    const-string v3, "SHANYAN"

    invoke-interface {v0, v3, v2, p1, p2}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->loginAuthFail(Ljava/lang/String;IILjava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v0}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->onAuthPageOpen(ZZ)V

    :cond_77
    const/16 v0, 0x3f3

    if-eq p1, v0, :cond_7e

    .line 391
    invoke-static {v2, p1, p2}, Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils;->uploadErr(IILjava/lang/String;)V

    .line 395
    :cond_7e
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$6;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-virtual {p1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->closeAuthPage()V

    :cond_83
    :goto_83
    return-void
.end method
