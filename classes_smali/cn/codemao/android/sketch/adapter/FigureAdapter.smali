.class public Lcn/codemao/android/sketch/adapter/FigureAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FigureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private iFigureSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/figure/IFigure;",
            ">;"
        }
    .end annotation
.end field

.field private itemWitdh:I

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/figure/IFigure;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->padding:I

    const/high16 v0, 0x41e00000  # 28.0f

    .line 30
    invoke-static {p2, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->itemWitdh:I

    .line 31
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v0

    iget-boolean v0, v0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v0, :cond_26

    const/high16 v0, 0x42200000  # 40.0f

    .line 32
    invoke-static {p2, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->itemWitdh:I

    const/high16 v0, 0x40a00000  # 5.0f

    .line 33
    invoke-static {p2, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->padding:I

    .line 35
    :cond_26
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->iFigureSparseArray:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/adapter/FigureAdapter;)Landroid/util/SparseArray;
    .registers 1

    .line 23
    iget-object p0, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->iFigureSparseArray:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 70
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 23
    check-cast p1, Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/FigureAdapter;->onBindViewHolder(Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;I)V
    .registers 4

    .line 51
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    .line 52
    iget v0, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->padding:I

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 53
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->iFigureSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/figure/IFigure;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    new-instance v0, Lcn/codemao/android/sketch/adapter/FigureAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/codemao/android/sketch/adapter/FigureAdapter$1;-><init>(Lcn/codemao/android/sketch/adapter/FigureAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 23
    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/FigureAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;
    .registers 4

    .line 42
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter;->itemWitdh:I

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance p1, Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;

    invoke-direct {p1, p0, v0}, Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;-><init>(Lcn/codemao/android/sketch/adapter/FigureAdapter;Landroid/view/View;)V

    return-object p1
.end method
