.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutMaterialSoundBinding.java"


# instance fields
.field public final clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

.field public final ivChoose:Landroid/widget/ImageView;

.field protected mData:Lcom/codemao/creativestore/bean/MaterialActorBean;

.field protected mIsPad:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmPlayMusic;Landroid/widget/ImageView;)V
    .registers 7

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 39
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    .line 41
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->ivChoose:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public abstract setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
.end method

.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method
