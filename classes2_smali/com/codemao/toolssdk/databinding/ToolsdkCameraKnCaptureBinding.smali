.class public abstract Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ToolsdkCameraKnCaptureBinding.java"


# instance fields
.field public final cameraCapture:Landroid/widget/ImageView;

.field public final cameraClose:Landroid/widget/ImageView;

.field public final cameraRotation:Landroid/widget/ImageView;

.field public final cameraSwitch:Landroid/widget/ImageView;

.field public final coverView:Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;

.field public final overlayContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final previewView:Landroidx/camera/view/PreviewView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/camera/view/PreviewView;)V
    .registers 11

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 46
    iput-object p4, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->cameraCapture:Landroid/widget/ImageView;

    .line 47
    iput-object p5, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->cameraClose:Landroid/widget/ImageView;

    .line 48
    iput-object p6, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->cameraRotation:Landroid/widget/ImageView;

    .line 49
    iput-object p7, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->cameraSwitch:Landroid/widget/ImageView;

    .line 50
    iput-object p8, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->coverView:Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;

    .line 51
    iput-object p9, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->overlayContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    iput-object p10, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->previewView:Landroidx/camera/view/PreviewView;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;
    .registers 4

    .line 58
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_camera_kn_capture:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    return-object p0
.end method
