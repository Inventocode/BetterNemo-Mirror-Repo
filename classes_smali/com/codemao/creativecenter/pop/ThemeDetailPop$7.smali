.class Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "ThemeDetailPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeDetailPop;->getThemeDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Lcom/codemao/creativestore/bean/ThemeMaterialInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 307
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$1000(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 313
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$1000(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/creativestore/bean/ThemeMaterialInfo;)V
    .registers 4

    if-eqz p1, :cond_41

    .line 290
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialInfo;->getMaterial_package()Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_41

    .line 293
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialInfo;->getMaterial_package()Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$202(Lcom/codemao/creativecenter/pop/ThemeDetailPop;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    .line 294
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$700(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    .line 295
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$800(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    .line 296
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialInfo;->getMaterial_info_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 298
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$100(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$100(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialInfo;->getMaterial_info_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$900(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_41
    :goto_41
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 286
    check-cast p1, Lcom/codemao/creativestore/bean/ThemeMaterialInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;->onSuccess(Lcom/codemao/creativestore/bean/ThemeMaterialInfo;)V

    return-void
.end method
