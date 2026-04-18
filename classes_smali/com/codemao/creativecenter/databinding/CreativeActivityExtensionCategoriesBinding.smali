.class public abstract Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeActivityExtensionCategoriesBinding.java"


# instance fields
.field public final ivClose:Landroid/widget/ImageView;

.field public final microbit:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;

.field public final tvAdd:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 35
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->ivClose:Landroid/widget/ImageView;

    .line 36
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->microbit:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;

    .line 37
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->tvAdd:Landroid/widget/TextView;

    return-void
.end method
