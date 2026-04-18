.class Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkPlayPresentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->changePraiseStatus(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V
    .registers 2

    .line 470
    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 478
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    const-string p2, "取消点赞失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 479
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->onPraiseError()V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->onPraiseError()V

    .line 485
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 470
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 473
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->setPraise(Z)V

    return-void
.end method
