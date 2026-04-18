.class Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$4;
.super Ljava/lang/Object;
.source "ShareBitmapEditActivityPortrait.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->saveBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$4;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public permissionFail()V
    .registers 2

    .line 205
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$4;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$1100(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Lcn/codemao/android/sketch/utils/ToastUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showNoPermisson()V

    return-void
.end method

.method public permissionSuccess()V
    .registers 4

    .line 195
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$4;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$100(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Lcn/codemao/android/sketch/view/ShareEditView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/ShareEditView;->getFinalBackGroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$902(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 196
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$4;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    iget-object v1, v0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->permissions:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->checkMorePermission([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 197
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$4;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$1000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V

    goto :goto_25

    .line 199
    :cond_1d
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$4;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    iget-object v1, v0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->permissions:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_25
    return-void
.end method
