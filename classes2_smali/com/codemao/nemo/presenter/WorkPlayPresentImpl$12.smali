.class Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$12;
.super Ljava/lang/Object;
.source "WorkPlayPresentImpl.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getScreenShootFromWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V
    .registers 2

    .line 591
    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$12;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 5

    const-string v0, "截图失败，请重试！"

    .line 595
    :try_start_2
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/codemao/nemo/bean/GetScreenShotBean;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/GetScreenShotBean;

    .line 596
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetScreenShotBean;->isStatus()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 597
    iget-object v1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$12;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/GetScreenShotBean;->getScreenshot()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->createScreenShot(Ljava/lang/String;)V

    goto :goto_53

    .line 600
    :cond_26
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$12;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->hideLoadingDialog()V

    .line 601
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$12;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_3d

    goto :goto_53

    .line 604
    :catch_3d
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$12;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->hideLoadingDialog()V

    .line 605
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$12;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_53
    return-void
.end method
