.class public final synthetic Lcn/codemao/android/account/net/AccountRequest$59$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/account/net/AccountRequest$59;

.field public final synthetic f$1:Lcn/codemao/android/account/bean/DuerOSLoginResultVO;

.field public final synthetic f$2:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/account/net/AccountRequest$59;Lcn/codemao/android/account/bean/DuerOSLoginResultVO;Lretrofit2/Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$59$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/net/AccountRequest$59;

    iput-object p2, p0, Lcn/codemao/android/account/net/AccountRequest$59$$ExternalSyntheticLambda0;->f$1:Lcn/codemao/android/account/bean/DuerOSLoginResultVO;

    iput-object p3, p0, Lcn/codemao/android/account/net/AccountRequest$59$$ExternalSyntheticLambda0;->f$2:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcn/codemao/android/account/net/AccountRequest$59$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/net/AccountRequest$59;

    iget-object v1, p0, Lcn/codemao/android/account/net/AccountRequest$59$$ExternalSyntheticLambda0;->f$1:Lcn/codemao/android/account/bean/DuerOSLoginResultVO;

    iget-object v2, p0, Lcn/codemao/android/account/net/AccountRequest$59$$ExternalSyntheticLambda0;->f$2:Lretrofit2/Response;

    check-cast p1, Lcn/codemao/android/account/bean/TokenRenewalVO;

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/account/net/AccountRequest$59;->$r8$lambda$D89o9qGZpN2YyKj1FU6jD4Lj4PE(Lcn/codemao/android/account/net/AccountRequest$59;Lcn/codemao/android/account/bean/DuerOSLoginResultVO;Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    return-void
.end method
