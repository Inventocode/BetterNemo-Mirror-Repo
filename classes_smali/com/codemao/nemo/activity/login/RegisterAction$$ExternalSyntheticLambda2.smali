.class public final synthetic Lcom/codemao/nemo/activity/login/RegisterAction$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/activity/login/RegisterAction;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/activity/login/RegisterAction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/RegisterAction$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/nemo/activity/login/RegisterAction;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/RegisterAction$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/nemo/activity/login/RegisterAction;

    check-cast p1, Lcn/codemao/android/account/bean/SilentLoginResultVO;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/login/RegisterAction;->$r8$lambda$rYlWdVeojK4-FKi0gv0r5c2hJ1U(Lcom/codemao/nemo/activity/login/RegisterAction;Lcn/codemao/android/account/bean/SilentLoginResultVO;)V

    return-void
.end method
