.class Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;
.super Ljava/lang/Object;
.source "ShanyanWrap.java"

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/listener/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;
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

    .line 71
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitStatus(ILjava/lang/String;)V
    .registers 8

    const-string v0, "SHANYAN"

    const-string/jumbo v1, "，result："

    const/16 v2, 0x3fe

    if-ne p1, v2, :cond_42

    .line 76
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->setInitState(Z)V

    .line 77
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$000(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 78
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$000(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-interface {v2, v0, v3, p1, p2}, Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;->initResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 79
    :cond_22
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "闪验初始化成功，闪验返回code："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    goto :goto_7d

    .line 81
    :cond_42
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->setInitState(Z)V

    .line 82
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$000(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

    move-result-object v2

    const/16 v3, 0x2711

    if-eqz v2, :cond_5b

    .line 83
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$1;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$000(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

    move-result-object v2

    invoke-interface {v2, v0, v3, p1, p2}, Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;->initResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 84
    :cond_5b
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "闪验初始化失败，闪验返回code："

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 87
    invoke-static {v3, p1, p2}, Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils;->uploadErr(IILjava/lang/String;)V

    :goto_7d
    return-void
.end method
