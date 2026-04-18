.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->initChildRecycler(Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/KnWorkListItem;)V
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
        "Lcom/codemao/nemo/bean/MineWorkMenuItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/nemo/bean/KnWorkListItem;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 295
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/MineWorkMenuItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/MineWorkMenuItem;)V
    .registers 5

    const-string v0, "itemHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mineWorkMenuItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MineWorkMenuItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_74

    goto :goto_68

    :sswitch_16
    const-string/jumbo p1, "禁止删除"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_68

    :sswitch_1d
    const-string/jumbo p1, "取消发布"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_68

    .line 297
    :cond_27
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$cancelPublish(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    goto :goto_68

    :sswitch_2f
    const-string/jumbo v1, "导出"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_68

    .line 298
    :cond_39
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$exportWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;I)V

    goto :goto_68

    :sswitch_45
    const-string/jumbo p1, "复制"

    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_68

    .line 299
    :cond_4f
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$copyWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    goto :goto_68

    :sswitch_57
    const-string/jumbo p1, "删除"

    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_68

    .line 300
    :cond_61
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initChildRecycler$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$deleteWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    .line 303
    :goto_68
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MineWorkMenuItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "流程-item"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_74
    .sparse-switch
        0xa8844 -> :sswitch_57
        0xb1ac9 -> :sswitch_45
        0xb757e -> :sswitch_2f
        0x27c1c444 -> :sswitch_1d
        0x38d92e05 -> :sswitch_16
    .end sparse-switch
.end method
