.class public abstract Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ToolsdkCameraKnImageCutBinding.java"


# instance fields
.field public final captureImage:Landroid/widget/ImageView;

.field public final close:Landroid/widget/LinearLayout;

.field public final closeText:Landroid/widget/TextView;

.field public final cutDone:Landroid/widget/LinearLayout;

.field public final cutRevoke:Landroid/widget/LinearLayout;

.field public final doneProgress:Landroid/widget/ProgressBar;

.field public final imageCutScan:Landroid/widget/ImageView;

.field public final overlayContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final revokeImage:Landroid/widget/ImageView;

.field public final revokeText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 16

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 64
    iput-object p5, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->captureImage:Landroid/widget/ImageView;

    .line 65
    iput-object p6, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->close:Landroid/widget/LinearLayout;

    .line 67
    iput-object p8, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->closeText:Landroid/widget/TextView;

    .line 68
    iput-object p9, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutDone:Landroid/widget/LinearLayout;

    .line 69
    iput-object p10, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    .line 70
    iput-object p11, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->doneProgress:Landroid/widget/ProgressBar;

    .line 71
    iput-object p12, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->imageCutScan:Landroid/widget/ImageView;

    .line 72
    iput-object p13, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->overlayContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    iput-object p14, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->revokeImage:Landroid/widget/ImageView;

    .line 74
    iput-object p15, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->revokeText:Landroid/widget/TextView;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;
    .registers 4

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_camera_kn_image_cut:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    return-object p0
.end method
