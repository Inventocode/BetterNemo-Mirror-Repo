.class Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$8;
.super Ljava/lang/Object;
.source "ShanyanWrap.java"

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->getDefaultUiConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;
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

    .line 558
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$8;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    .line 561
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object p1

    const-string/jumbo p2, "闪验授权失败，用户点击了其他登录方式"

    invoke-virtual {p1, p2}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 562
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$8;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 563
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$8;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object p1

    const/16 p2, 0x36b1

    const/4 v0, -0x1

    const-string v1, "SHANYAN"

    const-string v2, ""

    invoke-interface {p1, v1, p2, v0, v2}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->loginAuthFail(Ljava/lang/String;IILjava/lang/String;)V

    :cond_22
    return-void
.end method
