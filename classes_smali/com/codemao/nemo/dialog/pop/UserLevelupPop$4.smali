.class Lcom/codemao/nemo/dialog/pop/UserLevelupPop$4;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "UserLevelupPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$4;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 209
    iget-object p3, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$4;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    iget-object p3, p3, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->views:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$4;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$4;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$4;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    iget-object p1, p1, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->views:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
