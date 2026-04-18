.class public final Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$initRv$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ChoseAvatarPadPop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->initRv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$initRv$1;->this$0:Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;

    .line 92
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 95
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    goto :goto_23

    :cond_22
    const/4 p2, -0x1

    :goto_23
    if-ltz p2, :cond_40

    .line 96
    iget-object p3, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$initRv$1;->this$0:Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;

    invoke-static {p3}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->access$getMAvatarDatas$p(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_32

    goto :goto_40

    :cond_32
    const/high16 p2, 0x41a00000  # 20.0f

    .line 99
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_40
    :goto_40
    return-void
.end method
