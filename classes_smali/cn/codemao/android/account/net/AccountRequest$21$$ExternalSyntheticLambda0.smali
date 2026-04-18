.class public final synthetic Lcn/codemao/android/account/net/AccountRequest$21$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/account/net/AccountRequest$21;

.field public final synthetic f$1:Lcn/codemao/android/account/bean/ReadboyLoginResultVO;

.field public final synthetic f$2:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/account/net/AccountRequest$21;Lcn/codemao/android/account/bean/ReadboyLoginResultVO;Lretrofit2/Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$21$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/net/AccountRequest$21;

    iput-object p2, p0, Lcn/codemao/android/account/net/AccountRequest$21$$ExternalSyntheticLambda0;->f$1:Lcn/codemao/android/account/bean/ReadboyLoginResultVO;

    iput-object p3, p0, Lcn/codemao/android/account/net/AccountRequest$21$$ExternalSyntheticLambda0;->f$2:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcn/codemao/android/account/net/AccountRequest$21$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/net/AccountRequest$21;

    iget-object v1, p0, Lcn/codemao/android/account/net/AccountRequest$21$$ExternalSyntheticLambda0;->f$1:Lcn/codemao/android/account/bean/ReadboyLoginResultVO;

    iget-object v2, p0, Lcn/codemao/android/account/net/AccountRequest$21$$ExternalSyntheticLambda0;->f$2:Lretrofit2/Response;

    check-cast p1, Lcn/codemao/android/account/bean/TokenRenewalVO;

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/account/net/AccountRequest$21;->$r8$lambda$NCZIc8E67nE2NyNsKyFaNITF-Ps(Lcn/codemao/android/account/net/AccountRequest$21;Lcn/codemao/android/account/bean/ReadboyLoginResultVO;Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    return-void
.end method
