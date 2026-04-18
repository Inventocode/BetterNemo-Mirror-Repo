.class Lcom/codemao/nemo/activity/ThemeDetailActivity$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ThemeDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ThemeDetailActivity;->getSubjectIdList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ThemeDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ThemeDetailActivity;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/ThemeDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onNetError()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 112
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/ThemeDetailActivity$1;->onSuc(Ljava/util/List;)V

    return-void
.end method

.method public onSuc(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_14

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/ThemeDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->access$000(Lcom/codemao/nemo/activity/ThemeDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/ThemeDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->access$000(Lcom/codemao/nemo/activity/ThemeDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_14
    return-void
.end method
