.class Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;
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

    .line 491
    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 499
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    const-string p2, "点赞失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 500
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->onPraiseError()V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    .line 506
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->onPraiseError()V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 491
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 494
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->setPraise(Z)V

    return-void
.end method
