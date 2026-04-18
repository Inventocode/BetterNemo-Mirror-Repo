.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->initDraftsRecycler()V
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
        "Lcom/codemao/nemo/bean/NemoWorkListItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 302
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/NemoWorkListItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/NemoWorkListItem;)V
    .registers 13

    const-string v0, "itemHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knWorkListItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    const v0, 0x7f0a05f0

    .line 304
    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/holder/ItemHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    .line 305
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-static {v1, v0, p2, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$initChildRecycler(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    .line 308
    :cond_24
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getSearchMode(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Z

    move-result v0

    const-string v1, ""

    const v2, 0x7f0a09b7

    const/4 v3, 0x0

    if-eqz v0, :cond_5f

    .line 310
    invoke-virtual {p1, v2}, Lcom/ljwx/recyclerview/holder/ItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    .line 311
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    :cond_41
    if-nez v3, :cond_45

    move-object v5, v1

    goto :goto_46

    :cond_45
    move-object v5, v3

    .line 312
    :goto_46
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getSearchKey$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    .line 315
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x43160000  # 150.0f

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v9

    const-string v7, "#6F60DD"

    .line 309
    invoke-static/range {v4 .. v9}, Lcom/codemao/nemo/util/StringUtil;->setHighLightNew(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_93

    .line 318
    :cond_5f
    invoke-virtual {p1, v2}, Lcom/ljwx/recyclerview/holder/ItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ljwx/baseview/text/DrawableTextView;

    if-eqz p1, :cond_93

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$initDraftsRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    .line 319
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getEnableRename()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_7c

    :cond_7b
    move-object v0, v3

    :goto_7c
    invoke-virtual {p1, v0}, Lcom/ljwx/baseview/text/DrawableTextView;->setDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p2

    if-eqz p2, :cond_87

    iget-object v3, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    :cond_87
    if-nez v3, :cond_8a

    goto :goto_90

    :cond_8a
    const-string p2, "knWorkListItem.old?.worksName ?: \"\""

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v3

    :goto_90
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_93
    :goto_93
    return-void
.end method
