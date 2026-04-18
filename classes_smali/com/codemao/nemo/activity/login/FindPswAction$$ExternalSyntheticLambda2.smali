.class public final synthetic Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/activity/login/FindPswAction;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/activity/login/FindPswAction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    check-cast p1, Lcn/codemao/android/account/bean/TicketResult;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/login/FindPswAction;->$r8$lambda$uFgUuryx961ntvOiEKUzorEV2PU(Lcom/codemao/nemo/activity/login/FindPswAction;Lcn/codemao/android/account/bean/TicketResult;)V

    return-void
.end method
