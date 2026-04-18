.class public final synthetic Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/activity/login/LoginAction;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/activity/login/LoginAction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/nemo/activity/login/LoginAction;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/nemo/activity/login/LoginAction;

    check-cast p1, Lcn/codemao/android/account/bean/AccountLoginResultVO;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->$r8$lambda$K1IvZTm1hbK9OMAyjQUwg5DTnHc(Lcom/codemao/nemo/activity/login/LoginAction;Lcn/codemao/android/account/bean/AccountLoginResultVO;)V

    return-void
.end method
