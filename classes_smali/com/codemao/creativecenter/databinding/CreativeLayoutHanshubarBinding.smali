.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutHanshubarBinding.java"


# instance fields
.field public final back:Landroid/widget/ImageView;

.field public final ivHanshuConfrom:Landroid/widget/ImageView;

.field public final ivQuit:Landroid/widget/ImageView;

.field protected mVm:Lcom/codemao/creativecenter/vm/HanshubarVM;

.field public final restore:Landroid/widget/ImageView;

.field public final sideRoot:Landroid/widget/FrameLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .registers 9

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 42
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->back:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->ivHanshuConfrom:Landroid/widget/ImageView;

    .line 44
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->ivQuit:Landroid/widget/ImageView;

    .line 45
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->restore:Landroid/widget/ImageView;

    .line 46
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->sideRoot:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public getVm()Lcom/codemao/creativecenter/vm/HanshubarVM;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->mVm:Lcom/codemao/creativecenter/vm/HanshubarVM;

    return-object v0
.end method

.method public abstract setVm(Lcom/codemao/creativecenter/vm/HanshubarVM;)V
.end method
