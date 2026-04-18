.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->initAllRecycler(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        "Lcom/codemao/nemo/bean/KnWorkListItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 196
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 9

    const-string v0, "itemHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knWorkListItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7f0a05f0

    .line 198
    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/holder/ItemHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    .line 199
    invoke-static {v1, v0, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$initChildRecycler(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    .line 202
    :cond_20
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getSearchMode(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Z

    move-result v0

    const v1, 0x7f0a09b7

    if-eqz v0, :cond_4f

    .line 204
    invoke-virtual {p1, v1}, Lcom/ljwx/recyclerview/holder/ItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 205
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getSearchKey$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 209
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x43160000  # 150.0f

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    const-string v3, "#6F60DD"

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/util/StringUtil;->setHighLightNew(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_76

    .line 212
    :cond_4f
    invoke-virtual {p1, v1}, Lcom/ljwx/recyclerview/holder/ItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ljwx/baseview/text/DrawableTextView;

    if-eqz p1, :cond_76

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    .line 213
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getEnableRename()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6c

    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    invoke-virtual {p1, v0}, Lcom/ljwx/baseview/text/DrawableTextView;->setDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_76
    :goto_76
    return-void
.end method
