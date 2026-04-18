.class public final synthetic Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda9;->f$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda9;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda9;->f$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda9;->f$1:Z

    check-cast p1, Lcn/codemao/android/account/bean/LoginUserInfoVO;

    invoke-static {v0, v1, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->$r8$lambda$t6XhEHWg7PP8V3td_VLwykRtrhw(Lcom/codemao/nemo/activity/login/BindPlatFormAction;ZLcn/codemao/android/account/bean/LoginUserInfoVO;)V

    return-void
.end method
