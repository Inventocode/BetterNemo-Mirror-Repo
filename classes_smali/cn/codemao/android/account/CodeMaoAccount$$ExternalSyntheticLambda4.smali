.class public final synthetic Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/account/bean/ResetPasswordVO;

.field public final synthetic f$1:Lcn/codemao/android/account/listener/NetSuccessResultListener;

.field public final synthetic f$2:Lcn/codemao/android/account/listener/NetFailResultListener;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/account/bean/ResetPasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda4;->f$0:Lcn/codemao/android/account/bean/ResetPasswordVO;

    iput-object p2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda4;->f$1:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iput-object p3, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda4;->f$2:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda4;->f$0:Lcn/codemao/android/account/bean/ResetPasswordVO;

    iget-object v1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda4;->f$1:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iget-object v2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda4;->f$2:Lcn/codemao/android/account/listener/NetFailResultListener;

    check-cast p1, Lcn/codemao/android/account/bean/TicketResult;

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/account/CodeMaoAccount;->$r8$lambda$Usn9-UT2p-sXbKXY8iWHHtCwRs8(Lcn/codemao/android/account/bean/ResetPasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/TicketResult;)V

    return-void
.end method
