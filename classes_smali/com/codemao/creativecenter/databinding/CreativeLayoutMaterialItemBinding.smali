.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutMaterialItemBinding.java"


# instance fields
.field public final ivThemeMarterial:Landroid/widget/ImageView;

.field protected mIsPad:Ljava/lang/Boolean;

.field protected mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

.field protected mVersionBean:Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

.field public final themeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvAlbum:Landroid/widget/TextView;

.field public final tvCanves:Landroid/widget/TextView;

.field public final tvThemeMarterial:Landroid/widget/TextView;

.field public final vThemeNeedUpdate:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .registers 11

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 57
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->ivThemeMarterial:Landroid/widget/ImageView;

    .line 58
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->themeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvAlbum:Landroid/widget/TextView;

    .line 60
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvCanves:Landroid/widget/TextView;

    .line 61
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->tvThemeMarterial:Landroid/widget/TextView;

    .line 63
    iput-object p10, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method

.method public abstract setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V
.end method
