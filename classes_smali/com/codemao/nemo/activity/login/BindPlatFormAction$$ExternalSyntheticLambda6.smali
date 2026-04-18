.class public final synthetic Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda6;->f$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda6;->f$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    check-cast p1, Lcn/codemao/android/account/bean/AuthResultVO;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->$r8$lambda$Y7MNysc5bvmWHhwnzKluPySMYwE(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lcn/codemao/android/account/bean/AuthResultVO;)V

    return-void
.end method
