.class Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "KNWorkPlayPresentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->changePraiseStatus(JZ)V
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
.field final synthetic this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 374
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    const-string p2, "取消点赞失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 375
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->onPraiseError()V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->onPraiseError()V

    .line 381
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 366
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 369
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->setPraise(Z)V

    return-void
.end method
