.class Lcn/codemao/android/onekeylogin/QuickLoginManager$1;
.super Ljava/lang/Object;
.source "QuickLoginManager.java"

# interfaces
.implements Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/onekeylogin/QuickLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;


# direct methods
.method public static synthetic $r8$lambda$Ns3B41RsUvSkT3IzKZBYHzKOBEQ(Lcn/codemao/android/onekeylogin/QuickLoginManager$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->lambda$loginAuthSuccess$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pRxx42WG0U5HBlWYizen4BdxDJQ(Lcn/codemao/android/onekeylogin/QuickLoginManager$1;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/SilentLoginResultVO;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->lambda$loginAuthSuccess$0(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/SilentLoginResultVO;)V

    return-void
.end method

.method constructor <init>(Lcn/codemao/android/onekeylogin/QuickLoginManager;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$loginAuthSuccess$0(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/SilentLoginResultVO;)V
    .registers 4

    .line 78
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$000(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;

    .line 82
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$000(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;

    const-string p1, "SHANYAN"

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 88
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$400(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 89
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$400(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->closeAuthPage()V

    :cond_23
    return-void
.end method

.method private synthetic lambda$loginAuthSuccess$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 93
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$000(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;

    .line 98
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "调用 tiger/v3/app/accounts/one-click/token/check 返回错误，请求返回code："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "，msg："

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$000(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;

    const-string p1, "SHANYAN"

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 107
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$400(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 108
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$400(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->closeAuthPage()V

    :cond_45
    return-void
.end method


# virtual methods
.method public loginAuthFail(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .line 117
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$000(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;

    return-void
.end method

.method public loginAuthSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 66
    iget-object p4, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p4}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$000(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;

    .line 71
    new-instance p4, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;

    invoke-direct {p4}, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;-><init>()V

    .line 72
    invoke-virtual {p4, p2}, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->setAppid(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p4, p3}, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->setToken(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->setPid(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p2}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$100(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;->setAgreementIds(Ljava/util/List;)V

    .line 76
    new-instance p2, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/onekeylogin/QuickLoginManager$1;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p5, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p3, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/onekeylogin/QuickLoginManager$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, p2, p5}, Lcn/codemao/android/account/net/AccountRequest;->checkOnekeyLoginToken(Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onAuthPageOpen(ZZ)V
    .registers 3

    .line 125
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->this$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-static {p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->access$000(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;

    return-void
.end method
