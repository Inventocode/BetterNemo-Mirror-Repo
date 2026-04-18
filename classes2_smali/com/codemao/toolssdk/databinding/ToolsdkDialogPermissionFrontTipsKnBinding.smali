.class public abstract Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ToolsdkDialogPermissionFrontTipsKnBinding.java"


# instance fields
.field public final forbid:Landroid/widget/TextView;

.field public final sure:Landroid/widget/TextView;

.field public final tipsIcon:Landroid/widget/ImageView;

.field public final tipsText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 9

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 38
    iput-object p5, p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->forbid:Landroid/widget/TextView;

    .line 39
    iput-object p6, p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->sure:Landroid/widget/TextView;

    .line 40
    iput-object p7, p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    .line 41
    iput-object p8, p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsText:Landroid/widget/TextView;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;
    .registers 4

    .line 47
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_dialog_permission_front_tips_kn:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;

    return-object p0
.end method
