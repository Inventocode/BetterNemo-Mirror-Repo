.class public Lcn/codemao/android/sketch/adapter/PaintAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PaintAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private animeX:I

.field private itemHeight:I

.field private itemScaledHeight:I

.field private itemScaledWidth:I

.field private lastHolder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

.field penPaints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/paint/IPaint;",
            ">;"
        }
    .end annotation
.end field

.field private rootX:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/paint/IPaint;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->penPaints:Ljava/util/List;

    .line 42
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p1

    iget-boolean p1, p1, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p1, :cond_10

    const/high16 p1, 0x41500000  # 13.0f

    goto :goto_12

    :cond_10
    const/high16 p1, 0x41200000  # 10.0f

    :goto_12
    invoke-static {p2, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->animeX:I

    .line 43
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p1

    iget-boolean p1, p1, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p1, :cond_23

    const/high16 p1, 0x42300000  # 44.0f

    goto :goto_25

    :cond_23
    const/high16 p1, 0x42080000  # 34.0f

    :goto_25
    invoke-static {p2, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->itemHeight:I

    .line 44
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p1

    iget-boolean p1, p1, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p1, :cond_36

    const/high16 p1, 0x421c0000  # 39.0f

    goto :goto_38

    :cond_36
    const/high16 p1, 0x41f00000  # 30.0f

    :goto_38
    invoke-static {p2, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->rootX:I

    .line 45
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p1

    iget-boolean p1, p1, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p1, :cond_49

    const/high16 p1, 0x42c00000  # 96.0f

    goto :goto_4b

    :cond_49
    const/high16 p1, 0x424c0000  # 51.0f

    :goto_4b
    invoke-static {p2, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->itemScaledHeight:I

    .line 46
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p1

    iget-boolean p1, p1, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz p1, :cond_5c

    const/high16 p1, 0x42ce0000  # 103.0f

    goto :goto_5e

    :cond_5c
    const/high16 p1, 0x42a00000  # 80.0f

    :goto_5e
    invoke-static {p2, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->itemScaledWidth:I

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/adapter/PaintAdapter;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;
    .registers 1

    .line 30
    iget-object p0, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->lastHolder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    return-object p0
.end method

.method static synthetic access$002(Lcn/codemao/android/sketch/adapter/PaintAdapter;Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;
    .registers 2

    .line 30
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->lastHolder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    return-object p1
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/adapter/PaintAdapter;Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->unselAnim(Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V

    return-void
.end method

.method private selAnim(Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V
    .registers 4

    .line 175
    iget-object p1, p1, Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;->imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3fc00000  # 1.5f

    .line 176
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->animeX:I

    int-to-float v0, v0

    .line 178
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 179
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 180
    new-instance v0, Lcn/codemao/android/sketch/adapter/PaintAdapter$2;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/sketch/adapter/PaintAdapter$2;-><init>(Lcn/codemao/android/sketch/adapter/PaintAdapter;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private unselAnim(Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V
    .registers 4

    .line 200
    iget-object p1, p1, Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;->imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    .line 201
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 202
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->animeX:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 203
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 204
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 205
    new-instance v0, Lcn/codemao/android/sketch/adapter/PaintAdapter$3;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/sketch/adapter/PaintAdapter$3;-><init>(Lcn/codemao/android/sketch/adapter/PaintAdapter;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method


# virtual methods
.method public changePaintAnim(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->lastHolder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    if-eq p1, v0, :cond_1d

    if-eqz v0, :cond_1d

    .line 71
    iget-object v1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->penPaints:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/paint/IPaint;

    .line 72
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->canAnim()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 73
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->lastHolder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->unselAnim(Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V

    :cond_1d
    if-eqz p1, :cond_38

    .line 79
    check-cast p1, Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    .line 80
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->penPaints:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/paint/IPaint;

    .line 81
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->canAnim()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 82
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->selAnim(Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V

    .line 84
    :cond_36
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->lastHolder:Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    :cond_38
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 158
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->penPaints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 30
    check-cast p1, Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->onBindViewHolder(Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;I)V
    .registers 5

    .line 93
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->penPaints:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/codemao/android/sketch/view/paint/IPaint;

    .line 94
    iget-object v0, p1, Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v0, p1, Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcn/codemao/android/sketch/adapter/PaintAdapter$1;-><init>(Lcn/codemao/android/sketch/adapter/PaintAdapter;Lcn/codemao/android/sketch/view/paint/IPaint;Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/PaintAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;
    .registers 6

    .line 54
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->itemScaledHeight:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 57
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->itemScaledWidth:I

    iget v2, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->itemHeight:I

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 60
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 63
    iget p1, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter;->rootX:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 64
    new-instance p1, Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;

    invoke-direct {p1, p2}, Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
