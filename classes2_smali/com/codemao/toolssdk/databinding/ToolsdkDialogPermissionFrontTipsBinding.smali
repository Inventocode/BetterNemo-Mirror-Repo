.class public abstract Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ToolsdkDialogPermissionFrontTipsBinding.java"


# instance fields
.field public final forbid:Landroid/widget/ImageView;

.field public final sure:Landroid/widget/ImageView;

.field public final tipsIcon:Landroid/widget/ImageView;

.field public final tipsText:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 9

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 37
    iput-object p5, p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->forbid:Landroid/widget/ImageView;

    .line 38
    iput-object p6, p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->sure:Landroid/widget/ImageView;

    .line 39
    iput-object p7, p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsIcon:Landroid/widget/ImageView;

    .line 40
    iput-object p8, p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsText:Landroid/widget/ImageView;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;
    .registers 4

    .line 46
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_dialog_permission_front_tips:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;

    return-object p0
.end method
