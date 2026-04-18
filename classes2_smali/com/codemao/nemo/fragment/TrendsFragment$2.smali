.class Lcom/codemao/nemo/fragment/TrendsFragment$2;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "TrendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/TrendsFragment;->getRecInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/TrendsRecs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/TrendsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/TrendsFragment;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 120
    iget-object p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    const-string p2, "40103009"

    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 122
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 123
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showClose()V

    goto :goto_34

    .line 125
    :cond_1a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$000(Lcom/codemao/nemo/fragment/TrendsFragment;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 127
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_34

    .line 129
    :cond_2f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$300(Lcom/codemao/nemo/fragment/TrendsFragment;)V

    :goto_34
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 137
    invoke-static {v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$000(Lcom/codemao/nemo/fragment/TrendsFragment;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 138
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 139
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->showError()V

    goto :goto_1b

    .line 141
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$300(Lcom/codemao/nemo/fragment/TrendsFragment;)V

    :goto_1b
    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/TrendsRecs;)V
    .registers 4

    if-eqz p1, :cond_21

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecs;->isFind_new_friends()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$002(Lcom/codemao/nemo/fragment/TrendsFragment;Z)Z

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$100(Lcom/codemao/nemo/fragment/TrendsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$100(Lcom/codemao/nemo/fragment/TrendsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecs;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_21
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$000(Lcom/codemao/nemo/fragment/TrendsFragment;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 110
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 111
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 112
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$200(Lcom/codemao/nemo/fragment/TrendsFragment;)V

    goto :goto_3c

    .line 114
    :cond_37
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$2;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$300(Lcom/codemao/nemo/fragment/TrendsFragment;)V

    :goto_3c
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 101
    check-cast p1, Lcom/codemao/nemo/bean/TrendsRecs;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/TrendsFragment$2;->onSuc(Lcom/codemao/nemo/bean/TrendsRecs;)V

    return-void
.end method
