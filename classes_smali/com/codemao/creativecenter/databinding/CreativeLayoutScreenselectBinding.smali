.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutScreenselectBinding.java"


# instance fields
.field public final clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivAddScreen:Landroid/widget/ImageView;

.field public final ivDelScreen:Landroid/widget/ImageView;

.field public final ivScreen:Landroid/widget/ImageView;

.field protected mVm:Lcom/codemao/creativecenter/vm/ScreenSelectVM;

.field public final rvScreens:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 10

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 46
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->clFunc:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    .line 49
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    .line 50
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    .line 51
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public abstract setVm(Lcom/codemao/creativecenter/vm/ScreenSelectVM;)V
.end method
