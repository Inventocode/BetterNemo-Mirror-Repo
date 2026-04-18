.class public abstract Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeActivityMaterialBinding.java"


# instance fields
.field public final clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final clTitleBar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivClose:Landroid/widget/ImageView;

.field public final ivSuccess:Landroid/widget/ImageView;

.field public final line:Landroidx/constraintlayout/widget/Guideline;

.field protected mIsPad:Ljava/lang/Boolean;

.field protected mType:Ljava/lang/Integer;

.field public final rvLeft:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvAdd:Landroid/widget/TextView;

.field public final tvNum:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 14

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 63
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 64
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clTitleBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivClose:Landroid/widget/ImageView;

    .line 66
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->ivSuccess:Landroid/widget/ImageView;

    .line 67
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->line:Landroidx/constraintlayout/widget/Guideline;

    .line 68
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvLeft:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    iput-object p10, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    iput-object p11, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvAdd:Landroid/widget/TextView;

    .line 71
    iput-object p12, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvNum:Landroid/widget/TextView;

    .line 72
    iput-object p13, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method

.method public abstract setType(Ljava/lang/Integer;)V
.end method
