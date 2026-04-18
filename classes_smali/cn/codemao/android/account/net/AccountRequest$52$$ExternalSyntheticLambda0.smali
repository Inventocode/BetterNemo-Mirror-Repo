.class public final synthetic Lcn/codemao/android/account/net/AccountRequest$52$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/account/net/AccountRequest$52;

.field public final synthetic f$1:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/account/net/AccountRequest$52;Lretrofit2/Response;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$52$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/net/AccountRequest$52;

    iput-object p2, p0, Lcn/codemao/android/account/net/AccountRequest$52$$ExternalSyntheticLambda0;->f$1:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcn/codemao/android/account/net/AccountRequest$52$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/net/AccountRequest$52;

    iget-object v1, p0, Lcn/codemao/android/account/net/AccountRequest$52$$ExternalSyntheticLambda0;->f$1:Lretrofit2/Response;

    check-cast p1, Lcn/codemao/android/account/bean/TokenRenewalVO;

    invoke-static {v0, v1, p1}, Lcn/codemao/android/account/net/AccountRequest$52;->$r8$lambda$y2MRlmcY8v26uf6C1JXKc8HZWTo(Lcn/codemao/android/account/net/AccountRequest$52;Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    return-void
.end method
