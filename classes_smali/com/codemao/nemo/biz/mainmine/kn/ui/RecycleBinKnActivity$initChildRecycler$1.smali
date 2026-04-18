.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecycleBinKnActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->initChildRecycler(Landroidx/recyclerview/widget/RecyclerView;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;)V
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
.field final synthetic $data:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;->$data:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 131
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/MineWorkMenuItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/MineWorkMenuItem;)V
    .registers 5

    const-string v0, "itemHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mineWorkMenuItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    .line 133
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MineWorkMenuItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "恢复作品"

    .line 134
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;->$data:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    invoke-static {v0, v1, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$onRecover(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V

    goto :goto_33

    :cond_23
    const-string/jumbo v1, "永久删除"

    .line 135
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$initChildRecycler$1;->$data:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    invoke-static {v0, v1, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$onDeleteForever(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V

    .line 137
    :cond_33
    :goto_33
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MineWorkMenuItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "流程-item"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
