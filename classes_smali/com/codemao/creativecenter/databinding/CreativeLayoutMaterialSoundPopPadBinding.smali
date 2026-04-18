.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutMaterialSoundPopPadBinding.java"


# instance fields
.field public final ivDel:Landroid/widget/ImageView;

.field protected mData:Lcom/codemao/creativestore/bean/SoundVO;

.field protected mSelected:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmPlayMusic;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 9

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopPadBinding;->ivDel:Landroid/widget/ImageView;

    return-void
.end method
