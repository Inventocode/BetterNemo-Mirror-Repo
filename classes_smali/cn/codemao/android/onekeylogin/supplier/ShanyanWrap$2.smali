.class Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$2;
.super Ljava/lang/Object;
.source "ShanyanWrap.java"

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->getPhoneInfo(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

.field final synthetic val$quickPreLoginListener:Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;


# direct methods
.method constructor <init>(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;)V
    .registers 3

    .line 119
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$2;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    iput-object p2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$2;->val$quickPreLoginListener:Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneInfoStatus(ILjava/lang/String;)V
    .registers 8

    const-string v0, "SHANYAN"

    const-string/jumbo v1, "，result："

    const/16 v2, 0x3fe

    if-ne p1, v2, :cond_38

    .line 124
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$2;->val$quickPreLoginListener:Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;

    if-eqz v2, :cond_12

    const/16 v3, 0x2af8

    .line 125
    invoke-interface {v2, v0, v3, p1, p2}, Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;->preLoginResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 126
    :cond_12
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$2;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->setPreLoginState(Z)V

    .line 127
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "闪验预取号成功，code："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    goto :goto_69

    .line 129
    :cond_38
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$2;->val$quickPreLoginListener:Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;

    const/16 v3, 0x2af9

    if-eqz v2, :cond_41

    .line 130
    invoke-interface {v2, v0, v3, p1, p2}, Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;->preLoginResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 131
    :cond_41
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$2;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->setPreLoginState(Z)V

    .line 132
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "闪验预取号失败，code："

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 135
    invoke-static {v3, p1, p2}, Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils;->uploadErr(IILjava/lang/String;)V

    :goto_69
    return-void
.end method
