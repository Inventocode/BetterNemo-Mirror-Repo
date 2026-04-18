.class Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;
.super Ljava/lang/Object;
.source "NewBeeWorkPlayActivity.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->showGoCreatePop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDissmiss()V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->resumeWebview()V

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$202(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Z)Z

    .line 202
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$300(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$300(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 205
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$400(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 206
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$400(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 208
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-virtual {v1}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击关闭弹窗"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$500(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/giu/xzz/mvp/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onGoCreate()V
    .registers 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-virtual {v1}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击我要试试"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$600(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/giu/xzz/mvp/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 214
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$700(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    return-void
.end method
