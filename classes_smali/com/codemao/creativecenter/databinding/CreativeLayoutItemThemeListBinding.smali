.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutItemThemeListBinding.java"


# instance fields
.field public final ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

.field protected mIsPad:Ljava/lang/Boolean;

.field public final tvCount:Landroid/widget/TextView;

.field public final tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

.field public final tvThemeName:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;Landroid/widget/TextView;Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;Landroid/widget/TextView;)V
    .registers 8

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 39
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    .line 40
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvCount:Landroid/widget/TextView;

    .line 41
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    .line 42
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method
