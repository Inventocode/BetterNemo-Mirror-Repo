.class public abstract Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityKnRecycleBinBinding.java"


# instance fields
.field public final clean:Landroid/widget/ImageView;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 31
    iput-object p4, p0, Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;->clean:Landroid/widget/ImageView;

    .line 32
    iput-object p5, p0, Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
