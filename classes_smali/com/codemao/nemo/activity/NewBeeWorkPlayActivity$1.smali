.class Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$1;
.super Ljava/lang/Object;
.source "NewBeeWorkPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 95
    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-virtual {v0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击看看怎么做"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$000(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/giu/xzz/mvp/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->access$100(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    return-void
.end method
