.class public final Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$initRv$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ChoseAvatarPop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->initRv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$initRv$1;->this$0:Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 75
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    goto :goto_23

    :cond_22
    const/4 p2, -0x1

    :goto_23
    if-ltz p2, :cond_63

    .line 76
    iget-object p3, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$initRv$1;->this$0:Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;

    invoke-static {p3}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->access$getMAvatarDatas$p(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_32

    goto :goto_63

    .line 79
    :cond_32
    rem-int/lit8 p2, p2, 0x3

    const/high16 p3, 0x40800000  # 4.0f

    const/high16 p4, 0x41e00000  # 28.0f

    const/4 v0, 0x0

    if-eqz p2, :cond_58

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4c

    const/high16 p2, 0x41800000  # 16.0f

    .line 87
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-virtual {p1, p3, v0, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_63

    .line 84
    :cond_4c
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-static {p4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_63

    .line 81
    :cond_58
    invoke-static {p4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_63
    :goto_63
    return-void
.end method
