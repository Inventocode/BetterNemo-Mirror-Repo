.class Lcn/codemao/android/sketch/SketchActivity$11;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity;->saveBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/SketchActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/SketchActivity;)V
    .registers 2

    .line 946
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public permissionFail()V
    .registers 3

    .line 980
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/SketchActivity;->access$1400(Lcn/codemao/android/sketch/SketchActivity;Z)V

    .line 981
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showNoPermisson()V

    return-void
.end method

.method public permissionSuccess()V
    .registers 5

    .line 950
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget v1, v0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    const/4 v2, 0x1

    const/16 v3, 0x16

    if-ne v1, v3, :cond_3b

    .line 951
    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->getFinalBackGroud()Lcn/codemao/android/sketch/model/FinalBgEditInfo;

    move-result-object v0

    .line 952
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    new-instance v3, Lcn/codemao/android/sketch/model/CenterPointInfo;

    invoke-direct {v3}, Lcn/codemao/android/sketch/model/CenterPointInfo;-><init>()V

    invoke-static {v1, v3}, Lcn/codemao/android/sketch/SketchActivity;->access$3602(Lcn/codemao/android/sketch/SketchActivity;Lcn/codemao/android/sketch/model/CenterPointInfo;)Lcn/codemao/android/sketch/model/CenterPointInfo;

    .line 954
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity;->access$3600(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/model/CenterPointInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->getDx()F

    move-result v3

    iput v3, v1, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    .line 955
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity;->access$3600(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/model/CenterPointInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->getDy()F

    move-result v3

    iput v3, v1, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    .line 956
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/codemao/android/sketch/SketchActivity;->access$3702(Lcn/codemao/android/sketch/SketchActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_72

    :cond_3b
    const/16 v3, 0x17

    if-ne v1, v3, :cond_49

    .line 959
    iget-object v1, v0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->getFinalBackGroundDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/SketchActivity;->access$3702(Lcn/codemao/android/sketch/SketchActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_52

    .line 961
    :cond_49
    iget-object v1, v0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->getFinalSkectchBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/SketchActivity;->access$3702(Lcn/codemao/android/sketch/SketchActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 963
    :goto_52
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$3700(Lcn/codemao/android/sketch/SketchActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_67

    .line 964
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0, v2}, Lcn/codemao/android/sketch/SketchActivity;->access$1400(Lcn/codemao/android/sketch/SketchActivity;Z)V

    .line 965
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showNotNull()V

    return-void

    .line 968
    :cond_67
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v1, v0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->getCenterPoint()Lcn/codemao/android/sketch/model/CenterPointInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/SketchActivity;->access$3602(Lcn/codemao/android/sketch/SketchActivity;Lcn/codemao/android/sketch/model/CenterPointInfo;)Lcn/codemao/android/sketch/model/CenterPointInfo;

    .line 970
    :goto_72
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v1, v0, Lcn/codemao/android/sketch/SketchActivity;->permissions:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/SketchActivity;->checkMorePermission([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 971
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$3800(Lcn/codemao/android/sketch/SketchActivity;)V

    goto :goto_8e

    .line 973
    :cond_82
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v1, v0, Lcn/codemao/android/sketch/SketchActivity;->permissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 974
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$11;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0, v2}, Lcn/codemao/android/sketch/SketchActivity;->access$1400(Lcn/codemao/android/sketch/SketchActivity;Z)V

    :goto_8e
    return-void
.end method
