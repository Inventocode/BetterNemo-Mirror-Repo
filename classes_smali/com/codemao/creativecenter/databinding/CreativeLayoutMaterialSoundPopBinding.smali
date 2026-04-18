.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutMaterialSoundPopBinding.java"


# instance fields
.field public final clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

.field public final ivCopy:Landroid/widget/ImageView;

.field public final ivDel:Landroid/widget/ImageView;

.field public final ivEdit:Landroid/widget/ImageView;

.field protected mData:Lcom/codemao/creativestore/bean/SoundVO;

.field protected mIsPad:Ljava/lang/Boolean;

.field protected mSelected:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmPlayMusic;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 9

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    .line 51
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivCopy:Landroid/widget/ImageView;

    .line 52
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivDel:Landroid/widget/ImageView;

    .line 53
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivEdit:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/Boolean;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->mSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public abstract setData(Lcom/codemao/creativestore/bean/SoundVO;)V
.end method

.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method

.method public abstract setSelected(Ljava/lang/Boolean;)V
.end method
