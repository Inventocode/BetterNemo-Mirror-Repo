.class Lcn/codemao/android/account/net/AccountRequest$45;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/AccountRequest;->silentLogin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/account/rx/CommonSubscriber<",
        "Lcn/codemao/android/account/bean/SilentLoginResultVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$netFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;


# direct methods
.method public static synthetic $r8$lambda$2YDUzITPj7Y2z_ME3Z1-oNydzy0(Lcn/codemao/android/account/net/AccountRequest$45;Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$45;->lambda$onSuccess$0(Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    return-void
.end method

.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4

    .line 761
    iput-object p3, p0, Lcn/codemao/android/account/net/AccountRequest$45;->val$netFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 4

    .line 765
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/codemao/android/account/net/AccountRequest;->access$000(Ljava/lang/Object;Lcn/codemao/android/account/bean/TokenRenewalVO;)Ljava/lang/Object;

    .line 766
    invoke-super {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 761
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/net/AccountRequest$45;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onSuccess(Lretrofit2/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/SilentLoginResultVO;",
            ">;)V"
        }
    .end annotation

    .line 764
    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$45$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$45$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/net/AccountRequest$45;Lretrofit2/Response;)V

    iget-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$45;->val$netFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-static {v0, p1}, Lcn/codemao/android/account/net/AccountRequest;->tokenRenewal(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
