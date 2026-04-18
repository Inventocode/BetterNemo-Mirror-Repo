.class public abstract Lcom/codemao/nemo/databinding/ActivityNewWorkTemplateListBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityNewWorkTemplateListBinding.java"


# instance fields
.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final titleIconBase:Landroid/widget/ImageView;

.field public final titleIconUp:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 7

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 35
    iput-object p4, p0, Lcom/codemao/nemo/databinding/ActivityNewWorkTemplateListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iput-object p5, p0, Lcom/codemao/nemo/databinding/ActivityNewWorkTemplateListBinding;->titleIconBase:Landroid/widget/ImageView;

    .line 37
    iput-object p6, p0, Lcom/codemao/nemo/databinding/ActivityNewWorkTemplateListBinding;->titleIconUp:Landroid/widget/ImageView;

    return-void
.end method
