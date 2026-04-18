.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initPublishedAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->initPublishedAdapter(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        "Lcom/codemao/nemo/bean/KnWorkListItem;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initPublishedAdapter$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 269
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/KnWorkListItem;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initPublishedAdapter$1;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnWorkListItem;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnWorkListItem;I)V
    .registers 12

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a019c

    if-eq p3, v0, :cond_1f

    const v0, 0x7f0a0717

    if-eq p3, v0, :cond_15

    goto :goto_43

    .line 272
    :cond_15
    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initPublishedAdapter$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {p3, p2, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$shareWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;I)V

    goto :goto_43

    .line 277
    :cond_1f
    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initPublishedAdapter$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 278
    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/holder/ItemHolder;->getImage(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 279
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_3a

    :cond_38
    const-wide/16 p1, -0x1

    :goto_3a
    move-wide v4, p1

    const-string/jumbo v6, "管理页"

    const-string v7, ""

    .line 276
    invoke-static/range {v1 .. v7}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetailWithAnim(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :goto_43
    return-void
.end method
