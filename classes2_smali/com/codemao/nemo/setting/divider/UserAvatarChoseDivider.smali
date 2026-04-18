.class public final Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "UserAvatarChoseDivider.kt"


# instance fields
.field private final avatarSpace:I

.field private final itemSpace:I

.field private final mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpanNum:I

.field private final padSpace:I

.field private final space:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "mDatas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->mDatas:Ljava/util/ArrayList;

    iput p2, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->mSpanNum:I

    const/high16 p1, 0x42980000  # 76.0f

    .line 16
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->itemSpace:I

    const/high16 p1, 0x41a00000  # 20.0f

    .line 17
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->space:I

    const/high16 p1, 0x41000000  # 8.0f

    .line 18
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->padSpace:I

    const/high16 p1, 0x41900000  # 18.0f

    .line 19
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->avatarSpace:I

    return-void
.end method

.method private final calcAvatarItemOffset(I)I
    .registers 6

    if-ltz p1, :cond_24

    .line 62
    iget-object v0, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_24

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v0, p1, :cond_22

    .line 67
    iget-object v2, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    invoke-interface {v2}, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;->getItemType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    move v1, v0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_22
    sub-int/2addr p1, v1

    return p1

    :cond_24
    :goto_24
    const/4 p1, -0x1

    return p1
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

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 24
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    goto :goto_23

    :cond_22
    const/4 p2, -0x1

    :goto_23
    if-ltz p2, :cond_77

    .line 25
    iget-object p3, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_2e

    goto :goto_77

    .line 28
    :cond_2e
    iget-object p3, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    invoke-interface {p3}, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;->getItemType()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_3e

    return-void

    .line 34
    :cond_3e
    invoke-direct {p0, p2}, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->calcAvatarItemOffset(I)I

    move-result p2

    if-gez p2, :cond_45

    return-void

    .line 38
    :cond_45
    iget p3, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->mSpanNum:I

    rem-int/2addr p2, p3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p3, v0, :cond_52

    .line 40
    iget p2, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->padSpace:I

    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_77

    :cond_52
    if-eqz p2, :cond_6f

    if-eq p2, p4, :cond_66

    .line 50
    iget p2, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->avatarSpace:I

    iget p3, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->itemSpace:I

    iget p4, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->space:I

    sub-int v0, p3, p4

    sub-int v0, p2, v0

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_77

    .line 44
    :cond_66
    iget p2, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->space:I

    iget p3, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->itemSpace:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p2, v1, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_77

    .line 47
    :cond_6f
    iget p2, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->itemSpace:I

    iget p3, p0, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;->space:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2, v1, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_77
    :goto_77
    return-void
.end method
