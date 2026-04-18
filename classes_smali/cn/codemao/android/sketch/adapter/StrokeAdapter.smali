.class public Lcn/codemao/android/sketch/adapter/StrokeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StrokeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private iStrokeSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/strokes/IStroke;",
            ">;"
        }
    .end annotation
.end field

.field private selPos:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/strokes/IStroke;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->selPos:I

    .line 28
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->iStrokeSparseArray:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/adapter/StrokeAdapter;)I
    .registers 1

    .line 24
    iget p0, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->selPos:I

    return p0
.end method

.method static synthetic access$002(Lcn/codemao/android/sketch/adapter/StrokeAdapter;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->selPos:I

    return p1
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/adapter/StrokeAdapter;)Landroid/util/SparseArray;
    .registers 1

    .line 24
    iget-object p0, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->iStrokeSparseArray:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 67
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->iStrokeSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 24
    check-cast p1, Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->onBindViewHolder(Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;I)V
    .registers 5

    .line 47
    iget-object v0, p1, Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;->iv_type:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->iStrokeSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/strokes/IStroke;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/strokes/IStroke;->getRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p1, Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;->iv_status:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->selPos:I

    if-ne p2, v1, :cond_19

    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    const/4 v1, 0x4

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;-><init>(Lcn/codemao/android/sketch/adapter/StrokeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;
    .registers 5

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcn/codemao/android/sketch/R$layout;->item_stroke_style:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;

    invoke-direct {p2, p1}, Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
