.class Lcom/codemao/creativecenter/pop/ThemeListPop$5;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "ThemeListPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeListPop;->getThemList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Lcom/codemao/creativestore/bean/ThemeMaterialList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeListPop;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 217
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$1000(Lcom/codemao/creativecenter/pop/ThemeListPop;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 222
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$1000(Lcom/codemao/creativecenter/pop/ThemeListPop;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/creativestore/bean/ThemeMaterialList;)V
    .registers 3

    if-eqz p1, :cond_44

    .line 202
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialList;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_44

    .line 205
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$400(Lcom/codemao/creativecenter/pop/ThemeListPop;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$400(Lcom/codemao/creativecenter/pop/ThemeListPop;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialList;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$700(Lcom/codemao/creativecenter/pop/ThemeListPop;)V

    .line 208
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$800(Lcom/codemao/creativecenter/pop/ThemeListPop;)Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 209
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$900(Lcom/codemao/creativecenter/pop/ThemeListPop;)Lcom/ethanhua/skeleton/SkeletonScreen;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 210
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$900(Lcom/codemao/creativecenter/pop/ThemeListPop;)Lcom/ethanhua/skeleton/SkeletonScreen;

    move-result-object p1

    invoke-interface {p1}, Lcom/ethanhua/skeleton/SkeletonScreen;->hide()V

    .line 212
    :cond_3e
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$302(Lcom/codemao/creativecenter/pop/ThemeListPop;Z)Z

    :cond_44
    :goto_44
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 198
    check-cast p1, Lcom/codemao/creativestore/bean/ThemeMaterialList;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/pop/ThemeListPop$5;->onSuccess(Lcom/codemao/creativestore/bean/ThemeMaterialList;)V

    return-void
.end method
